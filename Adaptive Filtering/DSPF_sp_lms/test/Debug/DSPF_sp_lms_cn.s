	.file	"DSPF_sp_lms_cn.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSPF_sp_lms_cn,"ax",@progbits
	.align	2
	.global	DSPF_sp_lms_cn
	.type	DSPF_sp_lms_cn, @function
DSPF_sp_lms_cn:
.LFB0:
	.file 1 "../DSPF_sp_lms_cn.c"
	.loc 1 45 0
	.cfi_startproc
.LVL0:
	.loc 1 45 0
		SMVAGA36.M1		R13:R12, AR0
	|	SMOVIL		0, R42
	|	SADD.M2		-1,R24,R44
	.loc 1 43 0
		SMVAGA36.M1		R17:R16, OR0
	|	SLT		R42, R24, R0
	|	SADD.M2		-1,R22,R43
		SMVAGA36.M1		R11:R10, OR1
	|	SMVAAGL.M2		AR0, R51:R50
	|	SLT		R42, R22, R1
	|[!R0]	SBR		.L2
		SADDA.M1		-4,OR0,AR4
	|	SADDA.M2		-4,AR0,OR2
	|	SSHFLL		1, R44, R54
		SSHFLL		1, R43, R45
		SMVAAGH.M1		AR0, R51:R50
	|	SADDA.M2		-4,OR1,AR2
	|	SSHFLL		2, R43, R16
.LVL1:
		SSHFLL		2, R44, R55
	|	SMVAAGL.M1		AR4, R49:R48
		SLTU		R54, R44, R3
	|	SMVAAGL.M1		OR2, R53:R52
	.loc 1 45 0
		SMOV.M2		R20, R56
	|	SLTU		R45, R43, R8
	|[R0]	SMVAAGL.M1		AR2, R47:R46
	;; condjump to .L2 occurs
	.loc 1 43 0
		SADD.M2		4,R14,R13
	|	SSHFLL		1, R3, R12
	|	SMVAAGH.M1		AR4, R49:R48
.LVL2:
		SADD.M2		4,R50,R2
	|	SLTU		R13, R14, R59
	|	SMVAAGH.M1		AR2, R47:R46
	.loc 1 51 0
	[!R1]	SBR		.L7
	|	SADD.M2		R55,R13,R17
	|	SMVAAGH.M1		OR2, R53:R52
	|	SLTU		R55, R54, R9
	.loc 1 43 0
		SADD.M2		R16,R2,R11
	|	SLTU		R16, R45, R19
		SSHFLL		1, R8, R21
	|	SADD.M2		R15,R59,R10
	|	SADD.M1		R12,R9,R20
.LVL3:
		SADD.M2		R21,R19,R3
	|	SLTU		R2, R50, R23
	|	SADD.M1		R20,R10,R22
.LVL4:
		SADD.M2		R51,R23,R24
	|	SLTU		R17, R13, R25
.LVL5:
		SADD.M2		R22,R25,R29
	|	SLTU		R11, R2, R26
	|	SADD.M1		R3,R24,R27
		SADD.M2		R27,R26,R28
	;; condjump to .L7 occurs
.LVL6:
.L17:
		SFMULS32.M2		R18, R56, R8
	|	SADD.M1		-4,R46,R60
		SADD.M2		R46,R16,R61
	|	SLTU		R60, R46, R0
	|	SADD.M1		-1,R47,R43
		SLTU		R61, R46, R2
	|	SADD.M2		R47,R3,R54
	|	SMOV.M1		R52, R44
		SMOV.M1		R53, R45
		SMOV.M2		R60, R42
	|	SADD.M1		R43,R0,R43
		SADD.M2		R54,R2,R9
