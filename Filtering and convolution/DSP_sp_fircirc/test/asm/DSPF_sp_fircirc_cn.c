void DSPF_sp_fircirc_cn(const float *x, float *h, float *y,
                        int index, int csize, int nh, int ny)
{
    /* Circular Buffer block size = ((2^(csize + 1)) / 4) */
    int i, j, mod = (1 << (csize - 1));
    float sum;

    for (i = 0; i < ny; i++)
    {
        sum = 0;
        for (j = 0; j < nh; j++)
        {
            /* Operation "% mod" is equivalent to "& (mod -1)" */
            /* sum += x[(i + j + index) % mod] * h[j];         */
            sum += x[(i + j + index) & (mod - 1)] * h[j];
        }
        y[i] = sum;
    }
}
