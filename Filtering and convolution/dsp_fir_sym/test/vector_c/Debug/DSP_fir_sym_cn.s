	.file	"DSP_fir_sym_cn.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSP_fir_sym_cn,"ax",@progbits
	.align	2
	.global	DSP_fir_sym_cn
	.type	DSP_fir_sym_cn, @function
DSP_fir_sym_cn:
.LFB0:
	.file 1 "../DSP_fir_sym_cn.c"
	.loc 1 9 0
	.cfi_startproc
.LVL0:
	.loc 1 14 0
		SMOVIL		0, R43
	|	SADD.M2		-1,R16,R46
	|	SADD.M1		2,R14,R61
		SSHFAR		31, R16, R47
	|	SMVAGA36.M1		R13:R12, AR0
	|	SADD.M2		-1,R20,R42
		SLT		R43, R18, R0
	|	SADD.M2		-1,R47,R48
	|	SMVAGA36.M1		R11:R10, OR0
	.loc 1 1 0
		SLTU		R46, R16, R49
	|	SADD.M2		-1,R18,R18
	|	SMVAAGL.M1		AR0, R51:R50
.LVL1:
		SSHFLL		1, R16, R55
	|	SADD.M2		R48,R49,R1
	|	SMVAAA.M1		AR0, OR11
		SSHFLL		1, R46, R44
	|	SSUB.M2		R16, R55, R54
	|	SMVAAGH.M1		AR0, R51:R50
		SSHFLL		1, R18, R17
		SLTU		R61, R14, R21
	|	SADD.M2		R17,R61,R11
	|	SADD.M1		2,R50,R52
	.loc 1 9 0
		SMOVIL		-24, R6
		SMOVIL		-1, R7
	.loc 1 1 0
		SLTU		R44, R46, R2
	|	SADD.M1		R15,R21,R24
	|	SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 24
		SSHFLL		1, R1, R45
	|	SMVAAGL.M1		AR14, R7:R6
		SSHFAR		31, R55, R56
	|	SADD.M2		R45,R2,R45
		SLTU		R17, R18, R28
	|	SSUB.M1		R47, R56, R3
	|	SMVAAGH.M2		AR14, R7:R6
	;no-op trunc di R45:R44 to pdi R45:R44
	.loc 1 14 0
	[!R0]	SBR		.L1
	|	SLTU		R55, R54, R9
	|	SADD.M1		R28,R24,R0
	|	SADDA.M2		R45:R44,OR0,AR2
	.loc 1 9 0
		SSTDW		R7:R6, *+AR15[2]
	.cfi_offset 14, -8
	.loc 1 1 0
		SLTU		R11, R61, R1
	|	SSUB.M1		R9, R3, R13
	|	SMVAAGL.M2		AR8, R7:R6
		SMOVIL		0, R2
	|	SADD.M1		R0,R1,R3
	|	SMVAAGL.M2		AR2, R49:R48
		SLT		R2, R16, R1
	|	SMVAAGH.M1		AR8, R7:R6
		SMVAAGH.M1		AR2, R49:R48
	|	SMOVIL		1, R12
.LVL2:
	.cfi_offset 8, -16
	.loc 1 12 0
		SSHFLL		R42, R12, R12
	|	SSTDW		R7:R6, *+AR15[1]
	;; condjump to .L1 occurs
.LVL3:
	.loc 1 1 0
		SNEG		R16, R53
	|	SMOV.M2		R55, R42
		SLTU		R55, R16, R58
		SSHFLL		1, R47, R8
		SMOVIL		0, R22
	|	SADD.M2		R8,R58,R43
		SSHFLL		1, R54, R44
	;no-op trunc di R43:R42 to pdi R43:R42
	|	SADDA.M2		R43:R42,OR11,AR14
		SSHFLL		1, R46, R19
	|	SADD.M1		4,R44,R10
.LVL4:
		SNEG		R47, R25
	|	SADD.M2		R19,R52,R59
		SLTU		R52, R50, R26
		SLTU		R22, R53, R23
	|	SADD.M2		R51,R26,R29
		SSHFLL		1, R53, R8
	|	SSUB.M2		R23, R25, R27
		SSHFLL		1, R13, R42
	.loc 1 16 0
	[!R1]	SBR		.L6
	|	SLTU		R44, R54, R43
	.loc 1 1 0
		SLTU		R19, R46, R46
	|	SADD.M2		R42,R43,R47
		SADD.M2		R46,R29,R55
	|	SLTU		R8, R53, R18
.LVL5:
		SSHFLL		1, R27, R60
		SADD.M2		R60,R18,R9
	|	SLTU		R59, R52, R52
		SADD.M2		R55,R52,R13
	|	SLTU		R10, R44, R57
		SADD.M2		R47,R57,R16
	;; condjump to .L6 occurs
