#include "c6x-c.h" 
#include <stdio.h>
#include <math.h> 

/*
    关vpe版本：
        由于nr%4 == 0  只开4个vpe计算时不用要求x,r在AM内占用空间16字对齐
*/
void DSPF_sp_fir_gen_vc1(
    vector float *x,   
    float *h,    
    vector float *r,   
    int nh, 
    int nr                   
) {
	int i,j,k;
	mov_to_vlr(0x000F); /*开vpe0~vpe4 四个vpe*/
    float (*tempr)[4]=(float (*)[4])r;
    vector float temp_vh,temp_vx;
    vector float* temp_vr;
    for(i = 0; i < nh; i++) {
        temp_vh = vec_svbcast(h[i]); 
		for(j = 0,k = 0; j < nr; j+=4,k++) { 
          temp_vx=*((vector float *)((float *)x+i+j)); /* h[i]和 x+i ~ x+i+nr 做乘法计算*/
          temp_vr=(vector float *)(tempr+k);            
          temp_vr[0]=vec_mula(temp_vx,temp_vh,temp_vr[0]); /*中间结果乘累加*/
		}
	}
	 mov_to_vlr(0xFFFF);/*开启全部vpe*/
}