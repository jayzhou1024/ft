#include "c6x-c.h" 
#include <stdio.h>
#include <math.h> 
#include <string.h>
/**
 *   nh>=2   nh%2=0      这里nh>=2实际为复数个数>=2
 *   nr>=4   nr%4=0
 *   h reverse order
 *   x,h,r
 *   规约不支持浮点数类型 
*/
void DSPF_sp_fir_cplx_vc(
    lvector double *x,double *h,lvector double *r,
    int nh,
    int nr
) {
    int i,j,k;
    lvector  double* temp_x_offset_addr;
    lvector  double temp_vh_0,temp_vh_1,temp_vh_2,temp_vh_3;
    lvector  double temp_vx_0_15,temp_vx_1_16,temp_vx_2_17,temp_vx_3_18;
    vector  float temp_real_0_15,temp_imag_0_15,temp_real_1_16,temp_imag_1_16;
    vector  float temp_real_2_17,temp_imag_2_17,temp_real_3_18,temp_imag_3_18;
    vector  float *r_temp=(vector  float *)r;
    vector  float temp_r_real,temp_r_imag;
    int h23_flag=0;

    /* h逆序和x进行卷积,h[nh-1]，h[nh-2]...h[2],h[1]的顺序与x计算*/
    for(i=0;i<nh;i+=4){	
        /* 逆序取h[i],然后广播*/
        temp_vh_0 = vec_svbcast2(h[nh-1-i]);
        temp_vh_1 = vec_svbcast2(h[nh-2-i]);
        /* nh % 2 == 0 判断是否计算h2,h3*/
        if(nh-i>2){
            temp_vh_2 = vec_svbcast2(h[nh-3-i]);
            temp_vh_3 = vec_svbcast2(h[nh-4-i]);
            h23_flag = 1;
        }
        temp_x_offset_addr =(lvector double*)((double *)x+i);
        /* 计算过程中，结果r中保存： r[0]~r[15]的实部，r[0]~r[15]的虚部，r[16]~r[31]的实部...*/
        for(j = 0,k = 0; j<nr;j+=16,k+=2){        
            temp_r_real = r_temp[k];    /* 取前面计算得到r的中间结果 */
            temp_r_imag = r_temp[k+1];  
            /* 向量计算 复数x[0:15]*svbcast(h[0])  */
            temp_vx_0_15 = vec_ldm2(j,temp_x_offset_addr);
            temp_real_0_15= vec_fcreal32(temp_vh_0,temp_vx_0_15);
            temp_imag_0_15= vec_fcimag32(temp_vh_0,temp_vx_0_15);
            temp_r_real=vec_add(temp_real_0_15,temp_r_real);
            temp_r_imag=vec_add(temp_imag_0_15,temp_r_imag);

            /* 向量计算 x[1:16]*svbcast(h[1])  */
            temp_vx_1_16 = vec_ldm2(j+1,temp_x_offset_addr);
            temp_real_1_16= vec_fcreal32(temp_vh_1,temp_vx_1_16);
            temp_imag_1_16= vec_fcimag32(temp_vh_1,temp_vx_1_16);
            temp_r_real=vec_add(temp_real_1_16,temp_r_real);
            temp_r_imag=vec_add(temp_imag_1_16,temp_r_imag);

            if(h23_flag){
                h23_flag = 0;
                /* 向量计算 x[2:17]*svbcast(h[2])  */
                temp_vx_2_17 = vec_ldm2(j+2,temp_x_offset_addr);
                temp_real_2_17= vec_fcreal32(temp_vh_2,temp_vx_2_17);
                temp_imag_2_17= vec_fcimag32(temp_vh_2,temp_vx_2_17);
                temp_r_real=vec_add(temp_real_2_17,temp_r_real);
                temp_r_imag=vec_add(temp_imag_2_17,temp_r_imag);

                /* 向量计算 x[2:17]*svbcast(h[3])  */
                temp_vx_3_18 = vec_ldm2(j+3,temp_x_offset_addr);
                temp_real_3_18= vec_fcreal32(temp_vh_3,temp_vx_3_18);
                temp_imag_3_18= vec_fcimag32(temp_vh_3,temp_vx_3_18);
                temp_r_real=vec_add(temp_real_3_18,temp_r_real);
                temp_r_imag=vec_add(temp_imag_3_18,temp_r_imag);
                
            }
            /* 一次外循环计算得到的中间结果写回内存 */
            r_temp[k] = temp_r_real;
            r_temp[k+1] = temp_r_imag;
        }
    }
    /*
        模二写，修改r中计算结果的排列顺序
        原r： r[0]~r[15]的实部，r[0]~r[15]的虚部，r[16]~r[31]的实部...
        修改后r: r[0]实部，r[0]虚部，r[1]实部，r[1]虚部...
    */
    int vr_len=(nr+15)/16;
    for(i=0;i<vr_len;i++){
        vec_stm16(r[i],0,&r[i]);       
    }
}

