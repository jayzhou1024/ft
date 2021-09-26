#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <float.h>
#include "c6x-c.h" 
#include "M7002.h"
/*nh >= 4; nh % 4 == 0*/

float DSPF_sp_lms_vc1 (
    vector float *x,
    vector float *h,
    float *y_i,
    float *y_o,
    float ar,
    float error,
    int nh,
    int nx
){
    int i,j;
    int h_remain;
    vector float vec_error, vec_ar, vec_error_ar;
    vector float vec_h0,vec_h1,vec_h2,vec_h3;
    vector float vec_x0_1,vec_x1_1,vec_x2_1,vec_x3_1,vec_x0,vec_x1,vec_x2,vec_x3;
    vector float* temp_x_offset_1;
    vector float* temp_x_offset;
    vector float vec_sum;
    float sum_list[4] = {0};
    float sum=0.0;
    
    /*关闭VPE4~15*/
    mov_to_vlr(0x000f);

    vec_ar = vec_svbcast(ar);
    
    for(i=0;i<nx;i++){
        vec_error = vec_svbcast(error);
        vec_error_ar = vec_muli(vec_error,vec_ar);
        temp_x_offset = (vector float*)((float*)x+i);
        temp_x_offset_1 = (vector float*)((float*)temp_x_offset+1);

        for(j=0;j<nh;j+=4){
        	if(j==0){
        		vec_sum = vec_svbcast((float)j);
        	}
            vec_h0 = vec_ld(j,h);
            vec_x0 = vec_ld(j,temp_x_offset);
            vec_x0_1 = vec_ld(j,temp_x_offset_1);
            vec_h0 = vec_mula(vec_error_ar,vec_x0,vec_h0);
            vec_sum = vec_mula(vec_h0,vec_x0_1,vec_sum);
            vec_st(vec_h0,j,h);
        }

        /*vec_sum搬移至SVR中*/
        mov_to_svr_v16sf(vec_sum);
        *(int*)&sum_list[0]=mov_from_svr0();
        *(int*)&sum_list[1]=mov_from_svr1();
        *(int*)&sum_list[2]=mov_from_svr2();
        *(int*)&sum_list[3]=mov_from_svr3();

        sum =  sum_list[0]+sum_list[1];
        sum += sum_list[2];
        sum += sum_list[3];
        
        y_o[i] = sum;
        error = y_i[i] - sum;
    }
    /*打开全部VPE*/
    mov_to_vlr(0xffff);
    return error;
}
