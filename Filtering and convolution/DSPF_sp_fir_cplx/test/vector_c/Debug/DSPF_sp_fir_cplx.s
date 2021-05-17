	.file	"DSPF_sp_fir_cplx.c"
.text;
.Ltext0:
	.section	.text.DSPF_sp_fir_cplx_cn,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_cplx_cn
	.type	DSPF_sp_fir_cplx_cn, @function
DSPF_sp_fir_cplx_cn:
.LFB0:
	.file 1 "../DSPF_sp_fir_cplx.c"
	.loc 1 7 0
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI0:
		SADDA.M1		16,AR15,AR14
.LCFI1:
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
	.loc 1 11 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[3]
		SBR		.L2
		SNOP		6
.L5:
	.loc 1 13 0
		SMOVIL		0, R42
		SMOVIH		0, R42
		SSTW		R42, *-AR14[5]
	.loc 1 14 0
		SMOVIL		0, R42
		SMOVIH		0, R42
		SSTW		R42, *-AR14[6]
	.loc 1 16 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[4]
		SBR		.L3
		SNOP		6
.L4:
	.loc 1 18 0
		SLDW		*-AR14[4], R44
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R45
		SADD.M1		R44,R44,R42
		SLTU		R42, R44, R58
		SADD.M1		R45,R45,R43
		SADD.M1		R43,R58,R58
		SMOV.M1		R58, R43
		SADD.M1		R42,R42,R58
		SLTU		R58, R42, R10
		SADD.M1		R43,R43,R59
		SADD.M1		R59,R10,R42
		SMOV.M1		R42, R59
		SMOV.M1		R58, R42
		SMOV.M1		R59, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[5], R59:R58
		SNOP		5
		SMVAGA36.M1		R59:R58, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R10
		SNOP		5
		SLDW		*-AR14[3], R43
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SSUB.M1		R42, R43, R42
		SMOV.M1		R42, R46
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R47
		SADD.M1		R46,R46,R42
		SLTU		R42, R46, R58
		SADD.M1		R47,R47,R43
		SADD.M1		R43,R58,R58
		SMOV.M1		R58, R43
		SADD.M1		R42,R42,R58
		SLTU		R58, R42, R11
		SADD.M1		R43,R43,R59
		SADD.M1		R59,R11,R42
		SMOV.M1		R42, R59
		SMOV.M1		R58, R42
		SMOV.M1		R59, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[4], R59:R58
		SNOP		5
		SMVAGA36.M1		R59:R58, OR11
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
		SFMULS32.M1		R10, R42, R10
		SNOP		3
		SLDW		*-AR14[4], R60
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R61
		SMOVIL		1, R58
		SMOVIL		0, R59
		SADD.M1		R58,R60,R42
		SLTU		R42, R60, R11
		SADD.M1		R59,R61,R43
		SADD.M1		R43,R11,R58
		SMOV.M1		R58, R43
		SMOV.M1		R42, R58
		SMOV.M1		R43, R59
		SADD.M1		R58,R58,R42
		SLTU		R42, R58, R11
		SADD.M1		R59,R59,R43
		SADD.M1		R43,R11,R58
		SMOV.M1		R58, R43
		SADD.M1		R42,R42,R58
		SLTU		R58, R42, R11
		SADD.M1		R43,R43,R59
		SADD.M1		R59,R11,R42
		SMOV.M1		R42, R59
		SMOV.M1		R58, R42
		SMOV.M1		R59, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[5], R59:R58
		SNOP		5
		SMVAGA36.M1		R59:R58, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R11
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SADD.M1		1,R42,R43
		SLDW		*-AR14[4], R42
		SNOP		5
		SSUB.M1		R42, R43, R42
		SMOV.M1		R42, R48
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R49
		SADD.M1		R48,R48,R42
		SLTU		R42, R48, R58
		SADD.M1		R49,R49,R43
		SADD.M1		R43,R58,R58
		SMOV.M1		R58, R43
		SADD.M1		R42,R42,R58
		SLTU		R58, R42, R12
		SADD.M1		R43,R43,R59
		SADD.M1		R59,R12,R42
		SMOV.M1		R42, R59
		SMOV.M1		R58, R42
		SMOV.M1		R59, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[4], R59:R58
		SNOP		5
		SMVAGA36.M1		R59:R58, OR11
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
		SFMULS32.M1		R11, R42, R42
		SNOP		3
		SFSUBS32.M1		R42, R10, R42
		SNOP		2
		SLDW		*-AR14[6], R43
		SNOP		5
		SFADDS32.M1		R43, R42, R42
		SNOP		2
		SSTW		R42, *-AR14[6]
	.loc 1 19 0
		SLDW		*-AR14[4], R50
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R51
		SADD.M1		R50,R50,R42
		SLTU		R42, R50, R58
		SADD.M1		R51,R51,R43
		SADD.M1		R43,R58,R58
		SMOV.M1		R58, R43
		SADD.M1		R42,R42,R58
		SLTU		R58, R42, R10
		SADD.M1		R43,R43,R59
		SADD.M1		R59,R10,R42
		SMOV.M1		R42, R59
		SMOV.M1		R58, R42
		SMOV.M1		R59, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[5], R59:R58
		SNOP		5
		SMVAGA36.M1		R59:R58, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R10
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SADD.M1		1,R42,R43
		SLDW		*-AR14[4], R42
		SNOP		5
		SSUB.M1		R42, R43, R42
		SMOV.M1		R42, R52
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R53
		SADD.M1		R52,R52,R42
		SLTU		R42, R52, R58
		SADD.M1		R53,R53,R43
		SADD.M1		R43,R58,R58
		SMOV.M1		R58, R43
		SADD.M1		R42,R42,R58
		SLTU		R58, R42, R11
		SADD.M1		R43,R43,R59
		SADD.M1		R59,R11,R42
		SMOV.M1		R42, R59
		SMOV.M1		R58, R42
		SMOV.M1		R59, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[4], R59:R58
		SNOP		5
		SMVAGA36.M1		R59:R58, OR11
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
		SFMULS32.M1		R10, R42, R10
		SNOP		3
		SLDW		*-AR14[4], R20
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R21
		SMOVIL		1, R58
		SMOVIL		0, R59
		SADD.M1		R58,R20,R42
		SLTU		R42, R20, R11
		SADD.M1		R59,R21,R43
		SADD.M1		R43,R11,R58
		SMOV.M1		R58, R43
		SMOV.M1		R42, R58
		SMOV.M1		R43, R59
		SADD.M1		R58,R58,R42
		SLTU		R42, R58, R11
		SADD.M1		R59,R59,R43
		SADD.M1		R43,R11,R58
		SMOV.M1		R58, R43
		SADD.M1		R42,R42,R58
		SLTU		R58, R42, R11
		SADD.M1		R43,R43,R59
		SADD.M1		R59,R11,R42
		SMOV.M1		R42, R59
		SMOV.M1		R58, R42
		SMOV.M1		R59, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[5], R59:R58
		SNOP		5
		SMVAGA36.M1		R59:R58, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R11
		SNOP		5
		SLDW		*-AR14[3], R43
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SSUB.M1		R42, R43, R42
		SMOV.M1		R42, R54
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R55
		SADD.M1		R54,R54,R42
		SLTU		R42, R54, R58
		SADD.M1		R55,R55,R43
		SADD.M1		R43,R58,R58
		SMOV.M1		R58, R43
		SADD.M1		R42,R42,R58
		SLTU		R58, R42, R12
		SADD.M1		R43,R43,R59
		SADD.M1		R59,R12,R42
		SMOV.M1		R42, R59
		SMOV.M1		R58, R42
		SMOV.M1		R59, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[4], R59:R58
		SNOP		5
		SMVAGA36.M1		R59:R58, OR11
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
		SFMULS32.M1		R11, R42, R42
		SNOP		3
		SFADDS32.M1		R10, R42, R42
		SNOP		2
		SLDW		*-AR14[5], R43
		SNOP		5
		SFADDS32.M1		R43, R42, R42
		SNOP		2
		SSTW		R42, *-AR14[5]
	.loc 1 16 0
		SLDW		*-AR14[4], R42
		SNOP		5
		SADD.M1		2,R42,R42
		SSTW		R42, *-AR14[4]
