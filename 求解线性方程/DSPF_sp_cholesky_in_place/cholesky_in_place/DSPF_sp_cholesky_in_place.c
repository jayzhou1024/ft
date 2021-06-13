#include "DSPF_sp_cholesky_in_place.h"

/*
	cholesky decomposition with float.
	order is L matrix's order.
*/
void DSPF_sp_cholesky_in_place(int order,vector float* A_am){
	//iteration index
	int i,j,k;
	vector float temp1;
	vector float temp2;
	//control VPE close
	unsigned short close;
	//allocate memory for buffer
	float* buffer = (float*)calloc(order,sizeof(float));
	vector float* L_am = A_am;

	//M7002_datatrans_index parameter
	int increment_src = (order-1) * sizeof(float);
	int increment_dest = (1-1) * sizeof(float);
	int increment = increment_dest << 16 | increment_src;

	int len;
	for (j=0;j<order;j++) {
		vector float* t_am = (vector float*)((float*)L_am+j*order);
		if(j>0){
			//index 高半字为目的阵列索引，低半字位源阵列索引
			//帧数要减一，索引数要减一
			M7002_datatrans_index(((float*)L_am)+j, buffer, j-1, 1,increment);
		}

		for(i=0;i<j;i++){
			temp1 = vec_svbcast(buffer[i]);
			
			len = order - j;
			for(k=0;len>0;k++){
				if(len>=VPE_NUM){
					temp2 = vec_muli(temp1, 
									OFF_FLOAT_PTR(L_am,i*order+j+k*VPE_NUM));

					OFF_FLOAT_PTR(L_am,j*order+j+k*VPE_NUM) = 
						vec_sub(temp2, 
								OFF_FLOAT_PTR(A_am,j*order+j+k*VPE_NUM));

					len -= VPE_NUM;
				}else{
					close = 0xffff >> (VPE_NUM-len);
					mov_to_vlr(close);
					temp2 = vec_muli(temp1, 
									OFF_FLOAT_PTR(L_am,i*order+j+k*VPE_NUM));

					OFF_FLOAT_PTR(L_am,j*order+j+k*VPE_NUM) = 
						vec_sub(temp2, 
								OFF_FLOAT_PTR(A_am,j*order+j+k*VPE_NUM));
					mov_to_vlr(0xffff);
					break;					
				}				
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