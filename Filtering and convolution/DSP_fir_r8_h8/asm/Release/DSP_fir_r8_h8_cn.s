	.file	"DSP_fir_r8_h8_cn.c"
	.section	.text.DSP_fir_r8_h8_cn,"ax",@progbits
	.align	2
	.global	DSP_fir_r8_h8_cn
	.type	DSP_fir_r8_h8_cn, @function
DSP_fir_r8_h8_cn:
		SMVAGA36.M1		R11:R10, OR0
	|	SMOVIL		0, R42
	|	SADD.M2		2,R14,R59
		SMVAGA36.M1		R13:R12, OR1
	|	SLT		R42, R16, R0
	|	SADD.M2		-1,R16,R16
		SADDA.M1		-2,OR0,AR2
	|[!R0]	SBR		.L13
	|	SSHFLL		1, R16, R1
		SADDA.M2		-2,OR1,AR0
	|	SLTU		R59, R14, R44
		SLTU		R1, R16, R3
		SMVAAGL.M2		AR2, R47:R46
	|	SADD.M1		R15,R44,R2
	|	SMOVIL		0, R52
		SMVAAGL.M2		AR0, R49:R48
	|	SADD.M1		R1,R59,R60
		SMVAAGH.M2		AR2, R47:R46
	|	SLTU		R60, R59, R61
	|	SADD.M1		R3,R2,R8
	[R0]	SMVAAGH.M2		AR0, R49:R48
	|	SADD.M1		R8,R61,R9
	;; condjump to .L13 occurs
		SADD.M1		16,R46,R57
		SLTU		R57, R46, R58
	|	SMOV.M2		R48, R44
	|	SMOV.M1		R49, R45
		SADD.M2		R47,R58,R11
	|	SMOV.M1		R46, R42
		SMOV.M2		R47, R43
.L3:
		SADD.M2		2,R42,R51
	|	SADD.M1		2,R44,R50
		SLTU		R51, R42, R56
	|	SMOV.M2		R51, R42
		SLTU		R50, R44, R54
	|	SADD.M2		R43,R56,R43
	|	SMOV.M1		R50, R44
		SADD.M1		R45,R54,R45
	|	SMVAGA36.M2		R43:R42, AR12
	|	SEQ		R51, R57, R0
		SMVAGA36.M1		R45:R44, AR10
	|[R0]	SEQ		R43, R11, R0
		SLDH		*AR12, R12
		SLDH		*AR10, R13
		SNOP		4
		SSHFLL		16, R12, R17
	[!R0]	SBR		.L3
	|	SSHFLL		16, R13, R18
		SSHFAR		16, R17, R19
		SSHFAR		16, R18, R20
		SMULIS.M2		R20,R19,R21
		SNOP		2
		SADD.M2		R21,R52,R52
	;; condjump to .L3 occurs
		SLTU		R59, R14, R22
	|	SMVAGA36.M2		R15:R14, AR10
	|	SADD.M1		2,R46,R24
		SEQ		R59, R60, R1
	|	SADD.M1		R15,R22,R15
	[R1]	SEQ		R15, R9, R1
	|	SMOV.M2		R59, R14
	|	SMOV.M1		R48, R44
	[R1]	SBR		.L1
	|	SLTU		R24, R46, R26
	|	SMOV.M2		R24, R46
	|	SADD.M1		2,R59,R59
	[!R1]	SBR		.L3
	|	SADD.M2		16,R46,R57
	|	SSHFAR		15, R52, R23
	|	SADD.M1		R47,R26,R47
		SLTU		R57, R46, R58
	|	SSTH		R23, *AR10
	|	SMOV.M2		R49, R45
	|	SMOV.M1		R46, R42
		SADD.M2		R47,R58,R11
	|	SMOV.M1		R47, R43
	|	SMOVIL		0, R52
		SNOP		4
	;; condjump to .L1 occurs
	;; jump to .L3 occurs
.L1:
		SBR		R62
		SNOP		6
	;; return occurs
.L13:
		SBR		R62
		SNOP		6
	;; return occurs
	.size	DSP_fir_r8_h8_cn, .-DSP_fir_r8_h8_cn