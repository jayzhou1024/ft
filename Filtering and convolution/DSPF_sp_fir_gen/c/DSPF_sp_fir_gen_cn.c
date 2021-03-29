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

//Ti  优化
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
        sum3 = 0;
        sum4 = 0;
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