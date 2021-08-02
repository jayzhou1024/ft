	.file	"DSP_fir_r8_h16_cn.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSP_fir_r8_h16_cn,"ax",@progbits
	.align	2
	.global	DSP_fir_r8_h16_cn
	.type	DSP_fir_r8_h16_cn, @function
DSP_fir_r8_h16_cn:
.LFB3:
	.file 1 "../DSP_fir_r8_h16_cn.c"
	.loc 1 13 0
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
		SMOVIL		-48, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R11:R10, *-AR14[4]
		SSTDW		R13:R12, *-AR14[5]
		SSTDW		R15:R14, *-AR14[6]
		SSTW		R16, *-AR14[13]
	.loc 1 15 0
		SMOVIL		0, R48
		SSTW		R48, *-AR14[4]
		SBR		.L2
		SNOP		6
.L5:
	.loc 1 16 0
		SMOVIL		0, R48
		SSTW		R48, *-AR14[5]
	.loc 1 17 0
		SMOVIL		0, R48
		SSTW		R48, *-AR14[3]
		SBR		.L3
		SNOP		6
.L4:
	.loc 1 18 0 discriminator 2
		SLDW		*-AR14[3], R49
		SNOP		5
		SLDW		*-AR14[4], R48
		SNOP		5
		SADD.M1		R48,R49,R48
		SMOV.M1		R48, R42
		SSHFAR		31, R48, R48
		SMOV.M1		R48, R43
		SADD.M1		R42,R42,R48
		SLTU		R48, R42, R50
		SADD.M1		R43,R43,R49
		SADD.M1		R49,R50,R50
		SMOV.M1		R50, R49
	;no-op trunc di R49:R48 to pdi R49:R48
		SLDDW		*-AR14[4], R51:R50
		SNOP		5
		SMVAGA36.M1		R51:R50, OR11
		SNOP		1
		SADDA.M1		R49:R48,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R49:R48
		SNOP		1
		SMVAAGH.M1		OR11, R49:R48
		SNOP		1
		SMVAGA36.M1		R49:R48, AR10
		SNOP		1
		SLDH		*AR10, R48
		SNOP		5
		SSHFLL		16, R48, R52
		SSHFAR		16, R52, R52
		SLDW		*-AR14[3], R44
		SNOP		5
		SLDW		*-AR14[3], R48
		SNOP		5
		SSHFAR		31, R48, R48
		SMOV.M1		R48, R45
		SADD.M1		R44,R44,R48
		SLTU		R48, R44, R50
		SADD.M1		R45,R45,R49
		SADD.M1		R49,R50,R50
		SMOV.M1		R50, R49
	;no-op trunc di R49:R48 to pdi R49:R48
		SLDDW		*-AR14[5], R51:R50
		SNOP		5
		SMVAGA36.M1		R51:R50, OR11
		SNOP		1
		SADDA.M1		R49:R48,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R49:R48
		SNOP		1
		SMVAAGH.M1		OR11, R49:R48
		SNOP		1
		SMVAGA36.M1		R49:R48, AR10
		SNOP		1
		SLDH		*AR10, R48
		SNOP		5
		SSHFLL		16, R48, R48
		SSHFAR		16, R48, R48
		SMULIS.M1		R48,R52,R48
		SNOP		2
		SLDW		*-AR14[5], R49
		SNOP		5
		SADD.M1		R48,R49,R48
		SSTW		R48, *-AR14[5]
	.loc 1 17 0 discriminator 2
		SLDW		*-AR14[3], R48
		SNOP		5
		SADD.M1		1,R48,R48
		SSTW		R48, *-AR14[3]
.L3:
	.loc 1 17 0 is_stmt 0 discriminator 1
		SLDW		*-AR14[3], R48
		SNOP		5
		SMOVIL		15, R0
		SLT		R0, R48, R48
		SMOV.M1		R48, R0
	[!R0]	SBR		.L4
		SNOP		6
	.loc 1 19 0 is_stmt 1
		SLDW		*-AR14[4], R46
		SNOP		5
		SLDW		*-AR14[4], R48
		SNOP		5
		SSHFAR		31, R48, R48
		SMOV.M1		R48, R47
		SADD.M1		R46,R46,R48
		SLTU		R48, R46, R50
		SADD.M1		R47,R47,R49
		SADD.M1		R49,R50,R50
		SMOV.M1		R50, R49
	;no-op trunc di R49:R48 to pdi R49:R48
		SLDDW		*-AR14[6], R51:R50
		SNOP		5
		SMVAGA36.M1		R51:R50, OR11
		SNOP		1
		SADDA.M1		R49:R48,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R49:R48
		SNOP		1
		SMVAAGH.M1		OR11, R49:R48
		SNOP		1
		SLDW		*-AR14[5], R50
		SNOP		5
		SSHFAR		15, R50, R50
		SMVAGA36.M1		R49:R48, AR10
		SNOP		1
		SSTH		R50, *AR10
	.loc 1 15 0
		SLDW		*-AR14[4], R48
		SNOP		5
		SADD.M1		1,R48,R48
		SSTW		R48, *-AR14[4]
.L2:
	.loc 1 15 0 is_stmt 0 discriminator 1
		SLDW		*-AR14[4], R49
		SNOP		5
		SLDW		*-AR14[13], R48
		SNOP		5
		SLT		R49, R48, R48
		SMOV.M1		R48, R0
	[R0]	SBR		.L5
		SNOP		6
	.loc 1 22 0 is_stmt 1
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
	.size	DSP_fir_r8_h16_cn, .-DSP_fir_r8_h16_cn
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x10d
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
	.4byte	.LLST0
	.byte	0x1
	.4byte	0xff
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0x9
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0xa
	.4byte	0xff
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"r"
	.byte	0x1
	.byte	0xb
	.4byte	0x10a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"nr"
	.byte	0x1
	.byte	0xc
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0xe
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x6
	.string	"j"
	.byte	0x1
	.byte	0xe
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x6
	.string	"sum"
	.byte	0x1
	.byte	0xe
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.4byte	0x105
	.uleb128 0x8
	.4byte	0x5b
	.uleb128 0x7
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
	.string	"../DSP_fir_r8_h16_cn.c"
.LASF14:
	.string	"DSP_fir_r8_h16_cn"
.LASF1:
	.string	"unsigned char"
.LASF10:
	.string	"char"
.LASF13:
	.string	"/cygdrive/c/Users/Hiccup the Toothful/Desktop/\345\233\275\347\247\221\345\244\247DSP/MyProject/DONE/DSP_fir_r8_h16/Debug"
.LASF8:
	.string	"long int"
.LASF2:
	.string	"short unsigned int"
.LASF5:
	.string	"signed char"
.LASF6:
	.string	"short int"
.LASF9:
	.string	"sizetype"
