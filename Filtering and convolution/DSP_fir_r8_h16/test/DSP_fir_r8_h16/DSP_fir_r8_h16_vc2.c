#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <float.h>
#include "c6x-c.h" 
#include "M7002.h"
/*
nr >= 4; nr % 4 == 0. 
nh == 16. 
*/
void DSP_fir_r8_h16_vc2 (
    hvector signed short *x,   
    signed short *h,    
    hvector signed short *r,
    int nr
){
     /* 混洗模式1配置 */
    int* MW_config_Addr = (int*)0x040160000;
    //取x的0-15位
    MW_config_Addr[0] = 0x03020100;
    MW_config_Addr[1] = 0x07060504;
    MW_config_Addr[2] = 0x0b0a0908;
    MW_config_Addr[3] = 0x0f0e0d0c;
    //取x的1-16位
    MW_config_Addr[4] = 0x04030201;
    MW_config_Addr[5] = 0x08070605;
    MW_config_Addr[6] = 0x0c0b0a09;
    MW_config_Addr[7] = 0x100f0e0d;
   
    /* 混洗模式2配置 */
    //取x的2-17位
    MW_config_Addr[8] = 0x05040302;
    MW_config_Addr[9] = 0x09080706;
    MW_config_Addr[10] = 0x0d0c0b0a;
    MW_config_Addr[11] = 0x11100f0e;
    //取x的3-18位
    MW_config_Addr[12] = 0x06050403;
    MW_config_Addr[13] = 0x0a090807;
    MW_config_Addr[14] = 0x0e0d0c0b;
    MW_config_Addr[15] = 0x1211100f;

    int i,j,k;
    int vr_len = (nr+15)/16;
    /*h*/
    hvector signed short *temp_vh_h_l;
    vector signed short temp_vh;
    /*r*/
    vector signed int temp_vr_0_15;
    vector signed int * tmpr= (vector signed int *)r;
    lvector signed int temp_vr_comb_0,temp_vr_comb_1,temp_vr_comb_2,temp_vr_comb_3;
    /*x*/
    hvector signed short temp_vx_0_15,temp_vx_1_16,temp_vx_2_17,temp_vx_3_18;
    hvector signed short temp_vx_4_19, temp_vx_5_20, temp_vx_6_21, temp_vx_7_22;
    vector signed short temp_vx_0_31,temp_vx_shuff_0_1,temp_vx_shuff_2_3;
    
    /*x地址偏移*/
    hvector signed short* temp_x_offset_addr;
    vector signed int *temp_r_offset_addr;
    vector signed short* temp_x_offset_addr_p_d;

    /*加载向量h*/
    temp_vh_h_l = (hvector signed short*)(&temp_vh);
    temp_vh_h_l[0] = vec_ld(0,(hvector signed short*)(&h));
    temp_vh_h_l[1] = vec_ld(0,(hvector signed short*)(&h));
    
    for(i = 0;i<nr;i+=4){
        temp_x_offset_addr_p_d= (vector signed short*)((short*)x + i);
        //加载32个x
        temp_vx_0_31 = vec_ld(0, temp_x_offset_addr_p_d);

        //混洗提取x0~x15和x1~x16
        shuff_mode(0);
        temp_vx_shuff_0_1 = vec_shufh(0,temp_vx_0_31,temp_vx_0_31);
        //计算与规约
        temp_vr_comb_0 = vec_mul(temp_vh, temp_vx_shuff_0_1);
        temp_vr_0_15 = vec_reduc16(*(vector signed int*)(&temp_vr_comb_0),0,0);
        temp_vr_0_15 = vec_reduc16(*((vector signed int*)(&temp_vr_comb_0)+1),0,1);

        //混洗提取x2~x17和x3~x18
        shuff_mode(2);
        temp_vx_shuff_2_3 = vec_shufh(0,temp_vx_0_31,temp_vx_0_31);
        //计算与规约
        temp_vr_comb_1 = vec_mul(temp_vh, temp_vx_shuff_2_3);
        temp_vr_0_15 = vec_reduc16(*(vector signed int*)(&temp_vr_comb_1),0,2);
        temp_vr_0_15 = vec_reduc16(*((vector signed int*)(&temp_vr_comb_1)+1),0,3);

        //保存结果
        mov_to_vlr(0x000f);
        vec_st(temp_vr_0_15,i,tmpr);
        mov_to_vlr(0xffff);
    }
    /* 防止O2优化被处理 */
    volatile lvector double temp_in_r;
    vector signed int  M2LD_temp1,M2LD_temp2;
    vector signed int * M2LD_Dst =(vector signed int *)(&temp_in_r); /*改*/
    for(i = 0;i<(vr_len+1)/2;i++){
        /* r强转成双字，再模二取*/
        temp_in_r = vec_ldm2(0,(lvector double*)r+i);

        M2LD_temp1 = M2LD_Dst[0];
        M2LD_temp2 = M2LD_Dst[1];
        /* 将计算结果右移15位，转成Q15格式*/
        M2LD_temp1=vec_shfar(15,M2LD_temp1);
        M2LD_temp2=vec_shfar(15,M2LD_temp2);
        /*两个int转成两个16位short，打包在一个int中,*/
        tmpr[i]=vec_sbale2(M2LD_temp1,M2LD_temp2);
    }
}