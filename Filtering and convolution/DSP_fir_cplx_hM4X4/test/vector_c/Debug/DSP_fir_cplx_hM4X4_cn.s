	.file	"DSP_fir_cplx_hM4X4_cn.c"
.text;
.Ltext0:
	.section	.text.DSP_fir_cplx_hM4X4_cn,"ax",@progbits
	.align	2
	.global	DSP_fir_cplx_hM4X4_cn
	.type	DSP_fir_cplx_hM4X4_cn, @function
DSP_fir_cplx_hM4X4_cn:
.LFB0:
	.file 1 "../DSP_fir_cplx_hM4X4_cn.c"
	.loc 1 8 0
.LVL0:
	.loc 1 8 0
		SMVAGA36.M1		R15:R14, AR0
	|	SSHFLL		1, R18, R18
.LVL1:
	.loc 1 11 0
		SMOVIL		0, R42
	|	SADD.M2		-1,R18,R45
	|	SMVAGA36.M1		R13:R12, AR2
		SLT		R42, R18, R0
	|	SMVAAGL.M1		AR0, R43:R42
	|	SADDA.M2		2,AR0,OR0
		SSHFLL		1, R16, R1
	|[!R0]	SBR		.L1
	.loc 1 1 0
		SADD.M1		-1,R1,R50
	|	SMVAAGH.M2		AR0, R43:R42
	|	SSHFLR		1, R45, R2
		SSHFLR		1, R50, R3
	|	SMVAAGL.M1		OR0, R49:R48
		SADD.M2		1,R3,R55
	|	SSHFLL		1, R2, R46
		SADD.M2		6,R42,R44
	|	SMOV.M1		R43, R51
	|	SSHFLL		2, R2, R47
		SSHFLL		1, R55, R43
	|	SADD.M1		R47,R44,R57
	|	SMVAAGH.M2		OR0, R49:R48
		SLTU		R46, R2, R8
	;; condjump to .L1 occurs
		SLTU		R55, R3, R9
		SLTU		R44, R42, R12
.LVL2:
		SLTU		R47, R46, R13
	|	SADD.M2		R51,R12,R52
		SSHFLL		1, R8, R14
.LVL3:
		SLTU		R43, R55, R15
	|	SADD.M2		R14,R13,R16
.LVL4:
		SSHFLL		1, R9, R17
	|	SADD.M2		R16,R52,R19
		SADD.M2		R17,R15,R20
	|	SSHFLL		2, R55, R26
		SLTU		R57, R44, R21
		SLTU		R26, R43, R22
	|	SADD.M2		R19,R21,R58
		SSHFLL		1, R20, R23
		SMOVIL		0, R53
	|	SADD.M2		R23,R22,R56
		SLT		R53, R1, R1
.LVL5:
.L3:
	.loc 1 14 0
	[!R1]	SBR		.L12
	|	SMVAGA36.M1		R11:R10, AR0
	|	SMOVIL		0, R42
		SMOVIL		0, R3
		SMOVIL		0, R52
		SMOVIL		0, R51
		SNOP		3
	;; condjump to .L12 occurs
.LVL6:
.L4:
	.loc 1 1 0
		SMVAAA.M2		AR2, OR11
	|	SMOV.M1		R42, R46
	|	SNEG		R42, R44
		SMOV.M1		R3, R47
	|	SMOVIL		0, R28
	|	SMVAAA.M2		AR0, OR12
	;no-op trunc di R47:R46 to pdi R47:R46
		SADDA.M2		R47:R46,OR11,AR10
	|	SLTU		R28, R44, R54
	|	SADD.M1		4,R42,R27
		SNEG		R3, R59
	.loc 1 15 0
		SLDH		*AR10, R61
	|	SSUB.M2		R54, R59, R45
	|	SLTU		R27, R42, R60
	|	SMOV.M1		R27, R42
	.loc 1 1 0
	;no-op trunc di R45:R44 to pdi R45:R44
	.loc 1 15 0
		SLDH		*+AR10[1], R18
	|	SADDA.M2		R45:R44,OR12,AR10
	|	SADD.M1		R3,R60,R3
		SNOP		1
		SLDH		*AR10, R50
		SLDH		*+AR10[1], R44
		SNOP		1
		SSHFLL		16, R61, R0
		SSHFAR		16, R0, R2
	.loc 1 14 0
		SEQ		R27, R26, R0
	[R0]	SEQ		R3, R56, R0
	.loc 1 15 0
		SSHFLL		16, R18, R45
		SSHFLL		16, R50, R46
		SSHFLL		16, R44, R47
		SSHFAR		16, R45, R55
	.loc 1 14 0
	[!R0]	SBR		.L4
	|	SSHFAR		16, R46, R43
	.loc 1 15 0
		SSHFAR		16, R47, R8
	|	SMULIS.M1		R43,R2,R9
	|	SMULIS.M2		R55,R43,R12
		SMULIS.M1		R8,R55,R13
	|	SMULIS.M2		R8,R2,R14
	.loc 1 16 0
		SNOP		2
	.loc 1 15 0
		SSUB.M2		R13, R9, R15
	|	SADD.M1		R14,R12,R16
		SADD.M2		R15,R52,R52
	|	SADD.M1		R16,R51,R51
	;; condjump to .L4 occurs
