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