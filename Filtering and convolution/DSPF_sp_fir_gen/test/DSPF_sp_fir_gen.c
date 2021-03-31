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
void DSPF_sp_fir_gen_vc1 (
    vector float *x,   
    float *h,    
    vector float *r,   
    int nh,                   
    int nr                   
) {
	int i,j,k;
	 mov_to_vlr(0x000F);
    float (*tempr)[4]=(float (*)[4])r;
    vector float temp1,temp2;
    vector float* temp3;
    for(i = 0; i < nh; i++) {
        temp1 = vec_svbcast(h[i]);
		for(j = 0,k = 0; j < nr; j+=4,k++) { 
          temp2=*((vector float *)((float *)x+i+j)); 
          temp3=(vector float *)(tempr+k);
          temp3[0]=vec_mula(temp2,temp1,temp3[0]);  
		}
	}
	 mov_to_vlr(0xFFFF);
}

void DSPF_sp_fir_gen_vc3 (
    vector float *x,
           float *h,
    vector float *r,
    int nh,                     
    int nr
) {
    mov_to_vlr(0x000F);
	int i,j,k,t;
    vector float temp1,temp2,temp3,temp4,temp5,temp6;
    vector float *temp7,*temp8,*temp9;
    float (*tempr)[4]=(float (*)[4])r;
    for(i = 0; i < nh; i++) {
        temp1 = vec_svbcast(h[i]);
        temp2 = vec_svbcast(h[i]);
        temp3 = vec_svbcast(h[i]);
        for(j = 0,k = 0;j < nr;j+=12,k += 3){
            temp4=*((vector float *)((float *)x+i+j));
            temp5=*((vector float *)((float *)x+i+j+4));
            temp6=*((vector float *)((float *)x+i+j+8)); 
            temp7=(vector float *)(tempr+k);
            temp8=(vector float *)(tempr+k+1);
            temp9=(vector float *)(tempr+k+2);
            t=nr-j;
            temp7[0]=vec_mula(temp4,temp1,temp7[0]);
            if(t>4){
                temp8[0]=vec_mula(temp5,temp2,temp8[0]);
            }
            if(t>8){
                temp9[0]=vec_mula(temp6,temp3,temp9[0]);
            }
        }
    }
    mov_to_vlr(0xFFFF);
}