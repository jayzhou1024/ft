	.file	"DSPF_sp_fircirc_vc3.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSPF_sp_fircirc_vc2,"ax",@progbits
	.align	2
	.global	DSPF_sp_fircirc_vc2
	.type	DSPF_sp_fircirc_vc2, @function
DSPF_sp_fircirc_vc2:
.LFB3:
	.file 1 "../DSPF_sp_fircirc_vc3.c"
	.loc 1 17 0
	.cfi_startproc
		SMOVIL		576, R6
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
		SSTDW		R11:R10, *-AR14[15]
		SMOVIL		-128, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SSTDW		R13:R12, *AR10
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
		SSTDW		R15:R14, *AR10
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
		SSTW		R16, *AR10
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
		SSTW		R18, *AR10
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
		SSTW		R20, *AR10
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
		SSTW		R22, *AR10
	.loc 1 24 0
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
		SLDDW		*AR10, R43:R42
		SNOP		5
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 27 0
		SMVAAGL.M1		AR7, R43:R42
		SNOP		1
		SMVAAGH.M1		AR7, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[5]
	.loc 1 28 0
		SMVAAA.M1		AR7, OR11
		SNOP		1
		SADD.LS		OR11,64,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[6]
	.loc 1 29 0
		SMVAAGL.M1		AR7, R43:R42
		SNOP		1
		SMVAAGH.M1		AR7, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[7]
	.loc 1 30 0
		SMOVIL		0, R42
		SMOVIH		0, R42
		SVBCAST.M1 		 R42,VR3
		SNOP		3
		SLDDW		*-AR14[6], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
	.loc 1 31 0
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
		SLDW		*AR10, R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R45
		SADD.M1		R44,R44,R42
		SLTU		R42, R44, R10
		SADD.M1		R45,R45,R43
		SADD.M1		R43,R10,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R10
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R10,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[7], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[8]
	.loc 1 32 0
		SLDDW		*-AR14[7], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[9]
	.loc 1 39 0
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
		SADD.M1		-1,R42,R44
		SMOVIL		-68, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		1, R45
		SSHFLL		R44, R45, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 40 0
		SMOVIL		-72, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		-68, R44
		SMOVIL		-1, R45
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R45:R44,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R45:R44
		SNOP		1
		SMVAAGH.M1		OR11, R45:R44
		SNOP		1
		SMVAGA36.M1		R45:R44, AR10
		SNOP		1
		SLDW		*AR10, R44
		SNOP		5
		SADD.M1		-1,R44,R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 41 0
		SMOVIL		-68, R42
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
		SLDW		*AR10, R43
		SNOP		5
		SMOVIL		16, R42
		SLT		R42, R43, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L1
		SNOP		6
.LBB2:
	.loc 1 42 0
		SMOVIL		-68, R42
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
		SLDW		*AR10, R60
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R61
		SMOVIL		-16, R44
		SMOVIL		-1, R45
		SADD.M1		R44,R60,R42
		SLTU		R42, R60, R10
		SADD.M1		R45,R61,R43
		SADD.M1		R43,R10,R44
		SMOV.M1		R44, R43
		SMOV.M1		R42, R60
		SMOV.M1		R43, R61
		SMOVIL		0, R42
		SMOVIL		0, R43
		SSUB.M1		R60, R42, R44
		SLTU		R42, R44, R10
		SSUB.M1		R61, R43, R45
		SSUB.M1		R10, R45, R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R60
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R60,R42
		SMOV.M1		R42, R45
		SADD.M1		R44,R44,R42
		SLTU		R42, R44, R60
		SADD.M1		R45,R45,R43
		SADD.M1		R43,R60,R44
		SMOV.M1		R44, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[7], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[11]
	.loc 1 43 0
		SMOVIL		-68, R42
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
		SLDW		*AR10, R58
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R59
		SMOVIL		-16, R44
		SMOVIL		-1, R45
		SADD.M1		R44,R58,R42
		SLTU		R42, R58, R60
		SADD.M1		R45,R59,R43
		SADD.M1		R43,R60,R44
		SMOV.M1		R44, R43
		SMOV.M1		R42, R58
		SMOV.M1		R43, R59
		SMOVIL		0, R42
		SMOVIL		0, R43
		SSUB.M1		R58, R42, R44
		SLTU		R42, R44, R60
		SSUB.M1		R59, R43, R45
		SSUB.M1		R60, R45, R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R58
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R58,R42
		SMOV.M1		R42, R45
		SADD.M1		R44,R44,R42
		SLTU		R42, R44, R58
		SADD.M1		R45,R45,R43
		SADD.M1		R43,R58,R44
		SMOV.M1		R44, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[7], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[12]
	.loc 1 44 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[3]
		SBR		.L3
		SNOP		6
