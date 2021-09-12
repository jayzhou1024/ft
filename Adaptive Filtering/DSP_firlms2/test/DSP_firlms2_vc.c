#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "c6x-c.h" 
#include "M7002.h"
int DSP_firlms2_vc (
    hvector signed short * h,         
    hvector signed short * x,   
    short b,          
    int nh ) {      
        int *mw_config_Addr = (int *)0x040160000;
        mw_config_Addr[0] = 0x04030201;
        mw_config_Addr[1] = 0x08070605;
        mw_config_Addr[2] = 0x0c0b0a09;
        mw_config_Addr[3] = 0x100f0e0d;
        mw_config_Addr[4] = 0x06040200;
        mw_config_Addr[5] = 0x0e0c0a08;
        mw_config_Addr[6] = 0x00000000;
        mw_config_Addr[7] = 0x00000000;

        mw_config_Addr[8] = 0x07050301;
        mw_config_Addr[9] = 0x0f0d0b09;
        mw_config_Addr[10] = 0x00000000;
        mw_config_Addr[11] = 0x00000000;

        hvector signed short temp_vx_0_15, temp_vx_1_16, temp_vh_0_16, short_vb, temp_vh, stemp_xb;
        vector signed short temp_vx_0_31;
        vector signed short *xaddr = (vector signed short *)x;
        hvector signed short *temp_vx_0_31_shuff = (hvector signed short *)(&temp_vx_0_31);
        vector signed int temp_xb, int_v0, int_vb,tempr, int_v1, itemp_vx_1_16;
        vector signed short* htemp_xb = (vector signed short*)(&temp_xb);
        int svr0, svr1, svr2, svr3; 
        int vh_len = (nh + 15 ) >> 4;
        int i;
        int ib;
        ((signed short*) &ib)[0] = b;
        ((signed short*) &ib)[1] = b;
        int_vb = vec_svbcast(ib); 
        int_v0 = vec_svbcast(0); 
        short_vb = vec_ld(0, (hvector signed short*)(&int_vb)); 
        int r = 0, itemp_r;

         // 为m2取声明的变量  这里使用vec_sbale2接口，没法混洗
		vector signed int shuff_L, shuff_R;
        // 计算公式 r += sum((vx_0 * vb >> 15) * vh + vx_1 * vh)   
        for (i = 0; i < nh; i += 16) {
        	// 取 vx_0
            temp_vx_0_15 = vec_ld(i, x);
            // 取 vx_1
            temp_vx_0_31 = vec_ld(i >> 1, xaddr);
            shuff_mode(0);
            temp_vx_0_31 = vec_shufh(0, temp_vx_0_31, temp_vx_0_31);
            temp_vx_1_16 = vec_ld(0, temp_vx_0_31_shuff);
            // 取 vh
            temp_vh = vec_ld(i, h);
            // 计算 temp_xb = vx_0 * vb
            temp_xb = vec_mula(short_vb, temp_vx_0_15, int_v0);
            // 计算 temp_xb >>15
            temp_xb = vec_shfar(15, temp_xb);

       		itemp_vx_1_16 = vec_mula(1, temp_vx_1_16, int_v0);
            temp_xb = vec_muli(itemp_vx_1_16, temp_xb);
            temp_xb = vec_mula(temp_vx_1_16, temp_vh, temp_xb);
            
            int diff = nh & 15;
            // 求和
            if (diff && i >> 4 == vh_len -1) {
                mov_to_svr_v16si(temp_xb);
                itemp_r = 0; 
                svr0 = mov_from_svr0();
                svr1 = mov_from_svr1();
                svr2 = mov_from_svr2();
                svr3 = mov_from_svr3();
                itemp_r = itemp_r + svr0 + svr1 + svr2 + svr3;
                if (diff >> 3) {
                    svr0 = mov_from_svr4();
                    svr1 = mov_from_svr5();
                    svr2 = mov_from_svr6();
                    svr3 = mov_from_svr7();
                    itemp_r = itemp_r + svr0 + svr1 + svr2 + svr3;
                }
                if (diff == 12) {
                    svr0 = mov_from_svr8();
                    svr1 = mov_from_svr9();
                    svr2 = mov_from_svr10();
                    svr3 = mov_from_svr11();
                    itemp_r = itemp_r + svr0 + svr1 + svr2 + svr3;
                }
                r += itemp_r;
            }
            else {
                tempr = vec_reduc16(temp_xb, 0, 0);
                mov_to_svr_v16si(tempr);
                svr0 = mov_from_svr0();
                r += svr0;
            }
        }
        return r;
}
