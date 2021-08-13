
/**
 *  YHFT C 工程模板
 */

#include "c6x-c.h" 
#include <stdio.h>
#include<stdlib.h>
#include<string.h>
#include<time.h>
#include "M7002.h"

#define NX (128)//16的倍数加2
#define NB (3)
unsigned long  getTime_cn(float *x,float *b,float *a,float *delay,float *y,const int nx);
unsigned long  getTime_vc(vector float* x,float* b,float* a,float* delay,vector float* y,const int nx);
void DSPF_sp_biquad_cn(float *x,float *b,float *a,float *delay,float *y,const int nx);
void DSPF_sp_biquad_asm(vector float* x,float* b,float* a,float* delay,vector float* y,const int nx);

 /*测试样例变量声明*/
    float yAddr_DDR_cn[NX]; /*保存未优化C语言版本计算结果*/
    float yAddr_DDR_vc[NX]; /*保存向量C版本函数计算结果*/
    /*测试样例初始化*/
    float deAddr_DDR[2] = { 0, 0 };
    float aAddr_DDR[3] = { 1, -0.390641, 0.534300 };
    float b_cnAddr_DDR[NB] = { 0.067504, 0.270019, 0.405028 };
    //float b_vcAddr_DDR[NB] = { 0.405028, 0.270019, 0.067504 };
    float xAddr_DDR[NX] ={
    	  -4.802592, 6.001369, -1.371723, 8.212952, 
    -6.36306, -4.723942, -7.08922, -7.278629, 
    7.385843, 1.594091, 0.9972038, -7.100904, 
    7.060621, 2.441102, -2.980952, 0.2649899, 
    -1.96384, -8.480666, -5.201677, -7.533621, 
    -6.321844, -5.20095, -1.654659, -9.006911, 
    8.054321, 8.895744, -0.1827183, -0.2149477, 
    -3.245612, 8.001078, -2.615065, -7.775945, 
    5.605041, -2.205224, -5.166174, -1.921757, 
    -8.07091, -7.360534, 8.841011, 9.122692, 
    1.504172, -8.804409, -5.304402, -2.936829
    , 6.423882, -9.691931, -9.139524, -6.620199, 
    2.98231, 4.634448, 2.95492, -0.9815254, 
    0.9401779, -4.073584, 4.893856, -6.2209, 
    3.735509, -6.329777, -2.630308, 2.512371, 
    5.604548, -8.377484, 8.587719, 5.514254, 
    -0.2641668, -1.282828, -1.064325, -3.87301, 
    0.1701736, 0.2154312, 6.352554, 5.896627, 
    2.886362, -2.427812, 6.231609, 0.6565113, 
    -2.985458, 8.780031, 7.518856, 1.003127, 
    2.449502, 1.740894, -5.845154, -3.975073, 
    -0.5815334, -5.390237, 6.886175, -6.104714, 
    -5.481565, -6.585839, -5.446714, -1.286026, 
    -3.777954, 8.467594, -1.395852, -6.303674, 
    8.097618, 9.594967, -1.2226, -7.777616, 
    -4.838706, -1.825603, 1.897922, -4.755765, 
    2.056862, 4.224316, -5.565065, -7.651647, 
    -4.066483, -3.624434, -1.516665, 0.1571655, 
    -8.289684, -4.750356, 6.020292, -9.415594, 
    8.577084, 4.606618, -0.2278204, 1.570501, 
    -5.254329, -0.8230228, 9.26177, 0.9361153, 
    0.4227161, -5.368113, -0.2220449, 2.481202
    };
    

