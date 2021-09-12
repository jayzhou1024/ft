#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "c6x-c.h" 
#include "M7002.h"
/***
 * 
 *  nr % 4 = 0, nr >= 4
 *  
***/

void DSP_fir_gen_vc (
    hvector signed short *x,   
    signed short *h,    
    hvector signed short *r,
    int nh,
    int nr
) {
    /* 混洗配置 */
    int *mw_config_Addr = (int *)0x040160000;
    mw_config_Addr[0] = 0x04030201;
    mw_config_Addr[1] = 0x08070605;
    mw_config_Addr[2] = 0x0c0b0a09;
    mw_config_Addr[3] = 0x100f0e0d;
    mw_config_Addr[4] = 0x06050403;
    mw_config_Addr[5] = 0x0a090807;
    mw_config_Addr[6] = 0x0e0d0c0b;
    mw_config_Addr[7] = 0x1211100f;
    shuff_mode(0);    	
    /* x相关参数 */
    hvector signed short temp_vx_0_15, temp_vx_1_16, temp_vx_2_17, temp_vx_3_18;
    vector signed short  temp_vx_0_31; 
    hvector signed short *temp_vx_0_31_shuff = (hvector signed short *)(&temp_vx_0_31);
    hvector signed short *temp_x_offset_addr;
    vector signed short  *temp_x_offset_addr_shuff;
    /* h相关参数 */
    short s_h_0, s_h_1, s_h_2, s_h_3;
    int int_h_0, int_h_1, int_h_2, int_h_3;
    vector signed int svb_temp_h, vtemp0;
    hvector signed short temp_vh_0, temp_vh_1, temp_vh_2, temp_vh_3, const_vh0;
    /* r相关参数 */
    vector signed int * tmpr= (vector signed int *)r;
    vector signed int temp_vr_0_15;
    int i, j, k, diff_nh_i;
    int is_flag1, is_flag2, is_flag3;
    vtemp0 = vec_svbcast(0); 
    const_vh0 = vec_ld(0, (hvector signed short*)(&vtemp0));

    for (i = 0; i < nh; i += 4) {  
        diff_nh_i = nh - i;
        s_h_0 = h[i];
        ((signed short*)&int_h_0)[0] = s_h_0;
        ((signed short*)&int_h_0)[1] = s_h_0;
        svb_temp_h = vec_svbcast(int_h_0);
        temp_vh_0 = vec_ld(0, (hvector signed short*)(&svb_temp_h));  
        temp_vh_1 = const_vh0;
        temp_vh_2 = const_vh0;
        temp_vh_3 = const_vh0;

        if (diff_nh_i > 1) {
            s_h_1 = h[i + 1];
            ((signed short*)&int_h_1)[0] = s_h_1;
            ((signed short*)&int_h_1)[1] = s_h_1;
            svb_temp_h  = vec_svbcast(int_h_1); 
            temp_vh_1 = vec_ld(0, (hvector signed short*)(&svb_temp_h));        
            if (diff_nh_i > 2) {
                s_h_2 = h[i + 2];
                ((signed short*)&int_h_2)[0] = s_h_2;
                ((signed short*)&int_h_2)[1] = s_h_2;
                svb_temp_h = vec_svbcast(int_h_2); 
                temp_vh_2 = vec_ld(0,(hvector signed short*)(&svb_temp_h));
                if (diff_nh_i > 3) {
                    s_h_3 = h[i + 3];
                    ((signed short*)&int_h_3)[0] = s_h_3;
                    ((signed short*)&int_h_3)[1] = s_h_3;
                    svb_temp_h = vec_svbcast(int_h_3); 
                    temp_vh_3 = vec_ld(0, (hvector signed short*)(&svb_temp_h));        
                }
            }
        }

        temp_x_offset_addr = (hvector signed short*)((short *)x + i);
        temp_x_offset_addr_shuff = (vector signed short*)temp_x_offset_addr;

        for (j = 0, k = 0; j < nr; j += 16, k += 1) {
            if (!i) {
                temp_vr_0_15 = vec_movi(0);
            } else {
                temp_vr_0_15 = tmpr[k];
            }
            temp_vx_0_15 = vec_ld(j, temp_x_offset_addr);
            temp_vx_2_17 = vec_ld(j + 2, temp_x_offset_addr);
            /* 计算:x_0_15 * h_0 */
            temp_vr_0_15= vec_mula(temp_vx_0_15, temp_vh_0, temp_vr_0_15);
            /* 计算:x_2_17 * h_2 */
            temp_vr_0_15= vec_mula(temp_vx_2_17, temp_vh_2, temp_vr_0_15);
            /* 混洗取x_1_16和x_3_18 */
            temp_vx_0_31 = vec_ld(j >> 1, temp_x_offset_addr_shuff);
            temp_vx_0_31 = vec_shufh(0, temp_vx_0_31, temp_vx_0_31);
            temp_vx_1_16 = vec_ld(0, temp_vx_0_31_shuff);     //在汇编中直接拼接
            temp_vx_3_18 = vec_ld(0, temp_vx_0_31_shuff + 1);
             /* 计算:x_1_16 * h_1 */
            temp_vr_0_15= vec_mula(temp_vx_1_16, temp_vh_1, temp_vr_0_15);  
             /* 计算:x_3_18 * h_3 */
            temp_vr_0_15= vec_mula(temp_vx_3_18, temp_vh_3, temp_vr_0_15);
            tmpr[k] = temp_vr_0_15;
        }
    }
    /* 防止O2优化被处理 */
    volatile lvector double temp_in_r;
    vector signed int  m2ld_temp1,m2ld_temp2;
    vector signed int * m2ld_dst =(vector signed int *)(&temp_in_r); /*改*/
	int vr_len = (nr + 15) >> 4;
    for (i = 0; i < (vr_len + 1) >> 1; i++) {
        /* r强转成双字，再模二取*/
        temp_in_r = vec_ldm2(0,(lvector double*)r+i);
        m2ld_temp1 = m2ld_dst[0];
        m2ld_temp2 = m2ld_dst[1];
        /* 将计算结果右移15位，转成Q15格式*/
        m2ld_temp1=vec_shfar(15,m2ld_temp1);
        m2ld_temp2=vec_shfar(15,m2ld_temp2);
        /*两个int转成两个16位short，打包在一个int中,*/
        tmpr[i]=vec_sbale2(m2ld_temp1,m2ld_temp2);
    }

}