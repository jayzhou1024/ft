	.file	"main.c"
.text;
.Ltext0:
	.common	x,572,8
	.common	h,64,8
	.common	r,512,8
	.common	r1,512,8
	.common	r_cn,512,8
	.section	.text.DSPF_sp_fir_gen_vc1,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_gen_vc1
	.type	DSPF_sp_fir_gen_vc1, @function
DSPF_sp_fir_gen_vc1:
.LFB3:
	.file 1 "../main.c"
	.loc 1 23 0
		SMOVIL		128, R6
		SMOVIL		0, R7
		SSUBA.L		R7:R6, AR7, AR7
		SNOP		2
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI0:
		SADDA.M1		16,AR15,AR14
.LCFI1:
		SNOP		1
		SMOVIL		-64, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R11:R10, *-AR14[6]
		SSTDW		R13:R12, *-AR14[7]
		SSTDW		R15:R14, *-AR14[8]
		SMOVIL		-68, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SSTW		R16, *AR10
		SMOVIL		-64, R42
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
	.loc 1 25 0
		SMOVIL		15, R42
		SMVCGC.L		R42, VLR
		SNOP		2
	.loc 1 26 0
		SLDDW		*-AR14[8], R43:R42
		SNOP		5
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 29 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[3]
		SBR		.L2
		SNOP		6
.L5:
	.loc 1 30 0
		SLDW		*-AR14[3], R44
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R45
		SADD.M1		R44,R44,R42
		SLTU		R42, R44, R46
		SADD.M1		R45,R45,R43
		SADD.M1		R43,R46,R46
		SMOV.M1		R46, R43
		SADD.M1		R42,R42,R46
		SLTU		R46, R42, R56
		SADD.M1		R43,R43,R47
		SADD.M1		R47,R56,R42
		SMOV.M1		R42, R47
		SMOV.M1		R46, R42
		SMOV.M1		R47, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[7], R47:R46
		SNOP		5
		SMVAGA36.M1		R47:R46, OR11
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
		VSTW.LS 		VR3,*+AR7[16]
	.loc 1 31 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[4]
		SMOVIL		0, R42
		SSTW		R42, *-AR14[5]
		SBR		.L3
		SNOP		6
.L4:
	.loc 1 32 0
		SLDW		*-AR14[3], R50
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R51
		SLDW		*-AR14[4], R54
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R55
		SADD.M1		R54,R50,R42
		SLTU		R42, R50, R46
		SADD.M1		R55,R51,R43
		SADD.M1		R43,R46,R46
		SMOV.M1		R46, R43
		SMOV.M1		R42, R46
		SMOV.M1		R43, R47
		SADD.M1		R46,R46,R42
		SLTU		R42, R46, R56
		SADD.M1		R47,R47,R43
		SADD.M1		R43,R56,R46
		SMOV.M1		R46, R43
		SADD.M1		R42,R42,R46
		SLTU		R46, R42, R56
		SADD.M1		R43,R43,R47
		SADD.M1		R47,R56,R42
		SMOV.M1		R42, R47
		SMOV.M1		R46, R42
		SMOV.M1		R47, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[6], R47:R46
		SNOP		5
		SMVAGA36.M1		R47:R46, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
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
	.loc 1 33 0
		SLDW		*-AR14[5], R52
		SNOP		5
		SLDW		*-AR14[5], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R53
		SSHFLR		28, R52, R42
		SSHFLL		4, R53, R49
		SOR		R49, R42, R49
		SSHFLL		4, R52, R48
		SMOV.M1		R48, R42
		SMOV.M1		R49, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[4], R47:R46
		SNOP		5
		SMVAGA36.M1		R47:R46, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[5]
	.loc 1 34 0
		SLDDW		*-AR14[5], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR5
		SNOP		7
		VLDW.LS 		*AR7,VR3
		SNOP		7
		VLDW.LS 		*+AR7[16],VR4
		SNOP		7
		VMOV		VR5,	VR6
		VFMULAS32.M1	VR3,VR4,VR6,VR6
		SNOP		5
		VMOV		VR6,	VR3
		SLDDW		*-AR14[5], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
	.loc 1 31 0
		SLDW		*-AR14[4], R42
		SNOP		5
		SADD.M1		4,R42,R42
		SSTW		R42, *-AR14[4]
		SLDW		*-AR14[5], R42
		SNOP		5
		SADD.M1		1,R42,R42
		SSTW		R42, *-AR14[5]
.L3:
		SMOVIL		-64, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[4], R46
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SLT		R46, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L4
		SNOP		6
	.loc 1 29 0
		SLDW		*-AR14[3], R42
		SNOP		5
		SADD.M1		1,R42,R42
		SSTW		R42, *-AR14[3]
.L2:
		SLDW		*-AR14[3], R43
		SNOP		5
		SMOVIL		-68, R46
		SMOVIL		-1, R47
		SADDA.M1		R47:R46,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SLT		R43, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L5
		SNOP		6
	.loc 1 37 0
		SMOVIL		65535, R42
		SMOVIH		65535, R42
		SMVCGC.L		R42, VLR
		SNOP		2
	.loc 1 38 0
		SMOVIL		128, R6
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
.LFE3:
	.size	DSPF_sp_fir_gen_vc1, .-DSPF_sp_fir_gen_vc1
	.section	.text.DSPF_fir_gen_cn,"ax",@progbits
	.align	2
	.global	DSPF_fir_gen_cn
	.type	DSPF_fir_gen_cn, @function
DSPF_fir_gen_cn:
.LFB4:
	.loc 1 45 0
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI2:
		SADDA.M1		16,AR15,AR14
.LCFI3:
		SNOP		1
		SMOVIL		-48, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R11:R10, *-AR14[4]
		SSTDW		R13:R12, *-AR14[5]
		SSTDW		R15:R14, *-AR14[6]
		SSTW		R16, *-AR14[13]
		SSTW		R18, *-AR14[14]
	.loc 1 48 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[4]
		SBR		.L7
		SNOP		6
.L10:
	.loc 1 50 0
		SMOVIL		0, R42
		SMOVIH		0, R42
		SSTW		R42, *-AR14[5]
	.loc 1 51 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[3]
		SBR		.L8
		SNOP		6
