//Ti cn
void DSPF_sp_fir_gen_cn(const float *x,
    const float *h,
    float *y,
    int nh,
    int ny)
{
    int i, j;
    float sum;
    for(j = 0; j < ny; j++)
    {
        sum = 0;
        for(i = 0; i < nh; i++)
            sum += x[i + j] * h[i];
        y[j] = sum;
    }
}

/*Ti  优化  这里三个并行的效果会更好，但是数据范围限制了
    SMAC(M1\M2),SIEU支持浮点加法
*/
void DSP_fir_gen_cn_v1(const float *x,
    const float *h,
    float *y,
    int nh,
    int ny)
{
    int i, j;
    float sum1,sum2,sum3,sum4;

    for(j = 0; j < ny; j+=4)
    {
        sum1 = 0;
        sum2 = 0;
        for(i = 0; i < nh; i++){
            sum1 += x[i + j] * h[i];
            sum2 += x[i+j+1] * h[i];
        }
        y[j] = sum1; 
        y[j+1] = sum2;
    }
}

//为了方便向量化（更换了计算顺序）
void DSP_fir_gen_cn_v2 (
    const float *x,    
    const float *h,   
    float       *r,    
    int nh,                   
    int nr                     
) {
	int i,j;
	for(i = 0; i < nh; i++) {
		for(j = 0; j < nr; j++) {
			r[j] +=h[i] * x[i + j];
		}
	}
}