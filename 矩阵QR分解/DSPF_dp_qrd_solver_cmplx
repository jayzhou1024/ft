
/**
 *  YHFT C 工程模板
 */


#include<M7002.h>
#include<c6x-c.h>



int DSPF_dp_qrd_solver_cmplx(const int Nrows,const int Ncols, float *Q, float *R, float *b, float *y, float *x)
{

  short row,col,loop_cnt,Nrows2,Ncols2;//
  double xreal,ximag,yreal,yimag,zreal,zimag,sum_real,sum_imag;

  //第一步：求y
  /* generate y=Q'*b */
  Nrows2=2*Nrows;
  Ncols2=2*Ncols;
  
  vector float*src1=0x040000000;
  vector float*src2=0x040006000;
  vector float*dst1=0x040012000;
  vector float*dst2=0x040024000;
  M7002_datatrans(Q,src,sizeof(float)*Nrows2*Nclos2);//
  M7002_matinv(src,dst,Nrows);//获得Q的逆矩阵（因为Q为复正交矩阵，故其逆矩阵等于共轭转置矩阵）
  							//复正交矩阵的性质1（https://www.docin.com/p-1455768911.html）
  							//row为4/24/16的倍数
  	M7002_datatrans(b,src2,Ncols);	
  	M7002_matmult(dst1,src2,dst2,Nrows,Ncols,Ncols,1);//复数矩阵乘法
  	M7002_datatrans(dst2,y,sizeof(float)*Nrows);//将结果赋给y
  						
  							
//  for (row=0;row<Nrows;row++)
//  {
//	sum_real=0;
//	sum_imag=0;
//	for (col=0;col<Nrows;col++) 
//  {
//	  xreal= Q[2*row  +col*Nrows2];//
//	  ximag=-Q[2*row+1+col*Nrows2];
//	  yreal=b[2*col  ];
//	  yimag=b[2*col+1];
//	  sum_real+=xreal*yreal-ximag*yimag;
//	  sum_imag+=xreal*yimag+ximag*yreal;
//	}
//	y[2*row  ]=sum_real;
//	y[2*row+1]=sum_imag;
//  }

  /* use backward substitution to solve x=inv(R)*y */用高斯消元法求解x
  if (Nrows>=Ncols) 
    loop_cnt=Ncols;
  else             
    loop_cnt=Nrows;

  memset(x,0,sizeof(double)*Ncols2);

  for (row=loop_cnt-1;row>=0;row--) 
  {
	sum_real=0;
	sum_imag=0;
	for (col=row+1;col<loop_cnt;col++)
    {
	  xreal=R[2*col  +row*Ncols2];
	  ximag=R[2*col+1+row*Ncols2];
	  yreal=x[2*col  ];
	  yimag=x[2*col+1];
	  sum_real+=xreal*yreal-ximag*yimag;
	  sum_imag+=xreal*yimag+ximag*yreal;
	}
	xreal=y[2*row  ]-sum_real;
	ximag=y[2*row+1]-sum_imag;
	yreal=R[2*row  +row*2*Ncols];
	yimag=R[2*row+1+row*2*Ncols];
	complex_dp_div(xreal,ximag,yreal,yimag,&zreal,&zimag);
	x[2*row  ]=zreal;
	x[2*row+1]=zimag;
  }

  return 0;
}




static void complex_dp_div(double x_real,double x_imag,double y_real,double y_imag,double *z_real,double *z_imag) 
{

  double inv_mag_sq;
#ifdef ENABLE_NR
  double x,y;
#endif

#ifndef ENABLE_NR
  inv_mag_sq=1/(y_real*y_real+y_imag*y_imag);
#else
  x=y_real*y_real+y_imag*y_imag;
  y=_rcpdp(x);
  y=y*(2.0-x*y);
  y=y*(2.0-x*y);
  y=y*(2.0-x*y);
  inv_mag_sq=y;
#endif
  *z_real=(x_real*y_real+x_imag*y_imag)*inv_mag_sq;
  *z_imag=(x_imag*y_real-x_real*y_imag)*inv_mag_sq;

}
