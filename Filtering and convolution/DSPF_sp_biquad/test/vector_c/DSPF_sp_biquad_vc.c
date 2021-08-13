#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <float.h>
#include "c6x-c.h" 
#include "M7002.h"
void DSPF_sp_biquad_vc(
  vector float* x,
  float* b,
  float* a,
  float* delay,
  vector float* y,
  const int nx){

 float* tempx=(float*)x;
 float* tempy=(float*)y;
 
 vector float temp1, temp2, temp3, temp7, temp8;
 volatile vector float temp4, temp5, temp6;
 vector float *temp_v_y=(vector float*)(tempy+2);

 float x0,x1;
 float y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y_0,y_1;
 
 int i,j,k;

 temp1 = vec_svbcast(b[2]);
 temp2 = vec_svbcast(b[1]);
 temp3 = vec_svbcast(b[0]);

 for (k = j = 0; j < nx; j = j + 16, k = k + 1)
 {
     temp4 = vec_ld(j, x);
     //temp4 = *((vector float*)(tempx + j));
     temp_v_y[k] = vec_mula(temp4, temp1, temp_v_y[k]);

     temp5 = vec_ld(j + 1, x);
     //temp5 = *((vector float*)(tempx + j + 1));
     temp_v_y[k] = vec_mula(temp5, temp2, temp_v_y[k]);

     temp6 = vec_ld(j + 2, x);
     //temp6 = *((vector float*)(tempx + j + 2));
     temp_v_y[k] = vec_mula(temp6, temp3, temp_v_y[k]);

 }
 
 mov_to_svr_v16sf(*x);
 *(int*)(&x0)=mov_from_svr0();
 *(int*)(&x1)=mov_from_svr1();
 mov_to_svr_v16sf(*y);
 *(int*)(&y_0)=mov_from_svr0();
 *(int*)(&y_1)=mov_from_svr1();
 y_0=b[0]*x0+delay[0];
 y_1=b[0]*x1+delay[1]+b[1]*x0-a[1]*y_0;
 mov_to_svr0(*(int*)(&y_0));
 mov_to_svr1(*(int*)(&y_1));
 *y=mov_from_svr_v16sf();
 
 for(i=2,k=0;i<nx;i=i+16,k=k+1)
{
  mov_to_svr_v16sf(temp_v_y[k]);
  *(int*)(&y0)=mov_from_svr0();
  *(int*)(&y1)=mov_from_svr1();
  *(int*)(&y2)=mov_from_svr2();
  *(int*)(&y3)=mov_from_svr3();
  *(int*)(&y4)=mov_from_svr4();
  *(int*)(&y5)=mov_from_svr5();
  *(int*)(&y6)=mov_from_svr6();
  *(int*)(&y7)=mov_from_svr7();
  *(int*)(&y8)=mov_from_svr8();
  *(int*)(&y9)=mov_from_svr9();
  *(int*)(&y10)=mov_from_svr10();
  *(int*)(&y11)=mov_from_svr11();
  *(int*)(&y12)=mov_from_svr12();
  *(int*)(&y13)=mov_from_svr13();
  *(int*)(&y14)=mov_from_svr14();
  *(int*)(&y15)=mov_from_svr15();
  
  y0=y0-a[1]*y_1-a[2]*y_0;
  y1=y1-a[1]*y0-a[2]*y_1;
  y2=y2-a[1]*y1-a[2]*y0;
  y3=y3-a[1]*y2-a[2]*y1;
  y4=y4-a[1]*y3-a[2]*y2;
  y5=y5-a[1]*y4-a[2]*y3;
  y6=y6-a[1]*y5-a[2]*y4;
  y7=y7-a[1]*y6-a[2]*y5;
  y8=y8-a[1]*y7-a[2]*y6;
  y9=y9-a[1]*y8-a[2]*y7;
  y10=y10-a[1]*y9-a[2]*y8;
  y11=y11-a[1]*y10-a[2]*y9;
  y12=y12-a[1]*y11-a[2]*y10;
  y13=y13-a[1]*y12-a[2]*y11;
  y14=y14-a[1]*y13-a[2]*y12;
  y15=y15-a[1]*y14-a[2]*y13;
  
   y_0=y14;
   y_1=y15;
  
    mov_to_svr0(*(int *)(&y0));
  	mov_to_svr1(*(int *)(&y1));
  	mov_to_svr2(*(int *)(&y2));
  	mov_to_svr3(*(int *)(&y3));
  	mov_to_svr4(*(int *)(&y4));
  	mov_to_svr5(*(int *)(&y5));
  	mov_to_svr6(*(int *)(&y6));
  	mov_to_svr7(*(int *)(&y7));
  	mov_to_svr8(*(int *)(&y8));
  	mov_to_svr9(*(int *)(&y9));
	mov_to_svr10(*(int *)(&y10));
  	mov_to_svr11(*(int *)(&y11));
 	mov_to_svr12(*(int *)(&y12));
  	mov_to_svr13(*(int *)(&y13));
  	mov_to_svr14(*(int *)(&y14));
  	mov_to_svr15(*(int *)(&y15));
		
	temp_v_y[k]=mov_from_svr_v16sf();
}


   //mov_to_svr_v16sf( *((vector float*)(tempx+nx-2)));
   temp7 = vec_ld(nx - 2, x); 
   mov_to_svr_v16sf(temp7);
  *(int*)(&x0)=mov_from_svr0();
  *(int*)(&x1)=mov_from_svr1();
  // mov_to_svr_v16sf( *((vector float*)(tempy+nx-2)));
   temp8 = vec_ld(nx - 2, y);
   mov_to_svr_v16sf(temp8);
  *(int*)(&y0)=mov_from_svr0();
  *(int*)(&y1)=mov_from_svr1();
  
  delay[0]=b[1]*x1+b[2]*x0-a[2]*y0-a[1]*y1;
  delay[1]=b[2]*x1-a[2]*y1;
}