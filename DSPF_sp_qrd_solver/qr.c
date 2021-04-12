#include "M7002.h"
#include <string.h>

int trival_qr(const int Nrows, const int Ncols, float *A, float *Q, float *R, float *u)
{

    int row, col, i, k, loop_count;
    float alpha, scale, sum, norm_sqr;

    memcpy(R, A, sizeof(float) * Nrows * Ncols);
    memset(Q, 0.0, sizeof(float) * Nrows * Nrows);

    for (row = 0; row < Nrows; row++)
    {
        Q[row + row * Nrows] = 1.0;
    }

    if (Nrows <= Ncols)
    {
        loop_count = Nrows - 2;
    }
    else
    {
        loop_count = Ncols - 1;
    }
    for (col = 0; col <= loop_count; col++)
    {
        sum = 0;
        for (row = col; row < Nrows; row++)
        {
            sum += R[col + row * Ncols] * R[col + row * Ncols];
        }
        if (sum != 0)
        {
            alpha = sqrt(sum);
            if (R[col + col * Ncols] >= 0)
            {
                alpha = -alpha;
            }
            u[col] = R[col + col * Ncols] + alpha;
            R[col + col * Ncols] = -alpha;

            for (row = col + 1; row < Nrows; row++)
            {
                u[row] = R[col + row * Ncols];
                R[col + row * Ncols] = 0;
            }
            if (alpha * u[col] != 0.0)
            {
                scale = 1 / (alpha * u[col]);
                /* R=Q1*R */
                for (i = col + 1; i < Ncols; i++)
                {
                    sum = 0;
                    for (k = col; k < Nrows; k++)
                    {
                        sum += u[k] * R[i + k * Ncols];
                    }
                    sum *= scale;
                    for (k = col; k < Nrows; k++)
                    {
                        R[i + k * Ncols] -= u[k] * sum;
                    }
                }
                /* Q=A*Q1 */
                for (i = 0; i < Nrows; i++)
                {
                    sum = 0;
                    for (k = col; k < Nrows; k++)
                    {
                        sum += u[k] * Q[k + i * Nrows];
                    }
                    sum *= scale;
                    for (k = col; k < Nrows; k++)
                    {
                        Q[k + i * Nrows] -= u[k] * sum;
                    }
                }
            } /* if (norm_sqr!=0) */
        }     /* if (sum!=0) */
    }         /* for (col=0;col<=loop_count;col++) */

    return 0;
}

int vector_qr(const int Nrows, const int Ncols, float *A, float *Q, float *R, float *u)
{
    vector float *vx = (vector float *)0x040000000;
    vector float *vy = (vector float *)0x040020000;
    vector float vtemp;
    vector float vtemp1;
    vector float vtemp2;

    int row, col, i, k, loop_count;
    float alpha, scale, sum, norm_sqr;

    memcpy(R, A, sizeof(float) * Nrows * Ncols);
    memset(Q, 0.0, sizeof(float) * Nrows * Nrows);

    // M7002_datatrans_index(R + col, x, Nrows - col, 1, (((Ncols - 1) * 4)) | (0 << 16));

    for (row = 0; row < Nrows; row++)
    {
        Q[row + row * Nrows] = 1.0;
    }

    if (Nrows <= Ncols)
    {
        loop_count = Nrows - 2;
    }
    else
    {
        loop_count = Ncols - 1;
    }
    for (col = 0; col <= loop_count; col++)
    {
        sum = 0;
        for (row = col; row < Nrows; row++)
        {
            sum += R[col + row * Ncols] * R[col + row * Ncols];
        }
        if (sum != 0)
        {
            alpha = sqrt(sum);
            if (R[col + col * Ncols] >= 0)
            {
                alpha = -alpha;
            }
            u[col] = R[col + col * Ncols] + alpha;
            R[col + col * Ncols] = -alpha;

            for (row = col + 1; row < Nrows; row++)
            {
                u[row] = R[col + row * Ncols];
                R[col + row * Ncols] = 0;
            }
            if (alpha * u[col] != 0.0)
            {
                scale = 1 / (alpha * u[col]);
                
                {
                    float buf[16];
                    // M7002_datatrans_index 五个参数
                    // src = R + col + 1 + col * Ncols
                    // dest = vx
                    // frame = Ncols - (col + 1)
                    // elem = Nrows - col
                    // srcOff = ((col+1) * 4))
                    // destOff = ((col+1) * 4) << 16)
                    M7002_datatrans_index(R + col + 1 + col * Ncols, vx, Nrows - (col + 1), Nrows - col, (((col+1) * 4)) | (((col+1) * 4) << 16));

                    vtemp2 = vec_svbcast(0.0f);
                    for (k = col; k < Nrows; k++)
                    {
                        vtemp = vec_svbcast(u[k]);
                        vtemp2 = vec_mula(vx[k-col], vtemp, vtemp2);
                    }
                    vtemp = vec_svbcast(scale);
                    vtemp2 = vec_muli(vtemp2, vtemp);

                    M7002_datatrans(&vtemp2, buf, sizeof(float) * 16);
                    for (i = col + 1; i < Ncols; i++)
                    {
                        sum = buf[i - col - 1];
                        for (k = col; k < Nrows; k++)
                        {
                            R[i + k * Ncols] -= u[k] * sum;
                        }
                    }
                }
                


                // {
                //     M7002_mat_transpose(Q, vx, Nrows, Ncols, 0);
                //     vtemp2 = vec_svbcast(0.0f);
                //     for (k = col; k < Nrows; k++)
                //     {
                //         vtemp = vec_svbcast(u[k]);
                //         vtemp2 = vec_mula(vx[k], vtemp, vtemp2);
                //     }
                //     vtemp = vec_svbcast(scale);
                //     vtemp2 = vec_muli(vtemp2, vtemp);

                //     M7002_datatrans(&vtemp2, buf, sizeof(float) * 16);
                //     for (i = col + 1; i < Ncols; i++)
                //     {
                //         sum = buf[i - col - 1];
                //         for (k = col; k < Nrows; k++)
                //         {
                //             Q[k + i * Nrows] -= u[k] * sum;
                //         }
                //     }
                // }

                // i = 行, k = 列
                /* Q=A*Q1 */
                for (i = 0; i < Nrows; i++)
                {
                    sum = 0;
                    for (k = col; k < Nrows; k++)
                    {
                        sum += u[k] * Q[k + i * Nrows];
                    }
                    sum *= scale;
                    for (k = col; k < Nrows; k++)
                    {
                        Q[k + i * Nrows] -= u[k] * sum;
                    }
                }

            } /* if (norm_sqr!=0) */
        }     /* if (sum!=0) */
    }         /* for (col=0;col<=loop_count;col++) */

    return 0;
}

