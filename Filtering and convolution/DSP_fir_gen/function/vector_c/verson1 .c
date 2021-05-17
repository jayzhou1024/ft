#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <float.h>
#include "c6x-c.h" 
#include "M7002.h"

void DSP_fir_gen_vc1 (
    hvector signed short *x,   
    signed short *h,    
    hvector signed short *r,
    int nh,
    int nr
){
    int i,j,k;

    int vr_len = (nr+15)/16,temp_h;
    short * tmpx;
    hvector signed short temp_vh,temp_vx;
    vector signed int temp_even_vr;
    vector signed int *temp_old_vr;
    
    /*暂时存放vector signed int类型数据*/
    vector signed int * tmpr= (vector signed int *)r;
    vector signed int *svb_int_h1;
    // vector signed int *svb_int_h1;
    /*
        奇数index的h[i]广播后与x做向量乘法时，x取数需要做16bit的偏移，但是AM不支持16bit偏移取指
        这里选择计算完成后再取偏移，保留后15位为计算结果，但是写回时为向量写，需要将第16个数处理为0
        具体方法：计算完成后写到一个初始化为0的双字空间中，偏移一个int,再写回。
    */
    lvector int ttt;
    lvector int *temp_in_r =&ttt;  /*双字向量，处理奇数index计算结果的中间桥梁*/
    
    vector signed int * temp_in_r_high =((vector signed int *)(temp_in_r));
    vector signed int * temp_in_r_low = ((vector signed int *)temp_in_r)+1;
    temp_in_r_high[0]= vec_movi(0);
    temp_in_r_low[0] = vec_movi(0);
    /* 偶数索引h[i]广播后和x计算 */   
    for(i = 0;i < nh; i+=2){
        /*不支持short类型的广播，拼成int类型再广播*/
        ((signed short*)&temp_h)[0]=h[i];
        ((signed short*)&temp_h)[1]=h[i];
          svb_int_h1[0]=vec_svbcast(temp_h);
          temp_vh =*(hvector signed short*)(svb_int_h1);
        /*广播后转成 hvector signed short*/   
        for(j = 0,k=0;j<nr;j+=16,k+=1){
            /**/
            temp_even_vr = tmpr[k];
            tmpx = ((short*)x)+i+j;
            temp_vx= *(hvector signed short*)(tmpx);
            temp_even_vr= vec_mula(temp_vx,temp_vh,temp_even_vr);
            tmpr[k] = temp_even_vr;
        }
    }
    /* 奇数索引h[i]广播后和x计算 */
    for(i = 1;i < nh; i+=2){
        /*不支持short类型的广播，拼成int类型再广播*/
        ((signed short*)&temp_h)[0]=h[i];
        ((signed short*)&temp_h)[1]=h[i];
          svb_int_h1[0]=vec_svbcast(temp_h);
           /*广播后转成 hvector signed short*/
          temp_vh =*(hvector signed short*)(svb_int_h1);
         /*  nr+1保证循环次数正确
             考虑到nr为16倍数时，奇数索引h[i]第一次只计算了15个结果，需要多一次循环补齐
         */
        for(j = 0,k=0;j<nr+1;j+=16,k+=1){   
            tmpx = ((short*)x)+i+j;   /* 这里地址会自动对齐*/
            temp_vx= *(hvector signed short*)(tmpx);
            temp_in_r_high[0]= vec_mula(temp_vx,temp_vh,temp_in_r_low[0]);
			if(j==0){  /*只用对第一次计算做特殊处理*/
				temp_old_vr = (vector signed int *)((int *)tmpr);
				temp_old_vr[0] =vec_add(*(vector signed int *)((int*)(temp_in_r)+1),temp_old_vr[0]) ; /* 取1~17位为计算结果  第17位为0，实际计算了15位*/
			}else{
				temp_old_vr = (vector signed int *)((int *)tmpr+15+16*(k-1));
				temp_old_vr[0] =vec_add(temp_in_r_high[0],temp_old_vr[0]) ; /* 正常取16位计算*/
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