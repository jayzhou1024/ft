	.file	"DSPF_sp_fir_cplx_cn.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSPF_sp_fir_cplx_cn,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_cplx_cn
	.type	DSPF_sp_fir_cplx_cn, @function
DSPF_sp_fir_cplx_cn:
.LFB0:
	.file 1 "../DSPF_sp_fir_cplx_cn.c"
	.loc 1 3 0
	.cfi_startproc
.LVL0:
	.loc 1 3 0
		SMVAGA36.M1		R15:R14, AR0
	|	SSHFLL		1, R18, R18
.LVL1:
	.loc 1 6 0
		SMOVIL		0, R42
	|	SADD.M2		-1,R18,R44
	|	SMVAGA36.M1		R13:R12, AR2
		SLT		R42, R18, R0
	|	SMVAAGL.M1		AR0, R43:R42
	|	SADDA.M2		4,AR0,OR0
		SSHFLL		1, R16, R1
	|[!R0]	SBR		.L1
	.loc 1 1 0
		SMVAAGH.M2		AR0, R43:R42
	|	SADD.M1		-1,R1,R48
	|	SSHFLR		1, R44, R2
		SSHFLR		1, R48, R3
	|	SMVAAGL.M1		OR0, R51:R50
		SADD.M2		1,R3,R57
	|	SSHFLL		2, R2, R47
		SMOV.M2		R43, R53
	|	SSHFLL		1, R2, R43
	|	SADD.M1		12,R42,R45
		SSHFLL		1, R57, R46
	|	SMVAAGH.M2		OR0, R51:R50
		SLTU		R43, R2, R52
	;; condjump to .L1 occurs
		SLTU		R57, R3, R8
		SLTU		R47, R43, R9
		SSHFLL		1, R52, R12
.LVL2:
		SLTU		R46, R57, R49
	|	SADD.M2		R12,R9,R13
		SSHFLL		1, R8, R14
.LVL3:
		SSHFLL		3, R2, R15
	|	SADD.M2		R14,R49,R16
.LVL4:
		SSHFLL		2, R57, R17
	|	SADD.M2		R15,R45,R60
		SLTU		R45, R42, R19
		SLTU		R15, R47, R20
	|	SADD.M2		R53,R19,R21
		SSHFLL		1, R13, R22
		SLTU		R17, R46, R23
	|	SADD.M2		R22,R20,R24
		SSHFLL		1, R16, R25
	|	SADD.M2		R24,R21,R26
		SADD.M2		R25,R23,R27
	|	SSHFLL		3, R57, R53
		SLTU		R60, R45, R28
		SLTU		R53, R17, R29
	|	SADD.M2		R26,R28,R61
		SSHFLL		1, R27, R54
		SMOVIL		0, R55
	|	SADD.M2		R54,R29,R59
		SMOVIL		-2147483648, R58
		SLT		R55, R1, R1
		SMOVIH		-2147483648, R58
.LVL5:
.L3:
	.loc 1 10 0 discriminator 1
	[!R1]	SBR		.L12
	|	SMOVIL		0, R18
	|	SMVAGA36.M1		R11:R10, AR0
		SMOVIH		0, R18
		SMOVIL		0, R42
	|	SMOV.M2		R18, R2
		SMOVIL		0, R52
		SNOP		3
	;; condjump to .L12 occurs
.LVL6:
.L4:
	.loc 1 1 0 discriminator 2
		SADD.M1		4,R10,R44
	|	SMVAAA.M2		AR2, OR11
	|	SNEG		R42, R0
		SLTU		R44, R10, R56
	|	SMOV.M1		R42, R48
	|	SMVAAA.M2		AR0, OR13
		SADD.M1		R11,R56,R45
	|	SNEG		R52, R3
		SMOV.M2		R52, R49
	|	SMVAGA36.M1		R45:R44, AR4
	;no-op trunc di R49:R48 to pdi R49:R48
		SADDA.M1		R49:R48,OR11,AR10
	|	SMOVIL		0, R48
	|	SMOV.M2		R0, R46
		SLTU		R48, R0, R57
	|	SMVAAA.M1		AR4, OR12
	|	SADD.M2		8,R42,R44
		SSUB.M2		R57, R3, R47
	|	SLDW		*+AR10[1], R8
	|	SEQ		R44, R53, R0
	;no-op trunc di R47:R46 to pdi R47:R46
		SADDA.M1		R47:R46,OR12,AR12
	|	SLDW		*AR10, R9
	|	SADDA.M2		R47:R46,OR13,AR10
	|	SLTU		R44, R42, R47
		SNOP		1
	.loc 1 11 0 discriminator 2
		SLDW		*AR12, R12
	|	SADD.M2		R52,R47,R52
	|	SMOV.M1		R44, R42
		SLDW		*AR10, R46
	|[R0]	SEQ		R52, R59, R0
	.loc 1 10 0 discriminator 2
		SNOP		4
	.loc 1 11 0 discriminator 2
		SFMULS32.M2		R8, R12, R49
	.loc 1 12 0 discriminator 2
		SFMULS32.M1		R46, R8, R13
		SNOP		2
	.loc 1 1 0 discriminator 2
		SXOR		R58, R49, R14
	.loc 1 11 0 discriminator 2
		SFMULAS32.M1	R9, R46, R14, R14
	|	SFMULAS32.M2	R9, R12, R13, R13
	.loc 1 12 0 discriminator 2
		SNOP		1
	.loc 1 10 0 discriminator 2
	[!R0]	SBR		.L4
		SNOP		3
	.loc 1 11 0 discriminator 2
		SFADDS32.M1		R18, R14, R18
	|	SFADDS32.M2		R2, R13, R2
