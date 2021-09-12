	.file	"DSPF_sp_fircirc_vc2.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSPF_sp_fircirc_vc1,"ax",@progbits
	.align	2
	.global	DSPF_sp_fircirc_vc1
	.type	DSPF_sp_fircirc_vc1, @function
DSPF_sp_fircirc_vc1:
.LFB3:
	.file 1 "../DSPF_sp_fircirc_vc2.c"
	.loc 1 17 0
	.cfi_startproc
		SMOVIL		384, R6
		SMOVIL		0, R7
		SSUBA.L		R7:R6, AR7, AR7
		SNOP		2
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
		SMOVIL		-96, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R11:R10, *-AR14[9]
		SSTDW		R13:R12, *-AR14[10]
		SSTDW		R15:R14, *-AR14[11]
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
		SSTW		R16, *AR10
		SMOVIL		-88, R42
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
		SSTW		R18, *AR10
		SMOVIL		-92, R42
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
		SMOVIL		-96, R42
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
		SSTW		R22, *AR10
	.loc 1 24 0
		SMVAAGL.M1		AR7, R43:R42
		SNOP		1
		SMVAAGH.M1		AR7, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[3]
	.loc 1 25 0
		SMVAAA.M1		AR7, OR11
		SNOP		1
		SADD.LS		OR11,64,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 26 0
		SMVAAGL.M1		AR7, R43:R42
		SNOP		1
		SMVAAGH.M1		AR7, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[5]
	.loc 1 27 0
		SMOVIL		0, R42
		SMOVIH		0, R42
		SVBCAST.M1 		 R42,VR3
		SNOP		3
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
	.loc 1 35 0
		SMOVIL		-88, R42
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
		SLDW		*AR10, R42
		SNOP		5
		SADD.M1		-1,R42,R42
		SMOVIL		1, R43
		SSHFLL		R42, R43, R42
		SSTW		R42, *-AR14[11]
	.loc 1 36 0
		SLDW		*-AR14[11], R42
		SNOP		5
		SADD.M1		-1,R42,R42
		SSTW		R42, *-AR14[12]
	.loc 1 37 0
		SLDW		*-AR14[11], R42
		SNOP		5
		SMOVIL		15, R0
		SLT		R0, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L1
		SNOP		6
.LBB2:
	.loc 1 38 0
		SLDW		*-AR14[11], R44
		SNOP		5
		SLDW		*-AR14[11], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R45
		SMOVIL		-16, R58
		SMOVIL		-1, R59
		SADD.M1		R58,R44,R42
		SLTU		R42, R44, R60
		SADD.M1		R59,R45,R43
		SADD.M1		R43,R60,R44
		SMOV.M1		R44, R43
		SMOV.M1		R42, R58
		SMOV.M1		R43, R59
		SMOVIL		0, R42
		SMOVIL		0, R43
		SSUB.M1		R58, R42, R44
		SLTU		R42, R44, R60
		SSUB.M1		R59, R43, R45
		SSUB.M1		R60, R45, R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R58
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R58,R42
		SMOV.M1		R42, R45
		SADD.M1		R44,R44,R42
		SLTU		R42, R44, R58
		SADD.M1		R45,R45,R43
		SADD.M1		R43,R58,R44
		SMOV.M1		R44, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[5], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[7]
	.loc 1 40 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[3]
		SBR		.L3
		SNOP		6
.L10:
.LBB3:
	.loc 1 41 0
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
		SLDW		*AR10, R43
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SADD.M1		R42,R43,R43
		SLDW		*-AR14[12], R42
		SNOP		5
		SAND		R42, R43, R42
		SMOV.M1		R42, R46
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R47
		SADD.M1		R46,R46,R42
		SLTU		R42, R46, R44
		SADD.M1		R47,R47,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R58
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R58,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SLDDW		*-AR14[5], R45:R44
		SNOP		5
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[8]
	.loc 1 42 0
		SLDW		*-AR14[3], R42
		SNOP		5
		SMOV.M1		R42, R0
	[R0]	SBR		.L4
		SNOP		6
	.loc 1 43 0
		VMOVIL		 0,VR3
		VMOVIH		 0,VR3
		VSTW.LS 		VR3,*+AR7[80]
		SBR		.L5
		SNOP		6
