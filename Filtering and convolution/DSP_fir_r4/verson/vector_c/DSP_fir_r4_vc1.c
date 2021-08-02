#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <float.h>
#include "c6x-c.h" 
#include "M7002.h"
/*nr >= 4; nr % 4 == 0
  nh >= 4; nh % 4 == 0*/
void DSP_fir_r4_vc1 (
    hvector signed short *x,   
    signed short *h,    
    hvector signed short *r,
    int nh,
    int nr
){
     /* 混洗模式1配置 */
    int* MW_config_Addr = (int*)0x040160000;
    //取Src1的1-16位
    MW_config_Addr[0] = 0x04030201;
    MW_config_Addr[1] = 0x08070605;
    MW_config_Addr[2] = 0x0c0b0a09;
    MW_config_Addr[3] = 0x100f0e0d;
    //取Src2的3-18位
    MW_config_Addr[4] = 0x06050403;
    MW_config_Addr[5] = 0x0a090807;
    MW_config_Addr[6] = 0x0e0d0c0b;
    MW_config_Addr[7] = 0x1211100f;
    shuff_mode(0);

    int i,j,k;
    
    /*h*/
    int int_h_0,int_h_1,int_h_2,int_h_3;
    hvector signed short temp_vh_0,temp_vh_1,temp_vh_2,temp_vh_3;
    vector signed int svb_temp_h;
    /*r*/
    vector signed int temp_vr_0_15;
    vector signed int * tmpr= (vector signed int *)r;
    /*x*/
    hvector signed short temp_vx_0_15,temp_vx_1_16,temp_vx_2_17,temp_vx_3_18;
    vector signed short temp_vx_0_31;
    /*地址偏移*/
    vector signed int *temp_r_offset_addr;
    hvector signed short* temp_x_offset_addr;
    vector signed short* temp_x_offset_addr_p_d;

    for(i = 0;i < nh;i+=4){
        ((signed short*)&int_h_0)[0] = h[i];
        ((signed short*)&int_h_0)[1] = h[i];
        svb_temp_h = vec_svbcast(int_h_0);
        temp_vh_0 = vec_ld(0,(hvector signed short*)(&svb_temp_h));/*广播后转成 hvector signed short*/

        ((signed short*)&int_h_1)[0] = h[i + 1];
        ((signed short*)&int_h_1)[1] = h[i + 1];
        svb_temp_h = vec_svbcast(int_h_1);
        temp_vh_1 = vec_ld(0,(hvector signed short*)(&svb_temp_h));

        ((signed short*)&int_h_2)[0] = h[i + 2];
        ((signed short*)&int_h_2)[1] = h[i + 2];
        svb_temp_h = vec_svbcast(int_h_2);
        temp_vh_2 = vec_ld(0,(hvector signed short*)(&svb_temp_h));

        ((signed short*)&int_h_3)[0] = h[i + 3];
        ((signed short*)&int_h_3)[1] = h[i + 3];
        svb_temp_h = vec_svbcast(int_h_3);
        temp_vh_3 = vec_ld(0,(hvector signed short*)(&svb_temp_h));

        temp_x_offset_addr = (hvector signed short*)((short*)x + i);
        temp_x_offset_addr_p_d= (vector signed short*)((short*)x + i);

        for (k=0,j=0;j<nr;j+=16,k++)
        {
            //计算偶数索引部分
            temp_vr_0_15 = tmpr[k];
            temp_vx_0_15 = vec_ld(j, temp_x_offset_addr);
            temp_vr_0_15 = vec_mula(temp_vx_0_15, temp_vh_0, temp_vr_0_15);

            temp_vx_2_17 = vec_ld(j + 2, temp_x_offset_addr);
            temp_vr_0_15 = vec_mula(temp_vx_2_17, temp_vh_2, temp_vr_0_15);

            //计算奇数索引部分
            temp_vx_0_31 = vec_ld(j>>1, temp_x_offset_addr_p_d);
            //按照模式1混洗
            temp_vx_0_31 = vec_shufh(0, *(vector signed short*)(&temp_vx_0_31), *(vector signed short*)(&temp_vx_0_31));

            temp_vx_1_16 = vec_ld(0, ((hvector signed short*)(&temp_vx_0_31)));
            temp_vx_3_18 = *((hvector signed short*)(&temp_vx_0_31) + 1);

            temp_vr_0_15 = vec_mula(temp_vx_1_16, temp_vh_1, temp_vr_0_15);
            temp_vr_0_15 = vec_mula(temp_vx_3_18, temp_vh_3, temp_vr_0_15);
            
            tmpr[k] = temp_vr_0_15;
        }
    }
    /* 防止O2优化被处理 */
    int vr_len = (nr+15)/16;
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