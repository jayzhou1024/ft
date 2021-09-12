#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <float.h>
#include "c6x-c.h" 
#include "M7002.h"
/***
 * 
 *  nh % 4 = 0, nh >= 4
 *  nr % 4 = 0, nr >= 4
 *  
 *       nh = 4时：
 *
 *        r[0] = h[0]*x[0] + h[1]*x[1] + h[2]*x[2] + h[3]*x[3] + h[4]*x[4] + h[3]*x[5] + h[2]*x[6] + h[1]*x[7] + h[0]*x[8]
 *        r[1] = h[0]*x[1] + h[1]*x[2] + h[2]*x[3] + h[3]*x[4] + h[4]*x[5] + h[3]*x[6] + h[2]*x[7] + h[1]*x[8] + h[0]*x[9]
 *        r[2] = h[0]*x[2] + h[1]*x[3] + h[2]*x[4] + h[3]*x[5] + h[4]*x[6] + h[3]*x[7] + h[2]*x[8] + h[1]*x[9] + h[0]*x[10]
 *        r[3] = h[0]*x[3] + h[1]*x[4] + h[2]*x[5] + h[3]*x[6] + h[4]*x[7] + h[3]*x[8] + h[2]*x[9] + h[1]*x[10] + h[0]*x[11]
 *
***/
void DSP_fir_sym_vc (
    hvector signed short *x,   
    signed short *h,    
    hvector signed short *r,
    int nh,
    int nr,
    int s
){  
    /* 混洗模式1配置 */
    int *MW_config_Addr = (int *)0x040160000;
    MW_config_Addr[0] = 0x04030201;
    MW_config_Addr[1] = 0x08070605;
    MW_config_Addr[2] = 0x0c0b0a09;
    MW_config_Addr[3] = 0x100f0e0d;
    MW_config_Addr[4] = 0x06050403;
    MW_config_Addr[5] = 0x0a090807;
    MW_config_Addr[6] = 0x0e0d0c0b;
    MW_config_Addr[7] = 0x1211100f;
    shuff_mode(0);

    int round = 1 << (s - 1);
    /* shfar右移参数 */
    vector signed int shfar_ucst5 = vec_svbcast(s);
    vector unsigned int un_shfar_ucst5 = *(vector unsigned int*)(&shfar_ucst5);
    /* h相关 */
    int int_h_0, int_h_1, int_h_2, int_h_3;
    vector signed int svb_temp_h;
    hvector signed short temp_vh_0, temp_vh_1, temp_vh_2, temp_vh_3;
    /* r相关*/
    vector signed int* tmpr = (vector signed int *)r;
    vector signed int temp_vr_0_15, temp_vr_16_31;
    /* x相关 */
    hvector signed short temp_vx_0_15, temp_vx_1_16, temp_vx_2_17, temp_vx_3_18;
    vector signed short temp_vx_0_31; 
    /* x访存地址*/
    hvector signed short* temp_x_offset_addr_p, *temp_x_offset_addr_n;
    vector signed short* temp_x_offset_addr_p_d, *temp_x_offset_addr_n_d;
    /* 需要特殊处理h[nh] */
    int i,j,k;
    for (i = 0; i < nh; i += 4) {   
        ((short*)&int_h_0)[0] = h[i];
        ((short*)&int_h_0)[1] = h[i];
        svb_temp_h = vec_svbcast(int_h_0);  
        /* 处理O2优化 */
        temp_vh_0 = vec_ld(0, (hvector signed short*)(&svb_temp_h)); 
        ((signed short*)&int_h_1)[0] = h[i + 1];
        ((signed short*)&int_h_1)[1] = h[i + 1];
        svb_temp_h = vec_svbcast(int_h_1);
        temp_vh_1 = vec_ld(0, (hvector signed short*)(&svb_temp_h)); 
        
        ((signed short*)&int_h_2)[0] = h[i + 2];
        ((signed short*)&int_h_2)[1] = h[i + 2];
        svb_temp_h=vec_svbcast(int_h_2);
        temp_vh_2 = vec_ld(0, (hvector signed short*)(&svb_temp_h)); 

        ((signed short*)&int_h_3)[0] = h[i + 3];
        ((signed short*)&int_h_3)[1] = h[i + 3];
        svb_temp_h=vec_svbcast(int_h_3);
        temp_vh_3 = vec_ld(0, (hvector signed short*)(&svb_temp_h)); 

        temp_x_offset_addr_p = (hvector signed short*)((short *)x + i);
        temp_x_offset_addr_p_d =(vector signed short *)((short *)x + i);
        temp_x_offset_addr_n = (hvector signed short*)((short *)x + 2 * nh - 4 * ((i >> 2) + 1) + 1); /*这里是一个奇数addr,会向前对齐*/
        temp_x_offset_addr_n_d = (vector signed short*)((short *)x + 2 * nh - 4 *((i >> 2 ) + 1) + 1);

        for (j = 0, k = 0; j < nr; j += 16, k += 1){
            if (!i) {
                temp_vr_0_15 = vec_svbcast(round);
            } else {
                temp_vr_0_15 = tmpr[k];
            }
            /* 前半部分 */
            temp_vx_0_15 = vec_ld(j, temp_x_offset_addr_p);
            temp_vr_0_15 = vec_mula(temp_vx_0_15, temp_vh_0, temp_vr_0_15);
            temp_vx_2_17 = vec_ld(j + 2, temp_x_offset_addr_p);
            temp_vr_0_15 = vec_mula(temp_vx_2_17, temp_vh_2, temp_vr_0_15);
            
            temp_vx_0_31 = vec_ld(j >> 1, temp_x_offset_addr_p_d);
            temp_vx_0_31 = vec_shufh(0, temp_vx_0_31,temp_vx_0_31);
            
            temp_vx_1_16 = vec_ld(0, ((hvector signed short *)(&temp_vx_0_31)));
            temp_vx_3_18 = *((hvector signed short *)(&temp_vx_0_31) + 1);
            
            temp_vr_0_15 = vec_mula(temp_vx_1_16,temp_vh_1,temp_vr_0_15);
            temp_vr_0_15 = vec_mula(temp_vx_3_18,temp_vh_3,temp_vr_0_15);

            /* 后半部分  */
            temp_vx_0_15 = vec_ld(j + 2, temp_x_offset_addr_n);
            temp_vr_0_15 = vec_mula(temp_vx_0_15, temp_vh_2, temp_vr_0_15);
            temp_vx_1_16 = vec_ld(j + 4, temp_x_offset_addr_n);
            temp_vr_0_15 = vec_mula(temp_vx_1_16, temp_vh_0, temp_vr_0_15);
            temp_vx_0_31 = vec_ld(j >> 1, temp_x_offset_addr_n_d);
            temp_vx_0_31 = vec_shufh(0, temp_vx_0_31, temp_vx_0_31);
            temp_vx_1_16 =  vec_ld(0, ((hvector signed short *)(&temp_vx_0_31)));

            temp_vx_3_18 = *((hvector signed short *)(&temp_vx_0_31) + 1);;
            temp_vr_0_15= vec_mula(temp_vx_1_16, temp_vh_3, temp_vr_0_15);
            temp_vr_0_15= vec_mula(temp_vx_3_18, temp_vh_1, temp_vr_0_15);
            tmpr[k] = temp_vr_0_15;
        }
    }
    /* 处理nh */
    ((short*)&int_h_0)[0] = h[nh];
    ((short*)&int_h_0)[1] = h[nh];
    svb_temp_h=vec_svbcast(int_h_0);  
    temp_vh_0 = *(hvector signed short*)(&svb_temp_h);/*广播后转成 hvector signed short*/   
    hvector signed short* temp_vx_nh_addr = (hvector signed short*)((short*)x+nh);
    
    /* 格式转换+打包 */
    volatile lvector double temp_in_r;    /* 防止O2优化被处理 */
    lvector double *M2LD_Dst = &temp_in_r;
    vector unsigned int * M2LD_temp1 = (vector unsigned int *)(M2LD_Dst);
    vector unsigned int * M2LD_temp2 = ((vector unsigned int *)(M2LD_Dst) + 1);
    k = 0;
    for ( i = 0;i < nr;i += 32) {
        temp_vr_0_15 = tmpr[k];
        temp_vx_0_15 = temp_vx_nh_addr[k];
        temp_vr_0_15 = vec_mula(temp_vx_0_15, temp_vh_0, temp_vr_0_15);
        tmpr[k] = vec_shfar(un_shfar_ucst5, temp_vr_0_15);
        if( nr-i > 16){
            temp_vr_16_31 = tmpr[k + 1];
            temp_vx_1_16 = temp_vx_nh_addr[k + 1];
            temp_vr_16_31= vec_mula(temp_vx_1_16, temp_vh_0, temp_vr_16_31);
            tmpr[k + 1] = vec_shfar(un_shfar_ucst5, temp_vr_16_31);
        }
        M2LD_Dst[0] = vec_ldm2(0,(lvector double*)r + (k >> 2));
        tmpr[k >> 2] = vec_bale2(M2LD_temp1[0], M2LD_temp2[0]);
        k+=2;
    }
}

