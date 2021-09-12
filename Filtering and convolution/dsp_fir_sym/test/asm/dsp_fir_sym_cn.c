void DSP_fir_sym_cn (
    const short *x,    /* Input samples                   */
    const short *h,    /* Filter taps                     */
    short       *r,    /* Output samples                  */
    int nh,                     /* Number of symmetric filter taps */
    int nr,                     /* Number of output samples        */
    int s                       /* Final output shift              */
)
{
    int i, j;
    volatile int y0, round;
    round = 1 << (s - 1);
    int sum1,sum2,sum3;
    for (j = 0; j < nr; j++) {
        y0 = round;
        for (i = 0; i < nh; i++){
        	sum1 = x[j + i] * h[i];
        	sum2 = x[2*nh + j - i] * h[i];
        	y0  = y0 + sum1 + sum2;
//        	y0 += ((short) (x[j + i] + x[2*nh + j - i])) * h[i];
        }
        sum3 =  x[j + nh] * h[nh];
        y0 += sum3;
        r[j] = (int)(y0 >> s);;
    }
}