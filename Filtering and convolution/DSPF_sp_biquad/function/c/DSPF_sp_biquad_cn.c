void DSPF_sp_biquad_cn(
    float *x,
    float *b,
    float *a,
    float *delay,
    float *y,
    const int nx){
    int i;

    for (i = 0; i < nx; i++)
    {
        y[i] = b[0] * x[i] + delay[0];
        delay[0] = b[1] * x[i] - a[1] * y[i] + delay[1];
        delay[1] = b[2] * x[i] - a[2] * y[i]; 
    }
}     