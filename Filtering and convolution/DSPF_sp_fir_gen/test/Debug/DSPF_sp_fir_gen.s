	.file	"DSPF_sp_fir_gen.c"
.text;
.Ltext0:
	.section	.text.DSP_fir_gen_cn_v2,"ax",@progbits
	.align	2
	.global	DSP_fir_gen_cn_v2
	.type	DSP_fir_gen_cn_v2, @function
DSP_fir_gen_cn_v2:
.LFB0:
	.file 1 "../DSPF_sp_fir_gen.c"
	.loc 1 10 0
		SMOVIL		256, R6
		SMOVIL		0, R7
		SSUBA.L		R7:R6, AR7, AR7
		SNOP		2
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
		SSTDW		R39:R38, *+AR15[11]
		SSTDW		R37:R36, *+AR15[10]
		SSTDW		R35:R34, *+AR15[9]
		SSTDW		R33:R32, *+AR15[8]
		SSTDW		R31:R30, *+AR15[7]
.LCFI2:
		SSTDW		R11:R10, *-AR14[9]
		SSTDW		R13:R12, *-AR14[10]
		SSTDW		R15:R14, *-AR14[11]
		SMOVIL		-92, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SSTW		R16, *AR10
		SMOVIL		-96, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SSTW		R18, *AR10
	.loc 1 14 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[13]
		SBR		.L2
		SNOP		6
.L5:
	.loc 1 15 0
		SLDW		*-AR14[13], R46
		SNOP		5
		SLDW		*-AR14[13], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R47
		SADD.M1		R46,R46,R42
		SLTU		R42, R46, R44
		SADD.M1		R47,R47,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R10
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R10,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
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
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SVBCAST.M1 		 R42,VR3
		SNOP		3
		VSTW.LS 		VR3,*+AR7[48]
	.loc 1 16 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[14]
		SMOVIL		0, R42
		SSTW		R42, *-AR14[15]
		SBR		.L3
		SNOP		6