.L9:
	.loc 1 52 0
		SLDW		*-AR14[3], R43
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SADD.M1		R42,R43,R42
		SMOV.M1		R42, R44
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R45
		SADD.M1		R44,R44,R42
		SLTU		R42, R44, R50
		SADD.M1		R45,R45,R43
		SADD.M1		R43,R50,R50
		SMOV.M1		R50, R43
		SADD.M1		R42,R42,R50
		SLTU		R50, R42, R52
		SADD.M1		R43,R43,R51
		SADD.M1		R51,R52,R42
		SMOV.M1		R42, R51
		SMOV.M1		R50, R42
		SMOV.M1		R51, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[4], R51:R50
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
		SLDW		*AR10, R52
		SNOP		5
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
		SLTU		R50, R42, R53
		SADD.M1		R43,R43,R51
		SADD.M1		R51,R53,R42
		SMOV.M1		R42, R51
		SMOV.M1		R50, R42
		SMOV.M1		R51, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[5], R51:R50
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
		SLDW		*AR10, R42
		SNOP		5
		SFMULS32.M1		R52, R42, R42
		SNOP		3
		SLDW		*-AR14[5], R43
		SNOP		5
		SFADDS32.M1		R43, R42, R42
		SNOP		2
		SSTW		R42, *-AR14[5]
	.loc 1 51 0
		SLDW		*-AR14[3], R42
		SNOP		5
		SADD.M1		1,R42,R42
		SSTW		R42, *-AR14[3]
.L8:
		SLDW		*-AR14[3], R43
		SNOP		5
		SLDW		*-AR14[13], R42
		SNOP		5
		SLT		R43, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L9
		SNOP		6
	.loc 1 53 0
		SLDW		*-AR14[4], R48
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R49
		SADD.M1		R48,R48,R42
		SLTU		R42, R48, R50
		SADD.M1		R49,R49,R43
		SADD.M1		R43,R50,R50
		SMOV.M1		R50, R43
		SADD.M1		R42,R42,R50
		SLTU		R50, R42, R52
		SADD.M1		R43,R43,R51
		SADD.M1		R51,R52,R42
		SMOV.M1		R42, R51
		SMOV.M1		R50, R42
		SMOV.M1		R51, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[6], R51:R50
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
	.loc 1 48 0
		SLDW		*-AR14[4], R42
		SNOP		5
		SADD.M1		1,R42,R42
		SSTW		R42, *-AR14[4]
.L7:
		SLDW		*-AR14[4], R43
		SNOP		5
		SLDW		*-AR14[14], R42
		SNOP		5
		SLT		R43, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L10
		SNOP		6
	.loc 1 55 0
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
.LFE4:
	.size	DSPF_fir_gen_cn, .-DSPF_fir_gen_cn
	.section	.text.getTime,"ax",@progbits
	.align	2
	.global	getTime
	.type	getTime, @function
getTime:
.LFB5:
	.loc 1 68 0
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI4:
		SADDA.M1		16,AR15,AR14
.LCFI5:
		SNOP		1
		SMOVIL		-48, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[6]
.LCFI6:
		SSTDW		R11:R10, *-AR14[4]
		SSTDW		R13:R12, *-AR14[5]
		SSTDW		R15:R14, *-AR14[6]
		SSTW		R16, *-AR14[13]
		SSTW		R18, *-AR14[14]
	.loc 1 70 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L13, R62
		SMOVIH		.L13, R62
		SMOVIH4.L		.L13, R63
		SNOP		4
.L13:
		SMOV.M1		R10, R42
		SSTW		R42, *-AR14[5]
	.loc 1 71 0
		SLDDW		*-AR14[4], R11:R10
		SNOP		5
		SLDDW		*-AR14[5], R13:R12
		SNOP		5
		SLDDW		*-AR14[6], R15:R14
		SNOP		5
		SLDW		*-AR14[13], R16
		SNOP		5
		SLDW		*-AR14[14], R18
		SNOP		5
		SBR		DSPF_sp_fir_gen_vc1
		SMOVIL		.L14, R62
		SMOVIH		.L14, R62
		SMOVIH4.L		.L14, R63
		SNOP		4
.L14:
	.loc 1 72 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L15, R62
		SMOVIH		.L15, R62
		SMOVIH4.L		.L15, R63
		SNOP		4
.L15:
		SMOV.M1		R10, R42
		SSTW		R42, *-AR14[6]
	.loc 1 73 0
		SLDW		*-AR14[6], R43
		SNOP		5
		SLDW		*-AR14[5], R42
		SNOP		5
		SSUB.M1		R42, R43, R42
	.loc 1 74 0
		SMOV.M1		R42, R10
		SLDDW		*+AR15[6], R63:R62
		SNOP		5
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
.LFE5:
	.size	getTime, .-getTime
	.section	.text.getTime1,"ax",@progbits
	.align	2
	.global	getTime1
	.type	getTime1, @function
getTime1:
.LFB6:
	.loc 1 75 0
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI7:
		SADDA.M1		16,AR15,AR14
.LCFI8:
		SNOP		1
		SMOVIL		-48, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[6]
.LCFI9:
		SSTDW		R11:R10, *-AR14[4]
		SSTDW		R13:R12, *-AR14[5]
		SSTDW		R15:R14, *-AR14[6]
		SSTW		R16, *-AR14[13]
		SSTW		R18, *-AR14[14]
	.loc 1 77 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L18, R62
		SMOVIH		.L18, R62
		SMOVIH4.L		.L18, R63
		SNOP		4
.L18:
		SMOV.M1		R10, R42
		SSTW		R42, *-AR14[5]
	.loc 1 78 0
		SLDDW		*-AR14[4], R11:R10
		SNOP		5
		SLDDW		*-AR14[5], R13:R12
		SNOP		5
		SLDDW		*-AR14[6], R15:R14
		SNOP		5
		SLDW		*-AR14[13], R16
		SNOP		5
		SLDW		*-AR14[14], R18
		SNOP		5
		SBR		asm_dspf_sp_fir_gen
		SMOVIL		.L19, R62
		SMOVIH		.L19, R62
		SMOVIH4.L		.L19, R63
		SNOP		4
.L19:
	.loc 1 79 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L20, R62
		SMOVIH		.L20, R62
		SMOVIH4.L		.L20, R63
		SNOP		4
.L20:
		SMOV.M1		R10, R42
		SSTW		R42, *-AR14[6]
	.loc 1 80 0
		SLDW		*-AR14[6], R43
		SNOP		5
		SLDW		*-AR14[5], R42
		SNOP		5
		SSUB.M1		R42, R43, R42
	.loc 1 81 0
		SMOV.M1		R42, R10
		SLDDW		*+AR15[6], R63:R62
		SNOP		5
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
.LFE6:
	.size	getTime1, .-getTime1
	.section	.text.getTime_cn,"ax",@progbits
	.align	2
	.global	getTime_cn
	.type	getTime_cn, @function
getTime_cn:
.LFB7:
	.loc 1 82 0
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI10:
		SADDA.M1		16,AR15,AR14
