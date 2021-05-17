#include "c6x-c.h" 
#include <stdio.h>
#include <math.h> 
/*
    不关vpe版本：x,r在AM空间内占用内存需要16字对齐
*/
void DSPF_sp_fir_gen_cn_v2(
    vector float *x,   
    float *h,    
    vector float *r,    
    int nh,                    
    int nr                     
) {
	int i,j,k,diff;
    float* tmpx;
    vector float* temp_x ;
    vector float temp_vh_1,temp_vh_2,temp_vh_3,temp_vh_4;
    vector float temp_vx_0_15,temp_vx_1_16,temp_vx_2_17,temp_vx_3_18;
    for(i = 0; i < nh; i+=4) {
        temp_vh_1 = vec_svbcast(h[i]);  /*由于nh%4 == 0,每次外循环计算4个*/
        temp_vh_2 = vec_svbcast(h[i+1]);
        temp_vh_3 = vec_svbcast(h[i+2]);
        temp_vh_4 = vec_svbcast(h[i+3]);
        tmpx = (float *)x+i;
		for(j = 0,k = 0; j < nr; j+=16,k+=4) { 
            diff = nr - j;
            temp_x = (vector float*)(tmpx);

            temp_vx_0_15 = vec_ld(j,temp_x);  /* h[i]和 x+i ~ x+i+nr 做乘法计算*/
            r[k]=vec_mula(temp_vx_0_15,temp_vh_1,r[k]);  
            temp_vx_1_16 = vec_ld(j+1,temp_x);
            r[k+1]=vec_mula(temp_vx_1_16,temp_vh_2,r[k+1]);  
            temp_vx_2_17 = vec_ld(j+2,temp_x);
            r[k+2]=vec_mula(temp_vx_2_17,temp_vh_3,r[k+2]);   
            temp_vx_3_18 = vec_ld(j+3,temp_x);
            r[k+3]=vec_mula(temp_vx_3_18,temp_vh_4,r[k+3]); 
		}
	}
}