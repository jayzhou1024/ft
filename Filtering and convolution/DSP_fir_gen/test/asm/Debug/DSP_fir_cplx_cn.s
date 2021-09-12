	.file	"DSP_fir_cplx_cn.c"
.text;
.Ltext0:
	.section	.text.DSP_fir_cplx_cn,"ax",@progbits
	.align	2
	.global	DSP_fir_cplx_cn
	.type	DSP_fir_cplx_cn, @function
DSP_fir_cplx_cn:
.LFB0:
	.file 1 "../DSP_fir_cplx_cn.c"
	.loc 1 9 0
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
	.loc 1 12 0
		SMOVIL		0, R52
		SSTW		R52, *-AR14[3]
		SBR		.L2
		SNOP		6
.L5:
	.loc 1 13 0
		SMOVIL		0, R52
		SSTW		R52, *-AR14[5]
	.loc 1 14 0
		SMOVIL		0, R52
		SSTW		R52, *-AR14[6]
	.loc 1 15 0
		SMOVIL		0, R52
		SSTW		R52, *-AR14[4]
		SBR		.L3
		SNOP		6
.L4:
	.loc 1 16 0
		SLDW		*-AR14[4], R42
		SNOP		5
		SLDW		*-AR14[4], R52
		SNOP		5
		SSHFAR		31, R52, R52
		SMOV.M1		R52, R43
		SADD.M1		R42,R42,R52
		SLTU		R52, R42, R54
		SADD.M1		R43,R43,R53
		SADD.M1		R53,R54,R54
		SMOV.M1		R54, R53
	;no-op trunc di R53:R52 to pdi R53:R52
		SLDDW		*-AR14[5], R55:R54
		SNOP		5
		SMVAGA36.M1		R55:R54, OR11
		SNOP		1
		SADDA.M1		R53:R52,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R53:R52
		SNOP		1
		SMVAAGH.M1		OR11, R53:R52
		SNOP		1
		SMVAGA36.M1		R53:R52, AR10
		SNOP		1
		SLDH		*AR10, R52
		SNOP		5
		SSHFLL		16, R52, R10
		SSHFAR		16, R10, R10
		SLDW		*-AR14[3], R53
		SNOP		5
		SLDW		*-AR14[4], R52
		SNOP		5
		SSUB.M1		R52, R53, R52
		SMOV.M1		R52, R44
		SSHFAR		31, R52, R52
		SMOV.M1		R52, R45
		SADD.M1		R44,R44,R52
		SLTU		R52, R44, R54
		SADD.M1		R45,R45,R53
		SADD.M1		R53,R54,R54
		SMOV.M1		R54, R53
	;no-op trunc di R53:R52 to pdi R53:R52
		SLDDW		*-AR14[4], R55:R54
		SNOP		5
		SMVAGA36.M1		R55:R54, OR11
		SNOP		1
		SADDA.M1		R53:R52,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R53:R52
		SNOP		1
		SMVAAGH.M1		OR11, R53:R52
		SNOP		1
		SMVAGA36.M1		R53:R52, AR10
		SNOP		1
		SLDH		*AR10, R52
		SNOP		5
		SSHFLL		16, R52, R52
		SSHFAR		16, R52, R52
		SMULIS.M1		R52,R10,R11
		SNOP		2
		SLDW		*-AR14[4], R56
		SNOP		5
		SLDW		*-AR14[4], R52
		SNOP		5
		SSHFAR		31, R52, R52
		SMOV.M1		R52, R57
		SMOVIL		1, R54
		SMOVIL		0, R55
		SADD.M1		R54,R56,R52
		SLTU		R52, R56, R10
		SADD.M1		R55,R57,R53
		SADD.M1		R53,R10,R54
		SMOV.M1		R54, R53
		SADD.M1		R52,R52,R54
		SLTU		R54, R52, R10
		SADD.M1		R53,R53,R55
		SADD.M1		R55,R10,R52
		SMOV.M1		R52, R55
		SMOV.M1		R54, R52
		SMOV.M1		R55, R53
	;no-op trunc di R53:R52 to pdi R53:R52
		SLDDW		*-AR14[5], R55:R54
		SNOP		5
		SMVAGA36.M1		R55:R54, OR11
		SNOP		1
		SADDA.M1		R53:R52,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R53:R52
		SNOP		1
		SMVAAGH.M1		OR11, R53:R52
		SNOP		1
		SMVAGA36.M1		R53:R52, AR10
		SNOP		1
		SLDH		*AR10, R52
		SNOP		5
		SSHFLL		16, R52, R10
		SSHFAR		16, R10, R10
		SLDW		*-AR14[3], R53
		SNOP		5
		SLDW		*-AR14[4], R52
		SNOP		5
		SSUB.M1		R52, R53, R52
		SMOV.M1		R52, R58
		SSHFAR		31, R52, R52
		SMOV.M1		R52, R59
		SMOVIL		1, R54
		SMOVIL		0, R55
		SADD.M1		R54,R58,R52
		SLTU		R52, R58, R12
		SADD.M1		R55,R59,R53
		SADD.M1		R53,R12,R54
		SMOV.M1		R54, R53
		SADD.M1		R52,R52,R54
		SLTU		R54, R52, R12
		SADD.M1		R53,R53,R55
		SADD.M1		R55,R12,R52
		SMOV.M1		R52, R55
		SMOV.M1		R54, R52
		SMOV.M1		R55, R53
	;no-op trunc di R53:R52 to pdi R53:R52
		SLDDW		*-AR14[4], R55:R54
		SNOP		5
		SMVAGA36.M1		R55:R54, OR11
		SNOP		1
		SADDA.M1		R53:R52,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R53:R52
		SNOP		1
		SMVAAGH.M1		OR11, R53:R52
		SNOP		1
		SMVAGA36.M1		R53:R52, AR10
		SNOP		1
		SLDH		*AR10, R52
		SNOP		5
		SSHFLL		16, R52, R52
		SSHFAR		16, R52, R52
		SMULIS.M1		R52,R10,R52
		SNOP		2
		SSUB.M1		R52, R11, R52
		SLDW		*-AR14[6], R53
		SNOP		5
		SADD.M1		R52,R53,R52
		SSTW		R52, *-AR14[6]
	.loc 1 17 0
		SLDW		*-AR14[4], R60
		SNOP		5
		SLDW		*-AR14[4], R52
		SNOP		5
		SSHFAR		31, R52, R52
		SMOV.M1		R52, R61
		SMOVIL		1, R54
		SMOVIL		0, R55
		SADD.M1		R54,R60,R52
		SLTU		R52, R60, R10
		SADD.M1		R55,R61,R53
		SADD.M1		R53,R10,R54
		SMOV.M1		R54, R53
		SADD.M1		R52,R52,R54
		SLTU		R54, R52, R10
		SADD.M1		R53,R53,R55
		SADD.M1		R55,R10,R52
		SMOV.M1		R52, R55
		SMOV.M1		R54, R52
		SMOV.M1		R55, R53
	;no-op trunc di R53:R52 to pdi R53:R52
		SLDDW		*-AR14[5], R55:R54
		SNOP		5
		SMVAGA36.M1		R55:R54, OR11
		SNOP		1
		SADDA.M1		R53:R52,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R53:R52
		SNOP		1
		SMVAAGH.M1		OR11, R53:R52
		SNOP		1
		SMVAGA36.M1		R53:R52, AR10
		SNOP		1
		SLDH		*AR10, R52
		SNOP		5
		SSHFLL		16, R52, R10
		SSHFAR		16, R10, R10
		SLDW		*-AR14[3], R53
		SNOP		5
		SLDW		*-AR14[4], R52
		SNOP		5
		SSUB.M1		R52, R53, R52
		SMOV.M1		R52, R46
		SSHFAR		31, R52, R52
		SMOV.M1		R52, R47
		SADD.M1		R46,R46,R52
		SLTU		R52, R46, R54
		SADD.M1		R47,R47,R53
		SADD.M1		R53,R54,R54
		SMOV.M1		R54, R53
	;no-op trunc di R53:R52 to pdi R53:R52
		SLDDW		*-AR14[4], R55:R54
		SNOP		5
		SMVAGA36.M1		R55:R54, OR11
		SNOP		1
		SADDA.M1		R53:R52,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R53:R52
		SNOP		1
		SMVAAGH.M1		OR11, R53:R52
		SNOP		1
		SMVAGA36.M1		R53:R52, AR10
		SNOP		1
		SLDH		*AR10, R52
		SNOP		5
		SSHFLL		16, R52, R52
		SSHFAR		16, R52, R52
		SMULIS.M1		R52,R10,R11
		SNOP		2
		SLDW		*-AR14[4], R48
		SNOP		5
		SLDW		*-AR14[4], R52
		SNOP		5
		SSHFAR		31, R52, R52
		SMOV.M1		R52, R49
		SADD.M1		R48,R48,R52
		SLTU		R52, R48, R54
		SADD.M1		R49,R49,R53
		SADD.M1		R53,R54,R54
		SMOV.M1		R54, R53
	;no-op trunc di R53:R52 to pdi R53:R52
		SLDDW		*-AR14[5], R55:R54
		SNOP		5
		SMVAGA36.M1		R55:R54, OR11
		SNOP		1
		SADDA.M1		R53:R52,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R53:R52
		SNOP		1
		SMVAAGH.M1		OR11, R53:R52
		SNOP		1
		SMVAGA36.M1		R53:R52, AR10
		SNOP		1
		SLDH		*AR10, R52
		SNOP		5
		SSHFLL		16, R52, R10
		SSHFAR		16, R10, R10
		SLDW		*-AR14[3], R53
		SNOP		5
		SLDW		*-AR14[4], R52
		SNOP		5
		SSUB.M1		R52, R53, R52
		SMOV.M1		R52, R20
		SSHFAR		31, R52, R52
		SMOV.M1		R52, R21
		SMOVIL		1, R54
		SMOVIL		0, R55
		SADD.M1		R54,R20,R52
		SLTU		R52, R20, R12
		SADD.M1		R55,R21,R53
		SADD.M1		R53,R12,R54
		SMOV.M1		R54, R53
		SADD.M1		R52,R52,R54
		SLTU		R54, R52, R12
		SADD.M1		R53,R53,R55
		SADD.M1		R55,R12,R52
		SMOV.M1		R52, R55
		SMOV.M1		R54, R52
		SMOV.M1		R55, R53
	;no-op trunc di R53:R52 to pdi R53:R52
		SLDDW		*-AR14[4], R55:R54
		SNOP		5
		SMVAGA36.M1		R55:R54, OR11
		SNOP		1
		SADDA.M1		R53:R52,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R53:R52
		SNOP		1
		SMVAAGH.M1		OR11, R53:R52
		SNOP		1
		SMVAGA36.M1		R53:R52, AR10
		SNOP		1
		SLDH		*AR10, R52
		SNOP		5
		SSHFLL		16, R52, R52
		SSHFAR		16, R52, R52
		SMULIS.M1		R52,R10,R52
		SNOP		2
		SADD.M1		R52,R11,R52
		SLDW		*-AR14[5], R53
		SNOP		5
		SADD.M1		R52,R53,R52
		SSTW		R52, *-AR14[5]
	.loc 1 15 0
		SLDW		*-AR14[4], R52
		SNOP		5
		SADD.M1		2,R52,R52
		SSTW		R52, *-AR14[4]
