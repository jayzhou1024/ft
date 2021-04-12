#include "M7002.h"
#include <string.h>

// 第二部分进一步优化
// 循环展开
int DSPF_sp_qrd_solver5(const int Nrows, const int Ncols, float *Q, float *R, float *b, float *y, float *x)
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
    float tempf;
    
    int rows16 = (Nrows + 15) / 16;

    M7002_datatrans(Q, vx, sizeof(float) * Nrows * Ncols);
    h = vec_svbcast(b[0]);

    // 计算第一行
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

    // 后面的行累加带第一行
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

    int cols16 = (Ncols + 15) / 16;
    float buf[16];

    M7002_datatrans(R, vy, sizeof(float) * loop_cnt * Ncols);
    for (i = 0; i < cols16; ++i){
        vx[i] = vec_svbcast(0.0f);
        vx[++i] = vec_svbcast(0.0f);
        vx[++i] = vec_svbcast(0.0f);
    }

    for (row = loop_cnt - 1; row >= 0; row--)
    {   
        h = vec_svbcast(0.0f);
        for (i = 0; i < cols16 - cols16 % 3; ++i){
            h = vec_mula(vy[row * cols16 + i], vx[i], h);
            ++i;
            h = vec_mula(vy[row * cols16 + i], vx[i], h);
            ++i;
            h = vec_mula(vy[row * cols16 + i], vx[i], h);
        }
        for(; i < cols16; ++i){
            h = vec_mula(vy[row * cols16 + i], vx[i], h);
        }

        M7002_datatrans(&h, buf, sizeof(float) * 16);
        sum = buf[0] + buf[1] + buf[2] + buf[3] + buf[4] + buf[5] + buf[6] + buf[7] + 
            buf[8] + buf[9] + buf[10] + buf[11] + buf[12] + buf[13] + buf[14] + buf[15];

        tempf = (y[row] - sum) / R[row + row * Ncols];
        M7002_datatrans(&tempf, ((float*)vx) + row, sizeof(float));
    }
    M7002_datatrans(vx, x, sizeof(float) * Ncols);

    return 0;
}

