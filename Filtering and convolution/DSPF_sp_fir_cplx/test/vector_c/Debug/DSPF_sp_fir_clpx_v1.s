	.file	"DSPF_sp_fir_clpx_v1.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSPF_sp_fir_cplx_vc,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_cplx_vc
	.type	DSPF_sp_fir_cplx_vc, @function
DSPF_sp_fir_cplx_vc:
.LFB0:
	.file 1 "../DSPF_sp_fir_clpx_v1.c"
	.loc 1 16 0
	.cfi_startproc
.LVL0:
		SADD.M2		-2,R16,R1
	|	SMVAGA36.M1		R15:R14, AR3
	|	SSHFLL		1, R16, R15
.LVL1:
		SMVAGA36.M1		R13:R12, AR0
	|	SSHFLL		1, R1, R17
	|	SADD.M2		-1,R16,R43
	.loc 1 12 0
		SSHFAR		31, R1, R13
	|	SMVAAGL.M1		AR3, R27:R26
		SSHFAR		31, R16, R12
	|	SMVAAA.M1		AR0, OR11
.LVL2:
	.loc 1 16 0
		SMOVIL		-24, R6
		SMOVIL		-1, R7
	.loc 1 12 0
		SLTU		R17, R1, R21
	|	SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 24
		SLTU		R15, R16, R20
	|	SMVAAGL.M1		AR14, R7:R6
	|	SMVAAGH.M2		AR3, R27:R26
		SSHFLL		1, R13, R8
		SSHFLL		1, R12, R22
	|	SADD.M1		R8,R21,R9
	|	SMVAAGH.M2		AR14, R7:R6
	.loc 1 34 0
		SMOVIL		0, R42
	|	SADD.M1		R22,R20,R24
	.cfi_offset 14, -8
	.loc 1 12 0
		SSHFLL		1, R43, R19
	|	SSTDW		R7:R6, *+AR15[2]
		SSHFLL		2, R1, R25
	|	SMVAAGL.M2		AR8, R7:R6
		SSHFLL		2, R16, R29
		SSHFAR		31, R43, R14
	|	SMVAAGH.M2		AR8, R7:R6
.LVL3:
	.loc 1 34 0
		SLT		R42, R16, R0
	.cfi_offset 8, -16
	.loc 1 12 0
		SLTU		R19, R43, R28
	|[!R0]	SBR		.L8
	|	SSTDW		R7:R6, *+AR15[1]
	.loc 1 12 0
		SSHFLL		1, R14, R2
		SSHFLL		1, R9, R48
	|	SADD.M2		R2,R28,R3
		SLTU		R29, R15, R49
		SSHFLL		1, R24, R50
		SLTU		R25, R17, R46
	|	SADD.M2		R50,R49,R53
		SSHFLL		2, R43, R23
	|	SADD.M2		R48,R46,R52
	;; condjump to .L8 occurs
		SSHFLL		3, R16, R48
		SLTU		R23, R19, R44
		SSHFLL		3, R1, R50
		SLTU		R48, R29, R56
		SSHFLL		1, R3, R45
		SSHFLL		1, R53, R57
	|	SADD.M2		R45,R44,R47
		SSHFLL		3, R43, R60
	|	SADD.M2		R57,R56,R49
		SLTU		R50, R25, R55
	;no-op trunc di R49:R48 to pdi R49:R48
	|	SADDA.M2		R49:R48,AR0,AR1
		SSHFLL		1, R52, R51
		SLTU		R60, R23, R54
	|	SADD.M1		R51,R55,R51
		SSHFLL		1, R47, R61
	;no-op trunc di R51:R50 to pdi R51:R50
	|	SADDA.M2		R51:R50,OR11,AR8
		SADD.M1		R61,R54,R61
	|	SMOVIL		0, R19
	;no-op trunc di R61:R60 to pdi R61:R60
		SMOVIL		0, R20
	|	SADDA.M2		R61:R60,OR11,AR14
		SMOVIL		0, R21
		SLT		R19, R18, R2
		SMOVIL		128, R60