.L4:
	.loc 1 18 0
		SLDW		*-AR14[13], R60
		SNOP		5
		SLDW		*-AR14[13], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R61
		SLDW		*-AR14[14], R34
		SNOP		5
		SLDW		*-AR14[14], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R35
		SADD.M1		R34,R60,R42
		SLTU		R42, R60, R44
		SADD.M1		R35,R61,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
		SMOV.M1		R42, R44
		SMOV.M1		R43, R45
		SADD.M1		R44,R44,R42
		SLTU		R42, R44, R10
		SADD.M1		R45,R45,R43
		SADD.M1		R43,R10,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R10
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R10,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
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
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR3
		SNOP		7
		VSTW.LS 		VR3,*+AR7[32]
	.loc 1 19 0
		SLDW		*-AR14[13], R20
		SNOP		5
		SLDW		*-AR14[13], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R21
		SLDW		*-AR14[14], R36
		SNOP		5
		SLDW		*-AR14[14], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R37
		SADD.M1		R36,R20,R42
		SLTU		R42, R20, R44
		SADD.M1		R37,R21,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
		SMOV.M1		R42, R44
		SMOV.M1		R43, R45
		SMOVIL		16, R10
		SMOVIL		0, R11
		SADD.M1		R10,R44,R42
		SLTU		R42, R44, R12
		SADD.M1		R11,R45,R43
		SADD.M1		R43,R12,R44
		SMOV.M1		R44, R43
		SMOV.M1		R42, R44
		SMOV.M1		R43, R45
		SADD.M1		R44,R44,R42
		SLTU		R42, R44, R10
		SADD.M1		R45,R45,R43
		SADD.M1		R43,R10,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R10
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R10,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
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
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR3
		SNOP		7
		VSTW.LS 		VR3,*+AR7[16]
	.loc 1 20 0
		SLDW		*-AR14[13], R22
		SNOP		5
		SLDW		*-AR14[13], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R23
		SLDW		*-AR14[14], R38
		SNOP		5
		SLDW		*-AR14[14], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R39
		SADD.M1		R38,R22,R42
		SLTU		R42, R22, R44
		SADD.M1		R39,R23,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
		SMOV.M1		R42, R44
		SMOV.M1		R43, R45
		SMOVIL		32, R10
		SMOVIL		0, R11
		SADD.M1		R10,R44,R42
		SLTU		R42, R44, R12
		SADD.M1		R11,R45,R43
		SADD.M1		R43,R12,R44
		SMOV.M1		R44, R43
		SMOV.M1		R42, R44
		SMOV.M1		R43, R45
		SADD.M1		R44,R44,R42
		SLTU		R42, R44, R10
		SADD.M1		R45,R45,R43
		SADD.M1		R43,R10,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R10
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R10,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
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
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR3
		SNOP		7
		VSTW.LS 		VR3,*AR7
	.loc 1 21 0
		SLDW		*-AR14[15], R24
		SNOP		5
		SLDW		*-AR14[15], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R25
		SSHFLR		26, R24, R42
		SSHFLL		6, R25, R49
		SOR		R49, R42, R49
		SSHFLL		6, R24, R48
		SMOV.M1		R48, R42
		SMOV.M1		R49, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[11], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[15], R26
		SNOP		5
		SLDW		*-AR14[15], R44
		SNOP		5
		SSHFAR		31, R44, R44
		SMOV.M1		R44, R27
		SSHFLR		26, R26, R44
		SSHFLL		6, R27, R51
		SOR		R51, R44, R51
		SSHFLL		6, R26, R50
		SMOV.M1		R50, R44
		SMOV.M1		R51, R45
	;no-op trunc di R45:R44 to pdi R45:R44
		SLDDW		*-AR14[11], R11:R10
		SNOP		5
		SMVAGA36.M1		R11:R10, OR11
		SNOP		1
		SADDA.M1		R45:R44,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R45:R44
		SNOP		1
		SMVAAGH.M1		OR11, R45:R44
		SNOP		1
		SMVAGA36.M1		R45:R44, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR5
		SNOP		7
		VLDW.LS 		*+AR7[32],VR3
		SNOP		7
		VLDW.LS 		*+AR7[48],VR4
		SNOP		7
		VMOV		VR5,	VR6
		VFMULAS32.M1	VR3,VR4,VR6,VR6
		SNOP		5
		VMOV		VR6,	VR3
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
	.loc 1 22 0
		SLDW		*-AR14[15], R28
		SNOP		5
		SLDW		*-AR14[15], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R29
		SMOVIL		1, R44
		SMOVIL		0, R45
		SADD.M1		R44,R28,R42
		SLTU		R42, R28, R10
		SADD.M1		R45,R29,R43
		SADD.M1		R43,R10,R44
		SMOV.M1		R44, R43
		SSHFLR		26, R42, R44
		SSHFLL		6, R43, R53
		SOR		R53, R44, R53
		SSHFLL		6, R42, R52
		SMOV.M1		R52, R42
		SMOV.M1		R53, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[11], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[15], R8
		SNOP		5
		SLDW		*-AR14[15], R44
		SNOP		5
		SSHFAR		31, R44, R44
		SMOV.M1		R44, R9
		SMOVIL		1, R10
		SMOVIL		0, R11
		SADD.M1		R10,R8,R44
		SLTU		R44, R8, R12
		SADD.M1		R11,R9,R45
		SADD.M1		R45,R12,R10
		SMOV.M1		R10, R45
		SSHFLR		26, R44, R10
		SSHFLL		6, R45, R55
		SOR		R55, R10, R55
		SSHFLL		6, R44, R54
		SMOV.M1		R54, R44
		SMOV.M1		R55, R45
	;no-op trunc di R45:R44 to pdi R45:R44
		SLDDW		*-AR14[11], R11:R10
		SNOP		5
		SMVAGA36.M1		R11:R10, OR11
		SNOP		1
		SADDA.M1		R45:R44,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R45:R44
		SNOP		1
		SMVAAGH.M1		OR11, R45:R44
		SNOP		1
		SMVAGA36.M1		R45:R44, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR5
		SNOP		7
		VLDW.LS 		*+AR7[16],VR3
		SNOP		7
		VLDW.LS 		*+AR7[48],VR4
		SNOP		7
		VMOV		VR5,	VR6
		VFMULAS32.M1	VR3,VR4,VR6,VR6
		SNOP		5
		VMOV		VR6,	VR3
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
	.loc 1 23 0
		SLDW		*-AR14[15], R30
		SNOP		5
		SLDW		*-AR14[15], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R31
		SMOVIL		2, R44
		SMOVIL		0, R45
		SADD.M1		R44,R30,R42
		SLTU		R42, R30, R10
		SADD.M1		R45,R31,R43
		SADD.M1		R43,R10,R44
		SMOV.M1		R44, R43
		SSHFLR		26, R42, R44
		SSHFLL		6, R43, R57
		SOR		R57, R44, R57
		SSHFLL		6, R42, R56
		SMOV.M1		R56, R42
		SMOV.M1		R57, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[11], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[15], R32
		SNOP		5
		SLDW		*-AR14[15], R44
		SNOP		5
		SSHFAR		31, R44, R44
		SMOV.M1		R44, R33
		SMOVIL		2, R10
		SMOVIL		0, R11
		SADD.M1		R10,R32,R44
		SLTU		R44, R32, R12
		SADD.M1		R11,R33,R45
		SADD.M1		R45,R12,R10
		SMOV.M1		R10, R45
		SSHFLR		26, R44, R10
		SSHFLL		6, R45, R59
		SOR		R59, R10, R59
		SSHFLL		6, R44, R58
		SMOV.M1		R58, R44
		SMOV.M1		R59, R45
	;no-op trunc di R45:R44 to pdi R45:R44
		SLDDW		*-AR14[11], R11:R10
		SNOP		5
		SMVAGA36.M1		R11:R10, OR11
		SNOP		1
		SADDA.M1		R45:R44,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R45:R44
		SNOP		1
		SMVAAGH.M1		OR11, R45:R44
		SNOP		1
		SMVAGA36.M1		R45:R44, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR5
		SNOP		7
		VLDW.LS 		*AR7,VR3
		SNOP		7
		VLDW.LS 		*+AR7[48],VR4
		SNOP		7
		VMOV		VR5,	VR6
		VFMULAS32.M1	VR3,VR4,VR6,VR6
		SNOP		5
		VMOV		VR6,	VR3
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
	.loc 1 16 0
		SLDW		*-AR14[14], R42
		SNOP		5
		SADDU.M1		48,R42,R42
		SSTW		R42, *-AR14[14]
		SLDW		*-AR14[15], R42
		SNOP		5
		SADD.M1		3,R42,R42
		SSTW		R42, *-AR14[15]
