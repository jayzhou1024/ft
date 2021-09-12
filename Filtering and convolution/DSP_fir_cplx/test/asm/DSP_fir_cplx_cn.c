
void DSP_fir_cplx_cn (
    const short * x,
    const short * h,
    short       * r,
    int nh,
    int nr
)
{
    int i, j;
    int imag, real;
    for (i = 0; i < 2*nr; i += 2) {
        imag = 0;
        real = 0;
        for (j = 0; j < 2*nh; j += 2) {
            real += h[j+0] * x[i-j+0] - h[j+1] * x[i-j+1];
            imag += h[j+1] * x[i-j+0] + h[j+0] * x[i-j+1];
        }
        r[i] = (real >> 15);
        r[i+1] = (imag >> 15);
    }
}