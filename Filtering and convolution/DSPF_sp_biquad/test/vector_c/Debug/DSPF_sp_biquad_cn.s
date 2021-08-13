	.file	"DSPF_sp_biquad_cn.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSPF_sp_biquad_cn,"ax",@progbits
	.align	2
	.global	DSPF_sp_biquad_cn
	.type	DSPF_sp_biquad_cn, @function
DSPF_sp_biquad_cn:
.LFB0:
	.file 1 "../DSPF_sp_biquad_cn.c"
	.loc 1 7 0
	.cfi_startproc
.LVL0:
		SMOVIL		-24, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 24
		SMVAAGL.M1		AR14, R7:R6
	|	SMVAGA36.M2		R11:R10, AR11
	|	SMOVIL		-2147483648, R50
		SMVAGA36.M1		R13:R12, AR10
	|	SMVAGA36.M2		R15:R14, AR12
	|	SMOVIH		-2147483648, R50
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R17:R16, AR14
	|	SLDW		*AR11, R44
	|	SMOVIL		2, R42
	.loc 1 13 0
		SLDW		*AR10, R45
	|	SMVAGA36.M1		R11:R10, OR0
	|	SLT		R42, R20, R0
		SLDW		*AR14, R49
	|	SADD.M2		-3,R20,R20
.LVL1:
	.loc 1 1 0
		SADDA.M2		4,OR0,AR2
	|	SMVAGA36.M1		R19:R18, OR0
	|	SSHFLL		1, R20, R52
		SSHFLL		2, R20, R11
		SADDA.M1		4,OR0,AR0
	|	SLTU		R52, R20, R12
.LVL2:
		SMVAAGL.M2		AR2, R43:R42
	|	SLTU		R11, R52, R14
.LVL3:
		SSHFLL		1, R12, R16
.LVL4:
	.cfi_offset 14, -8
	.loc 1 13 0
		SFMULAS32.M2	R45, R44, R49, R49
	|	SSTDW		R7:R6, *+AR15[2]
	.loc 1 7 0
		SMVAAGL.M1		AR8, R7:R6
	|	SMVAAGL.M2		AR11, R45:R44
		SMVAAGH.M1		AR2, R43:R42
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R19:R18, AR8
	.loc 1 1 0
		SMVAAGH.M1		AR11, R45:R44
	.loc 1 7 0
		SSTDW		R7:R6, *+AR15[1]
	.cfi_offset 8, -16
	.loc 1 13 0
		SSTW		R49, *AR8
	|	SXOR		R50, R49, R1
	|	SADD.M1		8,R44,R51
	|	SMVAAGL.M2		AR0, R19:R18
.LVL5:
	.loc 1 1 0
		SLTU		R51, R44, R13
	|	SADD.M1		R11,R51,R56
		SADD.M2		R45,R13,R15
	|	SADD.M1		R16,R14,R17
	|	SLTU		R56, R51, R21
	.loc 1 14 0
		SLDW		*AR10, R47
	|	SADD.M1		R17,R15,R22
	|	SMVAAGH.M2		AR0, R19:R18
		SLDW		*+AR11[1], R2
	|	SADD.M1		R22,R21,R57
		SLDW		*+AR14[1], R46
		SLDW		*+AR10[1], R48
		SLDW		*AR11, R3
		SNOP		3
		SFMULAS32.M2	R47, R2, R46, R46
		SNOP		1
		SLDW		*+AR12[1], R8
		SNOP		3
		SFMULAS32.M2	R48, R3, R46, R46
		SNOP		5
		SFMULAS32.M2	R1, R8, R46, R46
		SNOP		5
		SSTW		R46, *+AR8[1]
		SNOP		2
	.loc 1 22 0
	[!R0]	SBR		.L4
	|	SLDW		*AR11, R1
.LVL6:
	.loc 1 18 0
		SLDW		*+AR11[1], R47
		SNOP		5