.L3:
		SLDW		*-AR14[14], R43
		SNOP		5
		SMOVIL		-96, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SLT		R43, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L4
		SNOP		6
	.loc 1 14 0
		SLDW		*-AR14[13], R42
		SNOP		5
		SADD.M1		1,R42,R42
		SSTW		R42, *-AR14[13]
.L2:
		SLDW		*-AR14[13], R43
		SNOP		5
		SMOVIL		-92, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SLT		R43, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L5
		SNOP		6
	.loc 1 26 0
		SMOVIL		256, R6
		SMOVIL		0, R7
		SADDA.M1		R7:R6,AR7,AR7
		SNOP		2
		SLDDW		*+AR15[7], R31:R30
		SNOP		5
		SLDDW		*+AR15[8], R33:R32
		SNOP		5
		SLDDW		*+AR15[9], R35:R34
		SNOP		5
		SLDDW		*+AR15[10], R37:R36
		SNOP		5
		SLDDW		*+AR15[11], R39:R38
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
	.size	DSP_fir_gen_cn_v2, .-DSP_fir_gen_cn_v2
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
	.byte	0xb6
	.byte	0x4
	.byte	0xb7
	.byte	0x3
	.byte	0xb4
	.byte	0x6
	.byte	0xb5
	.byte	0x5
	.byte	0xb2
	.byte	0x8
	.byte	0xb3
	.byte	0x7
	.byte	0xb0
	.byte	0xa
	.byte	0xb1
	.byte	0x9
	.byte	0xae
	.byte	0xc
	.byte	0xaf
	.byte	0xb
	.align	3
.LEFDE0:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x28e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSPF_sp_fir_gen.c"
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSPF_sp_fir_gen/test/Debug"
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.string	"sizetype"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.byte	0x3
	.byte	0x1
	.string	"DSP_fir_gen_cn_v2"
	.byte	0x1
	.byte	0x4
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x278
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x5
	.4byte	0x285
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x6
	.4byte	0x28b
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x7
	.4byte	0x285
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x8
	.4byte	0x12f
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x9
	.4byte	0x12f
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0xb
	.4byte	0x12f
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x5
	.string	"j"
	.byte	0x1
	.byte	0xb
	.4byte	0x12f
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x5
	.string	"k"
	.byte	0x1
	.byte	0xb
	.4byte	0x12f
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x6
	.string	"t"
	.byte	0x1
	.byte	0xc
	.4byte	0x12f
	.byte	0x5
	.string	"temp1"
	.byte	0x1
	.byte	0xd
	.4byte	0x278
	.byte	0x3
	.byte	0x77
	.byte	0xc0,0x1
	.byte	0x6
	.string	"temp2"
	.byte	0x1
	.byte	0xd
	.4byte	0x278
	.byte	0x6
	.string	"temp3"
	.byte	0x1
	.byte	0xd
	.4byte	0x278
	.byte	0x5
	.string	"temp4"
	.byte	0x1
	.byte	0xd
	.4byte	0x278
	.byte	0x3
	.byte	0x77
	.byte	0x80,0x1
	.byte	0x5
	.string	"temp5"
	.byte	0x1
	.byte	0xd
	.4byte	0x278
	.byte	0x3
	.byte	0x77
	.byte	0xc0,0
	.byte	0x5
	.string	"temp6"
	.byte	0x1
	.byte	0xd
	.4byte	0x278
	.byte	0x2
	.byte	0x77
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x1
	.4byte	0x167
	.4byte	0x285
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0x9
	.byte	0x8
	.4byte	0x278
	.byte	0x9
	.byte	0x8
	.4byte	0x167
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
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x5
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
	.byte	0x6
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
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x1
	.byte	0x1
	.byte	0x87,0x42
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
