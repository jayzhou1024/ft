#include "M7002.h"
#include <string.h>

// 循环展开利用3个MAC
// 计算访存分离
int DSPF_sp_qrd_solver3(const int Nrows, const int Ncols, float *Q, float *R, float *b, float *y, float *x)
{

    short row, col, loop_cnt;
    float sum,t;

    int i,j, j1, j2;
    vector float *vx = (vector float *)0x040000000;
    vector float *vy = (vector float *)0x040020000;
    vector float h;
    vector float temp1;
    vector float temp2;
    vector float temp3;
    vector float temp1_1;
    vector float temp2_1;
    vector float temp3_1;
    
    int rows16 = (Nrows + 15) / 16;

    M7002_datatrans(Q, vx, sizeof(float) * Nrows * Ncols);
    h = vec_svbcast(b[0]);
    for(j = 0; j < rows16 - rows16 % 3; j += 3) 
    {
        j1 = j + 1;
        j2 = j + 2;
        temp1 = vx[j];
        temp2 = vx[j1];
        temp3 = vx[j2];

        temp1 = vec_muli(temp1, h);
        temp2 = vec_muli(temp2, h);
        temp3 = vec_muli(temp3, h);
        
        vx[j] = temp1;
        vx[j1] = temp2;
        vx[j2] = temp3;
    }
    for(; j < rows16; j++) 
    {
        vx[j] = vec_muli(vx[j], h);
    }

    for (i = 1; i < Nrows; ++i)
    {
        h = vec_svbcast(b[i]);
        for(j = 0; j < rows16 - rows16 % 3; j += 3) 
        {
            j1 = j + 1;
            j2 = j + 2;
            temp1 = vx[j];
            temp2 = vx[j1];
            temp3 = vx[j2];
            temp1_1 = vx[i*rows16 + j];
            temp2_1 = vx[i*rows16 + j1];
            temp3_1 = vx[i*rows16 + j2];

            temp1 = vec_mula(temp1_1, h, temp1);
            temp2 = vec_mula(temp2_1, h, temp2);
            temp3 = vec_mula(temp3_1, h, temp3);
            
            vx[j] = temp1;
            vx[j1] = temp2;
            vx[j2] = temp3;
        }
        for(; j < rows16; j++) 
        {
            vx[j] = vec_mula(vx[i*rows16 + j], h, vx[j]);
        }
    }
    M7002_datatrans(vx, y, sizeof(float) * Nrows);


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