.LVL7:
.L4:
		SADD.M2		4,R42,R10
	|	SADD.M1		4,R44,R55
		SLTU		R55, R44, R58
	|	SMOV.M2		R55, R44
		SLTU		R10, R42, R12
	|	SADD.M2		R45,R58,R45
	|	SMOV.M1		R10, R42
		SADD.M1		R43,R12,R43
	|	SMVAGA36.M2		R45:R44, AR10
	|	SEQ		R10, R61, R0
	.loc 1 43 0 is_stmt 0 discriminator 2
		SMVAGA36.M1		R43:R42, AR12
	|[R0]	SEQ		R43, R9, R0
	.loc 1 52 0 is_stmt 1 discriminator 2
		SLDW		*AR10, R20
		SLDW		*AR12, R19
		SNOP		5
	.loc 1 51 0 discriminator 2
	[!R0]	SBR		.L4
	|	SFMULAS32.M2	R19, R8, R20, R20
	.loc 1 52 0 discriminator 2
		SNOP		5
		SSTW		R20, *AR10
	;; condjump to .L4 occurs
	.loc 1 51 0
		SMOVIL		0, R56
	|	SMOV.M2		R46, R44
	|	SMOV.M1		R47, R45
.LVL8:
		SMOV.M2		R50, R42
	|	SMOV.M1		R51, R43
	|	SMOVIH		0, R56
.L5:
		SADD.M1		4,R44,R21
	|	SMVAGA36.M2		R43:R42, AR12
		SLTU		R21, R44, R23
	|	SMOV.M1		R21, R44
		SADD.M2		R45,R23,R45
	|	SLDW		*AR12, R27
	|	SADD.M1		4,R42,R22
	.loc 1 43 0 discriminator 2
		SMVAGA36.M2		R45:R44, AR10
	|	SLTU		R22, R42, R25
	|	SMOV.M1		R22, R42
		SADD.M1		R43,R25,R43
	|	SEQ		R22, R11, R2
	.loc 1 57 0 discriminator 2
		SLDW		*AR10, R60
	|[R2]	SEQ		R43, R28, R2
	.loc 1 56 0 discriminator 2
		SNOP		4
	[!R2]	SBR		.L5
	.loc 1 57 0 discriminator 2
		SFMULAS32.M2	R27, R60, R56, R56
		SNOP		5
.LVL9:
	.loc 1 56 0 discriminator 2
	;; condjump to .L5 occurs
		SADD.M1		4,R48,R42
	|	SMVAGA36.M2		R15:R14, AR10
	|	SLTU		R13, R14, R61
		SLTU		R42, R48, R45
	|	SMOV.M1		R42, R48
		SADD.M2		R49,R45,R49
	|	SMOV.M1		R13, R14
	.loc 1 43 0
		SMVAGA36.M2		R49:R48, AR12
	|	SADD.M1		R15,R61,R15
	|	SEQ		R14, R17, R0
	.loc 1 49 0
	[R0]	SEQ		R15, R29, R0
	|	SADD.M1		4,R46,R13
	.loc 1 59 0
		SSTW		R56, *AR12
	|	SLTU		R13, R46, R43
	|	SMOV.M2		R13, R46
		SADD.M2		R47,R43,R47
		SNOP		1
	.loc 1 60 0
		SLDW		*AR10, R54
		SNOP		1
	.loc 1 49 0
	[R0]	SBR		.L2
		SNOP		3
	.loc 1 60 0
		SFSUBS32.M2		R56, R54, R56
		SNOP		2
.LVL10:
	.loc 1 49 0
	;; condjump to .L2 occurs
.LVL11:
.L18:
	.loc 1 51 0
	[R1]	SBR		.L17
	|	SADD.M2		4,R14,R13
		SNOP		6
.LVL12:
	;; condjump to .L17 occurs
.L7:
		SADD.M1		4,R48,R42
	|	SMOVIL		0, R56
	|	SMVAGA36.M2		R15:R14, AR10
.LVL13:
		SLTU		R42, R48, R45
	|	SMOV.M1		R42, R48
		SADD.M2		R49,R45,R49
	|	SMOVIH		0, R56
	.loc 1 43 0
		SMVAGA36.M2		R49:R48, AR12
	|	SLTU		R13, R14, R61
	|	SMOV.M1		R13, R14
		SADD.M1		R15,R61,R15
	|	SEQ		R14, R17, R0
	.loc 1 59 0
		SSTW		R56, *AR12
	|[R0]	SEQ		R15, R29, R0
	|	SADD.M2		4,R46,R13
		SLTU		R13, R46, R43
	|	SMOV.M2		R13, R46
		SADD.M2		R47,R43,R47
	.loc 1 60 0
		SLDW		*AR10, R54
		SNOP		1
	.loc 1 49 0
	[!R0]	SBR		.L18
		SNOP		3
	.loc 1 60 0
		SFSUBS32.M2		R56, R54, R56
		SNOP		2