.L3:
		SLDW		*-AR14[13], R42
		SNOP		5
		SSHFLL		1, R42, R43
		SLDW		*-AR14[4], R42
		SNOP		5
		SLT		R42, R43, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L4
		SNOP		6
	.loc 1 22 0
		SLDW		*-AR14[3], R56
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R57
		SADD.M1		R56,R56,R42
		SLTU		R42, R56, R58
		SADD.M1		R57,R57,R43
		SADD.M1		R43,R58,R58
		SMOV.M1		R58, R43
		SADD.M1		R42,R42,R58
		SLTU		R58, R42, R10
		SADD.M1		R43,R43,R59
		SADD.M1		R59,R10,R42
		SMOV.M1		R42, R59
		SMOV.M1		R58, R42
		SMOV.M1		R59, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[6], R59:R58
		SNOP		5
		SMVAGA36.M1		R59:R58, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[6], R58
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R58, *AR10
	.loc 1 23 0
		SLDW		*-AR14[3], R22
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R23
		SMOVIL		1, R58
		SMOVIL		0, R59
		SADD.M1		R58,R22,R42
		SLTU		R42, R22, R10
		SADD.M1		R59,R23,R43
		SADD.M1		R43,R10,R58
		SMOV.M1		R58, R43
		SMOV.M1		R42, R58
		SMOV.M1		R43, R59
		SADD.M1		R58,R58,R42
		SLTU		R42, R58, R10
		SADD.M1		R59,R59,R43
		SADD.M1		R43,R10,R58
		SMOV.M1		R58, R43
		SADD.M1		R42,R42,R58
		SLTU		R58, R42, R10
		SADD.M1		R43,R43,R59
		SADD.M1		R59,R10,R42
		SMOV.M1		R42, R59
		SMOV.M1		R58, R42
		SMOV.M1		R59, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[6], R59:R58
		SNOP		5
		SMVAGA36.M1		R59:R58, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[5], R58
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R58, *AR10
	.loc 1 11 0
		SLDW		*-AR14[3], R42
		SNOP		5
		SADD.M1		2,R42,R42
		SSTW		R42, *-AR14[3]
