#include "c6x-c.h" 
#include <stdio.h>
#include <math.h> 

//一次循环计算4个h的中间变量
void DSPF_sp_fir_gen_vc3 (
    vector float *x,
           float *h,
    vector float *r,
    int nh,                     
    int nr
) {
    mov_to_vlr(0x000F);
	int i,j,k,t;
    vector float htemp1,htemp2,htemp3,htemp4;
    vector float xtemp1,xtemp2,xtemp3,xtemp4,xtemp5,xtemp6,xtemp7,xtemp8,xtemp9,xtemp10,xtemp11,xtemp12;
    vector float *rtemp1,*rtemp2,*rtemp3;
    float (*tempr)[4]=(float (*)[4])r;
    float *x_temp=(float *)x;
    float *tmp_x_j;
    for(i = 0; i < nh; i+=4) {
        htemp1 = vec_svbcast(h[i]); 
        htemp2 = vec_svbcast(h[i+1]);
        htemp3 = vec_svbcast(h[i+2]);
        htemp4 = vec_svbcast(h[i+3]);
        for(j = 0,k = 0;j < nr;j+=12,k += 3){
            tmp_x_j=x_temp+i+j;
            t=nr-j;
            xtemp1=*((vector float *)(tmp_x_j));     //0~3
            xtemp2=*((vector float *)(tmp_x_j+4));   //4~7
            xtemp3=*((vector float *)(tmp_x_j+8));   //8~11

            xtemp4=*((vector float *)(tmp_x_j+1));   //1~4
            xtemp5=*((vector float *)(tmp_x_j+5));   //5~8
            xtemp6=*((vector float *)(tmp_x_j+9));   //9~12

            xtemp7=*((vector float *)(tmp_x_j+2));   //2~5
            xtemp8=*((vector float *)(tmp_x_j+6));   //6~9
            xtemp9=*((vector float *)(tmp_x_j+10));  //10~13

            xtemp10=*((vector float *)(tmp_x_j+3));  //3~6
            xtemp11=*((vector float *)(tmp_x_j+7));  //7~10
            xtemp12=*((vector float *)(tmp_x_j+11)); //11~14

            rtemp1=(vector float *)(tempr[k]);      //r0 0~3
            rtemp2=(vector float *)(tempr[k+1]);    //r1 4~7 
            rtemp3=(vector float *)(tempr[k+2]]);   //r2 8~11

            /**
             *  由于r为4的倍数 x长度为nh+nr-1,内层循环r的步长为12,需要保证r是否一次能移动12, 这里需要判断那r+4 r+8这两种情况
             *  这里不论怎样都有两个if判断，这里选择最优的方案t>8（即r本次循环能移动12）时，就不存在数据越界的问题 就可以并行化
            **/
            if(t>8){  //这里t=12   r1可计算x4~7 5~8 6~9  r2可计算x8~11 9~12     同时包含t=4  t=8的情况
                rtemp3[0]=vec_mula(xtemp3,htemp1,rtemp3[0]);
                rtemp2[0]=vec_mula(xtemp2,htemp1,rtemp2[0]);
                rtemp1[0]=vec_mula(xtemp1,htemp1,rtemp1[0]);

                rtemp3[0]=vec_mula(xtemp6,htemp2,rtemp3[0]);
                rtemp2[0]=vec_mula(xtemp5,htemp2,rtemp2[0]);
                rtemp1[0]=vec_mula(xtemp4,htemp2,rtemp1[0]);

                rtemp3[0]=vec_mula(xtemp9,htemp3,rtemp3[0]);
                rtemp2[0]=vec_mula(xtemp8,htemp3,rtemp2[0]);
                rtemp1[0]=vec_mula(xtemp7,htemp3,rtemp1[0]);

                rtemp3[0]=vec_mula(xtemp12,htemp4,rtemp3[0]);
                rtemp2[0]=vec_mula(xtemp11,htemp4,rtemp2[0]);
                rtemp1[0]=vec_mula(xtemp10,htemp4,rtemp1[0]);
            }else{
                if(t>4){  //这里t=8    r0可计算x0~3 1~4 2~5 3~6 （对应*h1 h2 h3 h4）  r0 x4~7*h1   同时包含t=4的情况
                  rtemp2[0]=vec_mula(xtemp2,htemp1,rtemp2[0]);
                  rtemp1[0]=vec_mula(xtemp1,htemp1,rtemp1[0]);

                  rtemp2[0]=vec_mula(xtemp5,htemp2,rtemp2[0]);
                  rtemp1[0]=vec_mula(xtemp4,htemp2,rtemp1[0]);

                  rtemp2[0]=vec_mula(xtemp8,htemp3,rtemp2[0]);
                  rtemp1[0]=vec_mula(xtemp7,htemp3,rtemp1[0]);

                  rtemp2[0]=vec_mula(xtemp11,htemp4,rtemp2[0]);
                  rtemp1[0]=vec_mula(xtemp10,htemp4,rtemp1[0]);
                }else{   //这里t=4
                    rtemp1[0]=vec_mula(xtemp1,htemp1,rtemp1[0]);
                    rtemp1[0]=vec_mula(xtemp4,htemp2,rtemp1[0]);
                    rtemp1[0]=vec_mula(xtemp7,htemp3,rtemp1[0]);
                    rtemp1[0]=vec_mula(xtemp10,htemp4,rtemp1[0]);
                }

            }
        }
    }
    mov_to_vlr(0xFFFF);
}