.L4:
	.loc 1 45 0
		SLDDW		*-AR14[11], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR3
		SNOP		7
		VSTW.LS 		VR3,*+AR7[80]
.L5:
	.loc 1 47 0
		SLDW		*-AR14[3], R48
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R49
		SADD.M1		R48,R48,R42
		SLTU		R42, R48, R44
		SADD.M1		R49,R49,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R58
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R58,R42
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
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
	.loc 1 48 0
		SLDDW		*-AR14[7], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR3
		SNOP		7
		VSTW.LS 		VR3,*+AR7[48]
	.loc 1 49 0
		SLDDW		*-AR14[9], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR4
		SNOP		7
		VLDW.LS 		*+AR7[48],VR3
		SNOP		7
		VFMULS32.M1	VR3,VR4,VR3
		SNOP		3
		VSTW.LS 		VR3,*+AR7[32]
	.loc 1 50 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		VLDW.LS 		*+AR7[32],VR3
		SNOP		7
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
	.loc 1 51 0
		SLDDW		*-AR14[8], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR3
		SNOP		7
		VLDW.LS 		*+AR7[80],VR4
		SNOP		7
		VFADDS32.M1 		VR4,VR3,VR3
		SNOP		2
		VSTW.LS 		VR3,*+AR7[80]
	.loc 1 52 0
		VLDW.LS 		*+AR7[80],VR3
		SNOP		7
		SLDDW		*-AR14[11], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
	.loc 1 53 0
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
		SLDW		*AR10, R43
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SADD.M1		R42,R43,R43
		SLDW		*-AR14[12], R42
		SNOP		5
		SAND		R42, R43, R42
		SLDW		*-AR14[11], R43
		SNOP		5
		SSUB.M1		R42, R43, R42
		SSTW		R42, *-AR14[4]
		SBR		.L6
		SNOP		6
.L9:
	.loc 1 54 0
		SLDW		*-AR14[3], R42
		SNOP		5
		SMOV.M1		R42, R0
	[R0]	SBR		.L7
		SNOP		6
	.loc 1 55 0
		VMOVIL		 0,VR3
		VMOVIH		 0,VR3
		VSTW.LS 		VR3,*+AR7[64]
		SBR		.L8
		SNOP		6
.L7:
	.loc 1 57 0
		SLDDW		*-AR14[11], R45:R44
		SNOP		5
		SLDW		*-AR14[4], R54
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R55
		SMOV.M1		R54, R42
		SMOV.M1		R55, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLR		30, R42, R58
		SSHFLL		2, R43, R51
		SOR		R51, R58, R51
		SSHFLL		2, R42, R50
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R51:R50,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR3
		SNOP		7
		VSTW.LS 		VR3,*+AR7[64]
.L8:
	.loc 1 59 0
		VLDW.LS 		*+AR7[64],VR4
		SNOP		7
		VLDW.LS 		*+AR7[32],VR3
		SNOP		7
		VFADDS32.M1 		VR4,VR3,VR3
		SNOP		2
		VSTW.LS 		VR3,*+AR7[64]
	.loc 1 60 0
		VLDW.LS 		*+AR7[64],VR3
		SNOP		7
		SLDDW		*-AR14[11], R45:R44
		SNOP		5
		SLDW		*-AR14[4], R56
		SNOP		5
		SLDW		*-AR14[4], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R57
		SMOV.M1		R56, R42
		SMOV.M1		R57, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLR		30, R42, R58
		SSHFLL		2, R43, R53
		SOR		R53, R58, R53
		SSHFLL		2, R42, R52
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SADDA.M1		R53:R52,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VSTW.LS 		VR3,*AR1
	.loc 1 53 0
		SLDW		*-AR14[4], R43
		SNOP		5
		SLDW		*-AR14[11], R42
		SNOP		5
		SADD.M1		R42,R43,R42
		SSTW		R42, *-AR14[4]
.L6:
	.loc 1 53 0 is_stmt 0 discriminator 1
		SMOVIL		-96, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[4], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SLT		R44, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L9
		SNOP		6
