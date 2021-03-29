#include "c6x-c.h" 
#include <stdio.h>
#include <math.h> 
void DSP_fir_gen_cn_v2 (
    vector float *x,
           float *h,
    vector float *r,
    int nh,                     
    int nr
) {
	int i,j,k;
	int t;
    vector float temp1,temp2,temp3,temp4,temp5,temp6;
    for(i = 0; i < nh; i++) {
        temp1 = vec_svbcast(h[i]);
		for(j = 0,k = 0; j < nr; j+=48,k+=3) { //这里�?��计算16,  没有影哝
          // mov_to_vlr(0x00FF);
          temp4=*((vector float *)((float *)x+i+j));
          temp5=*((vector float *)((float *)x+i+j)+1);
          temp6=*((vector float *)((float *)x+i+j)+2);   
          r[k]=vec_mula(temp4,temp1,r[k]);  
          r[k+1]=vec_mula(temp5,temp1,r[k+1]); 
          r[k+2]=vec_mula(temp6,temp1,r[k+2]); 
		}
	}
}