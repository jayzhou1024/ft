	.file	"DSPF_sp_biquad_cn.c"
.text;
.Ltext0:
	.section	.text.DSPF_sp_biquad_cn,"ax",@progbits
	.align	2
	.global	DSPF_sp_biquad_cn
	.type	DSPF_sp_biquad_cn, @function
DSPF_sp_biquad_cn:
.LFB0:
	.file 1 "../DSPF_sp_biquad_cn.c"
	.loc 1 7 0
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI0:
		SADDA.M1		16,AR15,AR14
.LCFI1:
		SNOP		1
		SMOVIL		-88, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R11:R10, *-AR14[7]
		SSTDW		R13:R12, *-AR14[8]
		SSTDW		R15:R14, *-AR14[9]
		SSTDW		R17:R16, *-AR14[10]
		SSTDW		R19:R18, *-AR14[11]
		SMOVIL		-84, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R20, *AR10
	.loc 1 13 0
		SLDDW		*-AR14[8], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R50
		SNOP		5
		SLDDW		*-AR14[7], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SFMULS32.M1		R50, R42, R50
		SNOP		3
		SLDDW		*-AR14[10], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SFADDS32.M1		R50, R42, R50
		SNOP		2
		SLDDW		*-AR14[11], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R50, *AR10
	.loc 1 14 0
		SLDDW		*-AR14[11], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDDW		*-AR14[8], R51:R50
		SNOP		5
		SMVAGA36.M1		R51:R50, AR10
		SNOP		1
		SLDW		*AR10, R52
		SNOP		5
		SLDDW		*-AR14[7], R51:R50
		SNOP		5
		SMVAGA36.M1		R51:R50, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R51:R50
		SNOP		1
		SMVAAGH.M1		OR11, R51:R50
		SNOP		1
		SMVAGA36.M1		R51:R50, AR10
		SNOP		1
		SLDW		*AR10, R50
		SNOP		5
		SFMULS32.M1		R52, R50, R52
		SNOP		3
		SLDDW		*-AR14[10], R51:R50
		SNOP		5
		SMVAGA36.M1		R51:R50, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R51:R50
		SNOP		1
		SMVAAGH.M1		OR11, R51:R50
		SNOP		1
		SMVAGA36.M1		R51:R50, AR10
		SNOP		1
		SLDW		*AR10, R50
		SNOP		5
		SFADDS32.M1		R52, R50, R52
		SNOP		2
		SLDDW		*-AR14[8], R51:R50
		SNOP		5
		SMVAGA36.M1		R51:R50, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R51:R50
		SNOP		1
		SMVAAGH.M1		OR11, R51:R50
		SNOP		1
		SMVAGA36.M1		R51:R50, AR10
		SNOP		1
		SLDW		*AR10, R53
		SNOP		5
		SLDDW		*-AR14[7], R51:R50
		SNOP		5
		SMVAGA36.M1		R51:R50, AR10
		SNOP		1
		SLDW		*AR10, R50
		SNOP		5
		SFMULS32.M1		R53, R50, R50
		SNOP		3
		SFADDS32.M1		R52, R50, R52
		SNOP		2
		SLDDW		*-AR14[9], R51:R50
		SNOP		5
		SMVAGA36.M1		R51:R50, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R51:R50
		SNOP		1
		SMVAAGH.M1		OR11, R51:R50
		SNOP		1
		SMVAGA36.M1		R51:R50, AR10
		SNOP		1
		SLDW		*AR10, R53
		SNOP		5
		SLDDW		*-AR14[11], R51:R50
		SNOP		5
		SMVAGA36.M1		R51:R50, AR10
		SNOP		1
		SLDW		*AR10, R50
		SNOP		5
		SFMULS32.M1		R53, R50, R50
		SNOP		3
		SFSUBS32.M1		R50, R52, R50
		SNOP		2
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R50, *AR10
	.loc 1 17 0
		SLDDW		*-AR14[7], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSTW		R42, *-AR14[5]
	.loc 1 18 0
		SLDDW		*-AR14[7], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*+AR10[1], R42
		SNOP		5
		SSTW		R42, *-AR14[6]
	.loc 1 19 0
		SLDDW		*-AR14[11], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSTW		R42, *-AR14[7]
	.loc 1 20 0
		SLDDW		*-AR14[11], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*+AR10[1], R42
		SNOP		5
		SSTW		R42, *-AR14[4]
	.loc 1 22 0
		SMOVIL		2, R42
		SSTW		R42, *-AR14[3]
		SBR		.L2
		SNOP		6