.L3:
		SLDW		*-AR14[13], R52
		SNOP		5
		SSHFLL		1, R52, R53
		SLDW		*-AR14[4], R52
		SNOP		5
		SLT		R52, R53, R52
		SMOV.M1		R52, R0
	[R0]	SBR		.L4
		SNOP		6
	.loc 1 19 0
		SLDW		*-AR14[3], R50
		SNOP		5
		SLDW		*-AR14[3], R52
		SNOP		5
		SSHFAR		31, R52, R52
		SMOV.M1		R52, R51
		SADD.M1		R50,R50,R52
		SLTU		R52, R50, R54
		SADD.M1		R51,R51,R53
		SADD.M1		R53,R54,R54
		SMOV.M1		R54, R53
	;no-op trunc di R53:R52 to pdi R53:R52
		SLDDW		*-AR14[6], R55:R54
		SNOP		5
		SMVAGA36.M1		R55:R54, OR11
		SNOP		1
		SADDA.M1		R53:R52,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R53:R52
		SNOP		1
		SMVAAGH.M1		OR11, R53:R52
		SNOP		1
		SLDW		*-AR14[6], R54
		SNOP		5
		SSHFAR		15, R54, R54
		SMVAGA36.M1		R53:R52, AR10
		SNOP		1
		SSTH		R54, *AR10
	.loc 1 20 0
		SLDW		*-AR14[3], R22
		SNOP		5
		SLDW		*-AR14[3], R52
		SNOP		5
		SSHFAR		31, R52, R52
		SMOV.M1		R52, R23
		SMOVIL		1, R54
		SMOVIL		0, R55
		SADD.M1		R54,R22,R52
		SLTU		R52, R22, R10
		SADD.M1		R55,R23,R53
		SADD.M1		R53,R10,R54
		SMOV.M1		R54, R53
		SADD.M1		R52,R52,R54
		SLTU		R54, R52, R10
		SADD.M1		R53,R53,R55
		SADD.M1		R55,R10,R52
		SMOV.M1		R52, R55
		SMOV.M1		R54, R52
		SMOV.M1		R55, R53
	;no-op trunc di R53:R52 to pdi R53:R52
		SLDDW		*-AR14[6], R55:R54
		SNOP		5
		SMVAGA36.M1		R55:R54, OR11
		SNOP		1
		SADDA.M1		R53:R52,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R53:R52
		SNOP		1
		SMVAAGH.M1		OR11, R53:R52
		SNOP		1
		SLDW		*-AR14[5], R54
		SNOP		5
		SSHFAR		15, R54, R54
		SMVAGA36.M1		R53:R52, AR10
		SNOP		1
		SSTH		R54, *AR10
	.loc 1 12 0
		SLDW		*-AR14[3], R52
		SNOP		5
		SADD.M1		2,R52,R52
		SSTW		R52, *-AR14[3]
