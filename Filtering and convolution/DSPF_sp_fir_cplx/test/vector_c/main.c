/**
 *   向量c版本函数DSPF_sp_fir_cplx测试代码
 * 
 *   DSPF_sp_fir_cplx(
 *       lvector double *x,  
 *       double *h,
 *       lvector double *r,
 *       int nh,
 *       int nr
 *   )
 * 
 *   参数要求：x,r必须是16的倍数，不足16倍数时末尾补零，
 *            nh：h中的有效数据个数
 *            nr: r中有效数据个数
 *            nh>=2   nh%2=0      这里nh>=2实际为复数个数>=2
 *            nr>=4   nr%4=0
 * 
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <float.h>
#include "c6x-c.h" 
#include "M7002.h"
#define NY (128)
#define NH (16)

#define FLT_THRES  1E-20
void randomx_sp_cplx(float *tempx, int N,float factor);
void randomh_sp_cplx(float *hAddr_DDR, int N);
void DSPF_sp_fir_cplx_vc1 (lvector double *x, double *h,lvector double *r, int nh,int nr);
void DSPF_sp_fir_cplx_cn(const float *x, const float *h, float *y, int nh, int ny);
unsigned long get_time_cn(const float *x, const float *h,float *r, int nh, int ny);
unsigned long get_time_vc(lvector double *xAddr,double *hAddr,lvector double *rAddr,int nh,int nr);
void main(){
    int  *cache=0x040140004;   /*将SM配置成SRAM存储模式*/
    int  *cache1=0x040140000;
	volatile int cache_ok;
	*cache=0x1;
	*cache1=0x1;
    cache_ok = *cache1 ;
    while( cache_ok !=0 )
    cache_ok = *cache1 ;
    /* 初始化 */
    SetTimerPeriod(0, 0xffffffff);
	TimerStart(0);
    /* 寄存器访问时延 */
	unsigned long c_time=GetTimerCount(0)-GetTimerCount(0);

    float hAddr_DDR[2 * NH];  /* 保存输入系数h,*/
    float xAddr_DDR[2*(NY+NH-1)];
	float rAddr_DDR_vc[sizeof(lvector double)*((NY+15)/16)];   /*实际计算过程中在AM空间需要用到的内存空间为sizeof(lvector double)*((NY+15)/16)*/
    float rAddr_DDR_cn[2*NY];
    int i, j=1, ny, nh;
    float pct_diff, max_pct_diff = 0;   /* 精度测试中pct_diff为向量c函数结果与cn.c函数的差值，max_pct_diff为最大差*/
	unsigned long time_cn,time_vc;      /* 保存测试时间*/
    /* 测试*/
  for(ny = 32; ny <= NY; ny += 8) {
      for(nh = 4; nh <= NH; nh += 4) {
            int vecx_len = (nh+ny-1+15)/16;    /*测试样例中x向量化后的向量长度(商向上取整) 这里加1防止越界读*/
            int vecr_len = (ny+15)/16;           /*测试样例中r向量化后的向量长度(商向上取整) */

            /* 初始化xAddr_DDR和hAddr_DDR*/
            memset(xAddr_DDR, 0, sizeof(xAddr_DDR));
            memset(hAddr_DDR, 0, sizeof(hAddr_DDR));

            /* 初始化rAddr_DDR_cn和rAddr_DDR_vc */
            memset(rAddr_DDR_cn,  0, sizeof(rAddr_DDR_cn));
            memset(rAddr_DDR_vc, 0, sizeof(rAddr_DDR_vc));

            /* 初始化xAddr和hAddr */
            /*定义lvector double (15 * 64 bit) 指针变量xAddr,hAddr  并在AM中分配地址*/
            lvector double *xAddr,*rAddr;
            xAddr = (lvector double *)vmalloc(sizeof(lvector double)*vecx_len);     
            rAddr = (lvector double *)vmalloc(sizeof(lvector double)*vecr_len); 
            double * hAddr = (double *)0x040100000;
            /* 随机生成测试样例 */
            randomx_sp_cplx(xAddr_DDR + 2 * (nh - 1), 2 * ny, 10.0);
            randomh_sp_cplx(hAddr_DDR, 2 * nh);
	        /* 通过DMA方式将源数据从DDR中搬移到AM空间中，调用M7002_datatrans函数实现DMA数据搬移 */                             	
            M7002_datatrans(xAddr_DDR, xAddr, vecx_len*sizeof(lvector double));
            M7002_datatrans(rAddr_DDR_vc, rAddr, vecr_len*sizeof(lvector double));
            M7002_datatrans(hAddr_DDR, hAddr, nh*sizeof(double));
            /* 测量函数运行时间 */
			time_cn=get_time_cn(xAddr_DDR + 2 * (nh - 1),hAddr_DDR,rAddr_DDR_cn,nh,ny)-c_time;
			time_vc=get_time_vc(xAddr,hAddr,rAddr,nh,ny)-c_time;
            /* 计算结果搬出 */
            M7002_datatrans(rAddr, rAddr_DDR_vc, vecr_len*sizeof(lvector double));
            /* cn.c 结果准确性测试 */
           for (i=0; i < (2*ny); i++) {
               pct_diff = 0;
               if ((fabsf(rAddr_DDR_cn[i]) > FLT_THRES) && (fabsf(rAddr_DDR_vc[i]) > FLT_THRES)){
                   pct_diff = (rAddr_DDR_cn[i] - rAddr_DDR_vc[i]) / rAddr_DDR_cn[i] * 100.0;
               }
               if (pct_diff < 0){
                   pct_diff *= -1;
               }
               if (pct_diff > max_pct_diff) {
                   max_pct_diff = pct_diff;
               }
           }
           if (max_pct_diff > 0.05 && max_pct_diff < FLT_MAX ){
               printf("Result Failure  max_pct_diff = %f", max_pct_diff);
           }
           else{
               printf("Result Successful ");
           }
            vfree(xAddr);
            vfree(rAddr);
            printf("\tNX = %-3d\t  NH = %-2d\t cn_cycle:%-4d\t  vc_cycle:%-4d\t \n", ny, nh,time_cn-c_time,time_vc-c_time);
      }
  }
}
/* 随机生成x的测试样例*/
void randomx_sp_cplx(float *tempx, int N,float factor)
{
    float rand_midpoint = RAND_MAX / 2.0;
    int i;
    for (i = 0; i < N; i++)
        /*奇数index对应为实部，偶数index对应为虚数*/
        tempx[i] = ((rand() - rand_midpoint) / rand_midpoint) * factor;
}
/* 随机生成h的测试样例*/
void randomh_sp_cplx(float *hAddr_DDR, int N)
{
    float frand_max = RAND_MAX, pair_sum = 2.0 / N;
    int i;
    for (i = 0; i < N / 2; i++)
    {
        hAddr_DDR[i] = (rand() / frand_max) * pair_sum;
        hAddr_DDR[N - 1 - i] = pair_sum - hAddr_DDR[i];
    }
}
/* 测量DSPF_sp_fir_cplx_cn的运行时间*/
unsigned long get_time_cn(const float *x, const float *h,float *r, int nh, int ny){
    unsigned long time1,time2;
    time1 = GetTimerCount(0);
	DSPF_sp_fir_cplx_cn(x,h,r,nh,ny);
    time2 = GetTimerCount(0);
    return time2-time1;
}
/* 测量向量C函数的运行时间*/
unsigned long get_time_vc(
    lvector double *xAddr,
    double *hAddr,
    lvector double *rAddr,
    int nh,
    int nr
){
    unsigned long time1,time2;
    time1 = GetTimerCount(0);
	DSPF_sp_fir_cplx_vc(xAddr,hAddr,rAddr,nh,nr);
    time2 = GetTimerCount(0);
    return time2-time1;
}