.LVL4:
.L7:
		SMOV.M2		R20, R48
	|	SMOV.M1		R21, R49
	|	SMOVIL		2, R59
	;no-op trunc di R49:R48 to pdi R49:R48
		SSUB.M1		R19, R16, R58
	|	SADDA.M2		R49:R48,AR14,AR12
	|	SMOVIL		0, R1
		SADDA.M1		R49:R48,AR8,AR10
	|	SLT		R59, R58, R0
	.loc 1 37 0
		SLDDW		*AR12, R43:R42
	.loc 1 38 0
		SLDDW		*AR10, R15:R14
		SNOP		3
	.loc 1 40 0
	[R0]	SBR		.L24
	.loc 1 37 0
		SVBCAST2.M2 		 R43:R42,VR9:VR8
.LVL5:
	.loc 1 38 0
		SVBCAST2.M1 		 R15:R14,VR11:VR10
		SNOP		4
.LVL6:
	.loc 1 40 0
	;; condjump to .L24 occurs
.LVL7:
.L5:
	.loc 1 47 0
	[!R2]	SBR		.L11
	|	SSUB.M2		R20, R10, R48
	|	SSUB.M1		R21, R11, R15
	|	SMOVIL		0, R61
	.loc 1 12 0
		SLTU		R10, R48, R43
	|	SMOV.M2		R26, R42
		SSUB.M2		R43, R15, R49
	|	SMOV.M1		R27, R43
		SMVAGA36.M1		R49:R48, AR4
		SNOP		3
.LVL8:
	.loc 1 47 0
	;; condjump to .L11 occurs
.LVL9:
.L10:
	.loc 1 55 0
		SSHFAR		31, R61, R3
	|	SMVAGA36.M1		R43:R42, AR0
	|	SMOV.M2		R61, R50
.LVL10:
		SMOV.M2		R3, R51
	|	SMOVIL		64, R44
	.loc 1 12 0
		SADD.M2		1,R61,R13
	;no-op trunc di R51:R50 to pdi R51:R50
	|	SMOVIL		0, R45
	|	SADD.M1		R60,R42,R22
	.loc 1 55 0
		SSHFLR		29, R50, R25
	|	SADDA.M2		R45:R44,AR0,AR2
	|	SMOV.M1		R13, R48
.LVL11:
		SSHFLL		3, R51, R29
		SOR		R29, R25, R45
		SSHFLL		3, R50, R44
	|	VLDW.LS 		*AR2,VR1
	.loc 1 62 0
		SSHFAR		31, R13, R9
	|	SADDA.M2		R45:R44,AR4,AR6
		SMOV.M1		R9, R49
	|	SLTU		R22, R42, R23
	;no-op trunc di R49:R48 to pdi R49:R48
		SSHFLR		29, R48, R44
	|	SMOV.M1		R22, R42
		SSHFLL		3, R49, R45
	|	VLDDWM2.LS 		*AR6,VR7:VR6
	|	SADD.M2		R43,R23,R43
.LVL12:
		SOR		R45, R44, R47
		SSHFLL		3, R48, R46
		SADDA.M2		R47:R46,AR4,AR6
		SNOP		2
		VLDDWM2.LS 		*AR6,VR5:VR4
		SNOP		1
	.loc 1 56 0
		VFCREAL32.M1		VR9:VR8,VR7:VR6,VR3
	|	VFCIMAG32.M3		VR9:VR8,VR7:VR6,VR6
.LVL13:
	.loc 1 57 0
		SNOP		5
.LVL14:
	.loc 1 63 0
		VFCREAL32.M1		VR11:VR10,VR5:VR4,VR7
	|	VFCIMAG32.M3		VR11:VR10,VR5:VR4,VR4
	|	VLDW.LS 		*AR0,VR5
	.loc 1 58 0
		SNOP		1
	.loc 1 59 0
		VFADDS32.M1 		VR6,VR1,VR2
		SNOP		4
	.loc 1 68 0
	[R1]	SBR		.L25
	|	VFADDS32.M1 		VR4,VR2,VR23
	.loc 1 58 0
		VFADDS32.M1 		VR3,VR5,VR0
		SNOP		2
