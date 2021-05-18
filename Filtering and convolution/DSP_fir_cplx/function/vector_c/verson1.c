

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
void DSP_fir_cplx_vc (
    vector signed short *x,   
    signed short *h,       
    vector signed short  *r, /* r额外开了两倍的内存空间  减少在函数内部分配内存和初始化 */
    int nh,
    int nr
){
    int i,j,k;
   
    vector signed int svb_temp_h ;
    vector signed short temp_vh_0;
    vector signed short temp_vx_0_15;

    vector signed int *temp_vr_0_15= (vector signed int *)r;
    vector signed int temp_vr_0_15_real,temp_vr_0_15_imag;
    /* 防止编译优化 */
    volatile  lvector  int temp_vr_computer;
    vector signed int temp_vr_computer_real,temp_vr_computer_imag;
    vector signed short* temp_x_offset_addr;
    int *tmpx =(int *)x;

    int int_h_0,offset;
    int *int_h = (int*)h+nh-1;    /* 指向h[nh-1]*/
 
    for(i = 0;i<nh;i++){
        int_h_0 = *(int_h-i);
        svb_temp_h=vec_svbcast(int_h_0);
        temp_vh_0 =*(vector signed short*)(&svb_temp_h);  /*vector signed int 转 vector signed short*/
        temp_x_offset_addr = (vector signed short*)(tmpx+i);
        k = 0;
        for(j = 0;j < 2 * nr; j += 32){
            offset = k>>1;
            if(i == 0){    /*考虑到r没有初始化的情况*/
                temp_vr_0_15_real = vec_movi(0);
                temp_vr_0_15_imag = vec_movi(0);
            }else{
                temp_vr_0_15_real = temp_vr_0_15[k];
                temp_vr_0_15_imag = temp_vr_0_15[k+1];
            }
            temp_vx_0_15 = vec_ld(0,temp_x_offset_addr+offset);        

            temp_vr_computer = vec_cmul16t(temp_vx_0_15,temp_vh_0);      /* 16位复数运算，结果中前16个数为实部，后16个数为虚部*/


            temp_vr_computer_real = ((vector signed int*)(&temp_vr_computer))[0];
            temp_vr_computer_imag = ((vector signed int*)(&temp_vr_computer))[1];

            temp_vr_computer_real = vec_add(temp_vr_0_15_real,temp_vr_computer_real);
            temp_vr_computer_imag = vec_add(temp_vr_0_15_imag,temp_vr_computer_imag);

            temp_vr_0_15[k++] = temp_vr_computer_real;
            temp_vr_0_15[k++] = temp_vr_computer_imag;
        }
    }
    /*转成Q15格式*/
    int vr_len = 2*((nr+15)/16),num=0;
    vector signed int *vr= (vector signed int *)r;
    for( i = 0; i < vr_len; i +=2){
        temp_vr_0_15_real = temp_vr_0_15[i];
        temp_vr_0_15_imag = temp_vr_0_15[i+1];

        temp_vr_0_15_real = vec_shfar(15,temp_vr_0_15_real);
        temp_vr_0_15_imag = vec_shfar(15,temp_vr_0_15_imag);
        temp_vr_0_15_real = vec_sbale2(temp_vr_0_15_real,temp_vr_0_15_imag);

        vec_st(temp_vr_0_15_real,0,&temp_vr_0_15[num++]);
        
    }
}
