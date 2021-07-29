#include "c6x-c.h" 
#include <stdio.h>
#include<stdlib.h>
#include<string.h>
#include "M7002.h"

#define NR (32)
#define NH (16)
#define NC (6)
#define NX (1 << ( NC + 1 ))
#define INDEX 4

unsigned long  getTime_cn( float *x,float *h, float *r,int nh,int nr,int index,int csize);
unsigned long  getTime_vc(vector float * x,float *h,vector float* r,int nh,int nr,int index,int csize);
//void DSPF_sp_fircirc_cn(const float *x,const float *h,float *y,int nh,int ny);
//void DSPF_sp_fircirc_vc(vector float *x,float *h,vector float *r,int nh,int nr);
void random_x_sp(float *x, int n, float factor);
void random_h_sp(float *h, int n);

void main(){
    int  *cache=0x040140004; /*将SM配置成SRAM存储模式*/
    int  *cache1=0x040140000;
	volatile int cache_ok;
	*cache=0x1;
	*cache1=0x1;
    cache_ok = *cache1 ;
    while( cache_ok !=0 )
    cache_ok = *cache1;
    /*测试样例变量声明*/
    float hAddr_DDR[NH];   /*测试样例数组h*/
    float xAddr_DDR[NX]; /*测试样例数组x*/
    float rAddr_DDR_cn[NR]; /*保存未优化C语言版本计算结果*/
    float rAddr_DDR_vc[NR]; /*保存向量C版本函数计算结果*/

    /*测试样例初始化*/
    random_x_sp(xAddr_DDR, NX, 10.0);/*生成测试样例数组x*/
    random_h_sp(hAddr_DDR, NH);/*生成测试样例数组h*/
 
    /*初始化 xAddr和rAddr*/
    int len_vr = (NR+15)/16;  /*申请Addr空间时，保证16字对齐*/
    int len_vx = (NX+15)/16;
	float* hAddr = (float*)0x040100000; 
	vector float* xAddr = (vector float*)vmalloc(len_vx*sizeof(vector float)); 
	vector float* rAddr = (vector float*)vmalloc(len_vr*sizeof(vector float)); 
	/*通过DMA方式将源数据从DDR中搬移到AM空间中，调用M7002_datatrans函数实现DMA数据搬移*/                  
	M7002_datatrans(xAddr_DDR, xAddr, (NX)*4); /*只用将有效数据传入*/
	M7002_datatrans(hAddr_DDR, hAddr, (NH)*4);
    /* 计时器初始化 */
	SetTimerPeriod(0, 0xffffffff);
	TimerStart(0);
    /*计算访问寄存器用时*/
    unsigned long time_vc,time_cn;
	unsigned long c_time=GetTimerCount(0)-GetTimerCount(0);
    int nr,nh,i,index_i,nc;
    float pct_diff, max_pct_diff = 0; 
    /* 测试 */
    // for(index_i = 1; index_i < INDEX; index_i++){
    //     for(nc = 1; nc < NC; nc++){
            index_i = 1,nc = 1;
            for(nr = 8; nr <= NR; nr += 4) {   
                for(nh = 2; nh <= NH; nh += 2) {  
                    //   nr = 32; 
                    //   nh = 4;
                    /*初始化r，计算过程都是乘累加，需要保证r初值为0*/
                    memset(rAddr_DDR_cn,0,sizeof(rAddr_DDR_cn));
                    memset(rAddr_DDR_vc,0,sizeof(rAddr_DDR_vc));
                    /*通过DMA方式将rAddr数据从DDR中搬移到AM空间中*/
                    M7002_datatrans(rAddr_DDR_vc,rAddr,NR*4);
                    /*函数时间测量*/
                    time_cn=getTime_cn(xAddr_DDR,hAddr_DDR,rAddr_DDR_cn,nh,nr,index_i,nc);
                    time_vc=getTime_vc(xAddr,hAddr,rAddr,nh,nr,index_i,nc);
                    /*通过DMA方式将rAddr数据从AM中搬移到DDR空间中*/
                    M7002_datatrans(rAddr,rAddr_DDR_vc,NR*4);
                    /*精度测试*/
                    for(i=0; i<nr; i++) {
                            pct_diff = (rAddr_DDR_cn[i] - rAddr_DDR_vc[i]) / rAddr_DDR_cn[i] * 100.0;
                            if (pct_diff < 0) pct_diff *= -1;
                            if (pct_diff > max_pct_diff) max_pct_diff = pct_diff;
                    }
                    if (max_pct_diff > 0.01)
                            printf("Result Failure  max_pct_diff = %f", max_pct_diff);
                    else
                            printf("Result Successful ");
                        
                        printf("\tNX = %-3d\t  NH = %-2d\t cn_cycle:%-4d\t  vc_cycle:%-4d\t \n", nr, nh,time_cn-c_time,time_vc-c_time);
                }
            }
    //     }
    // }
    vfree(xAddr);
    vfree(rAddr);
}
/*生成单精度随机数测试集x*/
void random_x_sp(float *x1, int n, float factor){
   float rand_midpoint = RAND_MAX / 2.0;   
    int i;
    for (i = 0; i < n; i++){
        x1[i] = ((rand() - rand_midpoint) / rand_midpoint) * factor;
	}
}
/*生成单精度随机数测试集h*/
void random_h_sp(float *h, int n){
	int i;
	float frand_max = RAND_MAX, pair_sum = 2.0 /n;
    for (i = 0; i < n; i++){
		h[i] = (rand() / frand_max) * pair_sum;
        h[n - 1 - i] = pair_sum - h[i];
	}
}	
/*测量向量C版本函数 */
unsigned long  getTime_vc(vector float * x,float *h,vector float* r,int nh,int nr,int index,int csize){
	unsigned long time1,time2;
    time1 = GetTimerCount(0);
	DSPF_sp_fircirc_vc4(x,h,r,index,csize,nh,nr);
    time2 = GetTimerCount(0);
    return time2-time1;
}
/*测量未优化C语言版本函数 */
unsigned long  getTime_cn( float *x,float *h, float *r,int nh,int nr,int index,int csize){
	unsigned long time1,time2;
	time1 = GetTimerCount(0);
	DSPF_sp_fircirc_cn(x,h,r,index,csize,nh,nr);
    time2 = GetTimerCount(0);
    return time2-time1;
}



