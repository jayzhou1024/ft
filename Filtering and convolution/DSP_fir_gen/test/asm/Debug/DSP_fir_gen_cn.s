	.file	"DSP_fir_gen_cn.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSP_fir_gen_cn,"ax",@progbits
	.align	2
	.global	DSP_fir_gen_cn
	.type	DSP_fir_gen_cn, @function
DSP_fir_gen_cn:
.LFB3:
	.file 1 "../DSP_fir_gen_cn.c"
	.loc 1 15 0
	.cfi_startproc
.LVL0:
	.loc 1 17 0
		SMOVIL		0, R42
	|	SMVAGA36.M1		R11:R10, OR0
	|	SADD.M2		2,R14,R56
		SMOVIL		0, R43
	|	SADD.M2		2,R12,R2
		SLT		R42, R18, R0
	|	SADDA.M2		-2,OR0,AR0
	|	SADD.M1		-1,R18,R18
.LVL1:
		SLT		R43, R16, R1
	|[!R0]	SBR		.L1
	|	SADD.M1		-1,R16,R3
	.loc 1 8 0
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
.LVL2:
		SLTU		R44, R3, R16
	|	SADD.M2		R10,R8,R17
	;; condjump to .L1 occurs
.LVL3:
	.loc 1 19 0
	[!R1]	SBR		.L12
	|	SLTU		R57, R56, R58
	|	SADD.M2		R16,R11,R19
	.loc 1 8 0
		SADD.M2		R17,R58,R21
	|	SLTU		R54, R2, R20
		SADD.M2		R19,R20,R55
		SNOP		4
.LVL4:
	.loc 1 19 0
	;; condjump to .L12 occurs
.LVL5:
.L6:
		SMOV.M2		R12, R42
	|	SMOV.M1		R13, R43
	|	SMOVIL		0, R2
		SMOV.M2		R46, R44
	|	SMOV.M1		R47, R45
.LVL6:
.L4:
		SADD.M1		2,R44,R22
	|	SMVAGA36.M2		R43:R42, AR12
		SLTU		R22, R44, R24
	|	SMOV.M1		R22, R44
		SADD.M2		R45,R24,R45
	|	SLDH		*AR12, R25
	|	SADD.M1		2,R42,R26
	.loc 1 8 0 discriminator 2
		SMVAGA36.M2		R45:R44, AR10
	|	SLTU		R26, R42, R53
	|	SMOV.M1		R26, R42
		SADD.M1		R43,R53,R43
	|	SEQ		R26, R54, R0
	.loc 1 20 0 discriminator 2
		SLDH		*AR10, R28
	|[R0]	SEQ		R43, R55, R0
	.loc 1 19 0 discriminator 2
		SNOP		2
	.loc 1 20 0 discriminator 2
		SSHFLL		16, R25, R27
		SSHFAR		16, R27, R60
	.loc 1 19 0 discriminator 2
	[!R0]	SBR		.L4
	.loc 1 20 0 discriminator 2
		SSHFLL		16, R28, R29
		SSHFAR		16, R29, R59
		SMULIS.M2		R60,R59,R61
		SNOP		2
		SADD.M2		R61,R2,R2
	;; condjump to .L4 occurs
.LVL7:
	.loc 1 8 0
		SMVAGA36.M2		R15:R14, AR10
	|	SLTU		R56, R14, R43
	|	SMOV.M1		R56, R14
		SADD.M1		R15,R43,R15
	|	SEQ		R14, R57, R0
	.loc 1 17 0
	[R0]	SEQ		R15, R21, R0
	|	SADD.M2		2,R46,R56
	[R0]	SBR		.L1
	|	SLTU		R56, R46, R42
	|	SMOV.M2		R56, R46
		SSHFLR		15, R2, R51
	|	SADD.M2		R47,R42,R47
	.loc 1 21 0
		SSTH		R51, *AR10
		SNOP		4
	.loc 1 17 0
	;; condjump to .L1 occurs
.LVL8:
.L13:
	.loc 1 19 0
	[R1]	SBR		.L6
	|	SADD.M2		2,R14,R56
		SNOP		6
.LVL9:
	;; condjump to .L6 occurs
.L12:
	.loc 1 8 0
		SMVAGA36.M2		R15:R14, AR10
	|	SLTU		R56, R14, R43
	|	SMOV.M1		R56, R14
		SADD.M1		R15,R43,R15
	|	SEQ		R14, R57, R0
	.loc 1 17 0
	[R0]	SEQ		R15, R21, R0
	|	SADD.M2		2,R46,R56
	[!R0]	SBR		.L13
	|	SLTU		R56, R46, R42
	|	SMOV.M2		R56, R46
		SADD.M2		R47,R42,R47
	|	SMOVIL		0, R51
	.loc 1 21 0
		SSTH		R51, *AR10
		SNOP		4
	.loc 1 17 0
	;; condjump to .L13 occurs
.LVL10:
.L1:
		SBR		R62
		SNOP		6
	;; return occurs
	.cfi_endproc
.LFE3:
	.size	DSP_fir_gen_cn, .-DSP_fir_gen_cn
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x124
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF11
	.byte	0x1
	.4byte	.LASF12
	.4byte	.LASF13
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
	.4byte	.LASF14
	.byte	0x1
	.byte	0x8
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0x116
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0x9
	.4byte	0x116
	.4byte	.LLST0
	.uleb128 0x6
	.string	"h"
	.byte	0x1
	.byte	0xa
	.4byte	0x116
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x5
	.string	"r"
	.byte	0x1
	.byte	0xb
	.4byte	0x121
	.4byte	.LLST1
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0xc
	.4byte	0x62
	.4byte	.LLST2
	.uleb128 0x5
	.string	"nr"
	.byte	0x1
	.byte	0xd
	.4byte	0x62
	.4byte	.LLST3
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x10
	.4byte	0x62
	.4byte	.LLST4
	.uleb128 0x7
	.string	"j"
	.byte	0x1
	.byte	0x10
	.4byte	0x62
	.4byte	.LLST5
	.uleb128 0x7
	.string	"sum"
	.byte	0x1
	.byte	0x10
	.4byte	0x62
	.4byte	.LLST6
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.4byte	0x11c
	.uleb128 0x9
	.4byte	0x5b
	.uleb128 0x8
	.byte	0x8
	.4byte	0x5b
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
	.uleb128 0xa
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.llong	.LVL0
	.llong	.LVL2
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL2
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL5
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL5
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL3
	.llong	.LFE3
	.2byte	0x3
	.byte	0x83
	.sleb128 1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL1
	.llong	.LFE3
	.2byte	0x4
	.byte	0x92
	.uleb128 0x22
	.sleb128 1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL4
	.llong	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL9
	.llong	.LVL10
	.2byte	0x2
	.byte	0x30
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
	.llong	.LVL4
	.llong	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL7
	.llong	.LVL8
	.2byte	0x1
	.byte	0x62
	.llong	.LVL9
	.llong	.LVL10
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
.LASF7:
	.string	"long long int"
.LASF3:
	.string	"unsigned int"
.LASF11:
	.string	"GNU C 4.7.0"
.LASF4:
	.string	"long unsigned int"
.LASF0:
	.string	"long long unsigned int"
.LASF12:
	.string	"../DSP_fir_gen_cn.c"
.LASF14:
	.string	"DSP_fir_gen_cn"
.LASF10:
	.string	"char"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"long int"
.LASF2:
	.string	"short unsigned int"
.LASF5:
	.string	"signed char"
.LASF6:
	.string	"short int"
.LASF13:
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSP_fir_gen/test/asm/Debug"
.LASF9:
	.string	"sizetype"
