#include "c6x-c.h" 
#include "M7002.h"
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <limits.h>
#include <string.h>
#include<stdio.h>
/* 测试规模 */
#define NX  (256)   /* NX x为总长 */
#define NH  (24)    /* NH 为数组h中复数元素个数 */
#define NR  (100)   /* Nr 为数组r中复数元素个数 */

void DSP_fir_cplx_cn (const short  *x,const short * h, short * r, int nh,int nr);
void DSP_fir_cplx_vc (vector signed short *x,signed short *h,vector signed short  *r,int nh,int nr);
unsigned long get_time_vc(vector signed short *x,signed short *h,vector signed short *r,int nh,int nr);
unsigned long get_time_cn(const short  *x,const short * h,short* r,int nh,int nr);
/* 测试数据x */
const short xAddr_DDR[NX] =
{
    0x5A0A, 0xCD7B, 0x8397, 0xA5BC, 0xB196, 0x963C, 0x61C8, 0xE43A,
    0x1C8B, 0x55F2, 0x32B9, 0xB3DD, 0xE468, 0x64CE, 0x3F29, 0x2815,
    0x99CB, 0x813E, 0xCAB7, 0xE031, 0xE954, 0x8AF2, 0x9943, 0x2780,
    0x8DC1, 0x2C18, 0xA0EA, 0x6371, 0x9033, 0x2F1F, 0xF36D, 0xB972,
    0x5B46, 0x9837, 0x6009, 0x7354, 0x7CBB, 0xCB4E, 0x4D5F, 0x90E4,
    0x27B1, 0xCBF3, 0xD4CD, 0xCA53, 0xD3A7, 0xDD56, 0xEF72, 0x866E,
    0x637B, 0x6CE5, 0x084D, 0x3A65, 0xCA8D, 0x45D0, 0x8A5D, 0xB246,
    0x031B, 0xBC84, 0xB401, 0x9DC2, 0xB285, 0xE273, 0x6C99, 0xE626,
    0x3D8A, 0x5E49, 0x0742, 0xDAE3, 0x7488, 0x5DF7, 0x36BD, 0xA466,
    0xBE5F, 0x8DAB, 0x6647, 0xCF7F, 0x8A8D, 0xBFF5, 0x3E81, 0x867D,
    0x1CD2, 0x1103, 0xF7C9, 0x8B0F, 0xAE8D, 0x03A4, 0x22BE, 0x7CC3,
    0x739C, 0x9D08, 0xC9DF, 0xB2AA, 0x155F, 0x2D3D, 0x80AC, 0xD731,
    0x9654, 0x0273, 0x9582, 0x5C69, 0xBC3B, 0xB957, 0x3641, 0x293F,
    0x3533, 0x94DA, 0x1E69, 0xE5A3, 0xD45A, 0xC82B, 0x8758, 0xFAC3,
    0x7ED0, 0x3E98, 0x4E2C, 0x3C10, 0xDED3, 0x0110, 0x3666, 0xD178,
    0x9683, 0xD6E3, 0x3A24, 0x22E9, 0xFC9F, 0xCD7F, 0x3DE5, 0x2133,
    0x6DE5, 0xD5F3, 0x86A9, 0x8805, 0x8695, 0x54AF, 0xE1AD, 0x5BEE,
    0x856E, 0x8261, 0x0052, 0xA09D, 0xCBAE, 0x9EF8, 0x01F5, 0x52E1,
    0xE2D5, 0xC8A4, 0x55F7, 0xB8A8, 0x1121, 0x6813, 0xE576, 0xBCE3,
    0x1112, 0xB2B4, 0x4070, 0x4C3F, 0x5407, 0xF997, 0x9346, 0xD36C,
    0xDFDE, 0x428A, 0xB497, 0x7E59, 0x5157, 0x6DBD, 0x20E0, 0x23F5,
    0x0D70, 0x34BE, 0x8481, 0x744F, 0xD429, 0x4CBC, 0xC51A, 0xBE15,
    0x9F01, 0xD327, 0x8468, 0xF118, 0x3D36, 0x8B2D, 0xF0EC, 0x4CA5,
    0xEDE8, 0xCE3D, 0x3A04, 0xF5AC, 0x5EB5, 0x2187, 0x7BCE, 0x077C,
    0xFCFD, 0xDF80, 0xC98B, 0xE564, 0xE27F, 0xE342, 0xB89A, 0xF7D3,
    0x4F39, 0xBA12, 0xF418, 0x0337, 0x6F4B, 0x13D7, 0x4B05, 0x54A1,
    0x2394, 0x5020, 0xFC80, 0x913E, 0x8252, 0x889D, 0x1FE9, 0xEBDE,
    0x96A4, 0x07DD, 0x959E, 0x80B0, 0x56EB, 0xF72D, 0xA67D, 0xCFC3,
    0xBD24, 0x437E, 0x08C7, 0xE546, 0xFC8E, 0x7F3E, 0x5B7A, 0x85A7,
    0x5609, 0xCF9D, 0xFB15, 0x6ED7, 0x9BF4, 0x3289, 0x5037, 0x0443,
    0x9B2D, 0x1E91, 0x0DE0, 0x60DB, 0xF474, 0xAC45, 0x0A2D, 0xBFCE,
    0x4848, 0x8093, 0x577F, 0x75CB, 0x2727, 0x898B, 0xF1D3, 0x2781,
};
/* 测试数据h */
const short hAddr_DDR[2*NH] =
{
    0x05A0, 0x0CD7, 0x0839, 0x0A5B, 0x0B19, 0x0963, 0x061C, 0x0E43,
    0x01C8, 0x055F, 0x032B, 0x0B3D, 0x0E46, 0x064C, 0x03F2, 0x0281,
    0x099C, 0x0813, 0x0CAB, 0x0E03, 0x0E95, 0x08AF, 0x0994, 0x0278,
    0x08DC, 0x02C1, 0x0A0E, 0x0637, 0x0903, 0x02F1, 0x0F36, 0x0B97,
    0x05B4, 0x0983, 0x0600, 0x0735, 0x07CB, 0x0CB4, 0x04D5, 0x090E,
    0x027B, 0x0CBF, 0x0D4C, 0x0CA5, 0x0D3A, 0x0DD5, 0x0EF7, 0x0866,
};

