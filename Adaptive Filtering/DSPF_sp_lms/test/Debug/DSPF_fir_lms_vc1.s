	.file	"DSPF_fir_lms_vc1.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSPF_fir_lms_vc1,"ax",@progbits
	.align	2
	.global	DSPF_fir_lms_vc1
	.type	DSPF_fir_lms_vc1, @function
DSPF_fir_lms_vc1:
.LFB3:
	.file 1 "../DSPF_fir_lms_vc1.c"
	.loc 1 19 0
	.cfi_startproc
		SMOVIL		448, R6
		SMOVIL		0, R7
		SSUBA.L		R7:R6, AR7, AR7
		SNOP		2
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, 0
		SADDA.M1		16,AR15,AR14
.LCFI1:
	.cfi_def_cfa 14, 0
		SNOP		1
		SMOVIL		-144, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R11:R10, *-AR14[14]
		SSTDW		R13:R12, *-AR14[15]
		SMOVIL		-128, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SSTDW		R15:R14, *AR10
		SMOVIL		-128, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTDW		R17:R16, *AR10
		SMOVIL		-132, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R18, *AR10
		SMOVIL		-136, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R20, *AR10
		SMOVIL		-140, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R22, *AR10
		SMOVIL		-144, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R24, *AR10
	.loc 1 26 0
		SMOVIL		-96, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		0, R50
		SMOVIL		0, R51
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTDW		R51:R50, *AR10
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		8,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		0, R50
		SMOVIL		0, R51
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTDW		R51:R50, *AR10
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		8,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		0, R50
		SMOVIL		0, R51
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTDW		R51:R50, *AR10
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		8,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		0, R50
		SMOVIL		0, R51
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTDW		R51:R50, *AR10
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		8,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		0, R50
		SMOVIL		0, R51
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTDW		R51:R50, *AR10
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		8,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		0, R50
		SMOVIL		0, R51
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTDW		R51:R50, *AR10
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		8,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		0, R50
		SMOVIL		0, R51
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTDW		R51:R50, *AR10
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		8,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		0, R50
		SMOVIL		0, R51
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTDW		R51:R50, *AR10
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		8,OR11,OR11
		SNOP		1
	.loc 1 27 0
		SMOVIL		0, R42
		SMOVIH		0, R42
		SSTW		R42, *-AR14[5]
	.loc 1 30 0
		SMOVIL		15, R42
	; ;APP 
;# 30 "../DSPF_fir_lms_vc1.c" 1
	  SMVCGC   R42, VLR         
	  SNOP      3              
	
;# 0 "" 2
	.loc 1 32 0
	; ;NO_APP 
		SMOVIL		-132, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SVBCAST.M1 		 R42,VR3
		SNOP		3
		VSTW.LS 		VR3,*+AR7[80]
	.loc 1 34 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[3]
		SBR		.L2
		SNOP		6
.L5:
	.loc 1 35 0
		SMOVIL		-136, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SVBCAST.M1 		 R42,VR3
		SNOP		3
		VSTW.LS 		VR3,*+AR7[64]
	.loc 1 36 0
		VLDW.LS 		*+AR7[64],VR3
		SNOP		7
		VLDW.LS 		*+AR7[80],VR4
		SNOP		7
		VFMULS32.M1	VR3,VR4,VR3
		SNOP		3
		VSTW.LS 		VR3,*+AR7[48]
	.loc 1 37 0
		SLDW		*-AR14[3], R44
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R45
		SADD.M1		R44,R44,R42
		SLTU		R42, R44, R50
		SADD.M1		R45,R45,R43
		SADD.M1		R43,R50,R50
		SMOV.M1		R50, R43
		SADD.M1		R42,R42,R50
		SLTU		R50, R42, R10
		SADD.M1		R43,R43,R51
		SADD.M1		R51,R10,R42
		SMOV.M1		R42, R51
		SMOV.M1		R50, R42
		SMOV.M1		R51, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[14], R51:R50
		SNOP		5
		SMVAGA36.M1		R51:R50, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 38 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[5]
	.loc 1 40 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[4]
		SBR		.L3
		SNOP		6
