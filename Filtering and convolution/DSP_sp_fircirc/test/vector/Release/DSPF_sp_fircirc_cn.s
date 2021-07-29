	.file	"DSPF_sp_fircirc_cn.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSPF_sp_fircirc_cn,"ax",@progbits
	.align	2
	.global	DSPF_sp_fircirc_cn
	.type	DSPF_sp_fircirc_cn, @function
DSPF_sp_fircirc_cn:
.LFB0:
	.file 1 "../DSPF_sp_fircirc_cn.c"
	.loc 1 3 0
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
		SSTDW		R11:R10, *-AR14[4]
		SSTDW		R13:R12, *-AR14[5]
		SSTDW		R15:R14, *-AR14[6]
		SSTW		R16, *-AR14[13]
		SSTW		R18, *-AR14[14]
		SSTW		R20, *-AR14[15]
		SMOVIL		-64, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SSTW		R22, *AR10
	.loc 1 5 0
		SLDW		*-AR14[14], R42
		SNOP		5
		SADD.M1		-1,R42,R42
		SMOVIL		1, R43
		SSHFLL		R42, R43, R42
		SSTW		R42, *-AR14[6]
	.loc 1 8 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[3]
		SBR		.L2
		SNOP		6
.L5:
	.loc 1 10 0
		SMOVIL		0, R42
		SMOVIH		0, R42
		SSTW		R42, *-AR14[5]
	.loc 1 11 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[4]
		SBR		.L3
		SNOP		6
.L4:
	.loc 1 15 0 discriminator 2
		SLDW		*-AR14[3], R43
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SADD.M1		R42,R43,R43
		SLDW		*-AR14[13], R42
		SNOP		5
		SADD.M1		R42,R43,R43
		SLDW		*-AR14[6], R42
		SNOP		5
		SADD.M1		-1,R42,R42
		SAND		R42, R43, R42
		SMOV.M1		R42, R44
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R45
		SADD.M1		R44,R44,R42
		SLTU		R42, R44, R50
		SADD.M1		R45,R45,R43
		SADD.M1		R43,R50,R50
		SMOV.M1		R50, R43
		SADD.M1		R42,R42,R50
		SLTU		R50, R42, R52
		SADD.M1		R43,R43,R51
		SADD.M1		R51,R52,R42
		SMOV.M1		R42, R51
		SMOV.M1		R50, R42
		SMOV.M1		R51, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[4], R51:R50
		SNOP		5
		SMVAGA36.M1		R51:R50, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R52
		SNOP		5
		SLDW		*-AR14[4], R46
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R47
		SADD.M1		R46,R46,R42
		SLTU		R42, R46, R50
		SADD.M1		R47,R47,R43
		SADD.M1		R43,R50,R50
		SMOV.M1		R50, R43
		SADD.M1		R42,R42,R50
		SLTU		R50, R42, R53
		SADD.M1		R43,R43,R51
		SADD.M1		R51,R53,R42
		SMOV.M1		R42, R51
		SMOV.M1		R50, R42
		SMOV.M1		R51, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[5], R51:R50
		SNOP		5
		SMVAGA36.M1		R51:R50, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SFMULS32.M1		R52, R42, R42
		SNOP		3
		SLDW		*-AR14[5], R43
		SNOP		5
		SFADDS32.M1		R43, R42, R42
		SNOP		2
		SSTW		R42, *-AR14[5]
	.loc 1 11 0 discriminator 2
		SLDW		*-AR14[4], R42
		SNOP		5
		SADD.M1		1,R42,R42
		SSTW		R42, *-AR14[4]
.L3:
	.loc 1 11 0 is_stmt 0 discriminator 1
		SLDW		*-AR14[4], R43
		SNOP		5
		SLDW		*-AR14[15], R42
		SNOP		5
		SLT		R43, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L4
		SNOP		6
	.loc 1 17 0 is_stmt 1
		SLDW		*-AR14[3], R48
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R49
		SADD.M1		R48,R48,R42
		SLTU		R42, R48, R50
		SADD.M1		R49,R49,R43
		SADD.M1		R43,R50,R50
		SMOV.M1		R50, R43
		SADD.M1		R42,R42,R50
		SLTU		R50, R42, R52
		SADD.M1		R43,R43,R51
		SADD.M1		R51,R52,R42
		SMOV.M1		R42, R51
		SMOV.M1		R50, R42
		SMOV.M1		R51, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[6], R51:R50
		SNOP		5
		SMVAGA36.M1		R51:R50, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[5], R50
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R50, *AR10
	.loc 1 8 0
		SLDW		*-AR14[3], R42
		SNOP		5
		SADD.M1		1,R42,R42
		SSTW		R42, *-AR14[3]
.L2:
	.loc 1 8 0 is_stmt 0 discriminator 1
		SLDW		*-AR14[3], R43
		SNOP		5
		SMOVIL		-64, R50
		SMOVIL		-1, R51
		SADDA.M1		R51:R50,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SLT		R43, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L5
		SNOP		6
	.loc 1 19 0 is_stmt 1
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
	.size	DSPF_sp_fircirc_cn, .-DSPF_sp_fircirc_cn
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xfe
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
	.4byte	.LLST0
	.byte	0x1
	.4byte	0xe2
	.uleb128 0x3
	.string	"x"
	.byte	0x1
	.byte	0x1
	.4byte	0xe2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"h"
	.byte	0x1
	.byte	0x1
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"y"
	.byte	0x1
	.byte	0x1
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0x1
	.byte	0x2
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4
	.4byte	.LASF1
	.byte	0x1
	.byte	0x2
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.string	"nh"
	.byte	0x1
	.byte	0x2
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.string	"ny"
	.byte	0x1
	.byte	0x2
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.string	"i"
	.byte	0x1
	.byte	0x5
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x5
	.string	"j"
	.byte	0x1
	.byte	0x5
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.string	"mod"
	.byte	0x1
	.byte	0x5
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"sum"
	.byte	0x1
	.byte	0x6
	.4byte	0xed
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.4byte	0xe8
	.uleb128 0x7
	.4byte	0xed
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x6
	.byte	0x8
	.4byte	0xed
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0xa
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
	.string	"/cygdrive/e/project/function  demo/function/DSPF_sp_fircirc/Release"
.LASF2:
	.string	"float"
.LASF3:
	.string	"GNU C 4.7.0"
.LASF4:
	.string	"../DSPF_sp_fircirc_cn.c"
.LASF1:
	.string	"csize"
.LASF6:
	.string	"DSPF_sp_fircirc_cn"
.LASF0:
	.string	"index"
