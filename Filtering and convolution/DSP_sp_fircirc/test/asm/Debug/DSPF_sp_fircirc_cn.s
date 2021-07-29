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
.LVL0:
	.loc 1 1 0
		SMVAGA36.M1		R15:R14, OR0
	|	SMOVIL		0, R42
	|	SADD.M2		-1,R18,R18
.LVL1:
		SMVAGA36.M1		R13:R12, OR1
	|	SLT		R42, R22, R0
	|	SADD.M2		R22,R16,R59
		SADDA.M2		-4,OR0,AR4
	|[!R0]	SBR		.L1
	|	SMOVIL		1, R58
	|	SMVAGA36.M1		R11:R10, AR0
		SADDA.M1		-4,OR1,AR2
	|	SSHFLL		R18, R58, R2
.LVL2:
		SLT		R42, R20, R1
		SMVAAGL.M1		AR4, R47:R46
	|	SADD.M2		-1,R2,R3
		SMVAAGL.M1		AR2, R49:R48
		SMVAAGH.M1		AR4, R47:R46
	[R0]	SMVAAGH.M1		AR2, R49:R48
		SNOP		1
	;; condjump to .L1 occurs
.LVL3:
.L3:
	.loc 1 11 0 discriminator 1
	[!R1]	SBR		.L6
	|	SMOVIL		0, R53
	|	SMOV.M2		R48, R42
	|	SMOV.M1		R49, R43
	.loc 1 1 0 discriminator 1
		SADD.M2		R20,R16,R57
	|	SMOV.M1		R16, R51
	|	SMOVIH		0, R53
		SNOP		5
	.loc 1 11 0 discriminator 1
	;; condjump to .L6 occurs
.LVL4:
.L4:
	.loc 1 15 0 discriminator 2
		SAND		R3, R51, R50
	|	SMOV.M2		R43, R54
	|	SADD.M1		4,R42,R52
		SSHFLL		1, R50, R43
	|	SMVAAA.M2		AR0, OR11
	|	SADD.M1		1,R51,R51
		SSHFAR		31, R50, R55
		SLTU		R43, R50, R56
		SSHFLL		1, R55, R8
		SSHFLL		2, R50, R44
	|	SADD.M2		R8,R56,R9
		SLTU		R44, R43, R10
		SLTU		R52, R42, R11
	|	SMOV.M2		R52, R42
		SSHFLL		1, R9, R45
	|	SADD.M2		R54,R11,R43
		SADD.M1		R45,R10,R45
	|	SMVAGA36.M2		R43:R42, AR10
	|	SEQ		R57, R51, R0
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,OR11,AR12
		SLDW		*AR10, R12
		SLDW		*AR12, R44
		SNOP		4
	.loc 1 11 0 discriminator 2
	[!R0]	SBR		.L4
	.loc 1 15 0 discriminator 2
		SFMULAS32.M2	R44, R12, R53, R53
		SNOP		5
.LVL5:
	.loc 1 11 0 discriminator 2
	;; condjump to .L4 occurs
		SADD.M2		1,R16,R16
	|	SADD.M1		4,R46,R13
	.loc 1 8 0
		SEQ		R59, R16, R2
	[!R2]	SBR		.L3
	|	SLTU		R13, R46, R15
	|	SMOV.M2		R13, R46
		SADD.M2		R47,R15,R47
	.loc 1 1 0
		SMVAGA36.M2		R47:R46, AR10
		SNOP		1
	.loc 1 17 0
		SSTW		R53, *AR10
		SNOP		2
	.loc 1 8 0
	;; condjump to .L3 occurs
.LVL6:
.L1:
		SBR		R62
		SNOP		6
	;; return occurs
.LVL7:
.L6:
		SADD.M2		1,R16,R16
	|	SADD.M1		4,R46,R13
	|	SMOVIL		0, R53
		SEQ		R59, R16, R2
	[!R2]	SBR		.L3
	|	SLTU		R13, R46, R15
	|	SMOV.M2		R13, R46
		SADD.M2		R47,R15,R47
	|	SMOVIH		0, R53
	.loc 1 1 0
		SMVAGA36.M2		R47:R46, AR10
		SNOP		1
	.loc 1 17 0
		SSTW		R53, *AR10
		SNOP		2
	.loc 1 8 0
	;; condjump to .L3 occurs
		SBR		.L1
		SNOP		6
	;; jump to .L1 occurs
	.cfi_endproc
.LFE0:
	.size	DSPF_sp_fircirc_cn, .-DSPF_sp_fircirc_cn
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x109
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
	.4byte	0xed
	.uleb128 0x3
	.string	"x"
	.byte	0x1
	.byte	0x1
	.4byte	0xed
	.4byte	.LLST0
	.uleb128 0x3
	.string	"h"
	.byte	0x1
	.byte	0x1
	.4byte	0xff
	.4byte	.LLST1
	.uleb128 0x4
	.string	"y"
	.byte	0x1
	.byte	0x1
	.4byte	0xff
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x5
	.4byte	.LASF0
	.byte	0x1
	.byte	0x2
	.4byte	0x105
	.4byte	.LLST2
	.uleb128 0x5
	.4byte	.LASF1
	.byte	0x1
	.byte	0x2
	.4byte	0x105
	.4byte	.LLST3
	.uleb128 0x4
	.string	"nh"
	.byte	0x1
	.byte	0x2
	.4byte	0x105
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.uleb128 0x4
	.string	"ny"
	.byte	0x1
	.byte	0x2
	.4byte	0x105
	.byte	0x2
	.byte	0x90
	.uleb128 0x26
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0x5
	.4byte	0x105
	.4byte	.LLST4
	.uleb128 0x6
	.string	"j"
	.byte	0x1
	.byte	0x5
	.4byte	0x105
	.4byte	.LLST5
	.uleb128 0x6
	.string	"mod"
	.byte	0x1
	.byte	0x5
	.4byte	0x105
	.4byte	.LLST6
	.uleb128 0x6
	.string	"sum"
	.byte	0x1
	.byte	0x6
	.4byte	0xf8
	.4byte	.LLST7
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.4byte	0xf3
	.uleb128 0x8
	.4byte	0xf8
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x7
	.byte	0x8
	.4byte	0xf8
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
	.2byte	0x1
	.byte	0x50
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL3
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL3
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL1
	.llong	.LFE0
	.2byte	0x4
	.byte	0x92
	.uleb128 0x22
	.sleb128 1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL2
	.llong	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL3
	.llong	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL7
	.llong	.LFE0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL2
	.llong	.LVL3
	.2byte	0x1
	.byte	0x62
	.llong	.LVL3
	.llong	.LFE0
	.2byte	0x3
	.byte	0x83
	.sleb128 1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL3
	.llong	.LVL4
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL5
	.llong	.LVL6
	.2byte	0x2
	.byte	0x90
	.uleb128 0x45
	.llong	.LVL7
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
.LASF5:
	.string	"/cygdrive/e/project/function  demo/asm/dspf_sp_fircirc/Debug"
.LASF6:
	.string	"DSPF_sp_fircirc_cn"
.LASF2:
	.string	"float"
.LASF3:
	.string	"GNU C 4.7.0"
.LASF4:
	.string	"../DSPF_sp_fircirc_cn.c"
.LASF1:
	.string	"csize"
.LASF0:
	.string	"index"