.LVL7:
		SADD.M1		4,R48,R17
	|	SMVAGA36.M2		R49:R48, AR10
	|	SSHFLR		15, R52, R25
		SLTU		R17, R48, R19
	|	SADD.M1		4,R10,R20
		SADD.M2		R49,R19,R49
	|	SEQ		R17, R57, R2
	|	SMOV.M1		R17, R48
	|	SSTH		R25, *-AR10[1]
	.loc 1 11 0
	[R2]	SEQ		R49, R58, R2
	[!R2]	SBR		.L3
	|	SLTU		R20, R10, R21
	|	SMOV.M2		R20, R10
		SADD.M2		R11,R21,R11
	|	SSHFLR		15, R51, R24
	.loc 1 19 0
		SSTH		R24, *AR10
		SNOP		4
	.loc 1 11 0
	;; condjump to .L3 occurs
.LVL8:
.L1:
		SBR		R62
		SNOP		6
	;; return occurs
.LVL9:
.L12:
		SADD.M1		4,R48,R17
	|	SMVAGA36.M2		R49:R48, AR10
	|	SMOVIL		0, R24
		SLTU		R17, R48, R19
	|	SADD.M1		4,R10,R20
		SADD.M2		R49,R19,R49
	|	SEQ		R17, R57, R2
	|	SMOV.M1		R17, R48
	|	SSTH		R24, *AR10
	[R2]	SEQ		R49, R58, R2
	[!R2]	SBR		.L3
	|	SLTU		R20, R10, R21
	|	SMOV.M2		R20, R10
		SADD.M2		R11,R21,R11
	|	SMOVIL		0, R25
	.loc 1 18 0
		SSTH		R25, *-AR10[1]
		SNOP		4
	.loc 1 11 0
	;; condjump to .L3 occurs
		SBR		.L1
		SNOP		6
	;; jump to .L1 occurs
.LFE0:
	.size	DSP_fir_cplx_hM4X4_cn, .-DSP_fir_cplx_hM4X4_cn
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
	.align	3
.LEFDE0:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x164
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSP_fir_cplx_hM4X4_cn.c"
	.string	"/cygdrive/e/project/function  demo/function/DSP_fir_cplx_hM4X4/Debug"
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.string	"DSP_fir_cplx_hM4X4_cn"
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x142
	.byte	0x3
	.string	"x"
	.byte	0x1
	.byte	0x2
	.4byte	0x142
	.4byte	.LLST0
	.byte	0x3
	.string	"h"
	.byte	0x1
	.byte	0x3
	.4byte	0x142
	.4byte	.LLST1
	.byte	0x3
	.string	"r"
	.byte	0x1
	.byte	0x4
	.4byte	0x15a
	.4byte	.LLST2
	.byte	0x3
	.string	"nh"
	.byte	0x1
	.byte	0x5
	.4byte	0x160
	.4byte	.LLST3
	.byte	0x3
	.string	"nr"
	.byte	0x1
	.byte	0x6
	.4byte	0x160
	.4byte	.LLST4
	.byte	0x4
	.string	"i"
	.byte	0x1
	.byte	0x9
	.4byte	0x160
	.4byte	.LLST5
	.byte	0x4
	.string	"j"
	.byte	0x1
	.byte	0x9
	.4byte	0x160
	.4byte	.LLST6
	.byte	0x4
	.string	"imag"
	.byte	0x1
	.byte	0xa
	.4byte	0x160
	.4byte	.LLST7
	.byte	0x4
	.string	"real"
	.byte	0x1
	.byte	0xa
	.4byte	0x160
	.4byte	.LLST8
	.byte	0
	.byte	0x5
	.byte	0x8
	.4byte	0x148
	.byte	0x6
	.4byte	0x14d
	.byte	0x7
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.byte	0x5
	.byte	0x8
	.4byte	0x14d
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
	.byte	0xa
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
	.byte	0x6
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
	.byte	0x6
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
	.llong	.LVL0
	.llong	.LVL5
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL5
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL2
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL2
	.llong	.LFE0
	.2byte	0x1
	.byte	0x52
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL3
	.llong	.LVL5
	.2byte	0x1
	.byte	0x50
	.llong	.LVL5
	.llong	.LFE0
	.2byte	0x4
	.byte	0x92
	.byte	0x50
	.byte	0x7e
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL4
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL1
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL5
	.llong	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL9
	.llong	.LFE0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL5
	.llong	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL7
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.byte	0x43
	.llong	.LVL9
	.llong	.LFE0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL5
	.llong	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL7
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.byte	0x44
	.llong	.LVL9
	.llong	.LFE0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
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