.L2:
		SLDW		*-AR14[14], R52
		SNOP		5
		SSHFLL		1, R52, R53
		SLDW		*-AR14[3], R52
		SNOP		5
		SLT		R52, R53, R52
		SMOV.M1		R52, R0
	[R0]	SBR		.L5
		SNOP		6
	.loc 1 22 0
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
	.size	DSP_fir_cplx_cn, .-DSP_fir_cplx_cn
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
	.4byte	0x144
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSP_fir_cplx_cn.c"
	.string	"/cygdrive/e/project/function  demo/asm/dsp_fir_gen/Debug"
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.string	"DSP_fir_cplx_cn"
	.byte	0x1
	.byte	0x2
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x122
	.byte	0x3
	.string	"x"
	.byte	0x1
	.byte	0x3
	.4byte	0x122
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x3
	.string	"h"
	.byte	0x1
	.byte	0x4
	.4byte	0x122
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x3
	.string	"r"
	.byte	0x1
	.byte	0x5
	.4byte	0x13a
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x3
	.string	"nh"
	.byte	0x1
	.byte	0x6
	.4byte	0x140
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x3
	.string	"nr"
	.byte	0x1
	.byte	0x7
	.4byte	0x140
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x4
	.string	"i"
	.byte	0x1
	.byte	0xa
	.4byte	0x140
	.byte	0x2
	.byte	0x91
	.byte	0x74
	.byte	0x4
	.string	"j"
	.byte	0x1
	.byte	0xa
	.4byte	0x140
	.byte	0x2
	.byte	0x91
	.byte	0x70
	.byte	0x4
	.string	"imag"
	.byte	0x1
	.byte	0xb
	.4byte	0x140
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x4
	.string	"real"
	.byte	0x1
	.byte	0xb
	.4byte	0x140
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x5
	.byte	0x8
	.4byte	0x128
	.byte	0x6
	.4byte	0x12d
	.byte	0x7
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.byte	0x5
	.byte	0x8
	.4byte	0x12d
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