.LCFI11:
		SNOP		1
		SMOVIL		-48, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[6]
.LCFI12:
		SSTDW		R11:R10, *-AR14[4]
		SSTDW		R13:R12, *-AR14[5]
		SSTDW		R15:R14, *-AR14[6]
		SSTW		R16, *-AR14[13]
		SSTW		R18, *-AR14[14]
	.loc 1 84 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L23, R62
		SMOVIH		.L23, R62
		SMOVIH4.L		.L23, R63
		SNOP		4
.L23:
		SMOV.M1		R10, R42
		SSTW		R42, *-AR14[5]
	.loc 1 85 0
		SLDDW		*-AR14[4], R11:R10
		SNOP		5
		SLDDW		*-AR14[5], R13:R12
		SNOP		5
		SLDDW		*-AR14[6], R15:R14
		SNOP		5
		SLDW		*-AR14[13], R16
		SNOP		5
		SLDW		*-AR14[14], R18
		SNOP		5
		SBR		DSPF_fir_gen_cn
		SMOVIL		.L24, R62
		SMOVIH		.L24, R62
		SMOVIH4.L		.L24, R63
		SNOP		4
.L24:
	.loc 1 86 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L25, R62
		SMOVIH		.L25, R62
		SMOVIH4.L		.L25, R63
		SNOP		4
.L25:
		SMOV.M1		R10, R42
		SSTW		R42, *-AR14[6]
	.loc 1 87 0
		SLDW		*-AR14[6], R43
		SNOP		5
		SLDW		*-AR14[5], R42
		SNOP		5
		SSUB.M1		R42, R43, R42
	.loc 1 88 0
		SMOV.M1		R42, R10
		SLDDW		*+AR15[6], R63:R62
		SNOP		5
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
.LFE7:
	.size	getTime_cn, .-getTime_cn
	.section	.const,"a",@progbits
.LC0:
	.string	"\tNX = %-3d\t  NH = %-2d\t cn_cycle:%-4d\t  \357\277\275\357\277\275\357\277\275\357\277\275C cycle:%-4d\t  \357\277\275\357\277\275\357\277\275 cycle: %-4d\n"
.LC1:
	.string	"helloworld"
	.section	.text.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB8:
	.loc 1 89 0
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI13:
		SADDA.M1		16,AR15,AR14
.LCFI14:
		SNOP		1
		SMOVIL		-112, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[14]
		SSTW		R30, *+AR15[27]
.LCFI15:
	.loc 1 91 0
		SBR		setSram
		SMOVIL		.L31, R62
		SMOVIH		.L31, R62
		SMOVIH4.L		.L31, R63
		SNOP		4
.L31:
	.loc 1 93 0
		SMOVIL.L		x, R10
		SMOVIH.L		x, R10
		SMOVIH4.L		x, R11
		SMOVIL		0, R12
		SMOVIL		60, R14
		SMOVIL		0, R15
		SBR		memset
		SMOVIL		.L32, R62
		SMOVIH		.L32, R62
		SMOVIH4.L		.L32, R63
		SNOP		4
.L32:
	.loc 1 94 0
		SMOVIL.L		x+60, R10
		SMOVIH.L		x+60, R10
		SMOVIH4.L		x+60, R11
		SMOVIL		128, R12
		SMOVIL		1092616192, R14
		SMOVIH		1092616192, R14
		SBR		random_x
		SMOVIL		.L33, R62
		SMOVIH		.L33, R62
		SMOVIH4.L		.L33, R63
		SNOP		4
.L33:
	.loc 1 95 0
		SMOVIL.L		h, R10
		SMOVIH.L		h, R10
		SMOVIH4.L		h, R11
		SMOVIL		16, R12
		SBR		random_h
		SMOVIL		.L34, R62
		SMOVIH		.L34, R62
		SMOVIH4.L		.L34, R63
		SNOP		4
.L34:
	.loc 1 97 0
		SMOVIL		1074790400, R42
		SMOVIH		1074790400, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[5]
	.loc 1 98 0
		SMOVIL		1073872896, R42
		SMOVIH		1073872896, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[6]
	.loc 1 99 0
		SMOVIL		1074003968, R42
		SMOVIH		1074003968, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[7]
	.loc 1 100 0
		SMOVIL		1074135040, R42
		SMOVIH		1074135040, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[8]
	.loc 1 103 0
		SMOVIL.L		x, R10
		SMOVIH.L		x, R10
		SMOVIH4.L		x, R11
		SLDDW		*-AR14[6], R13:R12
		SNOP		5
		SMOVIL		572, R14
		SBR		M7002_datatrans
		SMOVIL		.L35, R62
		SMOVIH		.L35, R62
		SMOVIH4.L		.L35, R63
		SNOP		4
.L35:
	.loc 1 104 0
		SMOVIL.L		h, R10
		SMOVIH.L		h, R10
		SMOVIH4.L		h, R11
		SLDDW		*-AR14[5], R13:R12
		SNOP		5
		SMOVIL		64, R14
		SBR		M7002_datatrans
		SMOVIL		.L36, R62
		SMOVIH		.L36, R62
		SMOVIH4.L		.L36, R63
		SNOP		4
.L36:
	.loc 1 106 0
		SMOVIL		0, R10
		SMOVIL		-1, R12
		SBR		SetTimerPeriod
		SMOVIL		.L37, R62
		SMOVIH		.L37, R62
		SMOVIH4.L		.L37, R63
		SNOP		4
.L37:
	.loc 1 107 0
		SMOVIL		0, R10
		SBR		TimerStart
		SMOVIL		.L38, R62
		SMOVIH		.L38, R62
		SMOVIH4.L		.L38, R63
		SNOP		4
.L38:
	.loc 1 109 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L39, R62
		SMOVIH		.L39, R62
		SMOVIH4.L		.L39, R63
		SNOP		4
.L39:
		SMOV.M1		R10, R30
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L40, R62
		SMOVIH		.L40, R62
		SMOVIH4.L		.L40, R63
		SNOP		4
.L40:
		SMOV.M1		R10, R42
		SSUB.M1		R42, R30, R42
		SMOVIL		-68, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
	.loc 1 111 0
		SMOVIL		32, R42
		SSTW		R42, *-AR14[7]
		SBR		.L27
		SNOP		6
.L30:
	.loc 1 112 0
		SMOVIL		4, R42
		SSTW		R42, *-AR14[8]
		SBR		.L28
		SNOP		6
