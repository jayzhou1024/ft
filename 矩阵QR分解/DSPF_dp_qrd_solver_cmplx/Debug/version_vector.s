	.file	"version_vector.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSPF_dp_qrd_solver_cmplx_v1,"ax",@progbits
	.align	2
	.global	DSPF_dp_qrd_solver_cmplx_v1
	.type	DSPF_dp_qrd_solver_cmplx_v1, @function
DSPF_dp_qrd_solver_cmplx_v1:
.LFB3:
	.file 1 "../version_vector.c"
	.loc 1 14 0
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
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTW		R10, *-AR14[5]
		SSTW		R12, *-AR14[6]
		SSTDW		R15:R14, *-AR14[4]
		SSTDW		R17:R16, *-AR14[5]
		SSTDW		R19:R18, *-AR14[6]
		SSTDW		R21:R20, *-AR14[7]
		SSTDW		R23:R22, *-AR14[8]
	.loc 1 19 0
		SMOVIL		0, R42
	.loc 1 20 0
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
.LFE3:
	.size	DSPF_dp_qrd_solver_cmplx_v1, .-DSPF_dp_qrd_solver_cmplx_v1
	.section	.text.complex_dp_div,"ax",@progbits
	.align	2
	.type	complex_dp_div, @function
complex_dp_div:
.LFB4:
	.loc 1 24 0
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
		SMOVIL		-80, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[10]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SSTDW		R11:R10, *-AR14[6]
		SSTDW		R13:R12, *-AR14[7]
		SSTDW		R15:R14, *-AR14[8]
		SSTDW		R17:R16, *-AR14[9]
		SSTDW		R19:R18, *-AR14[10]
		SSTDW		R21:R20, *-AR14[11]
	.loc 1 29 0
		SLDDW		*-AR14[6], R45:R44
		SNOP		5
		SLDDW		*-AR14[6], R43:R42
		SNOP		5
		SFMULD.M1		R45:R44, R43:R42, R45:R44
		SNOP		5
		SLDDW		*-AR14[7], R47:R46
		SNOP		5
		SLDDW		*-AR14[7], R43:R42
		SNOP		5
		SFMULD.M1		R47:R46, R43:R42, R43:R42
		SNOP		5
		SFADDD.M1		R45:R44, R43:R42, R43:R42
		SNOP		4
		SMOV.M1		R42, R10
		SMOV.M1		R43, R11
		SBR		sqrt
		SMOVIL		.L4, R62
		SMOVIH		.L4, R62
		SMOVIH4.L		.L4, R63
		SNOP		4
.L4:
		SMOV.M1		R10, R42
		SMOV.M1		R11, R43
		SFDPSP32.M1		R43:R42, R42
		SNOP		2
		SSTW		R42, *-AR14[5]
	.loc 1 30 0
		SLDDW		*-AR14[8], R45:R44
		SNOP		5
		SLDDW		*-AR14[8], R43:R42
		SNOP		5
		SFMULD.M1		R45:R44, R43:R42, R45:R44
		SNOP		5
		SLDDW		*-AR14[9], R47:R46
		SNOP		5
		SLDDW		*-AR14[9], R43:R42
		SNOP		5
		SFMULD.M1		R47:R46, R43:R42, R43:R42
		SNOP		5
		SFADDD.M1		R45:R44, R43:R42, R43:R42
		SNOP		4
		SMOV.M1		R42, R10
		SMOV.M1		R43, R11
		SBR		sqrt
		SMOVIL		.L5, R62
		SMOVIH		.L5, R62
		SMOVIH4.L		.L5, R63
		SNOP		4
