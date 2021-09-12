	.file	"DSP_firlms2_cn.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSP_firlms2_cn,"ax",@progbits
	.align	2
	.global	DSP_firlms2_cn
	.type	DSP_firlms2_cn, @function
DSP_firlms2_cn:
.LFB0:
	.file 1 "../DSP_firlms2_cn.c"
	.loc 1 7 0
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
		SMOVIL		-40, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R11:R10, *-AR14[4]
		SSTDW		R13:R12, *-AR14[5]
		SMOVIL		-34, R46
		SMOVIL		-1, R47
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R47:R46,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R47:R46
		SNOP		1
		SMVAAGH.M1		OR11, R47:R46
		SNOP		1
		SMVAGA36.M1		R47:R46, AR10
		SNOP		1
		SSTH		R14, *AR10
		SSTW		R16, *-AR14[12]
	.loc 1 9 0
		SMOVIL		0, R46
		SSTW		R46, *-AR14[4]
	.loc 1 11 0
		SMOVIL		0, R46
		SSTW		R46, *-AR14[3]
		SBR		.L2
		SNOP		6
.L3:
.LBB2:
	.loc 1 12 0 discriminator 2
		SLDW		*-AR14[3], R42
		SNOP		5
		SLDW		*-AR14[3], R46
		SNOP		5
		SSHFAR		31, R46, R46
		SMOV.M1		R46, R43
		SADD.M1		R42,R42,R46
		SLTU		R46, R42, R48
		SADD.M1		R43,R43,R47
		SADD.M1		R47,R48,R48
		SMOV.M1		R48, R47
	;no-op trunc di R47:R46 to pdi R47:R46
		SLDDW		*-AR14[5], R49:R48
		SNOP		5
		SMVAGA36.M1		R49:R48, OR11
		SNOP		1
		SADDA.M1		R47:R46,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R47:R46
		SNOP		1
		SMVAAGH.M1		OR11, R47:R46
		SNOP		1
		SMVAGA36.M1		R47:R46, AR10
		SNOP		1
		SLDH		*AR10, R46
		SNOP		5
		SSHFLL		16, R46, R48
		SSHFAR		16, R48, R48
		SMOVIL		-34, R46
		SMOVIL		-1, R47
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R47:R46,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R47:R46
		SNOP		1
		SMVAAGH.M1		OR11, R47:R46
		SNOP		1
		SMVAGA36.M1		R47:R46, AR10
		SNOP		1
		SLDH		*AR10, R46
		SNOP		5
		SSHFLL		16, R46, R46
		SSHFAR		16, R46, R46
		SMULIS.M1		R46,R48,R46
		SNOP		2
		SSTW		R46, *-AR14[5]
	.loc 1 13 0 discriminator 2
		SLDW		*-AR14[5], R46
		SNOP		5
		SSHFAR		15, R46, R46
		SSTW		R46, *-AR14[5]
	.loc 1 14 0 discriminator 2
		SLDW		*-AR14[3], R44
		SNOP		5
		SLDW		*-AR14[3], R46
		SNOP		5
		SSHFAR		31, R46, R46
		SMOV.M1		R46, R45
		SADD.M1		R44,R44,R46
		SLTU		R46, R44, R48
		SADD.M1		R45,R45,R47
		SADD.M1		R47,R48,R48
		SMOV.M1		R48, R47
	;no-op trunc di R47:R46 to pdi R47:R46
		SLDDW		*-AR14[4], R49:R48
		SNOP		5
		SMVAGA36.M1		R49:R48, OR11
		SNOP		1
		SADDA.M1		R47:R46,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R47:R46
		SNOP		1
		SMVAAGH.M1		OR11, R47:R46
		SNOP		1
		SMVAGA36.M1		R47:R46, AR10
		SNOP		1
		SLDH		*AR10, R46
		SNOP		5
		SSHFLL		16, R46, R46
		SSHFAR		16, R46, R46
		SLDW		*-AR14[5], R47
		SNOP		5
		SADD.M1		R46,R47,R46
		SSTW		R46, *-AR14[5]
	.loc 1 15 0 discriminator 2
		SLDW		*-AR14[3], R50
		SNOP		5
		SLDW		*-AR14[3], R46
		SNOP		5
		SSHFAR		31, R46, R46
		SMOV.M1		R46, R51
		SMOVIL		1, R48
		SMOVIL		0, R49
		SADD.M1		R48,R50,R46
		SLTU		R46, R50, R52
		SADD.M1		R49,R51,R47
		SADD.M1		R47,R52,R48
		SMOV.M1		R48, R47
		SADD.M1		R46,R46,R48
		SLTU		R48, R46, R52
		SADD.M1		R47,R47,R49
		SADD.M1		R49,R52,R46
		SMOV.M1		R46, R49
		SMOV.M1		R48, R46
		SMOV.M1		R49, R47
	;no-op trunc di R47:R46 to pdi R47:R46
		SLDDW		*-AR14[5], R49:R48
		SNOP		5
		SMVAGA36.M1		R49:R48, OR11
		SNOP		1
		SADDA.M1		R47:R46,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R47:R46
		SNOP		1
		SMVAAGH.M1		OR11, R47:R46
		SNOP		1
		SMVAGA36.M1		R47:R46, AR10
		SNOP		1
		SLDH		*AR10, R46
		SNOP		5
		SSHFLL		16, R46, R46
		SSHFAR		16, R46, R46
		SLDW		*-AR14[5], R47
		SNOP		5
		SMULIS.M1		R47,R46,R46
		SNOP		2
		SLDW		*-AR14[4], R47
		SNOP		5
		SADD.M1		R46,R47,R46
		SSTW		R46, *-AR14[4]