.LVL15:
	.loc 1 65 0
		VFADDS32.M1 		VR7,VR0,VR22
		SNOP		2
.LVL16:
	.loc 1 68 0
	;; condjump to .L25 occurs
	.loc 1 47 0
		SADD.M2		16,R61,R61
	|	VSTW.LS 		VR22,*AR0
.LVL17:
		SLT		R61, R18, R0
	|	VSTW.LS 		VR23,*AR2
	[R0]	SBR		.L10
		SNOP		6
	;; condjump to .L10 occurs
.LVL18:
.L11:
	.loc 1 34 0
		SADD.M2		4,R19,R19
	|	SADD.M1		-32,R20,R51
.LVL19:
		SLT		R19, R16, R1
	|	SADD.M2		-1,R21,R21
.LVL20:
	[R1]	SBR		.L7
	|	SLTU		R51, R20, R57
	|	SMOV.M2		R51, R20
		SADD.M2		R21,R57,R21
		SNOP		5
	;; condjump to .L7 occurs
.LVL21:
.L8:
	.loc 1 93 0
		SADD.M1		15,R18,R16
	|	SMVAAGL.M2		AR3, R43:R42
	|	SMOVIL		0, R26
.LVL22:
		SSHFAR		4, R16, R18
.LVL23:
	.loc 1 94 0
		SLT		R26, R18, R2
	|	SMVAAGH.M2		AR3, R43:R42
	|	SADD.M1		-1,R18,R27
	[!R2]	SBR		.L1
	|	SMOVIL		128, R11
	.loc 1 12 0
		SADD.M2		R11,R42,R60
	|	SSHFLL		7, R27, R58
		SLTU		R60, R42, R59
	|	SADD.M2		R58,R60,R14
		SADD.M2		R43,R59,R12
	|	SSHFLR		25, R27, R28
		SLTU		R14, R60, R15
	|	SADD.M2		R28,R12,R17
		SADD.M2		R17,R15,R13
	|	SMOVIL		128, R3
		SNOP		1
	.loc 1 94 0
	;; condjump to .L1 occurs
.LVL24:
.L12:
	.loc 1 95 0 discriminator 2
		SMVAGA36.M1		R43:R42, AR0
	|	SADD.M2		R3,R42,R8
		SLTU		R8, R42, R9
	|	SMOV.M2		R8, R42
		SADD.M2		R43,R9,R43
	|	SEQ		R8, R14, R0
	|	VLDDW.LS 		*AR0,VR17:VR16
	.loc 1 94 0 discriminator 2
	[R0]	SEQ		R43, R13, R0
	[!R0]	SBR		.L12
		SNOP		5
	.loc 1 95 0 discriminator 2
		VSTDWM16.LS 		VR17:VR16,*AR0
	;; condjump to .L12 occurs
.L1:
	.loc 1 97 0
		SLDDW		*+AR15[1], R7:R6
	|	SMVCGC.L		R63, BRReg
		SNOP		5
		SMVAGA36.M2		R7:R6, AR8
	|	SLDDW		*+AR15[2], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		24, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL25:
.L25:
	.loc 1 12 0
		SADD.M2		2,R61,R46
	|	SADD.M1		3,R61,R47
	.loc 1 70 0
		SSHFAR		31, R46, R52
	|	SMOV.M2		R46, R50
	|	SMOV.M1		R47, R48
		SMOV.M2		R52, R51
	|	SSHFAR		31, R47, R53
	|	SADD.M1		16,R61,R61
	;no-op trunc di R51:R50 to pdi R51:R50
		SSHFLR		29, R50, R54
	|	SMOV.M2		R53, R49
		SSHFLL		3, R51, R55
	;no-op trunc di R49:R48 to pdi R49:R48
		SSHFLL		3, R50, R56
		SOR		R55, R54, R57
		SADDA.M2		R57:R56,AR4,AR6
	|	SSHFLR		29, R48, R50
