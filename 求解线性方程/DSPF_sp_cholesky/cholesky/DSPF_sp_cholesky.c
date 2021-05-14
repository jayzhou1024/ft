#include "DSPF_sp_cholesky.h"

void DSPF_sp_cholesky(int order,vector float* L_am,vector float*t_am){
	int i,j,k;
	vector float temp;
	unsigned short close;
	//allocate memory for buffer
	float* buffer = (float*)calloc(order,sizeof(float));
	
	int increment_src = (order-1) * sizeof(float);
	int increment_dest = (1-1) * sizeof(float);
	int increment = increment_dest << 16 | increment_src;
	int len;
	for (j=0;j<order;j++) {
		vsip_mfill_f_v(0,t_am,order);
		if(j>0){
			//index 高半字为目的阵列索引，低半字位源阵列索引
			//帧数要减�?��索引数要减一
			M7002_datatrans_index(((float*)L_am)+j, buffer, j-1, 1,increment);
		}
		for(i=0;i<j;i++){
			temp = vec_svbcast(buffer[i]);
			
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
							 OFF_FLOAT_PTR(L_am,j*order+j+k*VPE_NUM));
				len -= VPE_NUM;
			}else{
				close = 0xffff >> (VPE_NUM-len);
				mov_to_vlr(close);
				OFF_FLOAT_PTR(L_am,j*order+j+k*VPE_NUM) = 
					vec_sub( OFF_FLOAT_PTR(t_am,j+k*VPE_NUM), 
							 OFF_FLOAT_PTR(L_am,j*order+j+k*VPE_NUM));
				mov_to_vlr(0xffff);
				break;					
			}				
		}

		//calculate Ljj
		vsip_vsqrt_f_v(&OFF_FLOAT_PTR(L_am,j*order+j),&OFF_FLOAT_PTR(L_am,j*order+j),1);
		//mov Ljj to svr		
		mov_to_svr_v16sf(OFF_FLOAT_PTR(L_am,j*order+j));
		//return value is int,change view of Ljj_i
		int Ljj_i = mov_from_svr0();
		float Ljj = *((float*)&Ljj_i);
		//divide remain
		vsip_vsdiv_f_v(&OFF_FLOAT_PTR(L_am,j*order+j+1),
						Ljj,
						&OFF_FLOAT_PTR(L_am,j*order+j+1),
						order-j-1);

	}

	//free buffer
	free(buffer);
}