.L9:
	.loc 1 45 0
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
		SLDW		*AR10, R43
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SADD.M1		R42,R43,R44
		SMOVIL		-72, R42
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
		SAND		R42, R44, R42
		SMOV.M1		R42, R46
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R47
		SADD.M1		R46,R46,R42
		SLTU		R42, R46, R44
		SADD.M1		R47,R47,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R58
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R58,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[7], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[13]
	.loc 1 46 0
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
		SLDW		*AR10, R43
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SADD.M1		R42,R43,R42
		SADD.M1		1,R42,R44
		SMOVIL		-72, R42
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
		SAND		R42, R44, R42
		SMOV.M1		R42, R48
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R49
		SADD.M1		R48,R48,R42
		SLTU		R42, R48, R44
		SADD.M1		R49,R49,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R58
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R58,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[7], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[14]
	.loc 1 50 0
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
		SLDDW		*AR10, R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR3
		SNOP		7
		VSTW.LS 		VR3,*+AR7[128]
	.loc 1 51 0
		SLDW		*-AR14[3], R50
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R51
		SADD.M1		R50,R50,R42
		SLTU		R42, R50, R44
		SADD.M1		R51,R51,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R58
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R58,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SMOVIL		-128, R56
		SMOVIL		-1, R57
		SADDA.M1		R57:R56,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
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
		SLDDW		*-AR14[5], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
	.loc 1 52 0
		SLDDW		*-AR14[11], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR3
		SNOP		7
		VSTW.LS 		VR3,*+AR7[112]
	.loc 1 53 0
		SLDW		*-AR14[3], R56
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R57
		SMOVIL		1, R44
		SMOVIL		0, R45
		SADD.M1		R44,R56,R42
		SLTU		R42, R56, R58
		SADD.M1		R45,R57,R43
		SADD.M1		R43,R58,R44
		SMOV.M1		R44, R43
		SMOV.M1		R42, R44
		SMOV.M1		R43, R45
		SADD.M1		R44,R44,R42
		SLTU		R42, R44, R58
		SADD.M1		R45,R45,R43
		SADD.M1		R43,R58,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R58
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R58,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SMOVIL		-128, R58
		SMOVIL		-1, R59
		SADDA.M1		R59:R58,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
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
		SLDDW		*-AR14[5], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
	.loc 1 54 0
		SLDDW		*-AR14[12], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR3
		SNOP		7
		VSTW.LS 		VR3,*+AR7[96]
	.loc 1 56 0
		SLDDW		*-AR14[15], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR4
		SNOP		7
		VLDW.LS 		*+AR7[112],VR3
		SNOP		7
		VFMULS32.M1	VR3,VR4,VR3
		SNOP		3
		VSTW.LS 		VR3,*+AR7[80]
	.loc 1 57 0
		SLDDW		*-AR14[5], R43:R42
		SNOP		5
		VLDW.LS 		*+AR7[80],VR3
		SNOP		7
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
	.loc 1 58 0
		SLDDW		*-AR14[13], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR3
		SNOP		7
		VLDW.LS 		*+AR7[128],VR4
		SNOP		7
		VFADDS32.M1 		VR4,VR3,VR3
		SNOP		2
		VSTW.LS 		VR3,*+AR7[128]
	.loc 1 60 0
		SLDDW		*-AR14[15], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR4
		SNOP		7
		VLDW.LS 		*+AR7[96],VR3
		SNOP		7
		VFMULS32.M1	VR3,VR4,VR3
		SNOP		3
		VSTW.LS 		VR3,*+AR7[64]
	.loc 1 61 0
		SLDDW		*-AR14[5], R43:R42
		SNOP		5
		VLDW.LS 		*+AR7[64],VR3
		SNOP		7
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
	.loc 1 62 0
		SLDDW		*-AR14[14], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR3
		SNOP		7
		VLDW.LS 		*+AR7[128],VR4
		SNOP		7
		VFADDS32.M1 		VR4,VR3,VR3
		SNOP		2
		VSTW.LS 		VR3,*+AR7[128]
	.loc 1 64 0
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
		VLDW.LS 		*+AR7[128],VR3
		SNOP		7
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDDW		*AR10, R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
	.loc 1 65 0
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
		SLDW		*AR10, R43
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SADD.M1		R42,R43,R44
		SMOVIL		-72, R42
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
		SAND		R42, R44, R44
		SMOVIL		-68, R42
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
		SSUB.M1		R44, R42, R44
		SMOVIL		-72, R42
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
		SAND		R42, R44, R42
		SSTW		R42, *-AR14[4]
	.loc 1 66 0
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
		SLDW		*AR10, R43
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SADD.M1		R42,R43,R42
		SADD.M1		1,R42,R44
		SMOVIL		-72, R42
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
		SAND		R42, R44, R44
		SMOVIL		-68, R42
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
		SSUB.M1		R44, R42, R44
		SMOVIL		-72, R42
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
		SAND		R42, R44, R42
		SSTW		R42, *-AR14[5]
	.loc 1 68 0
		SBR		.L4
		SNOP		6
