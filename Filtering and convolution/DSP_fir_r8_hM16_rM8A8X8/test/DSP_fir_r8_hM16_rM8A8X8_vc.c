#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <float.h>
#include "c6x-c.h" 
#include "M7002.h"
/**
 * 
 * nh % 8 == 0  &&  nh > 8
 * nr % 8 == 0  &&  nr > 8
 * 
 * 
 * O2挂了
**/

void DSP_fir_r8_hM16_rM8A8X8_vc (
    hvector signed short *x,   
    signed short *h,    
    hvector signed short *r,
    int nh,
    int nr
){
    int i,j,k;
    int vr_len = (nr+15)/16;
    /*h*/
    volatile int int_h_0,int_h_1,int_h_2,int_h_3,int_h_4,int_h_5,int_h_6,int_h_7;
    volatile hvector signed short temp_vh_0,temp_vh_1,temp_vh_2,temp_vh_3,temp_vh_4,temp_vh_5,temp_vh_6,temp_vh_7;
    /*r*/
    // vector signed int temp_vr_0_15,temp_vr_16_31,temp_vr_32_47,temp_vr_48_63;
    volatile  vector signed int temp_vr_0_15,temp_vr_15_30,temp_vr_15_30_new,temp_vr_15_30_old;
    volatile  vector signed int temp_vr_0_14, temp_vr_2_16,temp_vr_4_18,temp_vr_6_20;
    /*x*/
    volatile  hvector signed short temp_vx_0_15,temp_vx_2_17,temp_vx_4_19,temp_vx_6_21;
    /*暂时存放vector signed int类型数据*/
    vector signed int * tmpr= (vector signed int *)r;
    // vector signed int *svb_int_h1;
    volatile vector signed int *svb_temp_h_1,*svb_temp_h_2,*svb_temp_h_3,*svb_temp_h_4,*svb_temp_h_5,*svb_temp_h_6,*svb_temp_h_7,*svb_temp_h_8;
    /* x地址偏移 */
    volatile hvector signed short* temp_x_offset_addr;
    /* r地址偏移 */
    volatile vector signed int *temp_r_offset_addr;
    /*
        奇数index的h[i]广播后与x做向量乘法时，x取数需要做16bit的偏移，但是AM不支持16bit偏移取指
        这里选择计算完成后再取偏移，保留后15位为计算结果，但是写回时为向量写，需要将第16个数处理为0
        具体方法：计算完成后写到一个初始化为0的双字空间中，偏移一个int,再写回。
    */
    lvector int ttt;
    lvector int *temp_in_r =&ttt;  /*双字向量，处理奇数index计算结果的中间桥梁*/
    vector signed int * temp_in_r_high =(vector signed int *)(temp_in_r);
    volatile vector signed int * temp_in_r_low = (vector signed int *)(temp_in_r)+1;
    temp_in_r_high[0]= vec_movi(0);
    temp_in_r_low[0] = vec_movi(0);
    volatile vector signed int *temp_in_r_offset1 =(vector signed int *)((int*)(temp_in_r)+1);



    vector signed int temp_computer = vec_movi(0);
     int old_deal = nr & 15;
    /* 偶数索引h[i]广播后和x计算 */ 
    for(i = 0; i < nh; i += 8){
        /* 不支持short类型的广播，拼成int类型再广播 */
        (( short*)&int_h_0)[0]=h[i];
        ((short*)&int_h_0)[1]=h[i];
        svb_temp_h_1[0]=vec_svbcast(int_h_0);  /* 这里用普通变量会报错 */
        temp_vh_0 =*(hvector signed short*)(svb_temp_h_1);/*广播后转成 hvector signed short*/   
       
        ((signed short*)&int_h_1)[0]=h[i+1];
        ((signed short*)&int_h_1)[1]=h[i+1];
        svb_temp_h_2[0]=vec_svbcast(int_h_1);
        temp_vh_1 =*(hvector signed short*)(svb_temp_h_2);
        
        ((signed short*)&int_h_2)[0]=h[i+2];
        ((signed short*)&int_h_2)[1]=h[i+2];
        svb_temp_h_3[0]=vec_svbcast(int_h_2);
        temp_vh_2 =*(hvector signed short*)(svb_temp_h_3);
        
        ((signed short*)&int_h_3)[0]=h[i+3];
        ((signed short*)&int_h_3)[1]=h[i+3];
        svb_temp_h_4[0]=vec_svbcast(int_h_3);
        temp_vh_3 =*(hvector signed short*)(svb_temp_h_4);

        ((signed short*)&int_h_4)[0]=h[i+4];
        ((signed short*)&int_h_4)[1]=h[i+4];
        svb_temp_h_5[0]=vec_svbcast(int_h_4);
        temp_vh_4 =*(hvector signed short*)(svb_temp_h_5);
 
        ((signed short*)&int_h_5)[0]=h[i+5];
        ((signed short*)&int_h_5)[1]=h[i+5];
        svb_temp_h_6[0]=vec_svbcast(int_h_5);
        temp_vh_5 =*(hvector signed short*)(svb_temp_h_6);

        ((signed short*)&int_h_6)[0]=h[i+6];
        ((signed short*)&int_h_6)[1]=h[i+6];
        svb_temp_h_7[0]=vec_svbcast(int_h_6);
        temp_vh_6 =*(hvector signed short*)(svb_temp_h_7);

        ((signed short*)&int_h_7)[0]=h[i+7];
        ((signed short*)&int_h_7)[1]=h[i+7];
        svb_temp_h_8[0]=vec_svbcast(int_h_7);
        temp_vh_7 =*(hvector signed short*)(svb_temp_h_8);
        temp_x_offset_addr = (hvector signed short*)((short *)x+i); 
 
        /*存在奇数索引时，循环条件中上限需要加1，nr % 16 == 0时，第一次只计算了15个，还需要一次循环来补充*/
       
        for(j = 0, k = 0; j < nr + 1; j += 16,k += 1){
            /*h[i] 偶数索引部分*/
            temp_vr_0_15 = tmpr[k];

            temp_vx_0_15 = vec_ld(j,temp_x_offset_addr);
            temp_vr_0_15= vec_mula(temp_vx_0_15,temp_vh_0,temp_vr_0_15);
            
            temp_vx_2_17 = vec_ld(j+2,temp_x_offset_addr);
            temp_vr_0_15 = vec_mula(temp_vx_2_17,temp_vh_2,temp_vr_0_15);

            temp_vx_4_19 = vec_ld(j+4,temp_x_offset_addr);
            temp_vr_0_15 = vec_mula(temp_vx_4_19,temp_vh_4,temp_vr_0_15);          

            temp_vx_6_21 = vec_ld(j+6,temp_x_offset_addr);
            temp_vr_0_15 = vec_mula(temp_vx_6_21,temp_vh_6,temp_vr_0_15);          
            /*h[i] 奇数索引部分*/
            /* 实际上取的为temp_vx_0_15 */
            temp_vr_0_14 = vec_mula(temp_vx_0_15,temp_vh_1,temp_computer); /*只有mula支持lvector short乘*/
            temp_vr_2_16 = vec_mula(temp_vx_2_17,temp_vh_3,temp_computer); 
            temp_vr_4_18 = vec_mula(temp_vx_4_19,temp_vh_5,temp_computer); 
            temp_vr_6_20 = vec_mula(temp_vx_6_21,temp_vh_7,temp_computer); 
            
            if(!j){
                temp_in_r_high[0] = temp_vr_0_14;
                /* 计算的中间结果只有0~14，下一次计算的中间结果为15~30*/
                temp_vr_0_15 = vec_add(*temp_in_r_offset1,temp_vr_0_15); /* 取1~17位为计算结果  第17位为0，实际计算了15位*/
                
                temp_in_r_high[0] = temp_vr_2_16;
                temp_vr_0_15 = vec_add(*temp_in_r_offset1,temp_vr_0_15);

                temp_in_r_high[0] = temp_vr_4_18;
                temp_vr_0_15 = vec_add(*temp_in_r_offset1,temp_vr_0_15);

                temp_in_r_high[0] = temp_vr_6_20;
                temp_vr_0_15 = vec_add(*temp_in_r_offset1,temp_vr_0_15);
            }else{     /* 正常取16位计算*/
                temp_vr_15_30 = temp_vr_0_14;
                temp_vr_15_30 =vec_add(temp_vr_2_16,temp_vr_15_30); 
                temp_vr_15_30 =vec_add(temp_vr_4_18,temp_vr_15_30); 
                temp_vr_15_30 =vec_add(temp_vr_6_20,temp_vr_15_30); 
            }

            /* 补齐奇数索引在计算时缺失的部分*/
            temp_r_offset_addr = tmpr + (k -1);
            if(!old_deal && j  == nr){
                temp_vr_15_30_old = vec_ld(15,temp_r_offset_addr);
                temp_vr_15_30 =vec_add(temp_vr_15_30,temp_vr_15_30_old) ; /* 正常取16位计算*/
                vec_st(temp_vr_15_30,15,temp_r_offset_addr);
            }else{
                tmpr[k] = temp_vr_0_15;
               
                if(j&&j!=nr){
                    /*写回存在数据冲突*/
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