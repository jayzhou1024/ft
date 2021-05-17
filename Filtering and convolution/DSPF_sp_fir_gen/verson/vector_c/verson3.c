#include "c6x-c.h" 
#include <stdio.h>
#include <math.h> 

/*  
    在DSPF_sp_fir_gen_cn_v2的基础上向量化   计算粒度为4   只开4个vpe来计算
    x,r放AM
    h放SM
*/
void DSPF_sp_fir_gen_vc3 (
    vector float *x,  float *h,vector float *r,  int nh, int nr                   
) {
	int i,j,k;
	mov_to_vlr(0x000F);                                         //只开VPE0~3     这时向量长度为4  访存写回都是以四个数一组   （虽然传入的参数为vector float,但是读写只会使用前四个数）
    float (*tempr)[4]=(float (*)[4])r;
    float * tempx = (float*)x;
    vector float temp1;
    vector float*temp2,*temp3;
    for(i = 0; i < nh; i++) {
        temp1 = vec_svbcast(h[i]);
		for(j = 0,k = 0; j < nr; j+=4,k++) { 
          temp2=(vector float *)(tempx+i+j);                 //x四个一组计算  取0 4 8 12 ...
          temp3=(vector float *)(tempr+k);                     //r每次移动4位
          temp3[0]=vec_mula(temp2[0],temp1,temp3[0]);  
		}
	}
	 mov_to_vlr(0xFFFF);
}