.LVL7:
	.loc 1 22 0
	;; condjump to .L4 occurs
.LVL8:
.L3:
	.loc 1 28 0 discriminator 2
		SLDW		*+AR10[2], R23
	|	SADD.M2		4,R42,R25
	|	SADD.M1		4,R18,R60
	.loc 1 34 0 discriminator 2
		SLDW		*+AR10[1], R24
	|	SLTU		R25, R42, R26
	|	SMOV.M2		R25, R42
		SADD.M2		R43,R26,R43
	|	SLDW		*AR10, R28
	|	SEQ		R25, R56, R0
	.loc 1 1 0 discriminator 2
		SMVAGA36.M2		R43:R42, AR8
	|	SLDW		*+AR12[2], R29
	|[R0]	SEQ		R43, R57, R0
		SLDW		*+AR12[1], R54
	|	SLTU		R60, R18, R55
	|	SMOV.M1		R60, R18
		SADD.M2		R19,R55,R19
	.loc 1 28 0 discriminator 2
		SFMULS32.M2		R1, R23, R10
	|	SMOV.M1		R47, R1
		SNOP		2
	.loc 1 1 0 discriminator 2
		SXOR		R50, R29, R58
	.loc 1 26 0 discriminator 2
		SLDW		*AR8, R9
	|	SFMULAS32.M2	R24, R47, R10, R10
	|	SXOR		R50, R54, R59
	|	SMVAGA36.M1		R19:R18, AR8
.LVL9:
	.loc 1 1 0 discriminator 2
		SNOP		5
	.loc 1 34 0 discriminator 2
		SFMULAS32.M2	R28, R9, R10, R10
	|	SMOV.M1		R9, R47
	.loc 1 26 0 discriminator 2
		SNOP		5
	.loc 1 34 0 discriminator 2
		SFMULAS32.M2	R58, R49, R10, R10
	|	SMOV.M1		R46, R49
		SNOP		5
.LVL10:
		SFMULAS32.M2	R59, R46, R10, R10
	|[!R0]	SBR		.L3
.LVL11:
	.loc 1 22 0 discriminator 2
		SNOP		5
	.loc 1 35 0 discriminator 2
		SSTW		R10, *AR8
	|	SMOV.M2		R10, R46
	;; condjump to .L3 occurs
.LVL12:
	.loc 1 39 0
		SLDW		*+AR10[2], R43
	|	SMOVIL		-2147483648, R19
		SLDW		*+AR10[1], R18
	|	SMOVIH		-2147483648, R19
	.loc 1 1 0
		SLDW		*+AR12[1], R45
	|	SMVCGC.L		R63, BRReg
		SLDW		*+AR12[2], R42
	.loc 1 41 0
		SLDDW		*+AR15[1], R7:R6
		SNOP		1
	.loc 1 39 0
		SFMULS32.M2		R1, R43, R50
		SNOP		1
	.loc 1 1 0
		SXOR		R19, R45, R44
		SXOR		R19, R42, R2
	.loc 1 39 0
		SFMULAS32.M2	R18, R9, R50, R50
	|	SMVAGA36.M1		R7:R6, AR8
	|	SLDDW		*+AR15[2], R7:R6
	.loc 1 41 0
		SNOP		5
	.loc 1 39 0
		SFMULAS32.M2	R44, R10, R50, R50
		SNOP		5
		SFMULAS32.M2	R2, R49, R50, R50
		SNOP		5
		SSTW		R50, *AR14
		SNOP		2
	.loc 1 40 0
		SLDW		*+AR12[2], R48
		SLDW		*+AR10[2], R3
		SNOP		4
		SFMULS32.M2		R10, R48, R8
		SNOP		3
	.loc 1 1 0
		SXOR		R19, R8, R10
.LVL13:
	.loc 1 40 0
		SFMULAS32.M2	R3, R9, R10, R10
		SNOP		2
	.loc 1 41 0
		SBR		R62
		SNOP		2
	.loc 1 40 0
		SSTW		R10, *+AR14[1]
	|	SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		24, R6
