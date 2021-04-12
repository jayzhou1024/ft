
typedef int (*QR_FUNC)(const int Nrows,const int Ncols, float* A, float* Q, float* R , float* u);
typedef int (*SLOVER_FUNC)(const int Nrows,const int Ncols,float *Q,float *R,float *b,float *y,float *x);
typedef int (*INVERSE_FUNC)(const int Nrows, const int Ncols, float *Q, float *R, float *inv_A);

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