.LBE2:
	.loc 1 11 0 discriminator 2
		SLDW		*-AR14[3], R46
		SNOP		5
		SADD.M1		1,R46,R46
		SSTW		R46, *-AR14[3]
.L2:
	.loc 1 11 0 is_stmt 0 discriminator 1
		SLDW		*-AR14[3], R47
		SNOP		5
		SLDW		*-AR14[12], R46
		SNOP		5
		SLT		R47, R46, R46
		SMOV.M1		R46, R0
	[R0]	SBR		.L3
		SNOP		6
	.loc 1 18 0 is_stmt 1
		SLDW		*-AR14[4], R42
		SNOP		5
	.loc 1 19 0
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
	.size	DSP_firlms2_cn, .-DSP_firlms2_cn
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xdd
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
	.4byte	0xc1
	.llong	.LFB0
	.llong	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0xc1
	.uleb128 0x3
	.string	"h"
	.byte	0x1
	.byte	0x2
	.4byte	0xc8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"x"
	.byte	0x1
	.byte	0x3
	.4byte	0xd5
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"b"
	.byte	0x1
	.byte	0x4
	.4byte	0xce
	.byte	0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x3
	.string	"nh"
	.byte	0x1
	.byte	0x5
	.4byte	0xc1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.string	"i"
	.byte	0x1
	.byte	0x8
	.4byte	0xc1
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x4
	.string	"r"
	.byte	0x1
	.byte	0x9
	.4byte	0xc1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x5
	.llong	.LBB2
	.llong	.LBE2
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0x1
	.byte	0xc
	.4byte	0xc1
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.byte	0x8
	.4byte	0xce
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x8
	.byte	0x8
	.4byte	0xdb
	.uleb128 0xa
	.4byte	0xce
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
	.uleb128 0x5
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
.LASF4:
	.string	"/cygdrive/e/project/function  demo/asm/DSP_firlms2/Debug"
.LASF2:
	.string	"GNU C 4.7.0"
.LASF5:
	.string	"DSP_firlms2_cn"
.LASF3:
	.string	"../DSP_firlms2_cn.c"
.LASF1:
	.string	"short int"
.LASF0:
	.string	"temp"