.LVL14:
	.loc 1 41 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL15:
.L4:
	.loc 1 39 0
		SLDW		*+AR10[2], R43
	|	SMOV.M2		R47, R9
	|	SMOVIL		-2147483648, R19
	|	SMOV.M1		R46, R10
		SLDW		*+AR10[1], R18
	|	SMOVIH		-2147483648, R19
	.loc 1 1 0
		SLDW		*+AR12[1], R45
	|	SMVCGC.L		R63, BRReg
		SLDW		*+AR12[2], R42
	.loc 1 41 0
		SLDDW		*+AR15[1], R7:R6
		SNOP		1
	.loc 1 39 0
		SFMULS32.M2		R1, R43, R50
		SNOP		1
	.loc 1 1 0
		SXOR		R19, R45, R44
		SXOR		R19, R42, R2
	.loc 1 39 0
		SFMULAS32.M2	R18, R9, R50, R50
	|	SMVAGA36.M1		R7:R6, AR8
	|	SLDDW		*+AR15[2], R7:R6
.LVL16:
	.loc 1 41 0
		SNOP		5
	.loc 1 39 0
		SFMULAS32.M2	R44, R10, R50, R50
		SNOP		5
		SFMULAS32.M2	R2, R49, R50, R50
		SNOP		5
		SSTW		R50, *AR14
		SNOP		2
	.loc 1 40 0
		SLDW		*+AR12[2], R48
		SLDW		*+AR10[2], R3
		SNOP		4
		SFMULS32.M2		R10, R48, R8
		SNOP		3
	.loc 1 1 0
		SXOR		R19, R8, R10
	.loc 1 40 0
		SFMULAS32.M2	R3, R9, R10, R10
		SNOP		2
	.loc 1 41 0
		SBR		R62
		SNOP		2
	.loc 1 40 0
		SSTW		R10, *+AR14[1]
	|	SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		24, R6
.LVL17:
	.loc 1 41 0
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.cfi_endproc
.LFE0:
	.size	DSPF_sp_biquad_cn, .-DSPF_sp_biquad_cn
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x148
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF6
	.byte	0x1
	.4byte	.LASF7
	.4byte	.LASF8
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x1
	.4byte	.LASF9
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x139
	.uleb128 0x4
	.string	"x"
	.byte	0x1
	.byte	0x2
	.4byte	0x139
	.4byte	.LLST1
	.uleb128 0x4
	.string	"b"
	.byte	0x1
	.byte	0x3
	.4byte	0x139
	.4byte	.LLST2
	.uleb128 0x4
	.string	"a"
	.byte	0x1
	.byte	0x4
	.4byte	0x139
	.4byte	.LLST3
	.uleb128 0x5
	.4byte	.LASF0
	.byte	0x1
	.byte	0x5
	.4byte	0x139
	.4byte	.LLST4
	.uleb128 0x4
	.string	"y"
	.byte	0x1
	.byte	0x6
	.4byte	0x139
	.4byte	.LLST5
	.uleb128 0x4
	.string	"nx"
	.byte	0x1
	.byte	0x7
	.4byte	0x13f
	.4byte	.LLST6
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0x9
	.4byte	0x144
	.4byte	.LLST7
	.uleb128 0x7
	.4byte	.LASF1
	.byte	0x1
	.byte	0xa
	.4byte	0x31
	.4byte	.LLST8
	.uleb128 0x7
	.4byte	.LASF2
	.byte	0x1
	.byte	0xa
	.4byte	0x31
	.4byte	.LLST9
	.uleb128 0x8
	.4byte	.LASF10
	.byte	0x1
	.byte	0xa
	.4byte	0x31
	.uleb128 0x7
	.4byte	.LASF3
	.byte	0x1
	.byte	0xa
	.4byte	0x31
	.4byte	.LLST10
	.uleb128 0x7
	.4byte	.LASF4
	.byte	0x1
	.byte	0xa
	.4byte	0x31
	.4byte	.LLST11
	.uleb128 0x6
	.string	"sum"
	.byte	0x1
	.byte	0xa
	.4byte	0x31
	.4byte	.LLST12
	.uleb128 0x6
	.string	"x0"
	.byte	0x1
	.byte	0xa
	.4byte	0x31
	.4byte	.LLST13
	.uleb128 0x6
	.string	"x1"
	.byte	0x1
	.byte	0xa
	.4byte	0x31
	.4byte	.LLST14
	.uleb128 0x6
	.string	"y0"
	.byte	0x1
	.byte	0xa
	.4byte	0x31
	.4byte	.LLST15
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.4byte	0x31
	.uleb128 0xa
	.4byte	0x144
	.uleb128 0xb
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
	.uleb128 0x6
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
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.llong	.LVL8
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL8
	.llong	.LFE0
	.2byte	0x1
	.byte	0x5b
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
	.byte	0x5a
	.llong	0
	.llong	0