.LVL26:
	.loc 1 77 0
		SSHFLL		3, R49, R56
		SOR		R56, R50, R59
		SSHFLL		3, R48, R58
	|	VLDDWM2.LS 		*AR6,VR15:VR14
.LVL27:
		SADDA.M2		R59:R58,AR4,AR6
	|	SLT		R61, R18, R0
	.loc 1 47 0
		SNOP		2
	.loc 1 77 0
		VLDDWM2.LS 		*AR6,VR13:VR12
		SNOP		3
	.loc 1 71 0
		VFCREAL32.M1		VR17:VR16,VR15:VR14,VR20
	|	VFCIMAG32.M3		VR17:VR16,VR15:VR14,VR14
.LVL28:
	.loc 1 72 0
		SNOP		3
.LVL29:
	.loc 1 78 0
		VFCREAL32.M1		VR19:VR18,VR13:VR12,VR15
	|	VFCIMAG32.M3		VR19:VR18,VR13:VR12,VR12
	.loc 1 79 0
		SNOP		4
	.loc 1 73 0
		VFADDS32.M1 		VR20,VR22,VR13
.LVL30:
	.loc 1 74 0
		VFADDS32.M1 		VR14,VR23,VR21
	|[R0]	SBR		.L10
.LVL31:
	.loc 1 47 0
		SNOP		1
	.loc 1 80 0
		VFADDS32.M1 		VR15,VR13,VR22
.LVL32:
	.loc 1 81 0
		VFADDS32.M1 		VR12,VR21,VR23
		SNOP		1
.LVL33:
	.loc 1 84 0
		VSTW.LS 		VR22,*AR0
	.loc 1 85 0
		VSTW.LS 		VR23,*AR2
	;; condjump to .L10 occurs
		SBR		.L11
		SNOP		6
	;; jump to .L11 occurs
.LVL34:
.L24:
	.loc 1 12 0
		SMVAAA.M2		AR1, OR12
	|	SMOVIL		1, R1
	.loc 1 43 0
		SNOP		1
	.loc 1 12 0
		SADDA.M2		R49:R48,OR12,AR10
		SNOP		1
	.loc 1 41 0
		SLDDW		*-AR10[3], R13:R12
	.loc 1 42 0
		SLDDW		*-AR10[4], R29:R28
		SNOP		3
		SBR		.L5
	.loc 1 41 0
		SVBCAST2.M2 		 R13:R12,VR17:VR16
.LVL35:
	.loc 1 42 0
		SVBCAST2.M1 		 R29:R28,VR19:VR18
		SNOP		4
.LVL36:
	;; jump to .L5 occurs
	.cfi_endproc
