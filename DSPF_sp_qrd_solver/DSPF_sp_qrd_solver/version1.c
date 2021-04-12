#include "M7002.h"
#include <string.h>

// 初步向量化
int DSPF_sp_qrd_solver1(const int Nrows, const int Ncols, float *Q, float *R, float *b, float *y, float *x)
{

    short row, col, loop_cnt;
    float sum,t;

    int i,j;
    vector float *vx = (vector float *)0x040000000;
    vector float h;
    
    int rows16 = (Nrows + 15) / 16;
    {
        M7002_datatrans(Q, vx, sizeof(float) * Nrows * Ncols);
        h = vec_svbcast(b[0]);
        for(j = 0; j < rows16; ++j) 
        {
            vx[j] = vec_muli(vx[j], h);
        }
        for (i = 1; i < Nrows; ++i)
        {
            h = vec_svbcast(b[i]);
            for(j = 0; j < rows16; ++j) {
                vx[j] = vec_mula(vx[i * rows16 + j], h, vx[j]);
            }
        }
        M7002_datatrans(vx, y, sizeof(float) * Nrows);
    }

    memset(x, 0, sizeof(float) * Ncols);

    /* use backward substitution to solve x=inv(R)*y */
    if (Nrows >= Ncols)
        loop_cnt = Ncols;
    else
        loop_cnt = Nrows;
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
