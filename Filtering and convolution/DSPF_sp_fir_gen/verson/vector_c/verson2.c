#include "c6x-c.h" 
#include <stdio.h>
#include <math.h> 

//并行化  这里存在不必要计算，可能存在非必要计算空间数据被修改
void DSPF_sp_fir_gen_vc2 (
    vector float *x,
           float *h,
    vector float *r,
    int nh,                     
    int nr
) {
	int i,j,k;
	int t;
    vector float temp1,temp4,temp5,temp6;
    for(i = 0; i < nh; i++) {
        temp1 = vec_svbcast(h[i]);                       
		for(j = 0,k = 0; j < nr; j+=48,k+=3) { 
            temp4=*((vector float *)((float *)x+i+j));   //第一次循环  x 取 0~15 16~31 32~47  
            temp5=*((vector float *)((float *)x+i+j)+1);  
            temp6=*((vector float *)((float *)x+i+j)+2); 
            r[k]=vec_mula(temp4,temp1,r[k]);             
            r[k+1]=vec_mula(temp5,temp1,r[k+1]); 
            r[k+2]=vec_mula(temp6,temp1,r[k+2]); 
		}
	}
}