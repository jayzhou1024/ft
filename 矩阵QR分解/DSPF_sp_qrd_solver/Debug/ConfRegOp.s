	.file	"ConfRegOp.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.GetConfReg,"ax",@progbits
	.align	2
	.global	GetConfReg
	.type	GetConfReg, @function
GetConfReg:
.LFB0:
	.file 1 "../ConfRegOp.c"
	.loc 1 2 0
	.cfi_startproc
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, 0
		SADDA.M1		16,AR15,AR14
.LCFI1:
	.cfi_def_cfa 14, 0
		SNOP		1
		SMOVIL		-8, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTW		R10, *-AR14[3]
	.loc 1 3 0
		SLDW		*-AR14[3], R42
		SNOP		5
		SMOVIL		0, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
	.loc 1 4 0
		SMOV.M1		R42, R10
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
	.cfi_endproc
.LFE0:
	.size	GetConfReg, .-GetConfReg
	.section	.text.SetConfReg,"ax",@progbits
	.align	2
	.global	SetConfReg
	.type	SetConfReg, @function
SetConfReg:
.LFB1:
	.loc 1 7 0
	.cfi_startproc
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI2:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, 0
		SADDA.M1		16,AR15,AR14
.LCFI3:
	.cfi_def_cfa 14, 0
		SNOP		1
		SMOVIL		-8, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTW		R10, *-AR14[3]
		SSTW		R12, *-AR14[4]
	.loc 1 8 0
		SLDW		*-AR14[3], R42
		SNOP		5
		SMOVIL		0, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDW		*-AR14[4], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 9 0
		SNOP		1
	.loc 1 10 0
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
	.cfi_endproc
.LFE1:
	.size	SetConfReg, .-SetConfReg
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF4
	.byte	0x1
	.4byte	.LASF5
	.4byte	.LASF6
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.4byte	.LASF7
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.4byte	0x66
	.llong	.LFB0
	.llong	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x66
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x1
	.byte	0x1
	.4byte	0x6d
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF8
	.byte	0x1
	.byte	0x6
	.byte	0x1
	.llong	.LFB1
	.llong	.LFE1
	.4byte	.LLST1
	.byte	0x1
	.4byte	0xb3
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x1
	.byte	0x6
	.4byte	0x6d
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0x6
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.llong	.LCFI1
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	.LCFI1
	.llong	.LFE0
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.llong	0
	.llong	0
.LLST1:
	.llong	.LFB1
	.llong	.LCFI2
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI2
	.llong	.LCFI3
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	.LCFI3
	.llong	.LFE1
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.llong	0
	.llong	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.llong	.LFB0
	.llong	.LFE0-.LFB0
	.llong	.LFB1
	.llong	.LFE1-.LFB1
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LFB0
	.llong	.LFE0
	.llong	.LFB1
	.llong	.LFE1
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF2:
	.string	"data"
.LASF4:
	.string	"GNU C 4.7.0"
.LASF8:
	.string	"SetConfReg"
.LASF7:
	.string	"GetConfReg"
.LASF6:
	.string	"/cygdrive/c/Users/LinGuanguo/source/\346\235\234\344\272\232\345\250\237\350\200\201\345\270\210\351\241\271\347\233\256/DSPF_sp_qrd_solver/Debug"
.LASF1:
	.string	"addr"
.LASF0:
	.string	"long unsigned int"
.LASF3:
	.string	"unsigned int"
.LASF5:
	.string	"../ConfRegOp.c"
