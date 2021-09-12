	.file	"DSP_fir_cplx_hM4X4_cn.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSP_fir_cplx_hM4X4_cn,"ax",@progbits
	.align	2
	.global	DSP_fir_cplx_hM4X4_cn
	.type	DSP_fir_cplx_hM4X4_cn, @function
DSP_fir_cplx_hM4X4_cn:
.LFB0:
	.file 1 "../DSP_fir_cplx_hM4X4_cn.c"
	.loc 1 8 0
	.cfi_startproc
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
	.loc 1 14 0 discriminator 1
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
	.loc 1 1 0 discriminator 2
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
	.loc 1 15 0 discriminator 2
		SLDH		*AR10, R61
	|	SSUB.M2		R54, R59, R45
	|	SLTU		R27, R42, R60
	|	SMOV.M1		R27, R42
	.loc 1 1 0 discriminator 2
	;no-op trunc di R45:R44 to pdi R45:R44
	.loc 1 15 0 discriminator 2
		SLDH		*+AR10[1], R18
	|	SADDA.M2		R45:R44,OR12,AR10
	|	SADD.M1		R3,R60,R3
		SNOP		1
		SLDH		*AR10, R50
		SLDH		*+AR10[1], R44
		SNOP		1
		SSHFLL		16, R61, R0
		SSHFAR		16, R0, R2
	.loc 1 14 0 discriminator 2
		SEQ		R27, R26, R0
	[R0]	SEQ		R3, R56, R0
	.loc 1 15 0 discriminator 2
		SSHFLL		16, R18, R45
		SSHFLL		16, R50, R46
		SSHFLL		16, R44, R47
		SSHFAR		16, R45, R55
	.loc 1 14 0 discriminator 2
	[!R0]	SBR		.L4
	|	SSHFAR		16, R46, R43
	.loc 1 15 0 discriminator 2
		SSHFAR		16, R47, R8
	|	SMULIS.M1		R43,R2,R9
	|	SMULIS.M2		R55,R43,R12
		SMULIS.M1		R8,R55,R13
	|	SMULIS.M2		R8,R2,R14
	.loc 1 16 0 discriminator 2
		SNOP		2
	.loc 1 15 0 discriminator 2
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
	.cfi_endproc
.LFE0:
	.size	DSP_fir_cplx_hM4X4_cn, .-DSP_fir_cplx_hM4X4_cn
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xea
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF3
	.byte	0x1
	.4byte	.LASF4
	.4byte	.LASF5
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.4byte	.LASF6
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0xce
	.uleb128 0x3
	.string	"x"
	.byte	0x1
	.byte	0x2
	.4byte	0xce
	.4byte	.LLST0
	.uleb128 0x3
	.string	"h"
	.byte	0x1
	.byte	0x3
	.4byte	0xce
	.4byte	.LLST1
	.uleb128 0x3
	.string	"r"
	.byte	0x1
	.byte	0x4
	.4byte	0xe0
	.4byte	.LLST2
	.uleb128 0x3
	.string	"nh"
	.byte	0x1
	.byte	0x5
	.4byte	0xe6
	.4byte	.LLST3
	.uleb128 0x3
	.string	"nr"
	.byte	0x1
	.byte	0x6
	.4byte	0xe6
	.4byte	.LLST4
	.uleb128 0x4
	.string	"i"
	.byte	0x1
	.byte	0x9
	.4byte	0xe6
	.4byte	.LLST5
	.uleb128 0x4
	.string	"j"
	.byte	0x1
	.byte	0x9
	.4byte	0xe6
	.4byte	.LLST6
	.uleb128 0x5
	.4byte	.LASF0
	.byte	0x1
	.byte	0xa
	.4byte	0xe6
	.4byte	.LLST7
	.uleb128 0x5
	.4byte	.LASF1
	.byte	0x1
	.byte	0xa
	.4byte	0xe6
	.4byte	.LLST8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.4byte	0xd4
	.uleb128 0x7
	.4byte	0xd9
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x8
	.4byte	0xd9
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.llong	.LVL0
	.llong	.LVL5
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL5
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL2
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
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
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL3
	.llong	.LVL5
	.2byte	0x1
	.byte	0x50
	.llong	.LVL5
	.llong	.LFE0
	.2byte	0x4
	.byte	0x92
	.uleb128 0x50
	.sleb128 -2
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL4
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL1
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"GNU C 4.7.0"
.LASF1:
	.string	"real"
.LASF2:
	.string	"short int"
.LASF0:
	.string	"imag"
.LASF4:
	.string	"../DSP_fir_cplx_hM4X4_cn.c"
.LASF6:
	.string	"DSP_fir_cplx_hM4X4_cn"
.LASF5:
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSP_fir_cplx_hM4X4/test/asm/Debug"
