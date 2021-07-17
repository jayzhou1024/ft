#include "DSPF_sp_cholesky_in_place.h"

/*
	cholesky decomposition with float.
	order is L matrix's order.
	vesion:1.4
*/
void DSPF_sp_cholesky_in_place(int order,vector float* A_am){
	//iteration index
	int i,j,k;
	vector float temp1;
	vector float temp2;
	//control VPE close
	unsigned short close;

	vector float* L_am = A_am;

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
		for(i=0;i<j;i++){
			//取从L[0][j]到L[j][j]这个列向量的各个元素，并进行广播
			//也就是取L[i][j]并广播			
			temp1 = vec_ld(i*order+j,L_am);
			//此时temp中第1个元素是L[i][j]
			//通过混洗进行广播
			//广播temp[0]
			temp1 = vec_shufw(0,temp1,temp1);
			
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
		mov_to_svr_v16sf(OFF_FLOAT_PTR(L_am,j*order+j));
		int t = mov_from_svr0();
		float Ljj = *((float*)(&t));
		Ljj = sqrt(Ljj);
		//divide remain
		//先保存下一行数据，因为vsip库可能会改变后面一行的数据
		temp1 = vec_ld((j+1)*order,L_am);
		vsip_vsdiv_f_v(&OFF_FLOAT_PTR(L_am,j*order+j+1),
						Ljj,
						&OFF_FLOAT_PTR(L_am,j*order+j+1),
						order-j-1);
		//还原下一行数据
		vec_st(temp1,(j+1)*order,L_am);

	}
}