.L4:
	.loc 1 41 0 discriminator 2
		SLDDW		*-AR14[15], R51:R50
		SNOP		5
		SLDW		*-AR14[4], R60
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R61
		SMOV.M1		R60, R42
		SMOV.M1		R61, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLR		30, R42, R10
		SSHFLL		2, R43, R53
		SOR		R53, R10, R53
		SSHFLL		2, R42, R52
		SMVAGA36.M1		R51:R50, OR11
		SNOP		1
		SADDA.M1		R53:R52,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR3
		SNOP		7
		VSTW.LS 		VR3,*+AR7[32]
	.loc 1 42 0 discriminator 2
		SLDDW		*-AR14[4], R51:R50
		SNOP		5
		SLDW		*-AR14[4], R26
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R27
		SMOV.M1		R26, R42
		SMOV.M1		R27, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLR		30, R42, R10
		SSHFLL		2, R43, R55
		SOR		R55, R10, R55
		SSHFLL		2, R42, R54
		SMVAGA36.M1		R51:R50, OR11
		SNOP		1
		SADDA.M1		R55:R54,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR3
		SNOP		7
		VSTW.LS 		VR3,*+AR7[16]
	.loc 1 43 0 discriminator 2
		VLDW.LS 		*+AR7[48],VR3
		SNOP		7
		VLDW.LS 		*+AR7[16],VR4
		SNOP		7
		VLDW.LS 		*+AR7[32],VR5
		SNOP		7
		VMOV		VR5,	VR6
		VFMULAS32.M1	VR3,VR4,VR6,VR6
		SNOP		5
		VMOV		VR6,	VR3
		VSTW.LS 		VR3,*+AR7[32]
	.loc 1 44 0 discriminator 2
		VLDW.LS 		*+AR7[32],VR3
		SNOP		7
		SLDDW		*-AR14[15], R51:R50
		SNOP		5
		SLDW		*-AR14[4], R28
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R29
		SMOV.M1		R28, R42
		SMOV.M1		R29, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLR		30, R42, R10
		SSHFLL		2, R43, R57
		SOR		R57, R10, R57
		SSHFLL		2, R42, R56
		SMVAGA36.M1		R51:R50, OR11
		SNOP		1
		SADDA.M1		R57:R56,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
	.loc 1 46 0 discriminator 2
		SLDDW		*-AR14[5], R51:R50
		SNOP		5
		SLDW		*-AR14[4], R8
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R9
		SMOV.M1		R8, R42
		SMOV.M1		R9, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLR		30, R42, R10
		SSHFLL		2, R43, R59
		SOR		R59, R10, R59
		SSHFLL		2, R42, R58
		SMVAGA36.M1		R51:R50, OR11
		SNOP		1
		SADDA.M1		R59:R58,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR3
		SNOP		7
		VSTW.LS 		VR3,*AR7
	.loc 1 47 0 discriminator 2
		VLDW.LS 		*+AR7[32],VR3
		SNOP		7
		VLDW.LS 		*AR7,VR4
		SNOP		7
		VLDW.LS 		*+AR7[96],VR5
		SNOP		7
		VMOV		VR5,	VR6
		VFMULAS32.M1	VR3,VR4,VR6,VR6
		SNOP		5
		VMOV		VR6,	VR3
		VSTW.LS 		VR3,*+AR7[96]
	.loc 1 40 0 discriminator 2
		SLDW		*-AR14[4], R42
		SNOP		5
		SADD.M1		4,R42,R42
		SSTW		R42, *-AR14[4]
