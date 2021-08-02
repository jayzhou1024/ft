	.file	"DSP_fir_r8_cn.c"
	.section	.text.DSP_fir_r8_cn,"ax",@progbits
	.align	2
	.global	DSP_fir_r8_cn
	.type	DSP_fir_r8_cn, @function
DSP_fir_r8_cn:
		SMOVIL		0, R42
	|	SMVAGA36.M1		R11:R10, OR0
	|	SADD.M2		2,R14,R56
		SMOVIL		0, R43
	|	SADD.M2		2,R12,R2
		SLT		R42, R18, R0
	|	SADDA.M2		-2,OR0,AR0
	|	SADD.M1		-1,R18,R18
		SLT		R43, R16, R1
	|[!R0]	SBR		.L1
	|	SADD.M1		-1,R16,R3
		SSHFLL		1, R18, R45
		SSHFLL		1, R3, R44
	|	SMVAAGL.M2		AR0, R47:R46
	|	SADD.M1		R45,R56,R57
		SLTU		R56, R14, R50
	|	SADD.M1		R44,R2,R54
		SLTU		R2, R12, R9
	|	SADD.M1		R15,R50,R8
	|	SMVAAGH.M2		AR0, R47:R46
		SLTU		R45, R18, R10
	|	SADD.M1		R13,R9,R11
		SLTU		R44, R3, R16
	|	SADD.M2		R10,R8,R17
	;; condjump to .L1 occurs
	[!R1]	SBR		.L12
	|	SLTU		R57, R56, R58
	|	SADD.M2		R16,R11,R19
		SADD.M2		R17,R58,R21
	|	SLTU		R54, R2, R20
		SADD.M2		R19,R20,R55
		SNOP		4
	;; condjump to .L12 occurs
.L6:
		SMOV.M2		R12, R42
	|	SMOV.M1		R13, R43
	|	SMOVIL		0, R2
		SMOV.M2		R46, R44
	|	SMOV.M1		R47, R45
.L4:
		SADD.M1		2,R44,R22
	|	SMVAGA36.M2		R43:R42, AR12
		SLTU		R22, R44, R24
	|	SMOV.M1		R22, R44
		SADD.M2		R45,R24,R45
	|	SLDH		*AR12, R25
	|	SADD.M1		2,R42,R26
		SMVAGA36.M2		R45:R44, AR10
	|	SLTU		R26, R42, R53
	|	SMOV.M1		R26, R42
		SADD.M1		R43,R53,R43
	|	SEQ		R26, R54, R0
		SLDH		*AR10, R28
	|[R0]	SEQ		R43, R55, R0
		SNOP		2
		SSHFLL		16, R25, R27
		SSHFAR		16, R27, R60
	[!R0]	SBR		.L4
		SSHFLL		16, R28, R29
		SSHFAR		16, R29, R59
		SMULIS.M2		R60,R59,R61
		SNOP		2
		SADD.M2		R61,R2,R2
	;; condjump to .L4 occurs
		SMVAGA36.M2		R15:R14, AR10
	|	SLTU		R56, R14, R43
	|	SMOV.M1		R56, R14
		SADD.M1		R15,R43,R15
	|	SEQ		R14, R57, R0
	[R0]	SEQ		R15, R21, R0
	|	SADD.M2		2,R46,R56
	[R0]	SBR		.L1
	|	SLTU		R56, R46, R42
	|	SMOV.M2		R56, R46
		SSHFLR		15, R2, R51
	|	SADD.M2		R47,R42,R47
		SSTH		R51, *AR10
		SNOP		4
	;; condjump to .L1 occurs
.L13:
	[R1]	SBR		.L6
	|	SADD.M2		2,R14,R56
		SNOP		6
	;; condjump to .L6 occurs
.L12:
		SMVAGA36.M2		R15:R14, AR10
	|	SLTU		R56, R14, R43
	|	SMOV.M1		R56, R14
		SADD.M1		R15,R43,R15
	|	SEQ		R14, R57, R0
	[R0]	SEQ		R15, R21, R0
	|	SADD.M2		2,R46,R56
	[!R0]	SBR		.L13
	|	SLTU		R56, R46, R42
	|	SMOV.M2		R56, R46
		SADD.M2		R47,R42,R47
	|	SMOVIL		0, R51
		SSTH		R51, *AR10
		SNOP		4
	;; condjump to .L13 occurs
.L1:
		SBR		R62
		SNOP		6
	;; return occurs
	.size	DSP_fir_r8_cn, .-DSP_fir_r8_cn
