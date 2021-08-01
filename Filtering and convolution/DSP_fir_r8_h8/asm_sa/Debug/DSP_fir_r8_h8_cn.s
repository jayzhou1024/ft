	.file	"DSP_fir_r8_h8_cn.c"
.text;
.Ltext0:
	.section	.text.DSP_fir_r8_h8_cn,"ax",@progbits
	.align	2
	.global	DSP_fir_r8_h8_cn
	.type	DSP_fir_r8_h8_cn, @function
DSP_fir_r8_h8_cn:
.LFB0:
	.file 1 "../DSP_fir_r8_h8_cn.c"
	.loc 1 72 0
.LVL0:
	.loc 1 66 0
		SMVAGA36.M1		R11:R10, OR0
	|	SMOVIL		0, R42
	|	SADD.M2		2,R14,R59
		SMVAGA36.M1		R13:R12, OR1
	|	SLT		R42, R16, R0
	|	SADD.M2		-1,R16,R16
.LVL1:
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
.LVL2:
		SADD.M1		16,R46,R57
		SLTU		R57, R46, R58
	|	SMOV.M2		R48, R44
	|	SMOV.M1		R49, R45
		SADD.M2		R47,R58,R11
	|	SMOV.M1		R46, R42
		SMOV.M2		R47, R43
.LVL3:
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
	.loc 1 78 0
		SLDH		*AR12, R12
		SLDH		*AR10, R13
		SNOP		4
		SSHFLL		16, R12, R17
	.loc 1 77 0
	[!R0]	SBR		.L3
	|	SSHFLL		16, R13, R18
	.loc 1 78 0
		SSHFAR		16, R17, R19
		SSHFAR		16, R18, R20
		SMULIS.M2		R20,R19,R21
		SNOP		2
		SADD.M2		R21,R52,R52
	;; condjump to .L3 occurs
.LVL4:
		SLTU		R59, R14, R22
	|	SMVAGA36.M2		R15:R14, AR10
	|	SADD.M1		2,R46,R24
	.loc 1 75 0
		SEQ		R59, R60, R1
	|	SADD.M1		R15,R22,R15
	[R1]	SEQ		R15, R9, R1
	|	SMOV.M2		R59, R14
	|	SMOV.M1		R48, R44
	[R1]	SBR		.L1
	|	SLTU		R24, R46, R26
	|	SMOV.M2		R24, R46
	|	SADD.M1		2,R59,R59
.LVL5:
	[!R1]	SBR		.L3
	|	SADD.M2		16,R46,R57
	|	SSHFAR		15, R52, R23
	|	SADD.M1		R47,R26,R47
	.loc 1 66 0
		SLTU		R57, R46, R58
	|	SSTH		R23, *AR10
	|	SMOV.M2		R49, R45
	|	SMOV.M1		R46, R42
		SADD.M2		R47,R58,R11
	|	SMOV.M1		R47, R43
	|	SMOVIL		0, R52
		SNOP		4
	.loc 1 75 0
	;; condjump to .L1 occurs
	;; jump to .L3 occurs
.L1:
		SBR		R62
		SNOP		6
	;; return occurs
.LVL6:
.L13:
		SBR		R62
		SNOP		6
	;; return occurs
.LFE0:
	.size	DSP_fir_r8_h8_cn, .-DSP_fir_r8_h8_cn
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
	.4byte	0x142
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSP_fir_r8_h8_cn.c"
	.string	"/cygdrive/c/Users/zhou hang/OneDrive/\346\241\214\351\235\242/DSP_fir_/DSP_fir_r8_h8/Debug"
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.string	"DSP_fir_r8_h8_cn"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x120
	.byte	0x3
	.string	"x"
	.byte	0x1
	.byte	0x43
	.4byte	0x120
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x44
	.4byte	0x120
	.4byte	.LLST0
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x45
	.4byte	0x138
	.4byte	.LLST1
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x46
	.4byte	0x13e
	.4byte	.LLST2
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0x49
	.4byte	0x13e
	.4byte	.LLST3
	.byte	0x5
	.string	"j"
	.byte	0x1
	.byte	0x49
	.4byte	0x13e
	.4byte	.LLST4
	.byte	0x5
	.string	"sum"
	.byte	0x1
	.byte	0x49
	.4byte	0x13e
	.4byte	.LLST5
	.byte	0
	.byte	0x6
	.byte	0x8
	.4byte	0x126
	.byte	0x7
	.4byte	0x12b
	.byte	0x8
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.byte	0x6
	.byte	0x8
	.4byte	0x12b
	.byte	0x8
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
	.byte	0xa
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
	.byte	0x6
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
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.llong	.LVL3
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL3
	.llong	.LVL6
	.2byte	0x2
	.byte	0x90
	.byte	0x51
	.llong	.LVL6
	.llong	.LFE0
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	0
	.llong	0
.LLST1:
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
	.llong	.LVL6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	.LVL6
	.llong	.LFE0
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL1
	.llong	.LFE0
	.2byte	0x4
	.byte	0x92
	.byte	0x20
	.byte	0x1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL2
	.llong	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL5
	.llong	.LFE0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL6
	.llong	.LFE0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL2
	.llong	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL4
	.llong	.LVL5
	.2byte	0x2
	.byte	0x90
	.byte	0x44
	.llong	.LVL5
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