void main(){
	int  *cache=0x040140004;   /*将SM配置成SRAM存储模式*/
    int  *cache1=0x040140000;
	volatile int cache_ok;
	*cache=0x1;
	*cache1=0x1;
    cache_ok = *cache1 ;
    while( cache_ok !=0 )
    cache_ok = *cache1 ;
    /*测试样例变量声明*/
	short rAddr_DDR_cn[2*NR];
	short rAddr_DDR_vc[2*NR];
	vector signed short* xAddr,*rAddr;
    /* 计时器初始化 */
    SetTimerPeriod(0, 0xffffffff);
	TimerStart(0);
    /*计算访问寄存器用时*/
    unsigned long time_cn,time_vc; 
	unsigned long c_time=GetTimerCount(0)-GetTimerCount(0);
	int i,j,nh,nr;
    /* 精度测试临时变量 */
    short diff, diff_max;
    /* 测试 */
    for(nr =8; nr <= NR; nr += 4) {
        for(nh = 4; nh <= NH; nh += 4) {
            /*计算所需向量长度，r需要16字对齐，防止r越界写*/
			int vecx_len =((2*(nh+nr-1)+15)/16+1);   /* nr,nh实际为复数元素个数，而不是数据长度 */
            int vecr_len =2*((nr+15)/16); 
            /* 在AM中申请存放xAddr的内存空间 */
			xAddr = (vector signed short*)vmalloc(vecx_len*sizeof(vector signed short));
            /* 在AM中申请存放rAddr的内存空间,所需空间为实际存储空间的两倍，在计算过程中需要临时保存vector int 的中间结果*/
            rAddr = (vector signed short*)vmalloc(2*vecr_len*sizeof(vector signed short));
			/* 初始化rAddr*/
            short *hAddr = (short *)0x040100000;
            /* 初始化r */
			memset(rAddr_DDR_cn, 0x0000, sizeof(rAddr_DDR_cn));
            memset(rAddr_DDR_vc, 0x0000, sizeof(rAddr_DDR_vc));
            /* 通过DMA方式将源数据从DDR中搬移到AM空间中，调用M7002_datatrans函数实现DMA数据搬移 */ 
            /*  
                搬移时，x起始地址为xAddr_DDR+2*(NH-nh)，只在本测试中有效
                原因：未优化版本的C语言函数中，x[0]为xAddr_DDR+2*(NH-1), x[1-nh]为实际需要计算的首元，对应搬移起址为xAddr_DDR+2*(NH-nh)
            */
			M7002_datatrans(xAddr_DDR+2*(NH-nh), xAddr, vecx_len*sizeof(vector signed short));
            M7002_datatrans(rAddr_DDR_vc, rAddr, vecr_len*sizeof(vector signed short));
            M7002_datatrans(hAddr_DDR, hAddr, NH*4); /*复数nh占用size nh*2*sizeof(short)*/
            /*
                 实际 x+2*(NH-1)才算实际数据，前面NH-1个数为卷积填充，
                 当h长为nh时，需要填充2*(nh-1)
            */
           /* 测量函数执行时间 */
			time_cn=get_time_cn(xAddr_DDR+2*(NH-1),hAddr_DDR,rAddr_DDR_cn,nh,nr);
			time_vc=get_time_vc(xAddr,hAddr,rAddr,nh,nr);
            /* 通过DMA方式将有效计算结果从AM中搬移到DDR空间中，这里有效结果size为4*nr */
            M7002_datatrans(rAddr, rAddr_DDR_vc,nr*4);
            /* 精度测试 */
			diff_max = 0;int k;
            for (k = 0; k < 2*nr; k++) {
                diff = rAddr_DDR_cn[k] - rAddr_DDR_vc[k];
                if(diff!=0){
                	printf("k: %d\n",k);
                }
                if (diff < 0)
                    diff = -diff;
                if (diff > diff_max)
                    diff_max = diff;
            }
            if (diff_max > 1) {
               
                printf("Result Failure (r_i)");
            }
            else
                printf("Result Successful (r_i)");
                
            printf("\tNR = %d\t  NH = %d\t cn_time:%d\t  vc_cycle:%d\t\n", nr, nh,time_cn,time_vc);
            /* 释放申请的AM空间 */
			vfree(xAddr);
            vfree(rAddr);
		}
	}
}
/*测量未优化C语言版本函数执行时间 */
unsigned long get_time_cn(
    const short  *x,
    const short * h,    
    short       * r,    
    int nh,                     
    int nr                     
){
    unsigned long time1,time2;
    time1 = GetTimerCount(0);
	DSP_fir_cplx_cn(x,h,r,nh,nr);
    time2 = GetTimerCount(0);
    return time2-time1;
}
/*测量向量C版本函数执行时间 */
unsigned long get_time_vc(vector signed short *x,   
    signed short *h,    
    vector signed short  *r,
    int nh,
    int nr
	){
        unsigned long time1,time2;
        time1 = GetTimerCount(0);
        DSP_fir_cplx_asm(x,h,r,nh,nr);
        time2 = GetTimerCount(0);
        return time2-time1;
}