.LBE3:
	.loc 1 40 0 is_stmt 1
		SLDW		*-AR14[3], R42
		SNOP		5
		SADD.M1		1,R42,R42
		SSTW		R42, *-AR14[3]
.L3:
	.loc 1 40 0 is_stmt 0 discriminator 1
		SMOVIL		-92, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[3], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SLT		R44, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L10
		SNOP		6
.L1:
.LBE2:
	.loc 1 90 0 is_stmt 1
		SMOVIL		384, R6
		SMOVIL		0, R7
		SADDA.M1		R7:R6,AR7,AR7
		SNOP		2
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
	.size	DSPF_sp_fircirc_vc1, .-DSPF_sp_fircirc_vc1
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x257
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x1
	.4byte	.LASF31
	.4byte	.LASF32
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
	.4byte	.LASF33
	.byte	0x1
	.byte	0x9
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x231
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0xa
	.4byte	0x245
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0xb
	.4byte	0x24b
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.string	"r"
	.byte	0x1
	.byte	0xc
	.4byte	0x245
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0xd
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0xe
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0xf
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x5
	.string	"nr"
	.byte	0x1
	.byte	0x10
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x12
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x7
	.string	"j"
	.byte	0x1
	.byte	0x12
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x12
	.4byte	0x62
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x13
	.4byte	0x245
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x14
	.4byte	0x231
	.byte	0x3
	.byte	0x77
	.sleb128 192
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x14
	.4byte	0x231
	.byte	0x3
	.byte	0x77
	.sleb128 128
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0x14
	.4byte	0x231
	.byte	0x3
	.byte	0x77
	.sleb128 320
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x14
	.4byte	0x231
	.byte	0x3
	.byte	0x77
	.sleb128 256
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x15
	.4byte	0x231
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x15
	.4byte	0x231
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x15
	.4byte	0x231
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x15
	.4byte	0x231
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x17
	.4byte	0x251
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x18
	.4byte	0x245
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x19
	.4byte	0x245
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1a
	.4byte	0x24b
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0x23
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"mod"
	.byte	0x1
	.byte	0x24
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.llong	.LBB2
	.llong	.LBE2
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x26
	.4byte	0x245
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.llong	.LBB3
	.llong	.LBE3
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x29
	.4byte	0x245
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	0x23e
	.4byte	0x23e
	.uleb128 0xd
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF29
	.uleb128 0xe
	.byte	0x8
	.4byte	0x231
	.uleb128 0xe
	.byte	0x8
	.4byte	0x23e
	.uleb128 0xf
	.byte	0x1
	.4byte	0x23e
	.uleb128 0xd
	.byte	0x1f
	.byte	0
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x2107
	.uleb128 0xc
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
.LASF27:
	.string	"h0_offset"
.LASF12:
	.string	"csize"
.LASF8:
	.string	"long int"
.LASF28:
	.string	"x0_offset"
.LASF18:
	.string	"temp_vx_0_15"
.LASF21:
	.string	"temp_vx_3_18"
.LASF30:
	.string	"GNU C 4.7.0"
.LASF29:
	.string	"float"
.LASF26:
	.string	"block_length"
.LASF17:
	.string	"temp_vr_index"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF32:
	.string	"/cygdrive/e/project/function  demo/function/DSPF_sp_fircirc/Release"
.LASF14:
	.string	"temp_vh_0"
.LASF22:
	.string	"temp_h_space"
.LASF33:
	.string	"DSPF_sp_fircirc_vc1"
.LASF3:
	.string	"unsigned int"
.LASF0:
	.string	"long long unsigned int"
.LASF31:
	.string	"../DSPF_sp_fircirc_vc2.c"
.LASF13:
	.string	"temp_x_offset_addr"
.LASF9:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF15:
	.string	"temp_h_x"
.LASF16:
	.string	"temp_vr"
.LASF19:
	.string	"temp_vx_1_16"
.LASF6:
	.string	"short int"
.LASF20:
	.string	"temp_vx_2_17"
.LASF23:
	.string	"temp_h_space_ptr0"
.LASF24:
	.string	"temp_h_space_ptr1"
.LASF5:
	.string	"signed char"
.LASF11:
	.string	"index"
.LASF25:
	.string	"ftemp_h_space"