.LFE0:
	.size	DSPF_sp_fir_cplx_vc, .-DSPF_sp_fir_cplx_vc
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2a9
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
	.byte	0xc
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x280
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0xd
	.4byte	0x28d
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x6
	.string	"h"
	.byte	0x1
	.byte	0xd
	.4byte	0x293
	.4byte	.LLST1
	.uleb128 0x6
	.string	"r"
	.byte	0x1
	.byte	0xd
	.4byte	0x28d
	.4byte	.LLST2
	.uleb128 0x6
	.string	"nh"
	.byte	0x1
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST3
	.uleb128 0x6
	.string	"nr"
	.byte	0x1
	.byte	0xf
	.4byte	0x62
	.4byte	.LLST4
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x11
	.4byte	0x62
	.4byte	.LLST5
	.uleb128 0x7
	.string	"j"
	.byte	0x1
	.byte	0x11
	.4byte	0x62
	.4byte	.LLST6
	.uleb128 0x7
	.string	"k"
	.byte	0x1
	.byte	0x11
	.4byte	0x62
	.4byte	.LLST7
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x1
	.byte	0x12
	.4byte	0x28d
	.4byte	.LLST8
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x14
	.4byte	0x280
	.4byte	.LLST9
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x14
	.4byte	0x280
	.4byte	.LLST10
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x14
	.4byte	0x280
	.4byte	.LLST11
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x14
	.4byte	0x280
	.4byte	.LLST12
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x16
	.4byte	0x280
	.4byte	.LLST13
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x16
	.4byte	0x280
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x16
	.4byte	0x280
	.4byte	.LLST14
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x16
	.4byte	0x280
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x18
	.4byte	0x299
	.4byte	.LLST15
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x18
	.4byte	0x299
	.4byte	.LLST16
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.byte	0x18
	.4byte	0x299
	.4byte	.LLST17
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x1
	.byte	0x18
	.4byte	0x299
	.4byte	.LLST18
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x1
	.byte	0x19
	.4byte	0x299
	.4byte	.LLST19
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x1
	.byte	0x19
	.4byte	0x299
	.4byte	.LLST20
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x1
	.byte	0x19
	.4byte	0x299
	.4byte	.LLST21
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x1
	.byte	0x19
	.4byte	0x299
	.4byte	.LLST22
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1b
	.4byte	0x2a6
	.4byte	.LLST23
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x1
	.byte	0x1c
	.4byte	0x299
	.4byte	.LLST24
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x1
	.byte	0x1c
	.4byte	0x299
	.4byte	.LLST25
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1f
	.4byte	0x62
	.4byte	.LLST26
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x1
	.byte	0x20
	.4byte	0x85
	.byte	0x4
	.4byte	0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x1
	.byte	0x21
	.4byte	0x299
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x1
	.byte	0x5d
	.4byte	0x62
	.4byte	.LLST27
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	0x8c
	.4byte	0x28d
	.uleb128 0xc
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.4byte	0x280
	.uleb128 0xd
	.byte	0x8
	.4byte	0x8c
	.uleb128 0xb
	.byte	0x1
	.4byte	0x85
	.4byte	0x2a6
	.uleb128 0xc
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.4byte	0x299
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x1c
	.uleb128 0xa
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
	.llong	.LFE0
	.2byte	0x2
	.byte	0x7f
	.sleb128 24
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL2
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL2
	.llong	.LVL4
	.2byte	0x1
	.byte	0x50
	.llong	.LVL4
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x5b
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL3
	.llong	.LFE0
	.2byte	0x1
	.byte	0x53
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL22
	.llong	.LVL25
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x9f
	.llong	.LVL25
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL23
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL23
	.llong	.LVL25
	.2byte	0x4
	.byte	0x92
	.uleb128 0x20
	.sleb128 -15
	.byte	0x9f
	.llong	.LVL25
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL1
	.llong	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL19
	.llong	.LVL21
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.llong	.LVL23
	.llong	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL8
	.llong	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL17
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.llong	.LVL33
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL8
	.llong	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL8
	.llong	.LVL21
	.2byte	0x1
	.byte	0x54
	.llong	.LVL25
	.llong	.LVL34
	.2byte	0x1
	.byte	0x54
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL5
	.llong	.LVL21
	.2byte	0x8
	.byte	0x90
	.uleb128 0x68
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x69
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL25
	.llong	.LFE0
	.2byte	0x8
	.byte	0x90
	.uleb128 0x68
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x69
	.byte	0x93
	.uleb128 0x4
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL6
	.llong	.LVL21
	.2byte	0x8
	.byte	0x90
	.uleb128 0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL25
	.llong	.LFE0
	.2byte	0x8
	.byte	0x90
	.uleb128 0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL7
	.llong	.LVL21
	.2byte	0x8
	.byte	0x90
	.uleb128 0x70
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x71
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL25
	.llong	.LVL34
	.2byte	0x8
	.byte	0x90
	.uleb128 0x70
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x71
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL35
	.llong	.LFE0
	.2byte	0x8
	.byte	0x90
	.uleb128 0x70
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x71
	.byte	0x93
	.uleb128 0x4
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL7
	.llong	.LVL21
	.2byte	0x8
	.byte	0x90
	.uleb128 0x72
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x73
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL25
	.llong	.LVL34
	.2byte	0x8
	.byte	0x90
	.uleb128 0x72
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x73
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL36
	.llong	.LFE0
	.2byte	0x8
	.byte	0x90
	.uleb128 0x72
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x73
	.byte	0x93
	.uleb128 0x4
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL12
	.llong	.LVL14
	.2byte	0x8
	.byte	0x90
	.uleb128 0x66
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x67
	.byte	0x93
	.uleb128 0x4
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL27
	.llong	.LVL29
	.2byte	0x8
	.byte	0x90
	.uleb128 0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL13
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x63
	.llong	.LVL25
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.uleb128 0x63
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL14
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x66
	.llong	.LVL25
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.uleb128 0x66
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL15
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x67
	.llong	.LVL25
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.uleb128 0x67
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL15
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x64
	.llong	.LVL25
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.uleb128 0x64
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL28
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.uleb128 0x74
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL29
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6e
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL31
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6f
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL31
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6c
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL1
	.llong	.LVL3
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL3
	.llong	.LFE0
	.2byte	0x1
	.byte	0x53
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL10
	.llong	.LVL15
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.llong	.LVL15
	.llong	.LVL16
	.2byte	0x2
	.byte	0x90
	.uleb128 0x60
	.llong	.LVL16
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x76
	.llong	.LVL25
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.uleb128 0x76
	.llong	.LVL30
	.llong	.LVL32
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6d
	.llong	.LVL32
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.uleb128 0x76
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL11
	.llong	.LVL15
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.llong	.LVL15
	.llong	.LVL16
	.2byte	0x2
	.byte	0x90
	.uleb128 0x62
	.llong	.LVL16
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.uleb128 0x77
	.llong	.LVL25
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.uleb128 0x77
	.llong	.LVL31
	.llong	.LVL33
	.2byte	0x2
	.byte	0x90
	.uleb128 0x75
	.llong	.LVL33
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.uleb128 0x77
	.llong	0
	.llong	0
