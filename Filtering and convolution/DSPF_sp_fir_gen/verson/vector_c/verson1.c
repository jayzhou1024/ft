#include "c6x-c.h" 
#include <stdio.h>
#include <math.h> 
/*
    不关vpe版本：x,r在AM空间内占用内存需要16字对齐
    nh>=4 && nh%4 == 0
    nr>=4 && nr%4 == 0

    要求r必须初始化为0
*/

void DSPF_sp_fir_gen_vc1 (
    vector float *x,   
    float *h,    
    vector float *r,   
    int nh,                   
    int nr                   
) {
	int i,j,k;
    vector float temp1,temp2;
    for(i = 0; i < nh; i++) {
        temp1 = vec_svbcast(h[i]);
		for(j = 0,k = 0; j < nr; j+=16,k++) { 
          temp2=*((vector float *)((float *)x+i+j));   
          r[k]=vec_mula(temp2,temp1,r[k]);  
		}
	}
}