.L29:
.LBB2:
	.loc 1 113 0
		SMOVIL.L		r, R10
		SMOVIH.L		r, R10
		SMOVIH4.L		r, R11
		SMOVIL		0, R12
		SMOVIL		512, R14
		SMOVIL		0, R15
		SBR		memset
		SMOVIL		.L41, R62
		SMOVIH		.L41, R62
		SMOVIH4.L		.L41, R63
		SNOP		4
.L41:
	.loc 1 114 0
		SMOVIL.L		r1, R10
		SMOVIH.L		r1, R10
		SMOVIH4.L		r1, R11
		SMOVIL		0, R12
		SMOVIL		512, R14
		SMOVIL		0, R15
		SBR		memset
		SMOVIL		.L42, R62
		SMOVIH		.L42, R62
		SMOVIH4.L		.L42, R63
		SNOP		4
.L42:
	.loc 1 115 0
		SMOVIL.L		r_cn, R10
		SMOVIH.L		r_cn, R10
		SMOVIH4.L		r_cn, R11
		SMOVIL		0, R12
		SMOVIL		512, R14
		SMOVIL		0, R15
		SBR		memset
		SMOVIL		.L43, R62
		SMOVIH		.L43, R62
		SMOVIH4.L		.L43, R63
		SNOP		4
.L43:
	.loc 1 117 0
		SMOVIL.L		r, R10
		SMOVIH.L		r, R10
		SMOVIH4.L		r, R11
		SLDDW		*-AR14[7], R13:R12
		SNOP		5
		SMOVIL		512, R14
		SBR		M7002_datatrans
		SMOVIL		.L44, R62
		SMOVIH		.L44, R62
		SMOVIH4.L		.L44, R63
		SNOP		4
.L44:
	.loc 1 118 0
		SMOVIL.L		r1, R10
		SMOVIH.L		r1, R10
		SMOVIH4.L		r1, R11
		SLDDW		*-AR14[8], R13:R12
		SNOP		5
		SMOVIL		512, R14
		SBR		M7002_datatrans
		SMOVIL		.L45, R62
		SMOVIH		.L45, R62
		SMOVIH4.L		.L45, R63
		SNOP		4
.L45:
	.loc 1 120 0
		SLDDW		*-AR14[6], R11:R10
		SNOP		5
		SLDDW		*-AR14[5], R13:R12
		SNOP		5
		SLDDW		*-AR14[8], R15:R14
		SNOP		5
		SLDW		*-AR14[8], R16
		SNOP		5
		SLDW		*-AR14[7], R18
		SNOP		5
		SBR		getTime
		SMOVIL		.L46, R62
		SMOVIH		.L46, R62
		SMOVIH4.L		.L46, R63
		SNOP		4
.L46:
		SMOVIL		-72, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SSTW		R10, *AR10
	.loc 1 121 0
		SLDDW		*-AR14[6], R11:R10
		SNOP		5
		SLDDW		*-AR14[5], R13:R12
		SNOP		5
		SLDDW		*-AR14[7], R15:R14
		SNOP		5
		SLDW		*-AR14[8], R16
		SNOP		5
		SLDW		*-AR14[7], R18
		SNOP		5
		SBR		getTime1
		SMOVIL		.L47, R62
		SMOVIH		.L47, R62
		SMOVIH4.L		.L47, R63
		SNOP		4
.L47:
		SMOVIL		-76, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SSTW		R10, *AR10
	.loc 1 124 0
		SLDDW		*-AR14[8], R11:R10
		SNOP		5
		SMOVIL.L		r1, R12
		SMOVIH.L		r1, R12
		SMOVIH4.L		r1, R13
		SMOVIL		512, R14
		SBR		M7002_datatrans
		SMOVIL		.L48, R62
		SMOVIH		.L48, R62
		SMOVIH4.L		.L48, R63
		SNOP		4
.L48:
	.loc 1 125 0
		SLDDW		*-AR14[7], R11:R10
		SNOP		5
		SMOVIL.L		r, R12
		SMOVIH.L		r, R12
		SMOVIH4.L		r, R13
		SMOVIL		512, R14
		SBR		M7002_datatrans
		SMOVIL		.L49, R62
		SMOVIH		.L49, R62
		SMOVIH4.L		.L49, R63
		SNOP		4
.L49:
	.loc 1 127 0
		SMOVIL.L		x, R10
		SMOVIH.L		x, R10
		SMOVIH4.L		x, R11
		SMOVIL.L		h, R12
		SMOVIH.L		h, R12
		SMOVIH4.L		h, R13
		SMOVIL.L		r_cn, R14
		SMOVIH.L		r_cn, R14
		SMOVIH4.L		r_cn, R15
		SLDW		*-AR14[8], R16
		SNOP		5
		SLDW		*-AR14[7], R18
		SNOP		5
		SBR		getTime_cn
		SMOVIL		.L50, R62
		SMOVIH		.L50, R62
		SMOVIH4.L		.L50, R63
		SNOP		4
.L50:
		SMOVIL		-80, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SSTW		R10, *AR10
	.loc 1 128 0
		SMOVIL.L		x, R10
		SMOVIH.L		x, R10
		SMOVIH4.L		x, R11
		SMOVIL.L		h, R12
		SMOVIH.L		h, R12
		SMOVIH4.L		h, R13
		SMOVIL.L		r1, R14
		SMOVIH.L		r1, R14
		SMOVIH4.L		r1, R15
		SLDW		*-AR14[8], R16
		SNOP		5
		SLDW		*-AR14[7], R18
		SNOP		5
		SBR		getTime
		SMOVIL		.L51, R62
		SMOVIH		.L51, R62
		SMOVIH4.L		.L51, R63
		SNOP		4
.L51:
		SMOVIL		-84, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SSTW		R10, *AR10
	.loc 1 129 0
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SMOVIL		-68, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSUB.M1		R42, R43, R46
		SMOVIL		-84, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SMOVIL		-68, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSUB.M1		R42, R43, R45
		SMOVIL		-76, R48
		SMOVIL		-1, R49
		SADDA.M1		R49:R48,AR14,AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SMOVIL		-68, R48
		SMOVIL		-1, R49
		SADDA.M1		R49:R48,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSUB.M1		R42, R43, R44
		SMOVIL.L		.LC0, R42
		SMOVIH.L		.LC0, R42
		SMOVIH4.L		.LC0, R43
		SSTDW		R43:R42, *+AR15[1]
		SLDW		*-AR14[7], R42
		SNOP		5
		SSTW		R42, *+AR15[4]
		SLDW		*-AR14[8], R42
		SNOP		5
		SSTW		R42, *+AR15[5]
		SSTW		R46, *+AR15[6]
		SSTW		R45, *+AR15[7]
		SSTW		R44, *+AR15[8]
		SBR		printf
		SMOVIL		.L52, R62
		SMOVIH		.L52, R62
		SMOVIH4.L		.L52, R63
		SNOP		4
