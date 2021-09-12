#include "c6x-c.h" 
#include <stdio.h>
#include <math.h> 
/*
    不关vpe版本：x,r在AM空间内占用内存需要16字对齐
    nh>=4 && nh%4 == 0
    nr>=4 && nr%4 == 0
*/
void DSPF_sp_fir_gen_vc(
    vector float *x,   
    float *h,    
    vector float *r,    
    int nh,                    
    int nr                     
) {
	int i,j,k;
    vector float* temp_x_offset_addr;
    vector float temp_vh_0, temp_vh_1, temp_vh_2, temp_vh_3, temp_vr;
    vector float temp_vx_0_15, temp_vx_1_16, temp_vx_2_17, temp_vx_3_18;
    
    float temp = 0;
    vector float vtemp =vec_svbcast(temp);
    for(i = 0; i < nh; i += 4) {
        temp_vh_0 = vec_svbcast(h[i]);  /*由于nh%4 == 0,每次外循环计算4个*/
        temp_vh_1 = vec_svbcast(h[i + 1]);
        temp_vh_2 = vec_svbcast(h[i + 2]);
        temp_vh_3 = vec_svbcast(h[i + 3]);
        temp_x_offset_addr =  (vector float*)((float *)x + i);
		for(j = 0, k = 0; j < nr; j += 16, k += 1) {
            temp_vr = r[k];
            /* 第一次计算初始化r为0 */
            if (!i) {  
                temp_vr = vtemp;
            }
            /* h[i]和 x+i ~ x+i+nr 做乘法计算*/
            temp_vx_0_15 = vec_ld(j, temp_x_offset_addr);  
            temp_vr=vec_mula(temp_vx_0_15, temp_vh_0, temp_vr);  

            temp_vx_1_16 = vec_ld(j + 1, temp_x_offset_addr);
            temp_vr=vec_mula(temp_vx_1_16, temp_vh_1, temp_vr); 

            temp_vx_2_17 = vec_ld(j + 2, temp_x_offset_addr);
            temp_vr=vec_mula(temp_vx_2_17, temp_vh_2, temp_vr); 

            temp_vx_3_18 = vec_ld(j + 3, temp_x_offset_addr);
            temp_vr=vec_mula(temp_vx_3_18, temp_vh_3, temp_vr);  
 
            r[k] = temp_vr;
		}
	}
}