.L3:
	.loc 1 40 0 is_stmt 0 discriminator 1
		SMOVIL		-140, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[4], R50
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SLT		R50, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L4
		SNOP		6
	.loc 1 51 0 is_stmt 1
		VLDW.LS 		*+AR7[96],VR3
		SNOP		7
		VMVCGC.L		VR3,SVR
		SNOP		2
	.loc 1 52 0
		SMVCCG.L		SVR0,R50
		SNOP		1
		SMOVIL		-96, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R50, *AR10
	.loc 1 53 0
		SMVCCG.L		SVR1,R50
		SNOP		1
		SMOVIL		-96, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOV.M1		R50, R46
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R46, *+AR10[1]
	.loc 1 54 0
		SMVCCG.L		SVR2,R50
		SNOP		1
		SMOVIL		-96, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOV.M1		R50, R46
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R46, *+AR10[2]
	.loc 1 55 0
		SMVCCG.L		SVR3,R50
		SNOP		1
		SMOVIL		-96, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOV.M1		R50, R46
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R46, *+AR10[3]
	.loc 1 58 0
		SMOVIL		-96, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SFINTS32.M1		R42,R50
		SNOP		2
		SMOVIL		-96, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*+AR10[1], R42
		SNOP		5
		SFINTS32.M1		R42,R42
		SNOP		2
		SFADDS32.M1		R50, R42, R42
		SNOP		2
		SSTW		R42, *-AR14[5]
	.loc 1 59 0
		SMOVIL		-96, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*+AR10[2], R42
		SNOP		5
		SFINTS32.M1		R42,R42
		SNOP		2
		SLDW		*-AR14[5], R43
		SNOP		5
		SFADDS32.M1		R43, R42, R42
		SNOP		2
		SSTW		R42, *-AR14[5]
	.loc 1 60 0
		SMOVIL		-96, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*+AR10[3], R42
		SNOP		5
		SFINTS32.M1		R42,R42
		SNOP		2
		SLDW		*-AR14[5], R43
		SNOP		5
		SFADDS32.M1		R43, R42, R42
		SNOP		2
		SSTW		R42, *-AR14[5]
	.loc 1 62 0
		SLDW		*-AR14[3], R46
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R47
		SADD.M1		R46,R46,R42
		SLTU		R42, R46, R50
		SADD.M1		R47,R47,R43
		SADD.M1		R43,R50,R50
		SMOV.M1		R50, R43
		SADD.M1		R42,R42,R50
		SLTU		R50, R42, R10
		SADD.M1		R43,R43,R51
		SADD.M1		R51,R10,R42
		SMOV.M1		R42, R51
		SMOV.M1		R50, R42
		SMOV.M1		R51, R43
		SMOVIL		-128, R50
		SMOVIL		-1, R51
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R51:R50,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R51:R50
		SNOP		1
		SMVAAGH.M1		OR11, R51:R50
		SNOP		1
	;no-op trunc di R43:R42 to pdi R43:R42
		SMVAGA36.M1		R51:R50, AR10
		SNOP		1
		SLDDW		*AR10, R51:R50
		SNOP		5
		SMVAGA36.M1		R51:R50, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[5], R50
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R50, *AR10
	.loc 1 63 0
		SLDW		*-AR14[3], R48
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R49
		SADD.M1		R48,R48,R42
		SLTU		R42, R48, R50
		SADD.M1		R49,R49,R43
		SADD.M1		R43,R50,R50
		SMOV.M1		R50, R43
		SADD.M1		R42,R42,R50
		SLTU		R50, R42, R10
		SADD.M1		R43,R43,R51
		SADD.M1		R51,R10,R42
		SMOV.M1		R42, R51
		SMOV.M1		R50, R42
		SMOV.M1		R51, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SMOVIL		-128, R10
		SMOVIL		-1, R11
		SADDA.M1		R11:R10,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R51:R50
		SNOP		5
		SMVAGA36.M1		R51:R50, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R51
		SNOP		5
		SMOVIL		-136, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[5], R50
		SNOP		5
		SFSUBS32.M1		R50, R51, R50
		SNOP		2
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R50, *AR10
	.loc 1 34 0
		SLDW		*-AR14[3], R42
		SNOP		5
		SADD.M1		1,R42,R42
		SSTW		R42, *-AR14[3]
.L2:
	.loc 1 34 0 is_stmt 0 discriminator 1
		SMOVIL		-144, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[3], R50
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SLT		R50, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L5
		SNOP		6
	.loc 1 66 0 is_stmt 1
		SMOVIL		65535, R42
		SMOVIH		65535, R42
	; ;APP 
;# 66 "../DSPF_fir_lms_vc1.c" 1
	  SMVCGC   R42, VLR         
	  SNOP      3              
	