.LVL6:
.L12:
		SADD.M2		R48,R10,R45
	|	SADD.M1		R48,R8,R54
		SLTU		R54, R48, R56
	|	SADD.M2		R49,R9,R58
	|	SADD.M1		R49,R16,R53
		SLTU		R45, R10, R17
	|	SMOV.M2		R45, R44
	|	SMOV.M1		R50, R42
		SMOV.M2		R51, R43
	|	SMOV.M1		R54, R46
		SADD.M2		R58,R56,R47
	|	SADD.M1		R53,R17,R45
		SMOV.M2		R12, R19
.LVL7:
.L4:
		SADD.M2		2,R46,R21
	|	SADD.M1		-2,R44,R22
		SLTU		R21, R46, R23
	|	SADD.M2		-1,R45,R25
	|	SMOV.M1		R21, R46
		SLTU		R22, R44, R26
	|	SADD.M2		R47,R23,R47
	|	SMOV.M1		R22, R44
		SADD.M1		R25,R26,R45
	|	SMVAGA36.M2		R47:R46, AR12
	.loc 1 1 0 is_stmt 0 discriminator 2
		SMVAGA36.M1		R45:R44, AR8
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 17 0 is_stmt 1 discriminator 2
		SLDH		*AR12, R29
		SLDH		*AR8, R27
	|	SADD.M2		2,R42,R28
		SLDH		*AR10, R55
	|	SLTU		R28, R42, R0
	|	SMOV.M2		R28, R42
		SADD.M2		R43,R0,R43
	|	SEQ		R28, R59, R2
	.loc 1 16 0 discriminator 2
	[R2]	SEQ		R43, R13, R2
		SNOP		2
	.loc 1 17 0 discriminator 2
		SADD.M2		R29,R27,R18
		SSHFLL		16, R18, R60
	.loc 1 16 0 discriminator 2
	[!R2]	SBR		.L4
	|	SSHFLL		16, R55, R52
	.loc 1 17 0 discriminator 2
		SSHFAR		16, R60, R57
		SSHFAR		16, R52, R54
		SMULIS.M2		R54,R57,R56
		SNOP		2
		SADD.M2		R56,R19,R19
	;; condjump to .L4 occurs
.LVL8:
		SADD.M1		2,R48,R42
	|	SLTU		R61, R14, R47
	|	SMVAGA36.M2		R15:R14, AR10
	|	SLDH		*AR14, R45
		SLTU		R42, R48, R44
	|	SMOV.M1		R42, R48
		SADD.M2		R49,R44,R49
	|	SMOV.M1		R61, R14
.LVL9:
	.loc 1 1 0
		SMVAGA36.M2		R49:R48, AR12
	|	SADD.M1		R15,R47,R15
	|	SEQ		R14, R11, R0
	.loc 1 14 0
	[R0]	SEQ		R15, R3, R0
		SNOP		1
	.loc 1 18 0
		SLDH		*AR12, R61
	|	SSHFLL		16, R45, R58
		SSHFAR		16, R58, R17
		SNOP		4
		SSHFLL		16, R61, R53
		SSHFAR		16, R53, R21
	|[R0]	SBR		.L1
		SMULIS.M2		R17,R21,R22
		SNOP		2
		SADD.M2		R19,R22,R19
.LVL10:
	.loc 1 19 0
		SSHFAR		R20, R19, R23
		SSTH		R23, *AR10
	;; condjump to .L1 occurs
.L13:
	.loc 1 16 0
	[R1]	SBR		.L12
	|	SADD.M2		2,R14,R61
		SNOP		6
.LVL11:
	;; condjump to .L12 occurs
.L6:
		SADD.M1		2,R48,R42
	|	SLTU		R61, R14, R47
	|	SMVAGA36.M2		R15:R14, AR10
	|	SLDH		*AR14, R45
		SLTU		R42, R48, R44
	|	SMOV.M1		R42, R48
		SADD.M2		R49,R44,R49
	|	SMOV.M1		R61, R14
	.loc 1 1 0
		SMVAGA36.M2		R49:R48, AR12
	|	SADD.M1		R15,R47,R15
	|	SEQ		R14, R11, R0
	.loc 1 14 0
	[R0]	SEQ		R15, R3, R0
	|	SMOV.M1		R12, R19
	.loc 1 16 0
		SNOP		1
.LVL12:
	.loc 1 18 0
		SLDH		*AR12, R61
	|	SSHFLL		16, R45, R58
		SSHFAR		16, R58, R17
		SNOP		4
		SSHFLL		16, R61, R53
		SSHFAR		16, R53, R21
	|[!R0]	SBR		.L13
		SMULIS.M2		R17,R21,R22
		SNOP		2
		SADD.M2		R19,R22,R19