int trival_qr_solver(const int Nrows, const int Ncols, float *Q, float *R, float *b, float *y, float *x)
{

    short row, col, loop_cnt;
    float sum;

    /* generate y=Q'*b */
    for (row = 0; row < Nrows; row++)
    {
        sum = 0.0;
        for (col = 0; col < Nrows; col++)
        {
            sum += Q[row + col * Nrows] * b[col];
        }
        y[row] = sum;
    }

    /* use backward substitution to solve x=inv(R)*y */
    if (Nrows >= Ncols)
        loop_cnt = Ncols;
    else
        loop_cnt = Nrows;
    memset(x, 0, sizeof(float) * Ncols);
    for (row = loop_cnt - 1; row >= 0; row--)
    {
        sum = 0.0;
        for (col = row + 1; col < loop_cnt; col++)
        {
            sum += R[col + row * Ncols] * x[col];
        }
        x[row] = (y[row] - sum) / R[row + row * Ncols];
    }

    return 0;
}

int trival_inverse(const int Nrows, const int Ncols, float *Q, float *R, float *inv_A)
{

    int row, col, k;
    float factor, sum;

    /* set inv_A matrix to identity */
    for (row = 0; row < Nrows; row++)
    {
        for (col = 0; col < Ncols; col++)
        {
            if (row == col)
                inv_A[col + row * Ncols] = 1.0;
            else
                inv_A[col + row * Ncols] = 0.0;
        }
    }

    /* use Gauss Jordan algorithm to invert R whose result will be in inv_A */
    for (col = Ncols - 1; col >= 1; col--)
    {
        for (row = col - 1; row >= 0; row--)
        {
            factor = R[col + row * Ncols] / R[col + col * Ncols];
            for (k = 0; k < Ncols; k++)
            {
                inv_A[k + row * Ncols] -= factor * inv_A[k + col * Ncols];
                R[k + row * Ncols] -= factor * R[k + col * Ncols];
            }
        }
    }

    /* scale R and inv_A to get identity matrix in R */
    for (row = Nrows - 1; row >= 0; row--)
    {
        factor = R[row + row * Ncols];
        for (col = 0; col < Ncols; col++)
        {
            inv_A[col + row * Ncols] /= factor;
            R[col + row * Ncols] /= factor;
        }
    }

    /* inv_A = inv_R * Q' */
    for (row = 0; row < Nrows; row++)
    {
        for (col = 0; col < Ncols; col++)
        {
            sum = 0.0;
            for (k = 0; k < Ncols; k++)
            {
                sum += inv_A[k + row * Ncols] * Q[k + col * Ncols];
            }
            R[col] = sum;
        }
        for (col = 0; col < Ncols; col++)
        {
            inv_A[col + row * Ncols] = R[col];
        }
    }

    return 0;
}