.L8:
	.loc 1 70 0
		SLDW		*-AR14[5], R52
		SNOP		5
		SLDW		*-AR14[5], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R53
		SADD.M1		R52,R52,R42
		SLTU		R42, R52, R44
		SADD.M1		R53,R53,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R58
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R58,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
		SMOVIL		-128, R44
		SMOVIL		-1, R45
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R45:R44,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R45:R44
		SNOP		1
		SMVAAGH.M1		OR11, R45:R44
		SNOP		1
	;no-op trunc di R43:R42 to pdi R43:R42
		SMVAGA36.M1		R45:R44, AR10
		SNOP		1
		SLDDW		*AR10, R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDDW.LS 		*AR1,VR5:VR4
		SNOP		7
		VSTDW.LS 		VR5:VR4,*AR7
	.loc 1 71 0
		SLDW		*-AR14[5], R42
		SNOP		5
		SMOV.M1		R42, R0
	[R0]	SBR		.L5
		SNOP		6
	.loc 1 72 0
		SLDDW		*-AR14[8], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR4
		SNOP		7
		VLDW.LS 		*+AR7[64],VR3
		SNOP		7
		VFADDS32.M1 		VR4,VR3,VR3
		SNOP		2
		VSTW.LS 		VR3,*+AR7[48]
	.loc 1 73 0
		SLDDW		*-AR14[8], R43:R42
		SNOP		5
		VLDW.LS 		*+AR7[48],VR3
		SNOP		7
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
		SBR		.L6
		SNOP		6
.L5:
	.loc 1 75 0
		SLDDW		*-AR14[5], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR3
		SNOP		7
		VSTW.LS 		VR3,*+AR7[48]
	.loc 1 76 0
		VLDW.LS 		*+AR7[48],VR4
		SNOP		7
		VLDW.LS 		*+AR7[64],VR3
		SNOP		7
		VFADDS32.M1 		VR4,VR3,VR3
		SNOP		2
		VSTW.LS 		VR3,*+AR7[48]
	.loc 1 77 0
		SLDDW		*-AR14[5], R43:R42
		SNOP		5
		VLDW.LS 		*+AR7[48],VR3
		SNOP		7
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
.L6:
	.loc 1 79 0
		SLDW		*-AR14[4], R42
		SNOP		5
		SMOV.M1		R42, R0
	[!R0]	SBR		.L7
		SNOP		6
	.loc 1 80 0
		SLDDW		*-AR14[9], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR4
		SNOP		7
		VLDW.LS 		*+AR7[80],VR3
		SNOP		7
		VFADDS32.M1 		VR4,VR3,VR3
		SNOP		2
		VSTW.LS 		VR3,*+AR7[32]
	.loc 1 81 0
		SLDDW		*-AR14[9], R43:R42
		SNOP		5
		VLDW.LS 		*+AR7[32],VR3
		SNOP		7
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
.L7:
	.loc 1 84 0
		VLDDW.LS 		*AR7,VR5:VR4
		SNOP		7
		SLDW		*-AR14[5], R54
		SNOP		5
		SLDW		*-AR14[5], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R55
		SADD.M1		R54,R54,R42
		SLTU		R42, R54, R44
		SADD.M1		R55,R55,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R58
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R58,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
		SMOVIL		-128, R44
		SMOVIL		-1, R45
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R45:R44,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R45:R44
		SNOP		1
		SMVAAGH.M1		OR11, R45:R44
		SNOP		1
	;no-op trunc di R43:R42 to pdi R43:R42
		SMVAGA36.M1		R45:R44, AR10
		SNOP		1
		SLDDW		*AR10, R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTDW.LS 		VR5:VR4,*AR1
	.loc 1 68 0
		SMOVIL		-68, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[4], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SADD.M1		R42,R44,R42
		SSTW		R42, *-AR14[4]
		SMOVIL		-68, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[5], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SADD.M1		R42,R44,R42
		SSTW		R42, *-AR14[5]
.L4:
	.loc 1 68 0 is_stmt 0 discriminator 1
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
		SLDW		*-AR14[5], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SLT		R44, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L8
		SNOP		6
	.loc 1 44 0 is_stmt 1
		SLDW		*-AR14[3], R42
		SNOP		5
		SADD.M1		2,R42,R42
		SSTW		R42, *-AR14[3]
