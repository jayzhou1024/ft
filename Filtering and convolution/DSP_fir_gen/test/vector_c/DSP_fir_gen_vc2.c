#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <float.h>
#include "c6x-c.h" 
#include "M7002.h"
/*
    vector C 版本2    O2优化挂了
        奇数偶数计算合并
*/
void DSP_fir_gen_vc2 (
    hvector signed short *x,   
    signed short *h,    
    hvector signed short *r,
    int nh,
    int nr
){
    int i,j,k;
    int vr_len = (nr+15)/16;
    /*h*/
    int int_h_0,int_h_1,int_h_2,int_h_3;
    int flag_h1 = 0,flag_h2 = 0,flag_h3 = 0;
    hvector signed short temp_vh_0,temp_vh_1,temp_vh_2,temp_vh_3;
    /*r*/
    // vector signed int temp_vr_0_15,temp_vr_16_31,temp_vr_32_47,temp_vr_48_63;
    vector signed int temp_vr_0_15,temp_vr_0_14,temp_vr_15_30,temp_vr_15_30_new;
    /*x*/
    hvector signed short temp_vx_0_15,temp_vx_1_16,temp_vx_2_17,temp_vx_3_18;
    /*暂时存放vector signed int类型数据*/
    vector signed int * tmpr= (vector signed int *)r;
    // vector signed int *svb_int_h1;
    vector signed int *svb_temp_h;
    /*x地址偏移*/
    hvector signed short* temp_x_offset_addr;
    vector signed int *temp_r_offset_addr;
    /*
        奇数index的h[i]广播后与x做向量乘法时，x取数需要做16bit的偏移，但是AM不支持16bit偏移取指
        这里选择计算完成后再取偏移，保留后15位为计算结果，但是写回时为向量写，需要将第16个数处理为0
        具体方法：计算完成后写到一个初始化为0的双字空间中，偏移一个int,再写回。
    */
    lvector int ttt;
    lvector int *temp_in_r =&ttt;  /*双字向量，处理奇数index计算结果的中间桥梁*/

    int old_index = 0;

    vector signed int * temp_in_r_high =((vector signed int *)(temp_in_r));
    vector signed int * temp_in_r_low = ((vector signed int *)temp_in_r)+1;
    temp_in_r_high[0]= vec_movi(0);
    temp_in_r_low[0] = vec_movi(0);

    vector signed int temp_computer = vec_movi(0);
    int old_deal = nr%16;
    /* 偶数索引h[i]广播后和x计算 */   
    for(i = 0;i < nh; i+=4){
        /* 不支持short类型的广播，拼成int类型再广播 */
        ((signed short*)&int_h_0)[0]=h[i];
        ((signed short*)&int_h_0)[1]=h[i];
        svb_temp_h[0]=vec_svbcast(int_h_0);  
        temp_vh_0 =*(hvector signed short*)(svb_temp_h);/*广播后转成 hvector signed short*/   
        if(i+1<nh){
            ((signed short*)&int_h_1)[0]=h[i+1];
            ((signed short*)&int_h_1)[1]=h[i+1];
            svb_temp_h[0]=vec_svbcast(int_h_1);
            temp_vh_1 =*(hvector signed short*)(svb_temp_h);
            flag_h1=1;
        }
        if(i+2<nh){
            ((signed short*)&int_h_2)[0]=h[i+2];
            ((signed short*)&int_h_2)[1]=h[i+2];
            svb_temp_h[0]=vec_svbcast(int_h_2);
            temp_vh_2 =*(hvector signed short*)(svb_temp_h);
            flag_h2 = 1;
        }
        if(i+3<nh){
            ((signed short*)&int_h_3)[0]=h[i+3];
            ((signed short*)&int_h_3)[1]=h[i+3];
            svb_temp_h[0]=vec_svbcast(int_h_3);
            temp_vh_3 =*(hvector signed short*)(svb_temp_h);
            flag_h3 = 1;
        }
        temp_x_offset_addr = (hvector signed short*)((short *)x+i); 
        /*如果存在h[i]奇数索引计算，需要特殊处理*/
        if(flag_h1 || flag_h3){
            old_index = 1;
        }
        /*存在奇数索引时，循环条件中上限需要加1，nr % 16 == 0时，第一次只计算了15个，还需要一次循环来补充*/
        for(j = 0,k=0;j<nr+old_index;j+=16,k+=1){
            /*h[i] 偶数索引部分*/
            temp_vr_0_15 = tmpr[k];
            temp_vx_0_15 = vec_ld(j,temp_x_offset_addr);
            temp_vr_0_15= vec_mula(temp_vx_0_15,temp_vh_0,temp_vr_0_15);

            if(flag_h2){
                temp_vx_2_17 = vec_ld(j+2,temp_x_offset_addr);
                temp_vr_0_15= vec_mula(temp_vx_2_17,temp_vh_2,temp_vr_0_15);
            }
            /*h[i] 奇数索引部分*/
            if(flag_h1){
                /*实际上还是取的temp_vx_0_15*/
                temp_vr_0_14 = vec_mula(temp_vx_0_15,temp_vh_1,temp_computer); /*只有mula支持lvector short乘*/
    
                if(!j){
                    temp_in_r_high[0] = temp_vr_0_14;
                    /* 计算的中间结果只有0~14，下一次计算的中间结果为15~30*/
                    temp_vr_0_15 = vec_add(*(vector signed int *)((int*)(temp_in_r)+1),temp_vr_0_15) ; /* 取1~17位为计算结果  第17位为0，实际计算了15位*/
                }else{  
                    temp_r_offset_addr = tmpr + (k -1);
                    temp_vr_15_30 = temp_vr_0_14;
                }
            }
            if(flag_h3){
                temp_vr_0_14 = vec_mula(temp_vx_2_17,temp_vh_3,temp_computer);
                if(!j){
                    temp_in_r_high[0] = temp_vr_0_14;
                    /* 计算的中间结果只有0~14，下一次计算的中间结果为15~30*/
                    temp_vr_0_15 = vec_add(*(vector signed int *)((int*)(temp_in_r)+1),temp_vr_0_15) ; /* 取1~17位为计算结果  第17位为0，实际计算了15位*/
                }else{  
                    /*flag_h3为1时flag_h1一定为1*/
				    temp_vr_15_30 =vec_add(temp_vr_0_14,temp_vr_15_30) ; /* 正常取16位计算*/
                }
            }
            /* 补齐奇数索引在计算时缺失的部分*/
            if(!old_deal && old_index && j  == nr){
                if(flag_h1){
                    temp_vr_15_30 = vec_ld(15,temp_r_offset_addr);
                    temp_vr_0_14 = vec_mula(temp_vx_0_15,temp_vh_1,temp_computer); /*只有mula支持lvector short乘*/
                    temp_vr_15_30 = vec_add(temp_vr_0_14,temp_vr_15_30); /* 正常取16位计算*/
                }
                if(flag_h3){
                    temp_vr_0_14 = vec_mula(temp_vx_2_17,temp_vh_3,temp_computer);
                    temp_vr_15_30 =vec_add(temp_vr_0_14,temp_vr_15_30) ; /* 正常取16位计算*/
                }
                vec_st(temp_vr_15_30,15,temp_r_offset_addr);
                
            }else{
                tmpr[k] = temp_vr_0_15;
                /*写回存在数据冲突*/
                if(j&&j!=nr){
                    temp_vr_15_30_new = vec_ld(15,temp_r_offset_addr);
                    temp_vr_15_30_new = vec_add(temp_vr_15_30,temp_vr_15_30_new);
                    vec_st(temp_vr_15_30_new,15,temp_r_offset_addr);
                }
            }
        }
    }
    /*转成双字  模二取，转成Q15格式，然后利用vec_sbale2函数做饱和处理*/
    //lvector double M2LD_Dst;   //原
    vector signed int  *M2LD_temp1,*M2LD_temp2;
    lvector double* M2LD_Dst =(lvector double*)temp_in_r; /*改*/
	M2LD_temp1 = ((vector signed int *)(M2LD_Dst));
    M2LD_temp2 = ((vector signed int *)(M2LD_Dst)+1);

    for(i = 0;i<(vr_len+1)/2;i++){
        /* r强转成双字，再模二取*/
        M2LD_Dst[0] = vec_ldm2(0,(lvector double*)r+i);
        /* 将计算结果右移15位，转成Q15格式*/
        M2LD_temp1[0]=vec_shfar(15,M2LD_temp1[0]);
        M2LD_temp2[0]=vec_shfar(15,M2LD_temp2[0]);
        /*两个int转成两个16位short，打包在一个int中,*/
        tmpr[i]=vec_sbale2(M2LD_temp1[0],M2LD_temp2[0]);
    }
    vfree(M2LD_Dst);
}