.L52:
.LBE2:
	.loc 1 112 0
		SLDW		*-AR14[8], R42
		SNOP		5
		SADD.M1		4,R42,R42
		SSTW		R42, *-AR14[8]
.L28:
		SLDW		*-AR14[8], R43
		SNOP		5
		SMOVIL		16, R42
		SLT		R42, R43, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L29
		SNOP		6
	.loc 1 111 0
		SLDW		*-AR14[7], R42
		SNOP		5
		SADD.M1		8,R42,R42
		SSTW		R42, *-AR14[7]
.L27:
		SLDW		*-AR14[7], R43
		SNOP		5
		SMOVIL		128, R42
		SLT		R42, R43, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L30
		SNOP		6
	.loc 1 132 0
		SMOVIL.L		.LC1, R42
		SMOVIH.L		.LC1, R42
		SMOVIH4.L		.LC1, R43
		SSTDW		R43:R42, *+AR15[1]
		SBR		printf
		SMOVIL		.L53, R62
		SMOVIH		.L53, R62
		SMOVIH4.L		.L53, R63
		SNOP		4
.L53:
	.loc 1 133 0
		SLDW		*+AR15[27], R30
		SNOP		5
		SLDDW		*+AR15[14], R63:R62
		SNOP		5
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
.LFE8:
	.size	main, .-main
	.section	.text.random_x,"ax",@progbits
	.align	2
	.global	random_x
	.type	random_x, @function
random_x:
.LFB9:
	.loc 1 134 0
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI16:
		SADDA.M1		16,AR15,AR14
.LCFI17:
		SNOP		1
		SMOVIL		-48, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[6]
		SMVAAGL.M1		AR8, R7:R6
		SNOP		1
		SMVAAGH.M1		AR8, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[5]
		SSTDW		R31:R30, *+AR15[4]
.LCFI18:
		SSTDW		R11:R10, *-AR14[6]
		SSTW		R12, *-AR14[13]
		SSTW		R14, *-AR14[14]
	.loc 1 135 0
		SMOVIL		1317011456, R42
		SMOVIH		1317011456, R42
		SSTW		R42, *-AR14[10]
	.loc 1 137 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[9]
		SBR		.L55
		SNOP		6
.L56:
	.loc 1 138 0
		SLDW		*-AR14[9], R30
		SNOP		5
		SLDW		*-AR14[9], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R31
		SADD.M1		R30,R30,R42
		SLTU		R42, R30, R44
		SADD.M1		R31,R31,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R46
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R46,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[6], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,AR8
		SNOP		1
		SBR		rand
		SMOVIL		.L57, R62
		SMOVIH		.L57, R62
		SMOVIH4.L		.L57, R63
		SNOP		4
.L57:
		SMOV.M1		R10, R42
		SFINTS32.M1		R42,R43
		SNOP		2
		SLDW		*-AR14[10], R42
		SNOP		5
		SFSUBS32.M1		R42, R43, R46
		SNOP		2
		SLDW		*-AR14[10], R43
		SNOP		5
		SMOVIL		1073741824, R45
		SMOVIH		1073741824, R45
		SFRCPS32.M1		R43, R42
		SFMULS32.M1		R43, R42, R44
		SNOP		3
		SFSUBS32.M1		R44, R45, R44
		SNOP		2
		SFMULS32.M1		R42, R44, R42
		SNOP		3
		SFMULS32.M1		R43, R42, R44
		SNOP		3
		SFSUBS32.M1		R44, R45, R44
		SNOP		2
		SFMULS32.M1		R42, R44, R42
		SNOP		3
		SFMULS32.M1		R46, R42, R43
		SNOP		3
		SLDW		*-AR14[14], R42
		SNOP		5
		SFMULS32.M1		R43, R42, R42
		SNOP		3
		SSTW		R42, *AR8
	.loc 1 137 0
		SLDW		*-AR14[9], R42
		SNOP		5
		SADD.M1		1,R42,R42
		SSTW		R42, *-AR14[9]
.L55:
		SLDW		*-AR14[9], R43
		SNOP		5
		SLDW		*-AR14[13], R42
		SNOP		5
		SLT		R43, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L56
		SNOP		6
	.loc 1 141 0
		SLDDW		*+AR15[4], R31:R30
		SNOP		5
		SLDDW		*+AR15[5], R7:R6
		SNOP		5
		SMVAGA36.M1		R7:R6, AR8
		SNOP		1
		SLDDW		*+AR15[6], R63:R62
		SNOP		5
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
.LFE9:
	.size	random_x, .-random_x
	.section	.text.random_h,"ax",@progbits
	.align	2
	.global	random_h
	.type	random_h, @function
random_h:
.LFB10:
	.loc 1 142 0
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI19:
		SADDA.M1		16,AR15,AR14
.LCFI20:
		SNOP		1
		SMOVIL		-72, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[9]
		SMVAAGL.M1		AR8, R7:R6
		SNOP		1
		SMVAAGH.M1		AR8, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[8]
		SSTDW		R35:R34, *+AR15[7]
		SSTDW		R33:R32, *+AR15[6]
		SSTDW		R31:R30, *+AR15[5]
.LCFI21:
		SSTDW		R11:R10, *-AR14[9]
		SMOVIL		-76, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SSTW		R12, *AR10
	.loc 1 144 0
		SMOVIL		1325400064, R42
		SMOVIH		1325400064, R42
		SSTW		R42, *-AR14[14]
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SFINTD.M1		R42,R47:R46
		SNOP		3
		SMOVIL		0, R50
		SMOVIL		1073741824, R51
		SMOVIH		1073741824, R51
		SMOVIL		0, R48
		SMOVIL		1073741824, R49
		SMOVIH		1073741824, R49
		SFRCPD.M1		R47:R46, R43:R42
		SNOP		1
		SFMULD.M1		R47:R46, R43:R42, R45:R44
		SNOP		5
		SFSUBD.M1	R45:R44, R49:R48, R45:R44
		SNOP		4
		SFMULD.M1		R43:R42, R45:R44, R43:R42
		SNOP		5
		SFMULD.M1		R47:R46, R43:R42, R45:R44
		SNOP		5
		SFSUBD.M1	R45:R44, R49:R48, R45:R44
		SNOP		4
		SFMULD.M1		R43:R42, R45:R44, R43:R42
		SNOP		5
		SFMULD.M1		R47:R46, R43:R42, R45:R44
		SNOP		5
		SFSUBD.M1	R45:R44, R49:R48, R45:R44
		SNOP		4
		SFMULD.M1		R43:R42, R45:R44, R43:R42
		SNOP		5
		SFMULD.M1		R51:R50, R43:R42, R43:R42
		SNOP		5
		SFDPSP32.M1		R43:R42, R42
		SNOP		2
		SSTW		R42, *-AR14[15]
	.loc 1 145 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[13]
		SBR		.L59
		SNOP		6