.LLST26:
	.llong	.LVL1
	.llong	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL7
	.llong	.LVL20
	.2byte	0x1
	.byte	0x61
	.llong	.LVL25
	.llong	.LVL34
	.2byte	0x1
	.byte	0x61
	.llong	.LVL34
	.llong	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL36
	.llong	.LFE0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL23
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
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
.LASF36:
	.string	"vr_len"
.LASF20:
	.string	"temp_vx_1_16"
.LASF35:
	.string	"temp"
.LASF6:
	.string	"short int"
.LASF9:
	.string	"sizetype"
.LASF31:
	.string	"temp_r_real"
.LASF13:
	.string	"temp_x_offset_addr"
.LASF18:
	.string	"temp_vx_0_15"
.LASF19:
	.string	"temp_vx_2_17"
.LASF29:
	.string	"temp_imag_3_18"
.LASF24:
	.string	"temp_real_1_16"
.LASF30:
	.string	"r_temp"
.LASF11:
	.string	"float"
.LASF28:
	.string	"temp_real_3_18"
.LASF7:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF8:
	.string	"long int"
.LASF23:
	.string	"temp_imag_0_15"
.LASF1:
	.string	"unsigned char"
.LASF26:
	.string	"temp_real_2_17"
.LASF5:
	.string	"signed char"
.LASF0:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned int"
.LASF37:
	.string	"GNU C 4.7.0"
.LASF2:
	.string	"short unsigned int"
.LASF39:
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSPF_sp_fir_cplx/test/vector_c/Debug"
.LASF25:
	.string	"temp_imag_1_16"
.LASF38:
	.string	"../DSPF_sp_fir_clpx_v1.c"
.LASF4:
	.string	"long unsigned int"
.LASF33:
	.string	"h23_flag"
.LASF12:
	.string	"double"
.LASF14:
	.string	"temp_vh_0"
.LASF15:
	.string	"temp_vh_1"
.LASF16:
	.string	"temp_vh_2"
.LASF17:
	.string	"temp_vh_3"
.LASF34:
	.string	"temp1"
.LASF32:
	.string	"temp_r_imag"
.LASF27:
	.string	"temp_imag_2_17"
.LASF40:
	.string	"DSPF_sp_fir_cplx_vc"
.LASF22:
	.string	"temp_real_0_15"
.LASF21:
	.string	"temp_vx_3_18"