.L2:
		SLDW		*-AR14[14], R42
		SNOP		5
		SSHFLL		1, R42, R43
		SLDW		*-AR14[3], R42
		SNOP		5
		SLT		R42, R43, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L5
		SNOP		6
	.loc 1 25 0
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
.LFE0:
	.size	DSPF_sp_fir_cplx_cn, .-DSPF_sp_fir_cplx_cn
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
	.llong	.LFB0
	.llong	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
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
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x14f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSPF_sp_fir_cplx.c"
	.string	"/cygdrive/e/project/function  demo/function/DSPF_sp_fir_cplx/Debug"
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.string	"DSPF_sp_fir_cplx_cn"
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x131
	.byte	0x3
	.string	"x"
	.byte	0x1
	.byte	0x5
	.4byte	0x131
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x3
	.string	"h"
	.byte	0x1
	.byte	0x5
	.4byte	0x131
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x3
	.string	"y"
	.byte	0x1
	.byte	0x6
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x3
	.string	"nh"
	.byte	0x1
	.byte	0x6
	.4byte	0x14b
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x3
	.string	"ny"
	.byte	0x1
	.byte	0x6
	.4byte	0x14b
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x4
	.string	"i"
	.byte	0x1
	.byte	0x8
	.4byte	0x14b
	.byte	0x2
	.byte	0x91
	.byte	0x74
	.byte	0x4
	.string	"j"
	.byte	0x1
	.byte	0x8
	.4byte	0x14b
	.byte	0x2
	.byte	0x91
	.byte	0x70
	.byte	0x4
	.string	"imag"
	.byte	0x1
	.byte	0x9
	.4byte	0x13c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x4
	.string	"real"
	.byte	0x1
	.byte	0x9
	.4byte	0x13c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x5
	.byte	0x8
	.4byte	0x137
	.byte	0x6
	.4byte	0x13c
	.byte	0x7
	.byte	0x4
	.byte	0x4
	.string	"float"
	.byte	0x5
	.byte	0x8
	.4byte	0x13c
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.llong	.LFB0
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
	.llong	.LFE0
	.2byte	0x2
	.byte	0x7e
	.byte	0
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
	.llong	.LFB0
	.llong	.LFE0-.LFB0
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LFB0
	.llong	.LFE0
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
