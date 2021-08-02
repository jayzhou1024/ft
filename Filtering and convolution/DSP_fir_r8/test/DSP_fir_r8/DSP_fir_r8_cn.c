
#pragma CODE_SECTION(DSP_fir_r4_cn, ".text:ansi");

void DSP_fir_r8_cn (
    const short * x,    /* Input array [nr+nh-1 elements] */
    const short * h,    /* Coeff array [nh elements]      */
    short       * r,    /* Output array [nr elements]     */
    int nh,                     /* Number of coefficients         */
    int nr                      /* Number of output samples       */
)
{
    int i, j, sum;


    for (j = 0; j < nr; j++) {
        sum = 0;
        for (i = 0; i < nh; i++)
            sum += x[i + j] * h[i];
        r[j] = sum >> 15;
    }
}