.LVL7:
	.loc 1 12 0 discriminator 2
		SNOP		2
.LVL8:
	.loc 1 10 0 discriminator 2
	;; condjump to .L4 occurs
		SADD.M1		8,R50,R16
	|	SMVAGA36.M2		R51:R50, AR10
		SLTU		R16, R50, R17
	|	SADD.M1		8,R10,R19
		SADD.M2		R51,R17,R51
	|	SEQ		R16, R60, R0
	|	SMOV.M1		R16, R50
	|	SSTW		R18, *-AR10[1]
	.loc 1 6 0
	[R0]	SEQ		R51, R61, R0
	|	SSTW		R2, *AR10
	[!R0]	SBR		.L3
	|	SLTU		R19, R10, R20
	|	SMOV.M2		R19, R10
		SADD.M2		R11,R20,R11
		SNOP		5
	;; condjump to .L3 occurs
.LVL9:
.L1:
		SBR		R62
		SNOP		6
	;; return occurs
.LVL10:
.L12:
		SADD.M1		8,R50,R16
	|	SMVAGA36.M2		R51:R50, AR10
		SLTU		R16, R50, R17
	|	SADD.M1		8,R10,R19
		SADD.M2		R51,R17,R51
	|	SEQ		R16, R60, R0
	|	SMOV.M1		R18, R2
	|	SSTW		R18, *-AR10[1]
	[R0]	SEQ		R51, R61, R0
	|	SMOV.M2		R16, R50
	|	SSTW		R2, *AR10
	[!R0]	SBR		.L3
	|	SLTU		R19, R10, R20
	|	SMOV.M2		R19, R10
		SADD.M2		R11,R20,R11
		SNOP		5
	;; condjump to .L3 occurs
		SBR		.L1
		SNOP		6
	;; jump to .L1 occurs
	.cfi_endproc
.LFE0:
	.size	DSPF_sp_fir_cplx_cn, .-DSPF_sp_fir_cplx_cn
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
	.byte	0x1
	.4byte	0xce
	.4byte	.LLST0
	.uleb128 0x3
	.string	"h"
	.byte	0x1
	.byte	0x1
	.4byte	0xce
	.4byte	.LLST1
	.uleb128 0x3
	.string	"y"
	.byte	0x1
	.byte	0x2
	.4byte	0xe0
	.4byte	.LLST2
	.uleb128 0x3
	.string	"nh"
	.byte	0x1
	.byte	0x2
	.4byte	0xe6
	.4byte	.LLST3
	.uleb128 0x3
	.string	"ny"
	.byte	0x1
	.byte	0x2
	.4byte	0xe6
	.4byte	.LLST4
	.uleb128 0x4
	.string	"i"
	.byte	0x1
	.byte	0x4
	.4byte	0xe6
	.4byte	.LLST5
	.uleb128 0x4
	.string	"j"
	.byte	0x1
	.byte	0x4
	.4byte	0xe6
	.4byte	.LLST6
	.uleb128 0x5
	.4byte	.LASF0
	.byte	0x1
	.byte	0x5
	.4byte	0xd9
	.4byte	.LLST7
	.uleb128 0x5
	.4byte	.LASF1
	.byte	0x1
	.byte	0x5
	.4byte	0xd9
	.4byte	.LLST8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.4byte	0xd4
	.uleb128 0x7
	.4byte	0xd9
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
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
	.sleb128 -4
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
	.llong	.LVL10
	.llong	.LFE0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL5
	.llong	.LVL6
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL8
	.llong	.LVL9
	.2byte	0x1
	.byte	0x62
	.llong	.LVL10
	.llong	.LFE0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL5
	.llong	.LVL6
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL7
	.llong	.LVL9
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL10
	.llong	.LFE0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
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
	.section	.debug_str,"MS",@progbits,1
.LASF1:
	.string	"real"
.LASF3:
	.string	"GNU C 4.7.0"
.LASF5:
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSPF_sp_fir_cplx/test/vector_c/Debug"
.LASF2:
	.string	"float"
.LASF4:
	.string	"../DSPF_sp_fir_cplx_cn.c"
.LASF6:
	.string	"DSPF_sp_fir_cplx_cn"
.LASF0:
	.string	"imag"
