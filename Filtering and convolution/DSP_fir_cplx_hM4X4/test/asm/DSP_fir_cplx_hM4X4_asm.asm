.global DSP_fir_cplx_hM4X4_asm
DSP_fir_cplx_hM4X4_asm:

        SMOVI0L     0, R50           ;初始化i
        SSHFLL      2, R16,R42      ; h<<2
|       SADD.M1     0, R50,R45      ;这里初始化使用add是为了方便并行
|       SADD.M2     0, R50,R49
        SMOVIL  	3, R0		    ;饱和配置 
|       SSUB.M1     4, R42,R42      ;h为倒序取，这里获取h[nh-1]的地址
|       SADD.M2     0, R50,R43
        SMOVIL      16,R44
|       SADD.M1     R42,R12,R42
        SMOVIH          0,R44
|       SMVAGA36.M1 	R43:R42, AR10   ;h基址保存到AR10中(倒序)
        SMVAGA36.M1 	R45:R44, OR4
|	    SMVCGC  	R0,SCR
LOOP_I:
      
        SLDW		*AR10--[1],R53  ;P6
|       SMOVI0L      0,R51

        SLDW		*AR10--[1],R54 
|       SMOVI0L      0,R52

        SLDW		*AR10--[1],R55
|       SSHFLL		2, R50,R40     ;每次偏移4*4

        SLDW		*AR10--[1],R56
|       SADD.M1		R40,R10,R44    
|       SEQ         0,R50,R1      ;i == 0 时初始化r
        SNOP        2
        SVBCAST.M1	R53, VR10     ;p4
|       SMOVI0L      0,R51
|       SVBCAST.M2	R1, VR1
        SVBCAST.M1	R54, VR11
        SVBCAST.M1	R55, VR12
        SVBCAST.M1	R56, VR13
LOOP_J:     
        SSHFLL		    2, R51,R42      ;j<<2
        SSHFLL	    	7, R52,R46      ;16*4*2
|       SADD.M2  	    R42,R44,R48 

        SADD	        R14,R46,R46
|       SMVAGA36.M1 	R49:R48, AR3
|       SADD.M2		    16,R51,R51 

        SMVAGA36.M1 	R47:R46, AR4 
|       SLT	            R51,R18,R0

        VLDW            *AR3++,VR30    ;p8
        VLDDW           *AR4,VR5:VR4   
|       VLDW            *AR3++,VR31
        VLDW            *AR3++,VR32
        VLDW            *AR3++,VR33
        SNOP            5
    
        VCMUL16T.M3     VR10,VR30,VR21:VR20  ;P4  需要连续两拍占用写端口
|[R1]   SVBCAST.M1      R50,VR4
|[R1]   SVBCAST.M2      R50,VR5        ;在 R1 = 1时 R50 = 0,利用广播来将r_0_15_real,r_0_15_imag初值赋为0
        SNOP            1
        VCMUL16T.M1     VR11,VR31,VR23:VR22
|       VCMUL16T.M2     VR12,VR32,VR25:VR24
|       VCMUL16T.M3     VR13,VR33,VR27:VR26  
        SNOP            3
        VADD.M1         VR4,VR20,VR4
|       VADD.M2         VR5,VR21,VR5

        VADD.M1         VR4,VR22,VR4
|       VADD.M2         VR5,VR23,VR5

        VADD.M1         VR4,VR24,VR4
|       VADD.M2         VR5,VR25,VR5

        VADD.M1         VR4,VR26,VR4
|       VADD.M2         VR5,VR27,VR5
        VSTDW	        VR5:VR4, *AR4  
|[R0]   SBR		        LOOP_J
|	SADD.M1	        1, R52,R52 
        SNOP	     	6
        SADD 		    4, R50, R50
        SLT		        R50,R16,R1
 [R1]	SBR		        LOOP_I
	    SNOP		    6               ;循环结束

        SADD.M2         15,R18,R42	
|       SMVAGA36.M1     R15:R14,AR4
|       SMOVI0L         0,R50
        SSHFLR          4,R42,R42       ;2 * ((NR+15)/16)
|       SMVAGA36.M1     R15:R14,AR3

UPDATE_STORE:
        SADD.M2         1,R50,R50
|       VLDDW		*AR4++[OR4], VR5:VR4   ;p8
        SLT             R50,R42,R1
        SNOP		6
        VSHFAR          15,VR4,VR4
        VSHFAR          15,VR5,VR5
        VBALE2          VR4,VR5,VR4
        VSTW            VR4,*AR3++[OR4]   ;p4
|[R1]   SBR		UPDATE_STORE
        SNOP		6

    	SBR	        R62                   
        SNOP    	6                     

.size DSP_fir_cplx_hM4X4_asm, .-DSP_fir_cplx_hM4X4_asm
