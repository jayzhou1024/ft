#include "M7002.h"
#include "c6x-c.h" 

#include<stdio.h>
#include<stdlib.h>

#include "DSPF_sp_cholesky.h"

#define VPE_NUM 16
#define MAX_MATRIX_ORDER 128
#define MAX_A_MATRIX_SIZE (MAX_MATRIX_ORDER*MAX_MATRIX_ORDER)

#define OFF_FLOAT_PTR(base,off)(*((vector float*)( ((float*)base)+(off) )) )

//float* Aaddr = (float*)0x040100000;//Aaddr SM
vector float* L_am_t = (vector float*)0x040000000; //L_am_t AM 向量
vector float* L_am = (vector float*)(0x040000000 + MAX_A_MATRIX_SIZE*sizeof(float));
vector float* t_am = (vector float*)(0x040000000 + 2 * MAX_A_MATRIX_SIZE*sizeof(float));

//float Aaddr_DDR[MAX_A_MATRIX_SIZE];
float M[MAX_A_MATRIX_SIZE];   
float A[MAX_A_MATRIX_SIZE];
float A_cal[MAX_A_MATRIX_SIZE];
float A_cal_t[MAX_A_MATRIX_SIZE];
float L[MAX_A_MATRIX_SIZE];
float L_t[MAX_A_MATRIX_SIZE];
float L_cn[MAX_A_MATRIX_SIZE];
//

void mat_transpose(vector float* M_am,float* M,int order){
	int i;
	int increment_src = (order-1) * sizeof(float);
	int increment_dest = (1-1) * sizeof(float);
	int increment = increment_dest << 16 | increment_src;
	for(i=0;i<order;i++){
		M7002_datatrans_index(((float*)M_am)+i, M+order*i, order-1, 1,increment);
	}
}	

int check(float* expected,float* actual,int order,float tolerance){
	int i,j;
	float error;
	for(i=0;i<order;i++){
 		for(j=0;j<order;j++){
			error = fabs(expected[i*order+j] - actual[i*order+j]);
			if(error > tolerance){
				printf("A[%d][%d] error is %f,over tolerance %f\n",i,j,error,tolerance);
				return -1;
			}
 		}
 	}
 	return 0;	
}

void mul(float* m,float* m_cal,int order){
	int i,j,k;
	float sum = 0.0f;
 	for(i=0;i<order;i++){
 		for(j=0;j<order;j++){
 			sum=0;
 			for(k=0;k<(i<j?i+1:j+1);k++){
 				sum += m[i*order+k] * m[j*order+k];
 			}
			m_cal[i*order+j] = sum;
 		}
 	}	
}

void main(){
	
	//TODO 在此处添加您的代�?//	vector float tmp1;
//	vector float tmp2;
	vector float temp;
	int i,j,k;
	float sum = 0.0f;
	int order;
	unsigned long time1,time2,cholesky_t_cn,cholesky_t;	
	//
	int  *cache=0x040140004;
    int  *cache1=0x040140000;
	volatile int cache_ok;
	*cache=0x1;
	*cache1=0x1;
    cache_ok = *cache1 ;
    while( cache_ok !=0 )
    	cache_ok = *cache1;
	
	printf("Hello World!\n");
	
//	A[0]=4,A[1]=12,A[2]=-16;
//	A[3]=12,A[4]=37,A[5]=-43;
//	A[6]=-16,A[7]=-43,A[8]=98;

	//定时器初始化
	SetTimerPeriod(0, 0xffffffff);
	//启动Timer0定时器
	TimerStart(0);
				
	for(order=4;order<=MAX_MATRIX_ORDER;order++){
		//
		printf("order=%d begin!\n",order);
		//init M and A
		for (i=0;i<order;i++) {
		  for (j=0;j<order;j++) {
			M[i*order+j]=(float)(rand())/((float)RAND_MAX);
		  }
		}
		
		for (i=0;i<order;i++) {
		  for (j=0;j<order;j++) {
			sum=0.0;
			for (k=0;k<order;k++) {
			  sum+=M[i*order+k]*M[j*order+k];
		    }
		    A[i*order+j]=sum;
		  }
		}	
	//	Aaddr_DDR[0]=9,Aaddr_DDR[1]=10,Aaddr_DDR[2]=11;
	//	Aaddr_DDR[3]=12,Aaddr_DDR[4]=13,Aaddr_DDR[5]=14;
	//	Aaddr_DDR[6]=15,Aaddr_DDR[7]=16,Aaddr_DDR[8]=17;	
		
	//	M7002_datatrans(Aaddr_DDR, Aaddr, MAX_A_MATRIX_SIZE*sizeof(float));
//		M7002_datatrans(A, A_am, MAX_A_MATRIX_SIZE*sizeof(float));
		
	
	//	number = *(((float*)A_am)+3*1+1);
		time1 = GetTimerCount(0);	
	//	M7002_datatrans((((float*)A_am)+3*1+1),A,1*sizeof(float)*1);
	  	for (j=0;j<order;j++) {
	
		/* diagonal entry */
		sum=0.0;
		for (k=0;k<=j-1;k++) {
		  sum+=L_cn[j*order+k]*L_cn[j*order+k];
		}
		L_cn[j*order+j]=(float)sqrt(A[j*order+j]-sum);
	
	    /* lower triangular entries */
	    for (i=j+1;i<order;i++) {
	      sum=0.0;
	      for (k=0;k<=j-1;k++) {
	    	sum+=L_cn[i*order+k]*L_cn[j*order+k];
	      }
	      L_cn[i*order+j]=(A[i*order+j]-sum)/L_cn[j*order+j];
	 	}
	  }		
		time2 = GetTimerCount(0);	
		cholesky_t_cn= time2-time1;		
		printf("natual c use %ld cycle\n",cholesky_t_cn);
		//
		M7002_datatrans(A, L_am, MAX_A_MATRIX_SIZE*sizeof(float));
	
		time1 = GetTimerCount(0);
	
		DSPF_sp_cholesky(order,L_am,t_am);
		
		time2 = GetTimerCount(0);
		cholesky_t= time2-time1;
		printf("vector c use %ld cycle\n",cholesky_t);
		
		mat_transpose(L_am,L,order);
		
		
//		DSPF_sp_cholesky(order,zero,buffer,L_am_t,t_am);	
//		mat_transpose(L_am_t,L_t,order);		
		//	
	//	M7002_mat_transpose((float*)L_am,L,order,order,0);
		//FT-M7002 采用�?�� 8 x 256bits 的存储体实现矩阵转置操作，因此，FT- M7002 限制转置矩阵�?		//行和列数必须�?8 �?4 的�?�?		//矩阵转置传输地址对齐异常


		float tolerance=0.1;
		int error_flag = 0; 	 	
	 	printf("check A with A_cal begin!\n");
		
		mul(L,A_cal,order);
		error_flag = check(A,A_cal,order,tolerance);
	 	
		if(error_flag == 0){
			printf("check end!no problem\n");
		} 	
		
				
//	 	printf("check A with A_cal_t begin!\n");
//		
//		mul(L_t,A_cal_t,order);
//		error_flag = check(A,A_cal_t,order,tolerance);
//	 	
//		if(error_flag == 0){
//			printf("check end!no problem\n");
//		} 									
										
	}
	
//	tmp2 = vec_svbcast(A[0]);
//	tmp1 = vec_ld(0,A_am);
//	A_am[0] = vec_mula(tmp2,tmp1,tmp1);
}