.L5:
		SMOV.M1		R10, R42
		SMOV.M1		R11, R43
		SFDPSP32.M1		R43:R42, R42
		SNOP		2
		SSTW		R42, *-AR14[6]
	.loc 1 31 0
		SLDW		*-AR14[5], R46
		SNOP		5
		SLDW		*-AR14[6], R43
		SNOP		5
		SMOVIL		1073741824, R45
		SMOVIH		1073741824, R45
		SFRCPS32.M1		R43, R42
		SFMULS32.M1		R43, R42, R44
		SNOP		3
		SFSUBS32.M1		R44, R45, R44
		SNOP		2
		SFMULS32.M1		R42, R44, R42
		SNOP		3
		SFMULS32.M1		R43, R42, R44
		SNOP		3
		SFSUBS32.M1		R44, R45, R44
		SNOP		2
		SFMULS32.M1		R42, R44, R42
		SNOP		3
		SFMULS32.M1		R46, R42, R42
		SNOP		3
		SSTW		R42, *-AR14[7]
	.loc 1 34 0
		SLDDW		*-AR14[7], R11:R10
		SNOP		5
		SLDDW		*-AR14[6], R13:R12
		SNOP		5
		SBR		atan2
		SMOVIL		.L6, R62
		SMOVIH		.L6, R62
		SMOVIH4.L		.L6, R63
		SNOP		4
.L6:
		SMOV.M1		R10, R42
		SMOV.M1		R11, R43
		SFDPSP32.M1		R43:R42, R42
		SNOP		2
		SSTW		R42, *-AR14[8]
	.loc 1 35 0
		SLDDW		*-AR14[9], R11:R10
		SNOP		5
		SLDDW		*-AR14[8], R13:R12
		SNOP		5
		SBR		atan2
		SMOVIL		.L7, R62
		SMOVIH		.L7, R62
		SMOVIH4.L		.L7, R63
		SNOP		4
.L7:
		SMOV.M1		R10, R42
		SMOV.M1		R11, R43
		SFDPSP32.M1		R43:R42, R42
		SNOP		2
		SSTW		R42, *-AR14[9]
	.loc 1 36 0
		SLDW		*-AR14[8], R43
		SNOP		5
		SLDW		*-AR14[9], R42
		SNOP		5
		SFSUBS32.M1		R42, R43, R42
		SNOP		2
		SSTW		R42, *-AR14[10]
	.loc 1 39 0
		SLDW		*-AR14[10], R42
		SNOP		5
		SFSPDP32T.M1		R42, R43:R42
		SNOP		1
		SMOV.M1		R42, R10
		SMOV.M1		R43, R11
		SBR		cos
		SMOVIL		.L8, R62
		SMOVIH		.L8, R62
		SMOVIH4.L		.L8, R63
		SNOP		4
.L8:
		SMOV.M1		R10, R44
		SMOV.M1		R11, R45
		SLDW		*-AR14[7], R42
		SNOP		5
		SFSPDP32T.M1		R42, R43:R42
		SNOP		1
		SFMULD.M1		R45:R44, R43:R42, R43:R42
		SNOP		5
		SLDDW		*-AR14[10], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, AR10
		SNOP		1
		SSTDW		R43:R42, *AR10
	.loc 1 40 0
		SLDW		*-AR14[10], R42
		SNOP		5
		SFSPDP32T.M1		R42, R43:R42
		SNOP		1
		SMOV.M1		R42, R10
		SMOV.M1		R43, R11
		SBR		sin
		SMOVIL		.L9, R62
		SMOVIH		.L9, R62
		SMOVIH4.L		.L9, R63
		SNOP		4