;# 0 "" 2
	.loc 1 67 0
	; ;NO_APP 
		SMOVIL		-136, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
	.loc 1 68 0
		SMOV.M1		R42, R10
		SMOVIL		448, R6
		SMOVIL		0, R7
		SADDA.M1		R7:R6,AR7,AR7
		SNOP		2
		SADDA.M1		-16,AR14,AR15
		SNOP		1
		SLDDW		*++AR15[2], R7:R6
		SNOP		5
		SMVAGA36.M1		R7:R6, AR14
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	.cfi_endproc
.LFE3:
	.size	DSPF_fir_lms_vc1, .-DSPF_fir_lms_vc1
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x206
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x1
	.4byte	.LASF25
	.4byte	.LASF26
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.4byte	0x85
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x1e4
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0xb
	.4byte	0x1f1
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0xc
	.4byte	0x1f1
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x5
	.string	"y_i"
	.byte	0x1
	.byte	0xd
	.4byte	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x5
	.string	"y_o"
	.byte	0x1
	.byte	0xe
	.4byte	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x5
	.string	"ar"
	.byte	0x1
	.byte	0xf
	.4byte	0x85
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x10
	.4byte	0x85
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0x11
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x5
	.string	"nx"
	.byte	0x1
	.byte	0x12
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x14
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x7
	.string	"j"
	.byte	0x1
	.byte	0x14
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x15
	.4byte	0x1e4
	.byte	0x3
	.byte	0x77
	.sleb128 256
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x15
	.4byte	0x1e4
	.byte	0x3
	.byte	0x77
	.sleb128 320
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x15
	.4byte	0x1e4
	.byte	0x3
	.byte	0x77
	.sleb128 192
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x16
	.4byte	0x1e4
	.byte	0x3
	.byte	0x77
	.sleb128 128
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x16
	.4byte	0x1e4
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x16
	.4byte	0x1e4
	.byte	0x3
	.byte	0x77
	.sleb128 64
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x17
	.4byte	0x1f1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x18
	.4byte	0x1f1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x19
	.4byte	0x1e4
	.byte	0x3
	.byte	0x77
	.sleb128 384
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1a
	.4byte	0x1fd
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x7
	.string	"sum"
	.byte	0x1
	.byte	0x1b
	.4byte	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.4byte	0x85
	.4byte	0x1f1
	.uleb128 0xa
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.4byte	0x1e4
	.uleb128 0xb
	.byte	0x8
	.4byte	0x85
	.uleb128 0xc
	.4byte	0x62
	.uleb128 0xd
	.4byte	0x77
	.byte	0xf
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x2107
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.llong	.LFB3
	.llong	.LCFI0
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI0
	.llong	.LCFI1
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	.LCFI1
	.llong	.LFE3
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.llong	0
	.llong	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LFB3
	.llong	.LFE3
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"vec_error"
.LASF15:
	.string	"vec_ar"
.LASF26:
	.string	"/cygdrive/c/Users/Hiccup the Toothful/Desktop/NEW Porject/DSPF_sp_lms/Debug"
.LASF13:
	.string	"error"
.LASF22:
	.string	"vec_sum"
.LASF11:
	.string	"float"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"long unsigned int"
.LASF17:
	.string	"vec_h"
.LASF2:
	.string	"short unsigned int"
.LASF19:
	.string	"vec_x"
.LASF12:
	.string	"double"
.LASF3:
	.string	"unsigned int"
.LASF23:
	.string	"sum_list"
.LASF0:
	.string	"long long unsigned int"
.LASF27:
	.string	"DSPF_fir_lms_vc1"
.LASF16:
	.string	"vec_error_ar"
.LASF9:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF24:
	.string	"GNU C 4.7.0"
.LASF6:
	.string	"short int"
.LASF25:
	.string	"../DSPF_fir_lms_vc1.c"
.LASF8:
	.string	"long int"
.LASF18:
	.string	"vec_x_1"
.LASF5:
	.string	"signed char"
.LASF20:
	.string	"temp_x_offset_1"
.LASF21:
	.string	"temp_x_offset"
