int DSP_firlms2_cn (
    short * h,         /* h[nh] = Coefficient Array   */
    const short * x,   /* x[nh] = Input Array         */
    short b,           /* b = Error from Previous FIR */
    int nh             /* nh = Number of Coefficients */
)
{
    int i;
    int r = 0;

    for (i = 0; i < nh; i++) {
    	int temp = (x[i] * b); //天坑
    	temp = temp >> 15;
        temp = h[i] + temp;
        r    += x[i+1] * temp;
    }

    return r;
}