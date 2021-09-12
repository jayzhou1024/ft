#include "c6x-c.h" 
#include "M7002.h"
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <limits.h>
#include <string.h>
/*
    函数说明：
        Q15格式的复数fir滤波器
    数据要求：
        nr >= 8; nr % 4 == 0 
        nh >= 4; nh % 2 == 0 
    函数接口：
        void DSP_fir_cplx_vc (
            vector signed short *x,   
            signed short *h,       
            vector signed short  *r, 
            int nh,
            int nr
        )
*/
void DSP_fir_cplx_vc1 (
    vector signed short *x,   
    signed short *h,       
    vector signed short  *r, /*额外开了2*r的内存空间  减少在函数内部分配内存和初始化*/
    int nh,
    int nr
){
    /* h[nh-1] ~ h[nh-4] 向量化 存放到temp_vh_0 ~ temp_vh_3中*/
    vector signed short temp_vh_0, temp_vh_1, temp_vh_2, temp_vh_3;
    vector signed short temp_vx_0_15, temp_vx_1_16, temp_vx_2_17, temp_vx_3_18;

    vector signed int *temp_vr_0_15 = (vector signed int *)r; 
    vector signed int temp_vr_0_15_real, temp_vr_0_15_imag;
    /* 防止编译优化  保存计算中间结果 */
    volatile  lvector  int temp_vr_computer;
    vector signed int * temp_vr_computer_int = (vector signed int *)(&temp_vr_computer);
    vector signed int temp_vr_computer_real, temp_vr_computer_imag;
    vector signed short* temp_x_offset_addr;
    int *tmpx =(int *)x;
    int int_h_0, int_h_1, int_h_2, int_h_3; 
    vector signed int svb_temp_h_0,svb_temp_h_1,svb_temp_h_2,svb_temp_h_3;  /* 存放 h[i] 广播结果 */
      
    int offset, flag_h23 = 0; 
    int *int_h = (int*)h + nh - 1;    /* 指向h[nh-1], h是逆序取值 */
    int i, j, k;
    for (i = 0; i < nh; i += 4) {
        flag_h23 = 0;
        int_h_0 = *(int_h - i);
        int_h_1 = *(int_h - i - 1);
        svb_temp_h_0 = vec_svbcast(int_h_0);
        svb_temp_h_1 = vec_svbcast(int_h_1);
        temp_vh_0 = *(vector signed short*)(&svb_temp_h_0);  /*vector signed int 转 vector signed short*/
        temp_vh_1 = *(vector signed short*)(&svb_temp_h_1);
        if (nh - i > 2) {
            int_h_2 = *(int_h - i - 2);
            int_h_3 = *(int_h - i - 3);
            svb_temp_h_2 = vec_svbcast(int_h_2);
            svb_temp_h_3 = vec_svbcast(int_h_3);
            temp_vh_2 =*(vector signed short*)(&svb_temp_h_2);  
            temp_vh_3 =*(vector signed short*)(&svb_temp_h_3);
            flag_h23 = 1;
        }
        temp_x_offset_addr = (vector signed short*)(tmpx + i);
        k = 0;
        for (j = 0; j < 2 * nr; j += 32) {
            offset = k >> 1; /* x在内循环的地址偏移 */
            if (i == 0) {    /* 考虑到r没有初始化的情况,第一次计算时r初值应为0 */
                temp_vr_0_15_real = vec_movi(0);
                temp_vr_0_15_imag = vec_movi(0);
            } else {
                temp_vr_0_15_real = temp_vr_0_15[k];
                temp_vr_0_15_imag = temp_vr_0_15[k + 1];
            }
            temp_vx_0_15 = vec_ld(0, temp_x_offset_addr + offset);        
            temp_vx_1_16 = vec_ld(1, temp_x_offset_addr + offset); /*半字基址*/
            /* h[nh-i-1]广播后和x[0]~x[15]计算，得到r[0]~r[15]的中间结果 */
            temp_vr_computer = vec_cmul16t(temp_vx_0_15, temp_vh_0);      /* 16位复数运算，结果中前16个数为实部，后16个数为虚部*/
            temp_vr_computer_real = temp_vr_computer_int[0];
            temp_vr_computer_imag = temp_vr_computer_int[1];
            temp_vr_0_15_real = vec_add(temp_vr_0_15_real, temp_vr_computer_real);
            temp_vr_0_15_imag = vec_add(temp_vr_0_15_imag, temp_vr_computer_imag);
            /* h[nh-i-2]广播后和x[1]~x[16]计算，得到r[0]~r[15]的中间结果 */
            temp_vr_computer = vec_cmul16t(temp_vx_1_16, temp_vh_1);
            temp_vr_computer_real = temp_vr_computer_int[0];
            temp_vr_computer_imag = temp_vr_computer_int[1];
            temp_vr_0_15_real = vec_add(temp_vr_0_15_real, temp_vr_computer_real);
            temp_vr_0_15_imag = vec_add(temp_vr_0_15_imag, temp_vr_computer_imag);
            if (flag_h23) {
                temp_vx_2_17 = vec_ld(2, temp_x_offset_addr + offset);        
                temp_vx_3_18 = vec_ld(3, temp_x_offset_addr + offset); 
                /* h[nh-i-3]广播后和x[2]~x[17]计算，得到r[0]~r[15]的中间结果 */
                temp_vr_computer = vec_cmul16t(temp_vx_2_17, temp_vh_2);     
                temp_vr_computer_real = temp_vr_computer_int[0];
                temp_vr_computer_imag = temp_vr_computer_int[1];
                temp_vr_0_15_real = vec_add(temp_vr_0_15_real, temp_vr_computer_real);
                temp_vr_0_15_imag = vec_add(temp_vr_0_15_imag, temp_vr_computer_imag);
                /* h[nh-i-4]广播后和x[3]~x[18]计算，得到r[0]~r[15]的中间结果 */
                temp_vr_computer = vec_cmul16t(temp_vx_3_18, temp_vh_3);     
                temp_vr_computer_real = temp_vr_computer_int[0];
                temp_vr_computer_imag = temp_vr_computer_int[1];
                temp_vr_0_15_real = vec_add(temp_vr_0_15_real, temp_vr_computer_real);
                temp_vr_0_15_imag = vec_add(temp_vr_0_15_imag, temp_vr_computer_imag);
            }
            /* 写回计算得到的中间结果*/
            temp_vr_0_15[k++] = temp_vr_0_15_real;
            temp_vr_0_15[k++] = temp_vr_0_15_imag;
        }
    }
    /*转成Q15格式*/
    int vr_len = 2 * ((nr + 15) >> 4), num = 0;
    vector signed int *vr= (vector signed int *)r;
    for (i = 0; i < vr_len; i += 2) {
        temp_vr_0_15_real = temp_vr_0_15[i];
        temp_vr_0_15_imag = temp_vr_0_15[i+1];

        temp_vr_0_15_real = vec_shfar(15, temp_vr_0_15_real);
        temp_vr_0_15_imag = vec_shfar(15, temp_vr_0_15_imag);
        temp_vr_0_15_real = vec_sbale2(temp_vr_0_15_real, temp_vr_0_15_imag);

        vec_st(temp_vr_0_15_real,0,&temp_vr_0_15[num++]);
        
    }
}