.L60:
	.loc 1 146 0
		SLDW		*-AR14[13], R30
		SNOP		5
		SLDW		*-AR14[13], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R31
		SADD.M1		R30,R30,R42
		SLTU		R42, R30, R44
		SADD.M1		R31,R31,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R46
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R46,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[9], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,AR8
		SNOP		1
		SBR		rand
		SMOVIL		.L61, R62
		SMOVIH		.L61, R62
		SMOVIH4.L		.L61, R63
		SNOP		4
.L61:
		SMOV.M1		R10, R42
		SFINTS32.M1		R42,R46
		SNOP		2
		SLDW		*-AR14[14], R43
		SNOP		5
		SMOVIL		1073741824, R45
		SMOVIH		1073741824, R45
		SFRCPS32.M1		R43, R42
		SFMULS32.M1		R43, R42, R44
		SNOP		3
		SFSUBS32.M1		R44, R45, R44
		SNOP		2
		SFMULS32.M1		R42, R44, R42
		SNOP		3
		SFMULS32.M1		R43, R42, R44
		SNOP		3
		SFSUBS32.M1		R44, R45, R44
		SNOP		2
		SFMULS32.M1		R42, R44, R42
		SNOP		3
		SFMULS32.M1		R46, R42, R43
		SNOP		3
		SLDW		*-AR14[15], R42
		SNOP		5
		SFMULS32.M1		R43, R42, R42
		SNOP		3
		SSTW		R42, *AR8
	.loc 1 147 0
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SADD.M1		-1,R42,R43
		SLDW		*-AR14[13], R42
		SNOP		5
		SSUB.M1		R42, R43, R42
		SMOV.M1		R42, R32
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R33
		SADD.M1		R32,R32,R42
		SLTU		R42, R32, R44
		SADD.M1		R33,R33,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R46
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R46,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[9], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R47:R46
		SNOP		1
		SMVAAGH.M1		OR11, R47:R46
		SNOP		1
		SLDW		*-AR14[13], R34
		SNOP		5
		SLDW		*-AR14[13], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R35
		SADD.M1		R34,R34,R42
		SLTU		R42, R34, R44
		SADD.M1		R35,R35,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R48
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R48,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[9], R45:R44
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
		SLDW		*-AR14[15], R43
		SNOP		5
		SFSUBS32.M1		R42, R43, R42
		SNOP		2
		SMVAGA36.M1		R47:R46, AR10
		SNOP		1
		SSTW		R42, *AR10
	.loc 1 145 0
		SLDW		*-AR14[13], R42
		SNOP		5
		SADD.M1		1,R42,R42
		SSTW		R42, *-AR14[13]
.L59:
		SLDW		*-AR14[13], R43
		SNOP		5
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SLT		R43, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L60
		SNOP		6
	.loc 1 150 0
		SLDDW		*+AR15[5], R31:R30
		SNOP		5
		SLDDW		*+AR15[6], R33:R32
		SNOP		5
		SLDDW		*+AR15[7], R35:R34
		SNOP		5
		SLDDW		*+AR15[8], R7:R6
		SNOP		5
		SMVAGA36.M1		R7:R6, AR8
		SNOP		1
		SLDDW		*+AR15[9], R63:R62
		SNOP		5
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
.LFE10:
	.size	random_h, .-random_h
	.section	.text.setSram,"ax",@progbits
	.align	2
	.global	setSram
	.type	setSram, @function
setSram:
.LFB11:
	.loc 1 151 0
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI22:
		SADDA.M1		16,AR15,AR14
.LCFI23:
		SNOP		1
		SMOVIL		-24, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
	.loc 1 152 0
		SMOVIL		1075052548, R42
		SMOVIH		1075052548, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[2]
	.loc 1 153 0
		SMOVIL		1075052544, R42
		SMOVIH		1075052544, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[3]
	.loc 1 155 0
		SLDDW		*-AR14[2], R43:R42
		SNOP		5
		SMOVIL		1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 156 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMOVIL		1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 157 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSTW		R42, *-AR14[7]
	.loc 1 158 0
		SBR		.L63
		SNOP		6
.L64:
	.loc 1 159 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSTW		R42, *-AR14[7]
.L63:
	.loc 1 158 0
		SLDW		*-AR14[7], R42
		SNOP		5
		SMOV.M1		R42, R0
	[R0]	SBR		.L64
		SNOP		6
	.loc 1 160 0
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
.LFE11:
	.size	setSram, .-setSram
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.byte	0x1
	.byte	0x7c
	.byte	0x4e
	.byte	0xc
	.byte	0xf
	.byte	0
	.align	3
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xc
	.byte	0xe
	.byte	0
	.align	3
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.llong	.LFB4
	.llong	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI2-.LFB4
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xc
	.byte	0xe
	.byte	0
	.align	3
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.llong	.LFB5
	.llong	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI4-.LFB5
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xc
	.byte	0xe
	.byte	0
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.align	3
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.llong	.LFB6
	.llong	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI7-.LFB6
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xc
	.byte	0xe
	.byte	0
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.align	3
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.llong	.LFB7
	.llong	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI10-.LFB7
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xc
	.byte	0xe
	.byte	0
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.align	3
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.llong	.LFB8
	.llong	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI13-.LFB8
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xc
	.byte	0xe
	.byte	0
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0xae
	.byte	0x5
	.align	3
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.llong	.LFB9
	.llong	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI16-.LFB9
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xc
	.byte	0xe
	.byte	0
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0x88
	.byte	0x6
	.byte	0xae
	.byte	0x8
	.byte	0xaf
	.byte	0x7
	.align	3
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.llong	.LFB10
	.llong	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI19-.LFB10
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xc
	.byte	0xe
	.byte	0
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0x88
	.byte	0x6
	.byte	0xb2
	.byte	0x8
	.byte	0xb3
	.byte	0x7
	.byte	0xb0
	.byte	0xa
	.byte	0xb1
	.byte	0x9
	.byte	0xae
	.byte	0xc
	.byte	0xaf
	.byte	0xb
	.align	3
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.llong	.LFB11
	.llong	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI22-.LFB11
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xc
	.byte	0xe
	.byte	0
	.align	3
