#include "M7002.h"


int DSPF_sp_qrd_solver7(
    const int Nrows,
    const int Ncols,
    vector float *Q,
    vector float *R,
    vector float *b,
    vector float *y,
    vector float *x
)
{
    int row, col, loop_cnt;
    float sum;
    float temp, temp_y, temp_r;
    float buf[16];

    vector float vft1;

    int Nrows16 = (Nrows + 15) / 16;
    int Ncols16 = (Nrows + 15) / 16;

    // part1
    for(row = 0; row < Nrows16; ++row){
        // 累加初值初始化为0
        y[row] = vec_svbcast(0.0f);
    }
    for (row = 0; row < Nrows; row++)
    {
        // 通过svr取出b向量中的一项
        mov_to_svr_v16sf( *(vector float*)((float*)b+row) );
        *(int*)&temp = mov_from_svr0();
        vft1 = vec_svbcast ( temp );
        // Q的一行乘上b的一项
        for(col = 0; col < Nrows16; ++col){
            *(vector float*)((float*)y + col * 16) = vec_mula(vft1, 
                *(vector float*)((float*)Q + row * Nrows + col * 16), 
                *(vector float*)((float*)y + col * 16)
            );
        }
    }

    // part2
    if (Nrows >= Ncols)
        loop_cnt = Ncols;
    else
        loop_cnt = Nrows;

    for (col = 0; col < Ncols16; ++col){
        x[col] = vec_svbcast(0.0f);
    }
    for (row = loop_cnt - 1; row >= 0; row--)
    {   
        // R的一行与x点乘(每项分别乘后加)
        vft1 = vec_svbcast(0.0f);
        for (col = 0; col < Ncols16; ++col){
            vft1 = vec_mula(
                *(vector float*)((float*)R + row * Ncols + col * 16), 
                *(vector float*)((float*)x + col * 16), 
                vft1);
        }
        // 通过svr取出，进行16项最后的相加
        mov_to_svr_v16sf( vft1 );
        *(int*)&buf[0] = mov_from_svr0();
        *(int*)&buf[1] = mov_from_svr1();
        *(int*)&buf[2] = mov_from_svr2();
        *(int*)&buf[3] = mov_from_svr3();
        *(int*)&buf[4] = mov_from_svr4();
        *(int*)&buf[5] = mov_from_svr5();
        *(int*)&buf[6] = mov_from_svr6();
        *(int*)&buf[7] = mov_from_svr7();
        *(int*)&buf[8] = mov_from_svr8();
        *(int*)&buf[9] = mov_from_svr9();
        *(int*)&buf[10] = mov_from_svr10();
        *(int*)&buf[11] = mov_from_svr11();
        *(int*)&buf[12] = mov_from_svr12();
        *(int*)&buf[13] = mov_from_svr13();
        *(int*)&buf[14] = mov_from_svr14();
        *(int*)&buf[15] = mov_from_svr15();
        // 16项求和
        sum = buf[0] + buf[1] + buf[2] + buf[3] + buf[4] + buf[5] + buf[6] + buf[7] + 
            buf[8] + buf[9] + buf[10] + buf[11] + buf[12] + buf[13] + buf[14] + buf[15];
        // 通过svr取出必要的量
        mov_to_svr_v16sf(*(vector float*)((float*)y + row));
        *(int*)&temp_y = mov_from_svr0();
        mov_to_svr_v16sf(*(vector float*)((float*)R + row * Ncols + row));
        *(int*)&temp_r = mov_from_svr0();
        // 计算x的一项，由最后一项往前计算
        temp = (temp_y - sum) / temp_r;

        // 通过svr存入x
        mov_to_svr_v16sf(*(vector float*)((float*)x + row));
        mov_to_svr0(*(int*)&temp);
        *(vector float*)((float*)x + row) = mov_from_svr_v16sf();
    }
    
}