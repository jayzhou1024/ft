void DSPF_sp_biquad_cn(
    float *x,
    float *b,
    float *a,
    float *delay,
    float *y,
    const int nx){

    int i;
    float sum1, sum2, sum3, sum4, sum5, sum, x0, x1, y0;

    /* calculate first two samples (consume delay elements) */
    y[0] = b[0] * x[0] + delay[0];
    y[1] = b[0] * x[1] + delay[1] + b[1] * x[0] - a[1] * y[0];

    /* prepare temp variables for i = 2 */
    x0  = x[0];
    x1  = x[1];
    y0  = y[0];
    sum = y[1];

    for (i = 2; i < nx; i++)
    {
        sum5 = a[1] * sum;
        sum4 = a[2] * y0;
        sum1 = b[0] * x[i];
        sum2 = b[1] * x1;
        sum3 = b[2] * x0;

        x0   = x1;
        x1   = x[i];

        y0   = sum;
        sum  = sum3 + sum2 + sum1 - sum4 - sum5;
        y[i] = sum;
    }

    /* find final delay elements to return */
    delay[0] = b[1] * x1 + b[2] * x0 - a[1] * sum - a[2] * y0;
    delay[1] = b[2] * x1 - a[2] * sum;
    }