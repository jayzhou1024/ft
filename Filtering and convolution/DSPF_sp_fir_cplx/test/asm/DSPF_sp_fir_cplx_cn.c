void DSPF_sp_fir_cplx_cn(const float *x, const float *h,
    float *y, int nh, int ny)
{
    int i, j;
    float imag, real;
    for (i = 0; i < 2*ny; i += 2)
    {
        imag = 0;
        real = 0;
        for (j = 0; j < 2*nh; j += 2){
            real += h[j] * x[i-j  ] - h[j+1] * x[i+1-j];
            imag += h[j] * x[i+1-j] + h[j+1] * x[i-j  ];
        }
        y[i] = real;
        y[i+1] = imag;
    }
}