#include "c6x-c.h" 
#include <stdio.h>
#include<stdlib.h>
#include<string.h>
#include "M7002.h"

#define NR (128)
#define NH (16)
void setSram();

float x[NR+NH-1];
float h[NH];
float r[NR];
float r1[NR];
float r_cn[NR];
//
void DSP_fir_gen_cn_v1 (
    vector float *x,   
    float *h,    
    vector float *r,    
    int nh,                    
    int nr                     
) {
	int i,j,k;
    vector float temp1,temp2;
    for(i = 0; i < nh; i++) {
        temp1 = vec_svbcast(h[i]);
		for(j = 0,k = 0; j < nr; j+=16,k++) { 
          temp2=*((vector float *)((float *)x+i+j));   
          r[k]=vec_mula(temp2,temp1,r[k]);  
		}
	}
}

void DSP_fir_gen_cn(const float *x,
    const float *h,
    float *y,
    int nh,
    int ny)
{
    int i, j;
    float sum1,sum2,sum3,sum4;

    for(j = 0; j < ny; j+=3)
    {
        sum1 = 0;
        sum2 = 0;
        sum3 = 0;

        // note: h coeffs given in reverse order: { h[nh-1], h[nh-2], ..., h[0] }
        for(i = 0; i < nh; i++){
            sum1 += x[i + j] * h[i];
            sum2 += x[i+j+1] * h[i];
            sum3 += x[i+j+2] * h[i];
            sum4 += x[i+j+3] * h[i];
        }
        y[j] = sum1; 
        y[j+1] = sum2;
        y[j+2] = sum3;
        y[j+3] = sum4;
    }
}
void DSP_fir_gen_cn_v2 (
    vector float *x,
           float *h,
    vector float *r,
    int nh,                     
    int nr
);
void random_x(float *x, int n, float factor);
void random_h(float *h, int n);


unsigned long  getTime(vector float * x1,float *h1,vector float* r1,int nh,int nr){
	unsigned long time1,time2;
    time1 = GetTimerCount(0);
	DSP_fir_gen_cn_v1(x1,h1,r1,nh,nr);
    time2 = GetTimerCount(0);
    return time2-time1;
}
unsigned long  getTime1(vector float *x1,float *h1,vector float *r1,int nh,int nr){
	unsigned long time1,time2;
	time1 = GetTimerCount(0);
	DSP_fir_gen_cn_v2(x1,h1,r1,nh,nr);
    time2 = GetTimerCount(0);
    return time2-time1;
}
unsigned long  getTime_cn( float *x,float *h, float *r,int nh,int nr){
	unsigned long time1,time2;
	time1 = GetTimerCount(0);
	DSP_fir_gen_cn(x,h,r,nh,nr);
    time2 = GetTimerCount(0);
    return time2-time1;
}
void main(){
	unsigned long time,time1,time_cn;
    setSram();
	
    memset(x, 0, (NH - 1) * sizeof(float));
    random_x(x + NH - 1, NR, 10.0);
    random_h(h, NH);
	int nr,nh;
	float* hAddr = (float*)0x040100000; //SM  h
	vector float* xAddr = (vector float*)0x040020000; //x
	vector float* rAddr = (vector float*)0x040040000; //r
	vector float* rAddr1 = (vector float*)0x040060000; //r
	
	
	M7002_datatrans(x, xAddr, (NR+NH-1)*4);
	M7002_datatrans(h, hAddr, (NH)*4);
	printf ("DMA end\n");

	SetTimerPeriod(0, 0xffffffff);
	TimerStart(0);
	
	unsigned long c_time=GetTimerCount(0)-GetTimerCount(0);
	//坯动Timer0定时�?	TimerStart(0);
	for(nr = 32; nr <= NR; nr += 8) {   //nr  
      for(nh = 4; nh <= NH; nh += 4) {  
		   memset(r,0,sizeof(r));
		   memset(r1,0,sizeof(r1));
		   memset(r_cn,0,sizeof(r_cn));
		   
		   M7002_datatrans(r,rAddr,NR*4);
		   M7002_datatrans(r1,rAddr1,NR*4);
		   
		   time=getTime1(xAddr,hAddr,rAddr,nh,nr);
		   time1=getTime(xAddr,hAddr,rAddr1,nh,nr);
		   
		   M7002_datatrans(rAddr1,r1,NR*4);
		   M7002_datatrans(rAddr,r,NR*4);
		   
		   time_cn=getTime_cn(x,h,r_cn,nh,nr);
		   unsigned long time1=getTime(x,h,r1,nh,nr);
		   printf("\tNR = %d\t  NH = %d\t cn_time:%d\t  v1_cycle:%d\t  v2_cycle: %d\n", nr, nh,time_cn-c_time,time1-c_time,time-c_time);
		}
	}
	printf("helloworld");
}
void random_x(float *x1, int n, float factor){
   float rand_midpoint = RAND_MAX / 2.0;   
    int i;
    for (i = 0; i < n; i++){
        x1[i] = ((rand() - rand_midpoint) / rand_midpoint) * factor;
        
	}
}	
void random_h(float *h, int n){
	int i;
	float frand_max = RAND_MAX, pair_sum = 2.0 /n;
    for (i = 0; i < n; i++){
		h[i] = (rand() / frand_max) * pair_sum;
        h[n - 1 - i] = pair_sum - h[i];

	}
}	
void setSram(){
	
	int  *cache=0x040140004;
    int  *cache1=0x040140000;
	volatile int cache_ok;
	*cache=0x1;
	*cache1=0x1;
    cache_ok = *cache1 ;
    while( cache_ok !=0 )
    cache_ok = *cache1 ;
}