.L3:
	.loc 1 44 0 is_stmt 0 discriminator 1
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
		SLDW		*-AR14[3], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SLT		R44, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L9
		SNOP		6
.L1:
.LBE2:
	.loc 1 113 0 is_stmt 1
		SMOVIL		576, R6
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
	.size	DSPF_sp_fircirc_vc2, .-DSPF_sp_fircirc_vc2
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2a1
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x1
	.4byte	.LASF34
	.4byte	.LASF35
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
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF36
	.byte	0x1
	.byte	0x9
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x270
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0xa
	.4byte	0x284
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0xb
	.4byte	0x28a
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x5
	.string	"r"
	.byte	0x1
	.byte	0xc
	.4byte	0x284
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0xd
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0xe
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0xf
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x5
	.string	"nr"
	.byte	0x1
	.byte	0x10
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x12
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x7
	.string	"j"
	.byte	0x1
	.byte	0x12
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x7
	.string	"k"
	.byte	0x1
	.byte	0x12
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x1
	.byte	0x13
	.4byte	0x284
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x14
	.4byte	0x270
	.byte	0x3
	.byte	0x77
	.sleb128 448
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x14
	.4byte	0x270
	.byte	0x3
	.byte	0x77
	.sleb128 384
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x14
	.4byte	0x270
	.byte	0x3
	.byte	0x77
	.sleb128 320
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x14
	.4byte	0x270
	.byte	0x3
	.byte	0x77
	.sleb128 256
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x14
	.4byte	0x270
	.byte	0x3
	.byte	0x77
	.sleb128 512
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x14
	.4byte	0x270
	.byte	0x3
	.byte	0x77
	.sleb128 192
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x14
	.4byte	0x270
	.byte	0x3
	.byte	0x77
	.sleb128 128
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x16
	.4byte	0x284
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x16
	.4byte	0x284
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x7
	.string	"f_r"
	.byte	0x1
	.byte	0x18
	.4byte	0x28a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1a
	.4byte	0x290
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1b
	.4byte	0x284
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1c
	.4byte	0x284
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1d
	.4byte	0x28a
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1f
	.4byte	0x284
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x1
	.byte	0x20
	.4byte	0x284
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x1
	.byte	0x27
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x7
	.string	"mod"
	.byte	0x1
	.byte	0x28
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xa
	.llong	.LBB2
	.llong	.LBE2
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2a
	.4byte	0x284
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2b
	.4byte	0x284
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	0x27d
	.4byte	0x27d
	.uleb128 0xc
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF31
	.uleb128 0xd
	.byte	0x8
	.4byte	0x270
	.uleb128 0xd
	.byte	0x8
	.4byte	0x27d
	.uleb128 0xb
	.byte	0x1
	.4byte	0x29d
	.4byte	0x29d
	.uleb128 0xc
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF32
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
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
.LASF29:
	.string	"h0_offset"
.LASF12:
	.string	"csize"
.LASF30:
	.string	"h1_offset"
.LASF22:
	.string	"temp_h_space"
.LASF8:
	.string	"long int"
.LASF19:
	.string	"temp_vr_index_0"
.LASF18:
	.string	"temp_vr_index_1"
.LASF26:
	.string	"temp_h_space_offset_0"
.LASF31:
	.string	"float"
.LASF28:
	.string	"block_length"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF35:
	.string	"/cygdrive/e/project/function  demo/function/DSPF_sp_fircirc/Release"
.LASF15:
	.string	"temp_h_x_0"
.LASF16:
	.string	"temp_h_x_1"
.LASF14:
	.string	"temp_vh_1"
.LASF32:
	.string	"double"
.LASF36:
	.string	"DSPF_sp_fircirc_vc2"
.LASF3:
	.string	"unsigned int"
.LASF13:
	.string	"temp_vh_0"
.LASF27:
	.string	"temp_h_space_offset_1"
.LASF0:
	.string	"long long unsigned int"
.LASF37:
	.string	"temp_x_offset_addr"
.LASF20:
	.string	"x0_offset"
.LASF9:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF33:
	.string	"GNU C 4.7.0"
.LASF17:
	.string	"temp_vr"
.LASF6:
	.string	"short int"
.LASF21:
	.string	"x1_offset"
.LASF11:
	.string	"index"
.LASF23:
	.string	"temp_h_space_ptr0"
.LASF24:
	.string	"temp_h_space_ptr1"
.LASF5:
	.string	"signed char"
.LASF34:
	.string	"../DSPF_sp_fircirc_vc3.c"
.LASF25:
	.string	"ftemp_h_space"