.LVL14:
	.loc 1 49 0
	;; condjump to .L18 occurs
.LVL15:
.L2:
	.loc 1 64 0
		SBR		R62
	|	SMOV.M2		R56, R10
		SNOP		6
	;; return occurs
	.cfi_endproc
.LFE0:
	.size	DSPF_sp_lms_cn, .-DSPF_sp_lms_cn
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x111
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
	.byte	0x2b
	.byte	0x1
	.4byte	0xf0
	.llong	.LFB0
	.llong	.LFE0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0x1
	.4byte	0xf0
	.uleb128 0x3
	.string	"x"
	.byte	0x1
	.byte	0x2b
	.4byte	0xf7
	.4byte	.LLST0
	.uleb128 0x3
	.string	"h"
	.byte	0x1
	.byte	0x2b
	.4byte	0x102
	.4byte	.LLST1
	.uleb128 0x3
	.string	"y_i"
	.byte	0x1
	.byte	0x2b
	.4byte	0xf7
	.4byte	.LLST2
	.uleb128 0x3
	.string	"y_o"
	.byte	0x1
	.byte	0x2c
	.4byte	0x102
	.4byte	.LLST3
	.uleb128 0x4
	.string	"ar"
	.byte	0x1
	.byte	0x2c
	.4byte	0xfd
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x5
	.4byte	.LASF0
	.byte	0x1
	.byte	0x2c
	.4byte	0xf0
	.4byte	.LLST4
	.uleb128 0x3
	.string	"nh"
	.byte	0x1
	.byte	0x2c
	.4byte	0x108
	.4byte	.LLST5
	.uleb128 0x3
	.string	"nx"
	.byte	0x1
	.byte	0x2c
	.4byte	0x108
	.4byte	.LLST6
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0x2e
	.4byte	0x10d
	.4byte	.LLST7
	.uleb128 0x6
	.string	"j"
	.byte	0x1
	.byte	0x2e
	.4byte	0x10d
	.4byte	.LLST8
	.uleb128 0x6
	.string	"sum"
	.byte	0x1
	.byte	0x2f
	.4byte	0xf0
	.4byte	.LLST9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1
	.uleb128 0x8
	.byte	0x8
	.4byte	0xfd
	.uleb128 0x9
	.4byte	0xf0
	.uleb128 0x8
	.byte	0x8
	.4byte	0xf0
	.uleb128 0x9
	.4byte	0x10d
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x7
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
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL3
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
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
	.byte	0x50
	.llong	0
	.llong	0
.LLST2:
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
.LLST3:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL1
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	.LVL3
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.uleb128 0x48
	.llong	.LVL10
	.llong	.LVL13
	.2byte	0x2
	.byte	0x90
	.uleb128 0x48
	.llong	.LVL14
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x48
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.llong	.LVL4
	.llong	.LVL6
	.2byte	0x4
	.byte	0x92
	.uleb128 0x3b
	.sleb128 1
	.byte	0x9f
	.llong	.LVL6
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x26
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL0
	.llong	.LVL5
	.2byte	0x2
	.byte	0x90
	.uleb128 0x28
	.llong	.LVL5
	.llong	.LVL6
	.2byte	0x4
	.byte	0x92
	.uleb128 0x3c
	.sleb128 1
	.byte	0x9f
	.llong	.LVL6
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x28
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL0
	.llong	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL12
	.llong	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL9
	.llong	.LVL10
	.2byte	0x2
	.byte	0x90
	.uleb128 0x48
	.llong	.LVL10
	.llong	.LVL11
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
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
.LASF4:
	.string	"/cygdrive/c/Users/Hiccup the Toothful/Desktop/NEW Porject/DSPF_sp_lms/Debug"
.LASF1:
	.string	"float"
.LASF3:
	.string	"../DSPF_sp_lms_cn.c"
.LASF2:
	.string	"GNU C 4.7.0"
.LASF5:
	.string	"DSPF_sp_lms_cn"
.LASF0:
	.string	"error"
