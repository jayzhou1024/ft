#include "DSPF_sp_cholesky.h"

/*
	cholesky分解
	处理一行向量时每次取16个元素
	vesion:1.4
*/
void DSPF_sp_cholesky(int order,vector float* A_am,vector float* L_am){
	//iteration index
	int i,j,k;
	vector float temp;
	//control VPE close
	unsigned short close;

	//配置混洗方式0
	//广播src1的第1个元素
	/*
		比如src1 = 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0
		src2 = 31 30 29 28 27 26 25 24 23 22 21 20 19 18 17 16
		那么混洗方式0得到的混洗结果为
		dst = 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
	*/
	int * shuf_addr = 0x040160000;
	*(shuf_addr+0) = 0;
	*(shuf_addr+1) = 0;
	*(shuf_addr+2) = 0;
	*(shuf_addr+3) = 0;
	//设置SMR寄存为混洗方式0
	//只有这一种混洗方式，因此只需要在初始化时设置混洗方式
	shuff_mode(0);

	int len;
	for (j=0;j<order;j++) {
		vector float* t_am = (vector float*)((float*)L_am+j*order);
		vsip_mfill_f_v(0,t_am,order);

		for(i=0;i<j;i++){
			//取从L[0][j]到L[j][j]这个列向量的各个元素，并进行广播
			//也就是取L[i][j]并广播			
			temp = vec_ld(i*order+j,L_am);
			//此时temp中第1个元素是L[i][j]
			//通过混洗进行广播
			//广播temp[0]
			temp = vec_shufw(0,temp,temp);
			
			len = order - j;
			for(k=0;len>0;k++){
				if(len>=VPE_NUM){
					OFF_FLOAT_PTR(t_am,j+k*VPE_NUM) = 
						vec_mula(temp, 
								 OFF_FLOAT_PTR(L_am,j+i*order+k*VPE_NUM), 
								 OFF_FLOAT_PTR(t_am,j+k*VPE_NUM));
					len -= VPE_NUM;
				}else{
					close = 0xffff >> (VPE_NUM-len);
					mov_to_vlr(close);
					OFF_FLOAT_PTR(t_am,j+k*VPE_NUM) = 
						vec_mula(temp, 
								 OFF_FLOAT_PTR(L_am,j+i*order+k*VPE_NUM), 
								 OFF_FLOAT_PTR(t_am,j+k*VPE_NUM));
					mov_to_vlr(0xffff);
					break;					
				}				
			}
					
		}
		
		len = order - j;
		for(k=0;len>0;k++){
			if(len>=VPE_NUM){
				OFF_FLOAT_PTR(L_am,j*order+j+k*VPE_NUM) = 
					vec_sub( OFF_FLOAT_PTR(t_am,j+k*VPE_NUM), 
							 OFF_FLOAT_PTR(A_am,j*order+j+k*VPE_NUM));
				len -= VPE_NUM;
			}else{
				close = 0xffff >> (VPE_NUM-len);
				mov_to_vlr(close);
				OFF_FLOAT_PTR(L_am,j*order+j+k*VPE_NUM) = 
					vec_sub( OFF_FLOAT_PTR(t_am,j+k*VPE_NUM), 
							 OFF_FLOAT_PTR(A_am,j*order+j+k*VPE_NUM));
				mov_to_vlr(0xffff);
				break;					
			}				
		}

		//calculate Ljj
		vsip_vsqrt_f_v(&OFF_FLOAT_PTR(L_am,j*order+j),&OFF_FLOAT_PTR(L_am,j*order+j),1);
		//取L[j][j]
		temp = vec_ld(j*order+j,L_am);
		//通过混洗进行广播
		temp = vec_shufw(0,temp,temp);
		//两行向量相除
		//第二行向量是Ljj的广播	
		vsip_vdiv_f_v(&OFF_FLOAT_PTR(L_am,j*order+j+1),
						&temp,
						&OFF_FLOAT_PTR(L_am,j*order+j+1),
						order-j-1);

	}
}

