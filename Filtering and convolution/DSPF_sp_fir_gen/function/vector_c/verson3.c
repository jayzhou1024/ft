#include "c6x-c.h" 
#include <stdio.h>
#include <math.h> 

/**
 * 减少计算粒度为4，防止非范围内数据被计算和覆盖
 * 但是vpe不能并行计算
*/
void DSPF_sp_fir_gen_vc3 (
    vector float *x,
           float *h,
    vector float *r,
    int nh,                     
    int nr
) {
    mov_to_vlr(0x000F);
	int i,j,k,t;
    vector float temp1,temp4,temp5,temp6;
    vector float *temp7,*temp8,*temp9;
    float (*tempr)[4]=(float (*)[4])r;
    float *x_temp=(float *)x;
    for(i = 0; i < nh; i++) {
        temp1 = vec_svbcast(h[i]);   
        for(j = 0,k = 0;j < nr;j+=12,k += 3){
            t=nr-j;
            temp4=*((vector float *)(x_temp+i+j));
            temp7=(vector float *)(tempr[k]);
            temp7[0]=vec_mula(temp4,temp1,temp7[0]);
            if(t>4){
                temp5=*((vector float *)(x_temp+i+j+4));
                temp8=(vector float *)(tempr[k+1]);
                temp8[0]=vec_mula(temp5,temp1,temp8[0]);
            }
            if(t>8){
                temp6=*((vector float *)(x_temp+i+j+8)); 
                temp9=(vector float *)(tempr[k+2]);
                temp9[0]=vec_mula(temp6,temp1,temp9[0]);
            }
        }
    }
    mov_to_vlr(0xFFFF);
}