.LVL13:
	.loc 1 19 0
		SSHFAR		R20, R19, R23
		SSTH		R23, *AR10
	;; condjump to .L13 occurs
.LVL14:
.L1:
	.loc 1 21 0
		SLDDW		*+AR15[1], R7:R6
	|	SMVCGC.L		R63, BRReg
		SNOP		5
		SMVAGA36.M2		R7:R6, AR8
	|	SLDDW		*+AR15[2], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		24, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.cfi_endproc
.LFE0:
	.size	DSP_fir_sym_cn, .-DSP_fir_sym_cn
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf4
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF2
	.byte	0x1
	.4byte	.LASF3
	.4byte	.LASF4
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0xd8
	.uleb128 0x3
	.string	"x"
	.byte	0x1
	.byte	0x2
	.4byte	0xd8
	.4byte	.LLST1
	.uleb128 0x3
	.string	"h"
	.byte	0x1
	.byte	0x3
	.4byte	0xd8
	.4byte	.LLST2
	.uleb128 0x3
	.string	"r"
	.byte	0x1
	.byte	0x4
	.4byte	0xea
	.4byte	.LLST3
	.uleb128 0x3
	.string	"nh"
	.byte	0x1
	.byte	0x5
	.4byte	0xf0
	.4byte	.LLST4
	.uleb128 0x3
	.string	"nr"
	.byte	0x1
	.byte	0x6
	.4byte	0xf0
	.4byte	.LLST5
	.uleb128 0x4
	.string	"s"
	.byte	0x1
	.byte	0x7
	.4byte	0xf0
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.uleb128 0x5
	.string	"i"
	.byte	0x1
	.byte	0xa
	.4byte	0xf0
	.4byte	.LLST6
	.uleb128 0x5
	.string	"j"
	.byte	0x1
	.byte	0xa
	.4byte	0xf0
	.4byte	.LLST7
	.uleb128 0x5
	.string	"y0"
	.byte	0x1
	.byte	0xb
	.4byte	0xf0
	.4byte	.LLST8
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0xb
	.4byte	0xf0
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.4byte	0xde
	.uleb128 0x8
	.4byte	0xe3
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x7
	.byte	0x8
	.4byte	0xe3
	.uleb128 0xa
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
	.uleb128 0x6
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.llong	.LFB0
	.llong	.LCFI0
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI0
	.llong	.LFE0
	.2byte	0x2
	.byte	0x7f
	.sleb128 24
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL4
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.llong	0
	.llong	0
.LLST2:
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
	.byte	0x50
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL6
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL6
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL6
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL6
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL1
	.llong	.LVL5
	.2byte	0x4
	.byte	0x92
	.uleb128 0x22
	.sleb128 1
	.byte	0x9f
	.llong	.LVL5
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL11
	.llong	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL3
	.llong	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL7
	.llong	.LVL9
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.llong	.LVL9
	.llong	.LVL10
	.2byte	0x1a
	.byte	0x92
	.uleb128 0x40
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0x24
	.byte	0x8
	.byte	0x30
	.byte	0x26
	.byte	0x92
	.uleb128 0x3d
	.sleb128 0
	.byte	0x8
	.byte	0x30
	.byte	0x24
	.byte	0x8
	.byte	0x30
	.byte	0x26
	.byte	0x1e
	.byte	0x92
	.uleb128 0x23
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.llong	.LVL11
	.llong	.LVL12
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL12
	.llong	.LVL13
	.2byte	0x1a
	.byte	0x92
	.uleb128 0x40
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0x24
	.byte	0x8
	.byte	0x30
	.byte	0x26
	.byte	0x92
	.uleb128 0x3d
	.sleb128 0
	.byte	0x8
	.byte	0x30
	.byte	0x24
	.byte	0x8
	.byte	0x30
	.byte	0x26
	.byte	0x1e
	.byte	0x92
	.uleb128 0x23
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.llong	.LVL13
	.llong	.LVL14
	.2byte	0x19
	.byte	0x92
	.uleb128 0x40
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0x24
	.byte	0x8
	.byte	0x30
	.byte	0x26
	.byte	0x92
	.uleb128 0x3d
	.sleb128 0
	.byte	0x8
	.byte	0x30
	.byte	0x24
	.byte	0x8
	.byte	0x30
	.byte	0x26
	.byte	0x1e
	.byte	0x8c
	.sleb128 0
	.byte	0x22
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
.LASF2:
	.string	"GNU C 4.7.0"
.LASF4:
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/dsp_fir_sym/test/vector_c/Debug"
.LASF0:
	.string	"round"
.LASF3:
	.string	"../DSP_fir_sym_cn.c"
.LASF5:
	.string	"DSP_fir_sym_cn"
.LASF1:
	.string	"short int"