void main(){
	
	int  *cache=0x040140004; /*将SM配置成SRAM存储模式*/
    int  *cache1=0x040140000;
	volatile int cache_ok;
	*cache=0x1;
	*cache1=0x1;
    cache_ok = *cache1 ;
    while( cache_ok !=0 )
    cache_ok = *cache1;
    
   
    float* b_cnAddr = (float*)0x040100000;  //40100000-4011FFFF
    //float* b_vcAddr=(float*)0x040102000;
    float* aAddr =(float*)0x040102000;
    float* deAddr=(float*)0x040103000; 
    /*vector float* xAddr=(vector float*)0x040104000;
    vector float* yAddr=(vector float*)0x040110000;*/
	/*通过DMA方式将源数据从DDR中搬移到AM空间中，调用M7002_datatrans函数实现DMA数据搬移*/                  
	
	M7002_datatrans(b_cnAddr_DDR, b_cnAddr, (NB)*4);
	//M7002_datatrans(b_vcAddr_DDR, b_vcAddr, (NB)*4);
    M7002_datatrans(aAddr_DDR, aAddr, (3)*4);
    M7002_datatrans(deAddr_DDR, deAddr, (2)*4);
    /* 计时器初始化 */
	SetTimerPeriod(0, 0xffffffff);
	TimerStart(0);
    /*计算访问寄存器用时*/
    unsigned long time_vc,time_cn;
	unsigned long c_time=GetTimerCount(0)-GetTimerCount(0);
    int nx,i;
    float pct_diff, max_pct_diff = 0; 
    
     /* 测试 */
	for(nx= 8; nx <= NX; nx += 8) {   
    int len_vx = (nx+15)/16;  /*申请Addr空间时，保证16字对齐*/
    vector float* xAddr = (vector float*)vmalloc(len_vx*sizeof(vector float)+2*sizeof(float)); 
	vector float* yAddr = (vector float*)vmalloc(len_vx*sizeof(vector float)+2*sizeof(float)); 
	M7002_datatrans(xAddr_DDR, xAddr, (nx)*4); /*只用将有效数据传入*/
          /*初始化r，计算过程都是乘累加，需要保证r初值为0*/
		   memset(yAddr_DDR_cn,0,sizeof(yAddr_DDR_cn));
		   memset(yAddr_DDR_vc,0,sizeof(yAddr_DDR_vc));
           /*通过DMA方式将rAddr数据从DDR中搬移到AM空间中*/
		   M7002_datatrans(yAddr_DDR_vc,yAddr,nx*4);
           /*函数时间测量*/
           time_cn=getTime_cn(xAddr_DDR,b_cnAddr_DDR,aAddr_DDR,deAddr_DDR,yAddr_DDR_cn,nx);
		   //time_cn=getTime_cn(xAddr_DDR,hAddr_DDR,rAddr_DDR_cn,nh,nr);
           time_vc=getTime_vc(xAddr,b_cnAddr,aAddr,deAddr,yAddr,nx);
		   //time_vc=getTime_vc(xAddr,hAddr,rAddr,nh,nr);
		  /*通过DMA方式将rAddr数据从AM中搬移到DDR空间中*/
		   M7002_datatrans(yAddr,yAddr_DDR_vc,nx*4);
           /*精度测试*/
           for (i = 0; i < nx; i++) {           
          pct_diff = (yAddr_DDR_cn[i] - yAddr_DDR_vc[i]) / yAddr_DDR_cn[i] * 100.0;
          if (pct_diff < 0) pct_diff *= -1;
          if (pct_diff > max_pct_diff) max_pct_diff = pct_diff;
      }    
      if (max_pct_diff > 0.02)
          printf("Result Failure, max_pct_diff=%f", max_pct_diff);
      else
          printf("Result Successful "); 
            
            printf("\tNX = %d\tnatC: %d\toptC: %d\n", nx, time_cn-c_time,time_vc-c_time);
    vfree(xAddr);
    vfree(yAddr);
       
	}
	

}

/*测量向量C版本函数 */
unsigned long  getTime_vc(vector float* x,float* b,float* a,float* delay,vector float* y,const int nx){
	unsigned long time1,time2;
    time1 = GetTimerCount(0);
	DSPF_sp_biquad_asm(x,b,a,delay,y,nx);
    time2 = GetTimerCount(0);
    return time2-time1;
}
/*测量未优化C语言版本函数 */
unsigned long  getTime_cn(float *x,float *b,float *a,float *delay,float *y,const int nx){
	unsigned long time1,time2;
	time1 = GetTimerCount(0);
	DSPF_sp_biquad_cn(x,b,a,delay,y,nx);
    time2 = GetTimerCount(0);
    return time2-time1;
}