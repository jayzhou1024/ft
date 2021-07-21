	.file	"DSPF_sp_fir_r2_cn.c"
.text;
.Ltext0:
	.section	.text.DSPF_sp_fir_r2_cn,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_r2_cn
	.type	DSPF_sp_fir_r2_cn, @function
DSPF_sp_fir_r2_cn:
.LFB0:
	.file 1 "../DSPF_sp_fir_r2_cn.c"
	.loc 1 3 0
.LVL0:
	.loc 1 7 0
		SMOVIL		0, R42
	|	SMVAGA36.M1		R11:R10, OR0
	|	SADD.M2		-1,R18,R44
		SLT		R42, R18, R0
	|	SADD.M2		-1,R16,R43
		SLT		R42, R16, R1
	|[!R0]	SBR		.L1
	|	SADDA.M2		-4,OR0,AR0
	|	SADD.M1		4,R14,R56
	.loc 1 1 0
		SSHFLL		1, R44, R49
	|	SADD.M1		4,R12,R2
		SSHFLL		1, R43, R45
		SSHFLL		2, R44, R50
	|	SMVAAGL.M2		AR0, R47:R46
		SSHFLL		2, R43, R48
	|	SADD.M1		R50,R56,R57
		SLTU		R49, R44, R3
	|	SADD.M1		R48,R2,R54
	|	SMVAAGH.M2		AR0, R47:R46
		SLTU		R45, R43, R8
	;; condjump to .L1 occurs
		SLTU		R56, R14, R53
		SLTU		R50, R49, R9
	|	SADD.M2		R15,R53,R10
.LVL1:
	.loc 1 11 0
	[!R1]	SBR		.L12
	|	SSHFLL		1, R3, R11
	.loc 1 1 0
		SLTU		R2, R12, R16
	|	SADD.M2		R11,R9,R17
.LVL2:
		SLTU		R48, R45, R18
	|	SADD.M2		R13,R16,R19
	|	SADD.M1		R17,R10,R20
.LVL3:
		SSHFLL		1, R8, R21
		SADD.M2		R21,R18,R22
	|	SLTU		R57, R56, R58
		SADD.M2		R20,R58,R26
	|	SLTU		R54, R2, R23
	|	SADD.M1		R22,R19,R24
		SADD.M2		R24,R23,R55
	;; condjump to .L12 occurs
.LVL4:
.L6:
	.loc 1 11 0
		SMOVIL		0, R25
	|	SMOV.M2		R12, R42
	|	SMOV.M1		R13, R43
		SMOV.M2		R46, R44
	|	SMOV.M1		R47, R45
	|	SMOVIH		0, R25
.LVL5:
.L4:
		SADD.M1		4,R44,R27
	|	SMVAGA36.M2		R43:R42, AR12
		SLTU		R27, R44, R29
	|	SMOV.M1		R27, R44
		SADD.M2		R45,R29,R45
	|	SLDW		*AR12, R2
	|	SADD.M1		4,R42,R59
	.loc 1 1 0
		SMVAGA36.M2		R45:R44, AR10
	|	SLTU		R59, R42, R60
	|	SMOV.M1		R59, R42
		SADD.M1		R43,R60,R43
	|	SEQ		R59, R54, R0
	.loc 1 12 0
		SLDW		*AR10, R49
	|[R0]	SEQ		R43, R55, R0
	.loc 1 11 0
		SNOP		4
	[!R0]	SBR		.L4
	.loc 1 12 0
		SFMULAS32.M2	R49, R2, R25, R25
		SNOP		5
.LVL6:
	.loc 1 11 0
	;; condjump to .L4 occurs
	.loc 1 1 0
		SMVAGA36.M2		R15:R14, AR10
	|	SLTU		R56, R14, R44
	|	SMOV.M1		R56, R14
		SADD.M1		R15,R44,R15
	|	SEQ		R14, R57, R0
	.loc 1 7 0
	[R0]	SEQ		R15, R26, R0
	|	SADD.M2		4,R46,R56
	|	SSTW		R25, *AR10
	[R0]	SBR		.L1
	|	SLTU		R56, R46, R42
	|	SMOV.M2		R56, R46
		SADD.M2		R47,R42,R47
		SNOP		5
	;; condjump to .L1 occurs
.LVL7:
.L13:
	.loc 1 11 0
	[R1]	SBR		.L6
	|	SADD.M2		4,R14,R56
		SNOP		6
.LVL8:
	;; condjump to .L6 occurs
.L12:
	.loc 1 1 0
		SMVAGA36.M2		R15:R14, AR10
	|	SLTU		R56, R14, R44
	|	SMOV.M1		R56, R14
		SADD.M1		R15,R44,R15
	|	SEQ		R14, R57, R0
	.loc 1 7 0
	[R0]	SEQ		R15, R26, R0
	|	SADD.M2		4,R46,R56
	[!R0]	SBR		.L13
	|	SMOVIL		0, R25
		SLTU		R56, R46, R42
	|	SMOV.M2		R56, R46
		SADD.M2		R47,R42,R47
	|	SMOVIH		0, R25
	.loc 1 14 0
		SSTW		R25, *AR10
		SNOP		3
	.loc 1 7 0
	;; condjump to .L13 occurs
.LVL9:
.L1:
		SBR		R62
		SNOP		6
	;; return occurs
.LFE0:
	.size	DSPF_sp_fir_r2_cn, .-DSPF_sp_fir_r2_cn
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
	.4byte	0x178
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSPF_sp_fir_r2_cn.c"
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSPF_sp_fir_gen_r2/test/asm/Debug"
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.string	"DSPF_sp_fir_r2_cn"
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x155
	.byte	0x3
	.string	"x"
	.byte	0x1
	.byte	0x1
	.4byte	0x155
	.4byte	.LLST0
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x1
	.4byte	0x155
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.string	"y"
	.byte	0x1
	.byte	0x2
	.4byte	0x169
	.4byte	.LLST1
	.byte	0x3
	.string	"nh"
	.byte	0x1
	.byte	0x2
	.4byte	0x16f
	.4byte	.LLST2
	.byte	0x3
	.string	"ny"
	.byte	0x1
	.byte	0x2
	.4byte	0x16f
	.4byte	.LLST3
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0x4
	.4byte	0x174
	.4byte	.LLST4
	.byte	0x5
	.string	"j"
	.byte	0x1
	.byte	0x4
	.4byte	0x174
	.4byte	.LLST5
	.byte	0x5
	.string	"sum"
	.byte	0x1
	.byte	0x5
	.4byte	0x160
	.4byte	.LLST6
	.byte	0
	.byte	0x6
	.byte	0x8
	.4byte	0x15b
	.byte	0x7
	.4byte	0x160
	.byte	0x8
	.byte	0x4
	.byte	0x4
	.string	"float"
	.byte	0x6
	.byte	0x8
	.4byte	0x160
	.byte	0x7
	.4byte	0x174
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
	.byte	0x6
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
	.llong	.LVL1
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL1
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.byte	0x50
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL4
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL2
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL2
	.llong	.LVL4
	.2byte	0x4
	.byte	0x92
	.byte	0x3b
	.byte	0x1
	.byte	0x9f
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
.LLST3:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL3
	.llong	.LVL4
	.2byte	0x4
	.byte	0x92
	.byte	0x3c
	.byte	0x1
	.byte	0x9f
	.llong	.LVL4
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL4
	.llong	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL8
	.llong	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL4
	.llong	.LVL5
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x2
	.byte	0x90
	.byte	0x29
	.llong	.LVL8
	.llong	.LVL9
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
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