.LLST3:
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
	.llong	.LFE0
	.2byte	0x1
	.byte	0x5c
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL4
	.llong	.LVL14
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL14
	.llong	.LVL15
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.byte	0x9f
	.llong	.LVL15
	.llong	.LVL17
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL17
	.llong	.LFE0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL5
	.2byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL5
	.llong	.LVL8
	.2byte	0x1
	.byte	0x58
	.llong	.LVL8
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.llong	.LVL15
	.llong	.LVL16
	.2byte	0x1
	.byte	0x58
	.llong	.LVL16
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	.LVL1
	.llong	.LFE0
	.2byte	0x4
	.byte	0x92
	.uleb128 0x24
	.sleb128 3
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL7
	.llong	.LVL8
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.llong	.LVL15
	.llong	.LFE0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL9
	.llong	.LVL15
	.2byte	0x8
	.byte	0xf5
	.uleb128 0x2c
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL9
	.llong	.LVL15
	.2byte	0x8
	.byte	0xf5
	.uleb128 0x28
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL8
	.llong	.LVL10
	.2byte	0xa
	.byte	0x7c
	.sleb128 8
	.byte	0xf6
	.byte	0x4
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x41
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL8
	.llong	.LVL12
	.2byte	0xa
	.byte	0x7c
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x3e
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.llong	.LVL12
	.llong	.LVL15
	.2byte	0xa
	.byte	0x7c
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x31
	.byte	0xf5
	.uleb128 0x41
	.uleb128 0x31
	.byte	0x1e
	.byte	0x9f
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL7
	.llong	.LVL11
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.llong	.LVL11
	.llong	.LVL13
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL13
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL6
	.llong	.LVL8
	.2byte	0x1
	.byte	0x61
	.llong	.LVL9
	.llong	.LVL12
	.2byte	0x1
	.byte	0x61
	.llong	.LVL15
	.llong	.LFE0
	.2byte	0x1
	.byte	0x61
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL7
	.llong	.LVL9
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.llong	.LVL9
	.llong	.LVL15
	.2byte	0x1
	.byte	0x69
	.llong	.LVL15
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL7
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
	.llong	.LVL9
	.llong	.LVL12
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.llong	.LVL12
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
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
.LASF5:
	.string	"float"
.LASF7:
	.string	"../DSPF_sp_biquad_cn.c"
.LASF6:
	.string	"GNU C 4.7.0"
.LASF0:
	.string	"delay"
.LASF9:
	.string	"DSPF_sp_biquad_cn"
.LASF1:
	.string	"sum1"
.LASF8:
	.string	"/cygdrive/e/something/newtext/DSPF_sp_biquad/DSPF_sp_biquad/Debug"
.LASF4:
	.string	"sum5"
.LASF2:
	.string	"sum2"
.LASF3:
	.string	"sum4"
.LASF10:
	.string	"sum3"