.L3:
	.loc 1 24 0
		SLDDW		*-AR14[9], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SFMULS32.M1		R43, R42, R42
		SNOP		3
		SSTW		R42, *-AR14[8]
	.loc 1 25 0
		SLDDW		*-AR14[9], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		8,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SLDW		*-AR14[7], R42
		SNOP		5
		SFMULS32.M1		R43, R42, R42
		SNOP		3
		SSTW		R42, *-AR14[9]
	.loc 1 26 0
		SLDDW		*-AR14[8], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R52
		SNOP		5
		SLDW		*-AR14[3], R44
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R45
		SADD.M1		R44,R44,R42
		SLTU		R42, R44, R50
		SADD.M1		R45,R45,R43
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
		SLDDW		*-AR14[7], R51:R50
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
		SSTW		R42, *-AR14[10]
	.loc 1 27 0
		SLDDW		*-AR14[8], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SLDW		*-AR14[6], R42
		SNOP		5
		SFMULS32.M1		R43, R42, R42
		SNOP		3
		SSTW		R42, *-AR14[11]
	.loc 1 28 0
		SLDDW		*-AR14[8], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		8,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SLDW		*-AR14[5], R42
		SNOP		5
		SFMULS32.M1		R43, R42, R42
		SNOP		3
		SSTW		R42, *-AR14[12]
	.loc 1 30 0
		SLDW		*-AR14[6], R42
		SNOP		5
		SSTW		R42, *-AR14[5]
	.loc 1 31 0
		SLDW		*-AR14[3], R46
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R47
		SADD.M1		R46,R46,R42
		SLTU		R42, R46, R50
		SADD.M1		R47,R47,R43
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
		SLDDW		*-AR14[7], R51:R50
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
		SSTW		R42, *-AR14[6]
	.loc 1 33 0
		SLDW		*-AR14[4], R42
		SNOP		5
		SSTW		R42, *-AR14[7]
	.loc 1 34 0
		SLDW		*-AR14[12], R43
		SNOP		5
		SLDW		*-AR14[11], R42
		SNOP		5
		SFADDS32.M1		R43, R42, R43
		SNOP		2
		SLDW		*-AR14[10], R42
		SNOP		5
		SFADDS32.M1		R43, R42, R43
		SNOP		2
		SLDW		*-AR14[9], R42
		SNOP		5
		SFSUBS32.M1		R42, R43, R43
		SNOP		2
		SLDW		*-AR14[8], R42
		SNOP		5
		SFSUBS32.M1		R42, R43, R42
		SNOP		2
		SSTW		R42, *-AR14[4]
	.loc 1 35 0
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
		SLDDW		*-AR14[11], R51:R50
		SNOP		5
		SMVAGA36.M1		R51:R50, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[4], R50
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R50, *AR10
	.loc 1 22 0
		SLDW		*-AR14[3], R42
		SNOP		5
		SADD.M1		1,R42,R42
		SSTW		R42, *-AR14[3]
