	.file	"DSP_fir_r8_h8_cn.c"
.text;
.Ltext0:
	.section	.text.DSP_fir_r8_h8_cn,"ax",@progbits
	.align	2
	.global	DSP_fir_r8_h8_cn
	.type	DSP_fir_r8_h8_cn, @function
DSP_fir_r8_h8_cn:
.LFB0:
	.file 1 "../DSP_fir_r8_h8_cn.c"
	.loc 1 71 0
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI0:
		SADDA.M1		16,AR15,AR14
.LCFI1:
		SNOP		1
		SMOVIL		-80, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[10]
		SSTDW		R35:R34, *+AR15[9]
		SSTDW		R33:R32, *+AR15[8]
		SSTDW		R31:R30, *+AR15[7]
.LCFI2:
		SSTDW		R11:R10, *-AR14[8]
		SSTDW		R13:R12, *-AR14[9]
		SSTDW		R15:R14, *-AR14[10]
		SMOVIL		-84, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SSTW		R16, *AR10
	.loc 1 75 0
		SMOVIL		-84, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SAND		3, R42, R42
		SMOVIL		0, R0
		SEQ		R0, R42, R42
		SSHFLL		24, R42, R42
		SSHFLR		24, R42, R42
		SMOV.M1		R42, R10
		SBR		_nassert
		SMOVIL		.L6, R62
		SMOVIH		.L6, R62
		SMOVIH4.L		.L6, R63
		SNOP		4
.L6:
	.loc 1 76 0
		SMOVIL		-84, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SMOVIL		3, R0
		SLT		R0, R42, R42
		SSHFLL		24, R42, R42
		SSHFLR		24, R42, R42
		SMOV.M1		R42, R10
		SBR		_nassert
		SMOVIL		.L7, R62
		SMOVIH		.L7, R62
		SMOVIH4.L		.L7, R63
		SNOP		4
.L7:
	.loc 1 78 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[12]
		SBR		.L2
		SNOP		6
.L5:
	.loc 1 79 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[13]
	.loc 1 80 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[11]
		SBR		.L3
		SNOP		6
.L4:
	.loc 1 81 0
		SLDW		*-AR14[11], R43
		SNOP		5
		SLDW		*-AR14[12], R42
		SNOP		5
		SADD.M1		R42,R43,R42
		SMOV.M1		R42, R30
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R31
		SADD.M1		R30,R30,R42
		SLTU		R42, R30, R44
		SADD.M1		R31,R31,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[8], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDH		*AR10, R42
		SNOP		5
		SSHFLL		16, R42, R46
		SSHFAR		16, R46, R46
		SLDW		*-AR14[11], R32
		SNOP		5
		SLDW		*-AR14[11], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R33
		SADD.M1		R32,R32,R42
		SLTU		R42, R32, R44
		SADD.M1		R33,R33,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[9], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDH		*AR10, R42
		SNOP		5
		SSHFLL		16, R42, R42
		SSHFAR		16, R42, R42
		SMULIS.M1		R42,R46,R42
		SNOP		2
		SLDW		*-AR14[13], R43
		SNOP		5
		SADD.M1		R42,R43,R42
		SSTW		R42, *-AR14[13]
	.loc 1 80 0
		SLDW		*-AR14[11], R42
		SNOP		5
		SADD.M1		1,R42,R42
		SSTW		R42, *-AR14[11]
.L3:
		SLDW		*-AR14[11], R42
		SNOP		5
		SMOVIL		7, R0
		SLT		R0, R42, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L4
		SNOP		6
	.loc 1 82 0
		SLDW		*-AR14[12], R34
		SNOP		5
		SLDW		*-AR14[12], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R35
		SADD.M1		R34,R34,R42
		SLTU		R42, R34, R44
		SADD.M1		R35,R35,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[10], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[13], R44
		SNOP		5
		SSHFAR		15, R44, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTH		R44, *AR10
	.loc 1 78 0
		SLDW		*-AR14[12], R42
		SNOP		5
		SADD.M1		1,R42,R42
		SSTW		R42, *-AR14[12]
.L2:
		SLDW		*-AR14[12], R43
		SNOP		5
		SMOVIL		-84, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SLT		R43, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L5
		SNOP		6
	.loc 1 84 0
		SLDDW		*+AR15[7], R31:R30
		SNOP		5
		SLDDW		*+AR15[8], R33:R32
		SNOP		5
		SLDDW		*+AR15[9], R35:R34
		SNOP		5
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
.LFE0:
	.size	DSP_fir_r8_h8_cn, .-DSP_fir_r8_h8_cn
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.byte	0x1
	.byte	0x7c
	.byte	0x4e
	.byte	0xc
	.byte	0xf
	.byte	0
	.align	3
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.llong	.LFB0
	.llong	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xc
	.byte	0xe
	.byte	0
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0xb2
	.byte	0x6
	.byte	0xb3
	.byte	0x5
	.byte	0xb0
	.byte	0x8
	.byte	0xb1
	.byte	0x7
	.byte	0xae
	.byte	0xa
	.byte	0xaf
	.byte	0x9
	.align	3
.LEFDE0:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x15f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSP_fir_r8_h8_cn.c"
	.string	"/cygdrive/d/qq/\345\233\275\351\230\262\347\247\221\345\244\247\351\241\271\347\233\256/DSP_fir_r8_hM16_rM8A8X8/DSP_fir_r8_hM16_rM8A8X8/Debug"
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.string	"DSP_fir_r8_h8_cn"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x13d
	.byte	0x3
	.string	"x"
	.byte	0x1
	.byte	0x42
	.4byte	0x13d
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x3
	.string	"h"
	.byte	0x1
	.byte	0x43
	.4byte	0x13d
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x3
	.string	"r"
	.byte	0x1
	.byte	0x44
	.4byte	0x155
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x3
	.string	"nr"
	.byte	0x1
	.byte	0x45
	.4byte	0x15b
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x4
	.string	"i"
	.byte	0x1
	.byte	0x48
	.4byte	0x15b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x4
	.string	"j"
	.byte	0x1
	.byte	0x48
	.4byte	0x15b
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x4
	.string	"sum"
	.byte	0x1
	.byte	0x48
	.4byte	0x15b
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x5
	.byte	0x1
	.string	"_nassert"
	.byte	0x1
	.byte	0x4b
	.4byte	0x15b
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x8
	.4byte	0x143
	.byte	0x8
	.4byte	0x148
	.byte	0x9
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.byte	0x7
	.byte	0x8
	.4byte	0x148
	.byte	0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0x8
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x1b
	.byte	0x8
	.byte	0x55
	.byte	0x6
	.byte	0x11
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x96,0x42
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
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
	.byte	0
	.llong	.LCFI0
	.llong	.LCFI1
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.llong	.LCFI1
	.llong	.LFE0
	.2byte	0x2
	.byte	0x7e
	.byte	0
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