.LEFDE16:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x80c
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../main.c"
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSPF_sp_fir_gen/test/asm/Debug"
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.string	"sizetype"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.byte	0x3
	.byte	0x1
	.string	"DSPF_sp_fir_gen_vc1"
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x238
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x12
	.4byte	0x24e
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x13
	.4byte	0x254
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x14
	.4byte	0x24e
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x15
	.4byte	0x128
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x16
	.4byte	0x128
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0x18
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.byte	0x74
	.byte	0x5
	.string	"j"
	.byte	0x1
	.byte	0x18
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.byte	0x70
	.byte	0x5
	.string	"k"
	.byte	0x1
	.byte	0x18
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x5
	.string	"tempr"
	.byte	0x1
	.byte	0x1a
	.4byte	0x26a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x5
	.string	"temp1"
	.byte	0x1
	.byte	0x1b
	.4byte	0x238
	.byte	0x3
	.byte	0x77
	.byte	0xc0,0
	.byte	0x5
	.string	"temp2"
	.byte	0x1
	.byte	0x1b
	.4byte	0x238
	.byte	0x2
	.byte	0x77
	.byte	0
	.byte	0x5
	.string	"temp3"
	.byte	0x1
	.byte	0x1c
	.4byte	0x24e
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0
	.byte	0x6
	.byte	0x1
	.4byte	0x245
	.4byte	0x245
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.byte	0x8
	.byte	0x8
	.4byte	0x238
	.byte	0x8
	.byte	0x8
	.4byte	0x245
	.byte	0x9
	.4byte	0x245
	.4byte	0x26a
	.byte	0xa
	.4byte	0x14c
	.byte	0x3
	.byte	0
	.byte	0x8
	.byte	0x8
	.4byte	0x25a
	.byte	0x3
	.byte	0x1
	.string	"DSPF_fir_gen_cn"
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x303
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x28
	.4byte	0x303
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x29
	.4byte	0x303
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x4
	.string	"y"
	.byte	0x1
	.byte	0x2a
	.4byte	0x254
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x2b
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x4
	.string	"ny"
	.byte	0x1
	.byte	0x2c
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0x2e
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.byte	0x74
	.byte	0x5
	.string	"j"
	.byte	0x1
	.byte	0x2e
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.byte	0x70
	.byte	0x5
	.string	"sum"
	.byte	0x1
	.byte	0x2f
	.4byte	0x245
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x8
	.byte	0x8
	.4byte	0x309
	.byte	0xb
	.4byte	0x245
	.byte	0xc
	.byte	0x1
	.string	"getTime"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0xf7
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x3a7
	.byte	0x4
	.string	"x1"
	.byte	0x1
	.byte	0x44
	.4byte	0x24e
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x4
	.string	"h1"
	.byte	0x1
	.byte	0x44
	.4byte	0x254
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x4
	.string	"r1"
	.byte	0x1
	.byte	0x44
	.4byte	0x24e
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x44
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x44
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0xd
	.4byte	.LASF0
	.byte	0x1
	.byte	0x45
	.4byte	0xf7
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x5
	.string	"time2"
	.byte	0x1
	.byte	0x45
	.4byte	0xf7
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xe
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x46
	.4byte	0x128
	.byte	0x1
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x1
	.string	"getTime1"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.4byte	0xf7
	.llong	.LFB6
	.llong	.LFE6
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x441
	.byte	0x4
	.string	"x1"
	.byte	0x1
	.byte	0x4b
	.4byte	0x24e
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x4
	.string	"h1"
	.byte	0x1
	.byte	0x4b
	.4byte	0x254
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x4
	.string	"r1"
	.byte	0x1
	.byte	0x4b
	.4byte	0x24e
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x4b
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x4b
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0xd
	.4byte	.LASF0
	.byte	0x1
	.byte	0x4c
	.4byte	0xf7
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x5
	.string	"time2"
	.byte	0x1
	.byte	0x4c
	.4byte	0xf7
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xe
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x46
	.4byte	0x128
	.byte	0x1
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x1
	.string	"getTime_cn"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.4byte	0xf7
	.llong	.LFB7
	.llong	.LFE7
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x4da
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x52
	.4byte	0x254
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x52
	.4byte	0x254
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x52
	.4byte	0x254
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x52
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x52
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0xd
	.4byte	.LASF0
	.byte	0x1
	.byte	0x53
	.4byte	0xf7
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x5
	.string	"time2"
	.byte	0x1
	.byte	0x53
	.4byte	0xf7
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xe
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x46
	.4byte	0x128
	.byte	0x1
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x1
	.string	"main"
	.byte	0x1
	.byte	0x59
	.llong	.LFB8
	.llong	.LFE8
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x627
	.byte	0x5
	.string	"time"
	.byte	0x1
	.byte	0x5a
	.4byte	0xf7
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0xd
	.4byte	.LASF0
	.byte	0x1
	.byte	0x5a
	.4byte	0xf7
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x5
	.string	"time_cn"
	.byte	0x1
	.byte	0x5a
	.4byte	0xf7
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x5
	.string	"nr"
	.byte	0x1
	.byte	0x60
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x5
	.string	"nh"
	.byte	0x1
	.byte	0x60
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x5
	.string	"hAddr"
	.byte	0x1
	.byte	0x61
	.4byte	0x254
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x5
	.string	"xAddr"
	.byte	0x1
	.byte	0x62
	.4byte	0x24e
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x5
	.string	"rAddr"
	.byte	0x1
	.byte	0x63
	.4byte	0x24e
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x5
	.string	"rAddr1"
	.byte	0x1
	.byte	0x64
	.4byte	0x24e
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x11
	.byte	0x1
	.string	"M7002_datatrans"
	.byte	0x1
	.byte	0x67
	.4byte	0x128
	.byte	0x1
	.4byte	0x5a8
	.byte	0xf
	.byte	0
	.byte	0x11
	.byte	0x1
	.string	"SetTimerPeriod"
	.byte	0x1
	.byte	0x6a
	.4byte	0x128
	.byte	0x1
	.4byte	0x5c6
	.byte	0xf
	.byte	0
	.byte	0x11
	.byte	0x1
	.string	"TimerStart"
	.byte	0x1
	.byte	0x6b
	.4byte	0x128
	.byte	0x1
	.4byte	0x5e0
	.byte	0xf
	.byte	0
	.byte	0x5
	.string	"c_time"
	.byte	0x1
	.byte	0x6d
	.4byte	0xf7
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x12
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x46
	.4byte	0x128
	.byte	0x1
	.4byte	0x605
	.byte	0xf
	.byte	0
	.byte	0x13
	.llong	.LBB2
	.llong	.LBE2
	.byte	0xd
	.4byte	.LASF0
	.byte	0x1
	.byte	0x80
	.4byte	0xf7
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x1
	.string	"random_x"
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.llong	.LFB9
	.llong	.LFE9
	.4byte	.LLST6
	.byte	0x1
	.4byte	0x69d
	.byte	0x4
	.string	"x1"
	.byte	0x1
	.byte	0x86
	.4byte	0x254
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x4
	.string	"n"
	.byte	0x1
	.byte	0x86
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x4
	.string	"factor"
	.byte	0x1
	.byte	0x86
	.4byte	0x245
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x5
	.string	"rand_midpoint"
	.byte	0x1
	.byte	0x87
	.4byte	0x245
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0x88
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x14
	.byte	0x1
	.string	"random_h"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.llong	.LFB10
	.llong	.LFE10
	.4byte	.LLST7
	.byte	0x1
	.4byte	0x712
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x8e
	.4byte	0x254
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x4
	.string	"n"
	.byte	0x1
	.byte	0x8e
	.4byte	0x128
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0x8f
	.4byte	0x128
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x5
	.string	"frand_max"
	.byte	0x1
	.byte	0x90
	.4byte	0x245
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x5
	.string	"pair_sum"
	.byte	0x1
	.byte	0x90
	.4byte	0x245
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0
	.byte	0x15
	.byte	0x1
	.string	"setSram"
	.byte	0x1
	.byte	0x97
	.llong	.LFB11
	.llong	.LFE11
	.4byte	.LLST8
	.byte	0x1
	.4byte	0x76c
	.byte	0x5
	.string	"cache"
	.byte	0x1
	.byte	0x98
	.4byte	0x76c
	.byte	0x2
	.byte	0x91
	.byte	0x70
	.byte	0x5
	.string	"cache1"
	.byte	0x1
	.byte	0x99
	.4byte	0x76c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x5
	.string	"cache_ok"
	.byte	0x1
	.byte	0x9a
	.4byte	0x772
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x8
	.byte	0x8
	.4byte	0x128
	.byte	0x16
	.4byte	0x128
	.byte	0x9
	.4byte	0x245
	.4byte	0x787
	.byte	0xa
	.4byte	0x14c
	.byte	0x8e
	.byte	0
	.byte	0x17
	.string	"x"
	.byte	0x1
	.byte	0xb
	.4byte	0x777
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	x
	.byte	0x9
	.4byte	0x245
	.4byte	0x7ab
	.byte	0xa
	.4byte	0x14c
	.byte	0xf
	.byte	0
	.byte	0x17
	.string	"h"
	.byte	0x1
	.byte	0xc
	.4byte	0x79b
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	h
	.byte	0x9
	.4byte	0x245
	.4byte	0x7cf
	.byte	0xa
	.4byte	0x14c
	.byte	0x7f
	.byte	0
	.byte	0x17
	.string	"r"
	.byte	0x1
	.byte	0xd
	.4byte	0x7bf
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	r
	.byte	0x17
	.string	"r1"
	.byte	0x1
	.byte	0xe
	.4byte	0x7bf
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	r1
	.byte	0x17
	.string	"r_cn"
	.byte	0x1
	.byte	0xf
	.4byte	0x7bf
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	r_cn
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0x8
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x1b
	.byte	0x8
	.byte	0x55
	.byte	0x6
	.byte	0x11
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x97,0x42
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.byte	0x87,0x42
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x21
	.byte	0
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x96,0x42
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x96,0x42
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x96,0x42
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x97,0x42
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x2
	.byte	0xa
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
	.byte	0
	.llong	.LCFI0
	.llong	.LCFI1
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.llong	.LCFI1
	.llong	.LFE3
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.llong	0
	.llong	0
