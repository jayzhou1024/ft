

int trival_qr(const int Nrows,const int Ncols, float* A, float* Q, float* R , float* u);
int trival_qr_solver(const int Nrows,const int Ncols,float *Q,float *R,float *b,float *y,float *x);
int trival_inverse(const int Nrows, const int Ncols, float *Q, float *R, float *inv_A);

int DSPF_sp_qrd_solver(const int Nrows,const int Ncols,float *Q,float *R,float *b,float *y,float *x);
int DSPF_sp_qrd_solver1(const int Nrows,const int Ncols,float *Q,float *R,float *b,float *y,float *x);
int DSPF_sp_qrd_solver2(const int Nrows,const int Ncols,float *Q,float *R,float *b,float *y,float *x);
int DSPF_sp_qrd_solver3(const int Nrows,const int Ncols,float *Q,float *R,float *b,float *y,float *x);
int DSPF_sp_qrd_solver4(const int Nrows,const int Ncols,float *Q,float *R,float *b,float *y,float *x);
int DSPF_sp_qrd_solver5(const int Nrows,const int Ncols,float *Q,float *R,float *b,float *y,float *x);
int DSPF_sp_qrd_solver6(const int Nrows,const int Ncols,float *Q,float *R,float *b,float *y,float *x);

int DSPF_sp_qrd_solver7(
    const int Nrows,
    const int Ncols,
    vector float *Q,
    vector float *R,
    vector float *b,
    vector float *y,
    vector float *x
);