.L2:
		SMOVIL		-84, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[3], R50
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SLT		R50, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L3
		SNOP		6
	.loc 1 39 0
		SLDDW		*-AR14[8], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SLDW		*-AR14[6], R42
		SNOP		5
		SFMULS32.M1		R43, R42, R44
		SNOP		3
		SLDDW		*-AR14[8], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		8,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SLDW		*-AR14[5], R42
		SNOP		5
		SFMULS32.M1		R43, R42, R42
		SNOP		3
		SFADDS32.M1		R44, R42, R44
		SNOP		2
		SLDDW		*-AR14[9], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SFMULS32.M1		R43, R42, R42
		SNOP		3
		SFSUBS32.M1		R42, R44, R44
		SNOP		2
		SLDDW		*-AR14[9], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		8,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SLDW		*-AR14[7], R42
		SNOP		5
		SFMULS32.M1		R43, R42, R42
		SNOP		3
		SFSUBS32.M1		R42, R44, R44
		SNOP		2
		SLDDW		*-AR14[10], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 40 0
		SLDDW		*-AR14[10], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDDW		*-AR14[8], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		8,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R45:R44
		SNOP		1
		SMVAAGH.M1		OR11, R45:R44
		SNOP		1
		SMVAGA36.M1		R45:R44, AR10
		SNOP		1
		SLDW		*AR10, R45
		SNOP		5
		SLDW		*-AR14[6], R44
		SNOP		5
		SFMULS32.M1		R45, R44, R46
		SNOP		3
		SLDDW		*-AR14[9], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		8,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R45:R44
		SNOP		1
		SMVAAGH.M1		OR11, R45:R44
		SNOP		1
		SMVAGA36.M1		R45:R44, AR10
		SNOP		1
		SLDW		*AR10, R45
		SNOP		5
		SLDW		*-AR14[4], R44
		SNOP		5
		SFMULS32.M1		R45, R44, R44
		SNOP		3
		SFSUBS32.M1		R44, R46, R44
		SNOP		2
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 41 0
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
	.size	DSPF_sp_biquad_cn, .-DSPF_sp_biquad_cn
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
	.align	3
.LEFDE0:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1b0
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSPF_sp_biquad_cn.c"
	.string	"/cygdrive/e/something/newtext/DSPF_sp_biquad/DSPF_sp_biquad/Debug"
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.string	"DSPF_sp_biquad_cn"
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x198
	.byte	0x3
	.string	"x"
	.byte	0x1
	.byte	0x2
	.4byte	0x198
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x3
	.string	"b"
	.byte	0x1
	.byte	0x3
	.4byte	0x198
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x3
	.string	"a"
	.byte	0x1
	.byte	0x4
	.4byte	0x198
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x3
	.string	"delay"
	.byte	0x1
	.byte	0x5
	.4byte	0x198
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x3
	.string	"y"
	.byte	0x1
	.byte	0x6
	.4byte	0x198
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x3
	.string	"nx"
	.byte	0x1
	.byte	0x7
	.4byte	0x1a7
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0x4
	.string	"i"
	.byte	0x1
	.byte	0x9
	.4byte	0x1ac
	.byte	0x2
	.byte	0x91
	.byte	0x74
	.byte	0x4
	.string	"sum1"
	.byte	0x1
	.byte	0xa
	.4byte	0x19e
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x4
	.string	"sum2"
	.byte	0x1
	.byte	0xa
	.4byte	0x19e
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x4
	.string	"sum3"
	.byte	0x1
	.byte	0xa
	.4byte	0x19e
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x4
	.string	"sum4"
	.byte	0x1
	.byte	0xa
	.4byte	0x19e
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x4
	.string	"sum5"
	.byte	0x1
	.byte	0xa
	.4byte	0x19e
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x4
	.string	"sum"
	.byte	0x1
	.byte	0xa
	.4byte	0x19e
	.byte	0x2
	.byte	0x91
	.byte	0x70
	.byte	0x4
	.string	"x0"
	.byte	0x1
	.byte	0xa
	.4byte	0x19e
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x4
	.string	"x1"
	.byte	0x1
	.byte	0xa
	.4byte	0x19e
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x4
	.string	"y0"
	.byte	0x1
	.byte	0xa
	.4byte	0x19e
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x5
	.byte	0x8
	.4byte	0x19e
	.byte	0x6
	.byte	0x4
	.byte	0x4
	.string	"float"
	.byte	0x7
	.4byte	0x1ac
	.byte	0x6
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
	.byte	0x97,0x42
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