.LLST1:
	.llong	.LFB4
	.llong	.LCFI2
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI2
	.llong	.LCFI3
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.llong	.LCFI3
	.llong	.LFE4
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.llong	0
	.llong	0
.LLST2:
	.llong	.LFB5
	.llong	.LCFI4
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI4
	.llong	.LCFI5
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.llong	.LCFI5
	.llong	.LFE5
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.llong	0
	.llong	0
.LLST3:
	.llong	.LFB6
	.llong	.LCFI7
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI7
	.llong	.LCFI8
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.llong	.LCFI8
	.llong	.LFE6
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.llong	0
	.llong	0
.LLST4:
	.llong	.LFB7
	.llong	.LCFI10
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI10
	.llong	.LCFI11
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.llong	.LCFI11
	.llong	.LFE7
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.llong	0
	.llong	0
.LLST5:
	.llong	.LFB8
	.llong	.LCFI13
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI13
	.llong	.LCFI14
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.llong	.LCFI14
	.llong	.LFE8
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.llong	0
	.llong	0
.LLST6:
	.llong	.LFB9
	.llong	.LCFI16
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI16
	.llong	.LCFI17
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.llong	.LCFI17
	.llong	.LFE9
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.llong	0
	.llong	0
.LLST7:
	.llong	.LFB10
	.llong	.LCFI19
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI19
	.llong	.LCFI20
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.llong	.LCFI20
	.llong	.LFE10
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.llong	0
	.llong	0
.LLST8:
	.llong	.LFB11
	.llong	.LCFI22
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI22
	.llong	.LCFI23
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.llong	.LCFI23
	.llong	.LFE11
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.llong	0
	.llong	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xac
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.llong	.LFB4
	.llong	.LFE4-.LFB4
	.llong	.LFB5
	.llong	.LFE5-.LFB5
	.llong	.LFB6
	.llong	.LFE6-.LFB6
	.llong	.LFB7
	.llong	.LFE7-.LFB7
	.llong	.LFB8
	.llong	.LFE8-.LFB8
	.llong	.LFB9
	.llong	.LFE9-.LFB9
	.llong	.LFB10
	.llong	.LFE10-.LFB10
	.llong	.LFB11
	.llong	.LFE11-.LFB11
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LFB3
	.llong	.LFE3
	.llong	.LFB4
	.llong	.LFE4
	.llong	.LFB5
	.llong	.LFE5
	.llong	.LFB6
	.llong	.LFE6
	.llong	.LFB7
	.llong	.LFE7
	.llong	.LFB8
	.llong	.LFE8
	.llong	.LFB9
	.llong	.LFE9
	.llong	.LFB10
	.llong	.LFE10
	.llong	.LFB11
	.llong	.LFE11
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"",@progbits
.LASF0:
	.string	"time1"
.LASF1:
	.string	"GetTimerCount"