.L9:
		SMOV.M1		R10, R44
		SMOV.M1		R11, R45
		SLDW		*-AR14[7], R42
		SNOP		5
		SFSPDP32T.M1		R42, R43:R42
		SNOP		1
		SFMULD.M1		R45:R44, R43:R42, R43:R42
		SNOP		5
		SLDDW		*-AR14[11], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, AR10
		SNOP		1
		SSTDW		R43:R42, *AR10
	.loc 1 41 0
		SLDDW		*+AR15[10], R63:R62
		SNOP		5
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
.LFE4:
	.size	complex_dp_div, .-complex_dp_div
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2a3
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x1
	.4byte	.LASF38
	.4byte	.LASF39
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x2
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF40
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.4byte	0x38
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x1ab
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0xb
	.4byte	0x1ab
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0xb
	.4byte	0x1ab
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"Q"
	.byte	0x1
	.byte	0xc
	.4byte	0x1bd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"R"
	.byte	0x1
	.byte	0xc
	.4byte	0x1bd
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"b"
	.byte	0x1
	.byte	0xc
	.4byte	0x1bd
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"y"
	.byte	0x1
	.byte	0xd
	.4byte	0x1bd
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0xd
	.4byte	0x1bd
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"row"
	.byte	0x1
	.byte	0xf
	.4byte	0x70
	.uleb128 0x7
	.string	"col"
	.byte	0x1
	.byte	0xf
	.4byte	0x70
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0xf
	.4byte	0x70
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0xf
	.4byte	0x70
	.uleb128 0x7
	.string	"j"
	.byte	0x1
	.byte	0xf
	.4byte	0x70
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x10
	.4byte	0x85
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x10
	.4byte	0x85
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x10
	.4byte	0x85
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x10
	.4byte	0x85
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x10
	.4byte	0x85
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x10
	.4byte	0x85
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x10
	.4byte	0x85
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x10
	.4byte	0x85
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x1
	.byte	0x11
	.4byte	0x1c3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xa
	.4byte	0x38
	.uleb128 0xb
	.byte	0x1
	.4byte	0x8c
	.4byte	0x1bd
	.uleb128 0xc
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.4byte	0x1b0
	.uleb128 0xe
	.4byte	0x85
	.4byte	0x1d3
	.uleb128 0xf
	.4byte	0x77
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x2a0
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x1
	.byte	0x17
	.4byte	0x8c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x1
	.byte	0x17
	.4byte	0x8c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x1
	.byte	0x17
	.4byte	0x8c
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x1
	.byte	0x17
	.4byte	0x8c
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x1
	.byte	0x17
	.4byte	0x2a0
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x1
	.byte	0x17
	.4byte	0x2a0
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x1
	.byte	0x19
	.4byte	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x1
	.byte	0x19
	.4byte	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x1
	.byte	0x19
	.4byte	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x1
	.byte	0x1a
	.4byte	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x1
	.byte	0x1a
	.4byte	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x1a
	.4byte	0x85
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.4byte	0x8c
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
	.uleb128 0xa
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x2107
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.llong	.LFB3
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
	.llong	.LFE3
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.llong	0
	.llong	0
.LLST1:
	.llong	.LFB4
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
	.llong	.LFE4
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
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.llong	.LFB4
	.llong	.LFE4-.LFB4
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LFB3
	.llong	.LFE3
	.llong	.LFB4
	.llong	.LFE4
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"char"
.LASF41:
	.string	"complex_dp_div"
.LASF17:
	.string	"ximag"
.LASF28:
	.string	"z_real"
.LASF32:
	.string	"y_mag"
.LASF25:
	.string	"x_imag"
.LASF34:
	.string	"x_angle"
.LASF11:
	.string	"float"
.LASF16:
	.string	"xreal"
.LASF23:
	.string	"sum_imag"
.LASF13:
	.string	"Nrows"
.LASF3:
	.string	"unsigned char"
.LASF19:
	.string	"yimag"
.LASF6:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF35:
	.string	"y_angle"
.LASF24:
	.string	"x_real"
.LASF12:
	.string	"double"
.LASF33:
	.string	"z_mag"
.LASF36:
	.string	"z_angle"
.LASF18:
	.string	"yreal"
.LASF5:
	.string	"unsigned int"
.LASF27:
	.string	"y_imag"
.LASF21:
	.string	"zimag"
.LASF0:
	.string	"long long unsigned int"
.LASF40:
	.string	"DSPF_dp_qrd_solver_cmplx_v1"
.LASF30:
	.string	"temp_cplx"
.LASF9:
	.string	"sizetype"
.LASF2:
	.string	"long long int"
.LASF15:
	.string	"loop_cnt"
.LASF37:
	.string	"GNU C 4.7.0"
.LASF29:
	.string	"z_imag"
.LASF26:
	.string	"y_real"
.LASF20:
	.string	"zreal"
.LASF38:
	.string	"../version_vector.c"
.LASF8:
	.string	"short int"
.LASF14:
	.string	"Ncols"
.LASF1:
	.string	"long int"
.LASF7:
	.string	"signed char"
.LASF22:
	.string	"sum_real"
.LASF39:
	.string	"/cygdrive/c/Users/LinGuanguo/source/\346\235\234\344\272\232\345\250\237\350\200\201\345\270\210\351\241\271\347\233\256/DSPF_dp_qrd_solver_cmplx/Debug"
.LASF31:
	.string	"x_mag"
