	.file	"version_vector.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSPF_sp_qrd_solver_cmplx_v1,"ax",@progbits
	.align	2
	.global	DSPF_sp_qrd_solver_cmplx_v1
	.type	DSPF_sp_qrd_solver_cmplx_v1, @function
DSPF_sp_qrd_solver_cmplx_v1:
.LFB3:
	.file 1 "../version_vector.c"
	.loc 1 14 0
	.cfi_startproc
.LVL0:
		SMOVIL		64, R6
	|	SMVAGA36.M1		R21:R20, AR4
		SMOVIL		0, R7
	|	SMVAGA36.M1		R15:R14, AR6
.LVL1:
		SSUBA.L		R7:R6, AR7, AR7
		SMOVIL		-168, R6
		SNOP		1
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 168
		SMVAAGL.M1		AR14, R7:R6
	|	SSHFAR		31, R12, R48
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.loc 1 34 0
		SSHFLR		28, R48, R0
	|	SSTDW		R63:R62, *+AR15[19]
	.cfi_offset 56, -56
	.cfi_offset 57, -52
	.loc 1 14 0
		SMVAAGH.M2		AR14, R7:R6
	|	SSHFAR		31, R10, R49
	|	SADD.M1		R12,R0,R1
	|	SSTDW		R41:R40, *+AR15[14]
	.loc 1 34 0
		SSHFAR		4, R1, R61
	.loc 1 33 0
		SSHFLR		28, R49, R2
	|	SMVAAGL.M2		AR4, R49:R48
	|	SADD.M1		-1,R61,R55
	.loc 1 14 0
		SSTDW		R7:R6, *+AR15[20]
	.cfi_offset 14, -8
	.cfi_offset 54, -64
	.cfi_offset 55, -60
		SMVAAGL.M1		OR9, R7:R6
	|	SMOVIL		0, R8
	|	SMVAAGH.M2		AR4, R49:R48
	|	SSTDW		R39:R38, *+AR15[13]
	.loc 1 37 0
		SLT		R8, R61, R0
	.loc 1 14 0
		SMVAAGH.M2		OR9, R7:R6
	|	SMOVIL		0, R52
	|	SADD.M1		R10,R2,R3
	.cfi_offset 52, -72
	.cfi_offset 53, -68
	.loc 1 10 0
		SSHFLL		7, R55, R54
	|	SSTDW		R37:R36, *+AR15[12]
	.loc 1 14 0
		SSTDW		R7:R6, *+AR15[18]
	.cfi_offset 89, -24
		SMVAAGL.M2		OR8, R7:R6
	|	SMOVIL		0, R53
	|	SADD.M1		R54,R48,R13
	.loc 1 38 0
		SVBCAST2.M1 		 R53:R52,VR5:VR4
	|	SSHFLR		25, R55, R14
.LVL2:
	.cfi_offset 50, -80
	.cfi_offset 51, -76
	.loc 1 14 0
		SMVAAGH.M2		OR8, R7:R6
	|	SMOVIL		128, R52
	|	SSTDW		R35:R34, *+AR15[11]
	.cfi_offset 48, -88
	.cfi_offset 49, -84
	.loc 1 10 0
		SLTU		R13, R48, R56
	|	SMVAGA36.M2		R17:R16, OR8
	|	SSTDW		R33:R32, *+AR15[10]
.LVL3:
		SMOVIL		128, R20
.LVL4:
		SADD.M2		R14,R49,R15
	|	SADD.M1		R52,R13,R57
	|	SSHFAR		4, R3, R9
	.loc 1 14 0
		SSTDW		R7:R6, *+AR15[17]
	.cfi_offset 88, -32
	.cfi_offset 46, -96
	.cfi_offset 47, -92
		SMVAAGL.M2		AR9, R7:R6
	|	SADD.M1		R15,R56,R16
	|	SLTU		R57, R13, R17
	|	SSTDW		R31:R30, *+AR15[9]
.LVL5:
	.loc 1 10 0
		SADD.M1		R16,R17,R58
	.loc 1 14 0
		SMVAAGH.M2		AR9, R7:R6
	.loc 1 37 0
	[!R0]	SBR		.L6
	|	SSTW		R0, *+AR15[14]
	.loc 1 14 0
		SSTDW		R7:R6, *+AR15[16]
		SMVAAGL.M2		AR8, R7:R6
		SNOP		1
	.cfi_offset 9, -40
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R23:R22, AR8
		SNOP		1
.LVL6:
		SSTDW		R7:R6, *+AR15[15]
	;; condjump to .L6 occurs
	.cfi_offset 8, -48
.LVL7:
.L5:
		SADD.M2		R20,R48,R21
	|	SMVAGA36.M1		R49:R48, AR0
		SLTU		R21, R48, R22
	|	SMOV.M2		R21, R48
		SADD.M2		R49,R22,R49
	|	SEQ		R21, R57, R1
	|	VSTDW.LS 		VR5:VR4,*AR0
	.loc 1 37 0 discriminator 2
	[R1]	SEQ		R49, R58, R1
	[!R1]	SBR		.L5
		SNOP		6
	;; condjump to .L5 occurs
.L6:
.LVL8:
	.loc 1 40 0
		SMOVIL		0, R24
	|	SADD.M2		1,R10,R25
	|	SADD.M1		1,R9,R60
	|	VMOVIL		31,	VR10
		SLT		R24, R10, R2
	[!R2]	SBR		.L4
	|	SMOVIL		0, R48
	.loc 1 10 0
		SMOVIL		1, R3
		SLT		R48, R9, R1
		SNOP		4
	.loc 1 40 0
	;; condjump to .L4 occurs
.LVL9:
.L10:
	.loc 1 10 0
		SMVAGA36.M1		R19:R18, AR0
		SNOP		1
	.loc 1 42 0
		VLDW.LS 		*AR0,VR3
		SNOP		7
		VMVCGC.L		VR3,SVR
		SNOP		2
	.loc 1 43 0
		SMVCCG.L		SVR0,R26
		SNOP		1
		SSTW		R26, *+AR15[16]
	|	SMVCCG.L		SVR1,R27
	.loc 1 44 0
		SNOP		1
	.loc 1 48 0
	[!R1]	SBR		.L12
	|	SMULIS.M2		R48,R12,R59
	|	SMOVIL		1, R38
	.loc 1 44 0
		SSTW		R27, *+AR15[17]
	|	SMOVIL		0, R53
	.loc 1 48 0
		SNOP		2
	.loc 1 47 0
	[R1]	SLDDW		*+AR15[8], R29:R28
		SNOP		5
	.loc 1 48 0
	;; condjump to .L12 occurs
	.loc 1 47 0
		SVBCAST2.M2 		 R29:R28,VR9:VR8
		SNOP		4
.LVL10:
.L11:
	.loc 1 49 0 discriminator 2
		SSHFLL		4, R53, R29
		SADD.M2		R59,R29,R30
	|	SSHFLL		1, R53, R31
		SSHFAR		31, R30, R51
	|	SMOV.M2		R30, R48
	|	SADD.M1		1,R31,R33
		SMOV.M2		R51, R49
	|	SSHFAR		31, R31, R32
	;no-op trunc di R49:R48 to pdi R49:R48
		SSHFLR		29, R48, R35
		SSHFLL		3, R49, R43
		SSHFLL		3, R48, R42
		SOR		R43, R35, R43
		SADDA.M2		R43:R42,AR6,AR0
	|	SSHFLR		26, R31, R34
	.loc 1 53 0 discriminator 2
		SSHFLL		6, R32, R45
		SSHFLL		7, R53, R44
	|	SMOV.M1		R38, R53
	.loc 1 49 0 discriminator 2
		VLDDWM2.LS 		*AR0,VR7:VR6
	|	SOR		R45, R34, R36
	|	SMOV.M2		R44, R48
	|	SADD.M1		1,R38,R38
.LVL11:
	.loc 1 53 0 discriminator 2
		SMOV.M2		R36, R49
	|	SLTU		R33, R31, R37
	;no-op trunc di R49:R48 to pdi R49:R48
		SADDA.M2		R49:R48,AR4,AR2
	|	SADD.M1		R32,R37,R39
	|	SSHFLR		26, R33, R40
	.loc 1 54 0 discriminator 2
		SSHFLL		6, R39, R47
		SOR		R47, R40, R41
		SSHFLL		6, R33, R46
	|	SMOV.M2		R41, R49
		SMOV.M2		R46, R48
	|	SEQ		R60, R38, R0
	;no-op trunc di R49:R48 to pdi R49:R48
		SADDA.M2		R49:R48,AR4,AR0
	.loc 1 50 0 discriminator 2
		VMOV.M1 	VR6,VR32 
	|	VMOV.M2  	VR7,VR33
		VMOV		VR32,	VR4
		VBEX		VR10,	VR33,	VR5
	|	VLDW.LS 		*AR2,VR33
.LVL12:
	.loc 1 51 0 discriminator 2
		VFCREAL32.M1		VR5:VR4,VR9:VR8,VR0
	|	VFCIMAG32.M3		VR5:VR4,VR9:VR8,VR1
.LVL13:
	.loc 1 52 0 discriminator 2
		SNOP		6
.LVL14:
	.loc 1 53 0 discriminator 2
		VFADDS32.M1 		VR33,VR0,VR2
		SNOP		2
		VSTW.LS 		VR2,*AR2
	.loc 1 54 0 discriminator 2
		VLDW.LS 		*AR0,VR5
		SNOP		4
	.loc 1 48 0 discriminator 2
	[!R0]	SBR		.L11
		SNOP		2
	.loc 1 54 0 discriminator 2
		VFADDS32.M1 		VR5,VR1,VR7
		SNOP		2
		VSTW.LS 		VR7,*AR0
	;; condjump to .L11 occurs
.LVL15:
.L12:
	.loc 1 40 0
		SMOV.M2		R3, R48
	|	SADD.M1		1,R3,R3
		SEQ		R25, R3, R2
	|	SADD.M2		8,R18,R42
	[!R2]	SBR		.L10
	|	SLTU		R42, R18, R8
	|	SMOV.M2		R42, R18
		SADD.M2		R19,R8,R19
		SNOP		5
	;; condjump to .L10 occurs
.L4:
.LVL16:
	.loc 1 58 0
		SLDW		*+AR15[14], R1
	|	SMVAAGL.M2		AR4, R43:R42
	|	SADD.M1		-1,R61,R18
	|	SMOVIL		128, R13
	.loc 1 10 0
		SSHFLL		7, R18, R49
		SMVAAGH.M2		AR4, R43:R42
	|	SSHFLR		25, R18, R9
.LVL17:
		SMOVIL		128, R57
		SADD.M2		R49,R42,R11
	|	SADD.M1		R9,R43,R54
		SLTU		R11, R42, R55
	|	SADD.M2		R13,R11,R14
	.loc 1 58 0
	[!R1]	SBR		.L8
	|	SADD.M2		R54,R55,R15
	|	SLTU		R14, R11, R56
	.loc 1 10 0
		SADD.M2		R15,R56,R52
		SNOP		5
	.loc 1 58 0
	;; condjump to .L8 occurs
.LVL18:
.L15:
	.loc 1 59 0 discriminator 2
		SMVAGA36.M1		R43:R42, AR0
	|	SADD.M2		R57,R42,R16
		SLTU		R16, R42, R17
	|	SMOV.M2		R16, R42
		SADD.M2		R43,R17,R43
	|	SEQ		R16, R14, R0
	|	VLDDW.LS 		*AR0,VR13:VR12
	.loc 1 58 0 discriminator 2
	[R0]	SEQ		R43, R52, R0
	[!R0]	SBR		.L15
		SNOP		5
	.loc 1 59 0 discriminator 2
		VSTDWM16.LS 		VR13:VR12,*AR0
	;; condjump to .L15 occurs
.L8:
	.loc 1 63 0
		SLT		R10, R12, R2
	[R2]	SBR		.L16
		SNOP		6
	;; condjump to .L16 occurs
	.loc 1 64 0
		SMOV.M2		R12, R10
.LVL19:
.L16:
	.loc 1 68 0
		SLDW		*+AR15[14], R1
	|	SADD.M1		-1,R61,R20
	|	SMVAAGL.M2		AR8, R43:R42
	|	SMOVIL		128, R22
	.loc 1 10 0
		SSHFLL		7, R20, R21
		SMVAAGH.M2		AR8, R43:R42
	|	SADD.M1		R22,R21,R23
	|	SMOVIL		0, R44
	.loc 1 69 0
		SMOVIL		0, R45
	.loc 1 10 0
		SSHFLR		25, R20, R24
	|	SVBCAST2.M2 		 R45:R44,VR15:VR14
	|	SADD.M1		R23,R42,R25
.LVL20:
		SLTU		R23, R21, R60
.LVL21:
	.loc 1 68 0
	[!R1]	SBR		.L21
	|	SADD.M1		R24,R60,R26
	|	SLTU		R25, R42, R27
	.loc 1 10 0
		SADD.M1		R26,R43,R28
	|	SMOVIL		128, R59
		SADD.M2		R28,R27,R29
		SNOP		4
	.loc 1 68 0
	;; condjump to .L21 occurs
.LVL22:
.L20:
		SADD.M2		R59,R42,R30
	|	SMVAGA36.M1		R43:R42, AR0
		SLTU		R30, R42, R31
	|	SMOV.M2		R30, R42
		SADD.M2		R43,R31,R43
	|	SEQ		R30, R25, R0
	|	VSTDW.LS 		VR15:VR14,*AR0
	.loc 1 68 0 is_stmt 0 discriminator 2
	[R0]	SEQ		R43, R29, R0
	[!R0]	SBR		.L20
		SNOP		6
	;; condjump to .L20 occurs
.L21:
	.loc 1 72 0 is_stmt 1
		SADD.M2		-1,R10,R54
	|	SMOVIL		0, R10
	|	SADD.M1		1,R61,R51
.LVL23:
		SSHFLL		16, R54, R32
	|	SMVAAA.M2		AR4, OR11
.LVL24:
		SSHFAR		16, R32, R33
		SLT		R33, R10, R2
	|	SMULIS.M2		R12,R33,R50
	|	SMOV.M1		R33, R52
	[R2]	SBR		.L43
	|	SSHFLL		1, R33, R34
		SSHFAR		31, R32, R53
	.loc 1 10 0
		SLTU		R34, R33, R61
.LVL25:
		SSHFLL		1, R53, R35
		SSHFLL		2, R33, R45
	|	SADD.M2		R35,R61,R43
	.loc 1 74 0
		SMOVIL		0, R47
	.loc 1 10 0
		SSHFLL		1, R43, R37
	;; condjump to .L43 occurs
		SLTU		R45, R34, R36
	.loc 1 74 0
		SMOVIH		0, R47
	|	SADD.M2		R37,R36,R38
	.loc 1 10 0
		SSHFLL		3, R33, R44
	|	SVBCAST.M2 		 R47,VR9
		SLTU		R44, R45, R39
	|	SMOV.M1		R44, R42
		SSHFLL		1, R38, R40
		SNEG		R12, R12
	|	SADD.M1		R40,R39,R43
.LVL26:
		SSTW		R12, *+AR15[15]
	;no-op trunc di R43:R42 to pdi R43:R42
	|	SADDA.M1		R43:R42,OR11,AR9
	|	SADDA.M2		R43:R42,AR8,OR9
	|	VSTW.LS 		VR9,*AR7
	|	SMOVIL		0, R38
		SMOVIL		0, R39
.LVL27:
.L25:
	.loc 1 77 0
		SLDW		*+AR15[14], R1
	|	VLDW.LS 		*AR7,VR15
	|	SMOVIL		1, R46
.LVL28:
		SMOVIL		0, R3
		SNOP		4
	[!R1]	SBR		.L23
		SNOP		1
	.loc 1 75 0
		VMOV		VR15,	VR18
		SNOP		4
.LVL29:
	.loc 1 77 0
	;; condjump to .L23 occurs
.LVL30:
.L24:
	.loc 1 78 0 discriminator 2
		SSHFLL		4, R3, R41
	|	SMVAAA.M2		OR8, OR0
	|	SMOV.M1		R46, R3
		SADD.M1		R50,R41,R42
	|	SSHFAR		31, R41, R19
		SMOV.M2		R42, R8
	|	SSHFAR		31, R42, R18
	|	SMOV.M1		R19, R43
		SMOV.M2		R8, R44
	|	SMOV.M1		R18, R45
	;no-op trunc di R45:R44 to pdi R45:R44
		SSHFLR		29, R44, R49
	|	SMOV.M2		R41, R42
	|	SADD.M1		1,R46,R46
		SSHFLL		3, R45, R9
	;no-op trunc di R43:R42 to pdi R43:R42
		SOR		R9, R49, R31
		SSHFLL		3, R44, R30
		SADDA.M2		R31:R30,OR0,AR2
	|	SSHFLR		29, R42, R11
	|	SMVAAA.M1		AR8, OR0
	.loc 1 79 0 discriminator 2
		SSHFLL		3, R43, R55
		SOR		R55, R11, R33
		SSHFLL		3, R42, R32
	|	VLDDWM2.LS 		*AR2,VR5:VR4
.LVL31:
		SADDA.M2		R33:R32,OR0,AR0
	|	SEQ		R51, R46, R0
	.loc 1 77 0 discriminator 2
		SNOP		2
	.loc 1 79 0 discriminator 2
		VLDDWM2.LS 		*AR0,VR17:VR16
		SNOP		7
.LVL32:
	.loc 1 81 0 discriminator 2
		VFCREAL32.M1		VR5:VR4,VR17:VR16,VR11
	|	VFCIMAG32.M3		VR5:VR4,VR17:VR16,VR13
.LVL33:
	.loc 1 82 0 discriminator 2
		SNOP		3
.LVL34:
	.loc 1 77 0 discriminator 2
	[!R0]	SBR		.L24
		SNOP		2
	.loc 1 84 0 discriminator 2
		VFADDS32.M1 		VR15,VR11,VR15
.LVL35:
	.loc 1 85 0 discriminator 2
		VFADDS32.M1 		VR18,VR13,VR18
		SNOP		2
.LVL36:
	.loc 1 77 0 discriminator 2
	;; condjump to .L24 occurs
.LVL37:
.L23:
	.loc 1 88 0
		VMVCGC.L		VR15,SVR
		SNOP		2
	.loc 1 89 0
		SMVCCG.L		SVR0,R13
		SNOP		1
	.loc 1 90 0
		SMVCCG.L		SVR1,R14
		SNOP		1
	.loc 1 91 0
		SMVCCG.L		SVR2,R15
		SNOP		1
	.loc 1 92 0
		SMVCCG.L		SVR3,R16
		SNOP		1
	.loc 1 93 0
		SMVCCG.L		SVR4,R17
		SNOP		1
	.loc 1 94 0
		SMVCCG.L		SVR5,R57
		SNOP		1
	.loc 1 95 0
		SMVCCG.L		SVR6,R56
		SNOP		1
	.loc 1 96 0
		SMVCCG.L		SVR7,R58
		SNOP		1
	.loc 1 97 0
		SMVCCG.L		SVR8,R20
		SNOP		1
	.loc 1 98 0
		SMVCCG.L		SVR9,R21
		SNOP		1
	.loc 1 99 0
		SMVCCG.L		SVR10,R22
		SNOP		1
	.loc 1 100 0
		SMVCCG.L		SVR11,R23
		SNOP		1
	.loc 1 101 0
		SMVCCG.L		SVR12,R24
		SNOP		1
	.loc 1 102 0
		SMVCCG.L		SVR13,R25
		SNOP		1
	.loc 1 103 0
		SMVCCG.L		SVR14,R60
		SNOP		1
	.loc 1 104 0
		SMVCCG.L		SVR15,R26
		SNOP		1
	.loc 1 105 0
		SFADDS32.M2		R13, R14, R27
		SNOP		2
		SFADDS32.M2		R27, R15, R28
		SNOP		2
		SFADDS32.M2		R28, R16, R59
		SNOP		2
		SFADDS32.M2		R59, R17, R29
		SNOP		2
		SFADDS32.M2		R29, R57, R30
		SNOP		2
		SFADDS32.M2		R30, R56, R31
		SNOP		2
		SFADDS32.M2		R31, R58, R32
		SNOP		2
		SFADDS32.M2		R32, R20, R33
		SNOP		2
	.loc 1 106 0
		SFADDS32.M2		R33, R21, R10
		SNOP		2
		SFADDS32.M2		R10, R22, R2
		SNOP		2
		SFADDS32.M2		R2, R23, R34
		SNOP		2
		SFADDS32.M2		R34, R24, R61
		SNOP		2
		SFADDS32.M2		R61, R25, R35
		SNOP		2
		SFADDS32.M2		R35, R60, R45
		SNOP		2
	.loc 1 105 0
		SFADDS32.M2		R45, R26, R36
		SNOP		2
.LVL38:
	.loc 1 108 0
		VMVCGC.L		VR18,SVR
		SNOP		2
	.loc 1 109 0
		SMVCCG.L		SVR0,R37
		SNOP		1
	.loc 1 110 0
		SMVCCG.L		SVR1,R40
		SNOP		1
	.loc 1 111 0
		SMVCCG.L		SVR2,R12
		SNOP		1
	.loc 1 112 0
		SMVCCG.L		SVR3,R1
		SNOP		1
	.loc 1 113 0
		SMVCCG.L		SVR4,R3
		SNOP		1
	.loc 1 114 0
		SMVCCG.L		SVR5,R0
		SNOP		1
	.loc 1 115 0
		SMVCCG.L		SVR6,R8
		SNOP		1
	.loc 1 116 0
		SMVCCG.L		SVR7,R19
		SNOP		1
	.loc 1 117 0
		SMVCCG.L		SVR8,R18
		SNOP		1
	.loc 1 118 0
		SMVCCG.L		SVR9,R48
		SNOP		1
	.loc 1 119 0
		SMVCCG.L		SVR10,R47
		SNOP		1
	.loc 1 120 0
		SMVCCG.L		SVR11,R46
		SNOP		1
	.loc 1 121 0
		SMVCCG.L		SVR12,R49
		SNOP		1
	.loc 1 122 0
		SMVCCG.L		SVR13,R44
		SNOP		1
	.loc 1 123 0
		SMVCCG.L		SVR14,R43
		SNOP		1
	.loc 1 124 0
		SMVCCG.L		SVR15,R42
		SNOP		1
	.loc 1 125 0
		SFADDS32.M2		R37, R40, R41
	|	SMVAGA36.M1		R39:R38, AR14
	.loc 1 10 0
		SMVAAA.M1		AR9, OR0
		SMVAAGL.M1		AR14, R15:R14
	.loc 1 125 0
		SFADDS32.M1		R41, R12, R11
	.loc 1 10 0
		SMVAAGH.M2		AR14, R15:R14
		SNOP		1
	.loc 1 125 0
		SFADDS32.M1		R11, R1, R9
	|	SADDA.M2		R15:R14,OR0,AR0
	.loc 1 10 0
		SNOP		2
	.loc 1 125 0
		SFADDS32.M2		R9, R3, R55
	|	VLDW.LS 		*AR0,VR17
	.loc 1 129 0
		SNOP		2
	.loc 1 125 0
		SFADDS32.M2		R55, R0, R13
		SNOP		2
		SFADDS32.M2		R13, R8, R15
		SNOP		2
		SFADDS32.M2		R15, R19, R16
		SNOP		2
		SFADDS32.M2		R16, R18, R17
		SNOP		2
	.loc 1 126 0
		SFADDS32.M2		R17, R48, R57
		SNOP		2
		SFADDS32.M2		R57, R47, R56
		SNOP		2
		SFADDS32.M2		R56, R46, R58
		SNOP		2
		SFADDS32.M2		R58, R49, R20
		SNOP		2
		SFADDS32.M2		R20, R44, R21
		SNOP		2
		SFADDS32.M2		R21, R43, R22
		SNOP		2
	.loc 1 125 0
		SFADDS32.M2		R22, R42, R23
		SNOP		2
.LVL39:
	.loc 1 129 0
		VMVCGC.L		VR17,SVR
		SNOP		2
	.loc 1 130 0
		SMVCCG.L		SVR0,R24
		SNOP		1
	.loc 1 131 0
		SMVCCG.L		SVR1,R25
		SNOP		1
	.loc 1 136 0
		SADD.M1		R52,R50,R60
	|	SSHFAR		31, R50, R26
	|	SFSUBS32.M2		R36, R24, R30
.LVL40:
		SLTU		R60, R50, R27
	|	SADD.M2		R53,R26,R28
	|	SMVAAA.M1		OR8, OR0
		SSHFLL		1, R60, R59
	|	SFSUBS32.M1		R23, R25, R31
.LVL41:
		SADD.M1		R28,R27,R29
	|	SLTU		R59, R60, R32
		SSHFLL		1, R29, R33
		SSHFLL		2, R60, R10
	|	SADD.M2		R33,R32,R2
		SLTU		R10, R59, R34
		SSHFLL		1, R2, R61
		SSHFLL		3, R60, R42
	|	SADD.M2		R61,R34,R35
		SLTU		R42, R10, R45
		SSHFLL		1, R35, R36
		SADD.M2		R36,R45,R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,OR0,AR0
		SNOP		2
		VLDW.LS 		*AR0,VR19
		SNOP		7
		VMVCGC.L		VR19,SVR
		SNOP		2
	.loc 1 137 0
		SMVCCG.L		SVR0,R37
		SNOP		1
	.loc 1 138 0
		SMVCCG.L		SVR1,R40
		SNOP		1
.LBB4:
.LBB5:
	.loc 1 158 0
		SFMULS32.M2		R31, R31, R12
	|	SSTW		R40, *+AR15[11]
.LVL42:
		SSTW		R50, *+AR15[7]
		SNOP		2
		SFMULAS32.M2	R30, R30, R12, R12
	|	SSTW		R51, *+AR15[3]
		SSTW		R52, *+AR15[5]
		SBR		sqrt
		SMOVIL		.L46, R62
		SSTW		R53, *+AR15[4]
	|	SMOVIH		.L46, R62
		SSTW		R54, *+AR15[6]
	|	SMOVIH4.L		.L46, R63
		SFSPDP32T.M2		R12, R11:R10
		SNOP		1
	;; call to sqrt occurs, with return value
		SSTW		R37, *+AR15[10]
.LVL43:
.L46:
	.loc 1 159 0
		SLDW		*+AR15[11], R54
	|	SMOV.M2		R10, R51
	|	SMOV.M1		R11, R53
	.loc 1 158 0
		SNOP		1
	.loc 1 159 0
		SLDW		*+AR15[10], R50
		SNOP		1
		SSTW		R51, *+AR15[9]
		SNOP		1
		SFMULS32.M2		R54, R54, R52
		SNOP		1
		SSTW		R53, *+AR15[8]
		SNOP		1
		SFMULAS32.M2	R50, R50, R52, R52
		SBR		sqrt
		SMOVIL		.L47, R62
		SMOVIH		.L47, R62
		SMOVIH4.L		.L47, R63
		SNOP		1
		SFSPDP32T.M2		R52, R11:R10
	;; call to sqrt occurs, with return value
		SNOP		1
.LVL44:
.L47:
	.loc 1 163 0
		SBR		atan2
	|	SMOV.M2		R10, R1
	|	SMOV.M1		R11, R3
		SFSPDP32T.M1		R30, R13:R12
	|	SFSPDP32T.M2		R31, R11:R10
	|	SSTW		R1, *+AR15[13]
	|	SMOVIL		.L48, R62
		SSTW		R3, *+AR15[12]
	|	SMOVIH		.L48, R62
		SMOVIH4.L		.L48, R63
	;; call to atan2 occurs, with return value
		SNOP		3
.LVL45:
.L48:
	.loc 1 164 0
		SLDW		*+AR15[11], R0
	|	SMOV.M2		R10, R40
	|	SMOV.M1		R11, R41
.LVL46:
		SLDW		*+AR15[10], R8
		SBR		atan2
		SMOVIL		.L49, R62
		SMOVIH		.L49, R62
		SMOVIH4.L		.L49, R63
		SFSPDP32T.M2		R0, R11:R10
		SFSPDP32T.M1		R8, R13:R12
	;; call to atan2 occurs, with return value
		SNOP		1
.LVL47:
.L49:
	.loc 1 163 0
		SFDPSP32.M1		R41:R40, R19
	|	SFDPSP32.M2		R11:R10, R18
.LVL48:
	.loc 1 164 0
		SNOP		1
.LVL49:
	.loc 1 168 0
		SBR		cos
	.loc 1 165 0
		SFSUBS32.M2		R18, R19, R48
	|	SMOVIL		.L50, R62
.LVL50:
		SMOVIH		.L50, R62
		SMOVIH4.L		.L50, R63
	.loc 1 168 0
		SFSPDP32T.M2		R48, R41:R40
		SNOP		1
	;; call to cos occurs, with return value
		SMOV.M2		R40, R10
	|	SMOV.M1		R41, R11
.LVL51:
.L50:
	.loc 1 159 0
		SLDW		*+AR15[13], R44
	|	SMOV.M2		R11, R47
	|	SMOV.M1		R41, R11
	|	SMOVIL		1073741824, R41
		SLDW		*+AR15[12], R45
	|	SMOVIH		1073741824, R41
	|	SMOV.M2		R10, R46
	|	SMOV.M1		R40, R10
	.loc 1 158 0
		SLDW		*+AR15[9], R42
		SLDW		*+AR15[8], R43
		SNOP		3
	.loc 1 159 0
		SFDPSP32.M2		R45:R44, R49
		SNOP		1
	.loc 1 158 0
		SFDPSP32.M1		R43:R42, R44
	|	SSTW		R46, *+AR15[10]
	.loc 1 169 0
		SSTW		R47, *+AR15[11]
	.loc 1 160 0
		SFRCPS32.M2		R49, R43
		SFMULS32.M2		R49, R43, R42
		SNOP		3
		SFSUBS32.M2		R42, R41, R14
		SNOP		2
		SFMULS32.M2		R43, R14, R9
		SNOP		3
		SFMULS32.M2		R49, R9, R55
		SNOP		3
		SFSUBS32.M2		R55, R41, R13
		SNOP		2
		SFMULS32.M2		R9, R13, R15
		SNOP		2
	.loc 1 169 0
		SBR		sin
	.loc 1 160 0
		SFMULS32.M2		R44, R15, R16
	|	SMOVIL		.L51, R62
		SMOVIH		.L51, R62
		SMOVIH4.L		.L51, R63
		SNOP		1
	.loc 1 168 0
		SFSPDP32T.M2		R16, R31:R30
	.loc 1 169 0
	;; call to sin occurs, with return value
		SNOP		1
.LVL52:
.L51:
	.loc 1 10 0
		SMVAAGL.M1		AR14, R57:R56
	|	SMVAAA.M2		OR9, OR0
		SNOP		1
		SMVAAGH.M2		AR14, R57:R56
		SNOP		1
		SADDA.M2		R57:R56,OR0,AR0
		SNOP		2
.LBE5:
.LBE4:
	.loc 1 143 0
		VLDW.LS 		*AR0,VR20
		SNOP		7
		VMVCGC.L		VR20,SVR
		SNOP		2
.LBB8:
.LBB6:
	.loc 1 168 0
		SLDW		*+AR15[10], R46
		SLDW		*+AR15[11], R47
		SNOP		5
		SFMULD.M2		R47:R46, R31:R30, R47:R46
		SNOP		5
		SFDPSP32.M2		R47:R46, R17
		SNOP		2
.LBE6:
.LBE8:
	.loc 1 144 0
	; ;APP 
;# 144 "../version_vector.c" 1
	  SMVCGC    R17, SVR0         
	  SNOP      2                
	
;# 0 "" 2
	; ;NO_APP 
.LBB9:
.LBB7:
	.loc 1 169 0
		SFMULD.M2		R31:R30, R11:R10, R41:R40
		SNOP		5
		SFDPSP32.M2		R41:R40, R11
		SNOP		2
.LBE7:
.LBE9:
	.loc 1 145 0
	; ;APP 
;# 145 "../version_vector.c" 1
	  SMVCGC    R11, SVR1         
	  SNOP      2                
	
;# 0 "" 2
	.loc 1 146 0
	; ;NO_APP 
		VMVCCG.L		SVR,VR21
		SNOP		1
	.loc 1 72 0
		SLDW		*+AR15[6], R57
	|	SADD.M2		-8,R38,R58
	|	SMOVIL		0, R27
	|	SADD.M1		-1,R39,R39
	|	VSTW.LS 		VR21,*AR0
		SLDW		*+AR15[5], R20
	|	SLTU		R58, R38, R23
		SLDW		*+AR15[4], R38
	|	SADD.M2		R39,R23,R39
		SLDW		*+AR15[7], R60
		SLDW		*+AR15[15], R26
		SNOP		1
		SADD.M2		-1,R57,R54
		SSHFLL		16, R54, R22
	|	SADD.M2		-1,R20,R21
		SLT		R22, R27, R2
	|	SADD.M2		-1,R38,R24
	|	SMOV.M1		R21, R52
	[!R2]	SBR		.L25
	|	SMOV.M2		R58, R38
	|	SLTU		R21, R20, R25
.LVL53:
		SLDW		*+AR15[3], R51
	|	SADD.M2		R26,R60,R50
	|	SADD.M1		R24,R25,R53
		SNOP		5
	;; condjump to .L25 occurs
.LVL54:
.L43:
	.loc 1 149 0
		SMOVIL		64, R6
	|	SLDDW		*+AR15[19], R63:R62
		SMOVIL		0, R7
	|	SLDDW		*+AR15[9], R31:R30
		SADDA.M2		R7:R6,AR7,AR7
		SLDDW		*+AR15[15], R7:R6
	|	SMOVIL		0, R10
		SLDDW		*+AR15[10], R33:R32
		SNOP		1
		SMVCGC.L		R63, BRReg
		SLDDW		*+AR15[11], R35:R34
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
.LVL55:
		SLDDW		*+AR15[16], R7:R6
		SLDDW		*+AR15[12], R37:R36
		SNOP		1
		SLDDW		*+AR15[13], R39:R38
		SLDDW		*+AR15[14], R41:R40
		SNOP		1
		SMVAGA36.M2		R7:R6, AR9
		SLDDW		*+AR15[17], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[18], R7:R6
.LVL56:
		SNOP		5
		SMVAGA36.M2		R7:R6, OR9
	|	SLDDW		*+AR15[20], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		168, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.cfi_endproc
.LFE3:
	.size	DSPF_sp_qrd_solver_cmplx_v1, .-DSPF_sp_qrd_solver_cmplx_v1
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3fe
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x1
	.4byte	.LASF44
	.4byte	.LASF45
	.4byte	.Ldebug_ranges0+0x80
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.byte	0x1
	.4byte	0x125
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x98
	.4byte	0x38
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x98
	.4byte	0x38
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0x98
	.4byte	0x38
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x1
	.byte	0x98
	.4byte	0x38
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x1
	.byte	0x98
	.4byte	0x125
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x1
	.byte	0x98
	.4byte	0x125
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0x9a
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0x9a
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x1
	.byte	0x9a
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x1
	.byte	0x9b
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x1
	.byte	0x9b
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x1
	.byte	0x9b
	.4byte	0x38
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.4byte	0x38
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF47
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.4byte	0x46
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x3b6
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0xb
	.4byte	0x3b6
	.4byte	.LLST1
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0xb
	.4byte	0x3b6
	.4byte	.LLST2
	.uleb128 0xa
	.string	"Q"
	.byte	0x1
	.byte	0xc
	.4byte	0x3c8
	.4byte	.LLST3
	.uleb128 0xa
	.string	"R"
	.byte	0x1
	.byte	0xc
	.4byte	0x3c8
	.4byte	.LLST4
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xc
	.4byte	0x3c8
	.4byte	.LLST5
	.uleb128 0xa
	.string	"y"
	.byte	0x1
	.byte	0xd
	.4byte	0x3c8
	.4byte	.LLST6
	.uleb128 0xa
	.string	"x"
	.byte	0x1
	.byte	0xd
	.4byte	0x3c8
	.4byte	.LLST7
	.uleb128 0xb
	.string	"row"
	.byte	0x1
	.byte	0xf
	.4byte	0x7e
	.4byte	.LLST8
	.uleb128 0xb
	.string	"col"
	.byte	0x1
	.byte	0xf
	.4byte	0x7e
	.4byte	.LLST9
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0xf
	.4byte	0x7e
	.4byte	.LLST10
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0xf
	.4byte	0x7e
	.4byte	.LLST11
	.uleb128 0xd
	.string	"j"
	.byte	0x1
	.byte	0xf
	.4byte	0x7e
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0x10
	.4byte	0x38
	.4byte	.LLST12
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x10
	.4byte	0x38
	.4byte	.LLST13
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.byte	0x10
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x1
	.byte	0x10
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x1
	.byte	0x10
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x1
	.byte	0x10
	.4byte	0x38
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0x11
	.4byte	0x3ce
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xd
	.string	"buf"
	.byte	0x1
	.byte	0x12
	.4byte	0x3de
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x1
	.byte	0x14
	.4byte	0x3bb
	.4byte	.LLST14
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x1
	.byte	0x15
	.4byte	0x3bb
	.4byte	.LLST15
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x1
	.byte	0x16
	.4byte	0x3ee
	.4byte	.LLST16
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x1
	.byte	0x17
	.4byte	0x3ee
	.4byte	.LLST17
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x1
	.byte	0x18
	.4byte	0x3ee
	.4byte	.LLST18
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x1
	.byte	0x19
	.4byte	0x3ee
	.4byte	.LLST19
	.uleb128 0xb
	.string	"Qf"
	.byte	0x1
	.byte	0x1b
	.4byte	0x3fb
	.4byte	.LLST20
	.uleb128 0xb
	.string	"Rf"
	.byte	0x1
	.byte	0x1c
	.4byte	0x3fb
	.4byte	.LLST21
	.uleb128 0xb
	.string	"yf"
	.byte	0x1
	.byte	0x1d
	.4byte	0x3fb
	.4byte	.LLST22
	.uleb128 0xb
	.string	"xf"
	.byte	0x1
	.byte	0x1e
	.4byte	0x3fb
	.4byte	.LLST23
	.uleb128 0xb
	.string	"bf"
	.byte	0x1
	.byte	0x1f
	.4byte	0x3fb
	.4byte	.LLST24
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x1
	.byte	0x21
	.4byte	0x46
	.4byte	.LLST25
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x1
	.byte	0x22
	.4byte	0x46
	.4byte	.LLST26
	.uleb128 0xf
	.4byte	0x93
	.llong	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x8c
	.uleb128 0x10
	.4byte	0xd7
	.4byte	.LLST27
	.uleb128 0x10
	.4byte	0xcc
	.4byte	.LLST28
	.uleb128 0x10
	.4byte	0xc1
	.4byte	.LLST29
	.uleb128 0x10
	.4byte	0xb6
	.4byte	.LLST30
	.uleb128 0x10
	.4byte	0xab
	.4byte	.LLST31
	.uleb128 0x10
	.4byte	0xa0
	.4byte	.LLST32
	.uleb128 0x11
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x12
	.4byte	0xe2
	.uleb128 0x12
	.4byte	0xed
	.uleb128 0x12
	.4byte	0xf8
	.uleb128 0x13
	.4byte	0x103
	.4byte	.LLST33
	.uleb128 0x13
	.4byte	0x10e
	.4byte	.LLST34
	.uleb128 0x13
	.4byte	0x119
	.4byte	.LLST35
	.uleb128 0x14
	.llong	.LVL45
	.uleb128 0x15
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x5
	.byte	0xf5
	.uleb128 0x2e
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.uleb128 0x15
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x5
	.byte	0xf5
	.uleb128 0x2f
	.uleb128 0x38
	.byte	0xf7
	.uleb128 0x31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x46
	.uleb128 0x17
	.byte	0x1
	.4byte	0x31
	.4byte	0x3c8
	.uleb128 0x18
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.4byte	0x3bb
	.uleb128 0x19
	.4byte	0x38
	.4byte	0x3de
	.uleb128 0x1a
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.4byte	0x38
	.4byte	0x3ee
	.uleb128 0x1a
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	0x38
	.4byte	0x3fb
	.uleb128 0x18
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.4byte	0x3ee
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.llong	.LFE3
	.2byte	0x3
	.byte	0x7f
	.sleb128 168
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL19
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL19
	.llong	.LVL20
	.2byte	0x4
	.byte	0x92
	.uleb128 0x29
	.sleb128 -1
	.byte	0x9f
	.llong	.LVL20
	.llong	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x9f
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL26
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL26
	.llong	.LVL27
	.2byte	0x4
	.byte	0x8c
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.llong	.LVL27
	.llong	.LVL54
	.2byte	0x7
	.byte	0x91
	.sleb128 -108
	.byte	0x94
	.byte	0x4
	.byte	0x1f
	.byte	0x9f
	.llong	.LVL54
	.llong	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL2
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL2
	.llong	.LVL27
	.2byte	0x1
	.byte	0x56
	.llong	.LVL27
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL5
	.2byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL5
	.llong	.LVL56
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL56
	.llong	.LFE3
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL9
	.2byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL9
	.llong	.LFE3
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x22
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x8
	.byte	0x90
	.uleb128 0x24
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x25
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL4
	.llong	.LVL27
	.2byte	0x1
	.byte	0x54
	.llong	.LVL27
	.llong	.LFE3
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x24
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL0
	.llong	.LVL7
	.2byte	0x8
	.byte	0x90
	.uleb128 0x26
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL7
	.llong	.LVL55
	.2byte	0x1
	.byte	0x58
	.llong	.LVL55
	.llong	.LFE3
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x26
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL8
	.llong	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL24
	.llong	.LVL43-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x46
	.llong	.LVL53
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x46
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL16
	.llong	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL29
	.llong	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL19
	.llong	.LVL23
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL19
	.llong	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL38
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.llong	.LVL40
	.llong	.LVL52
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL39
	.llong	.LVL41
	.2byte	0x2
	.byte	0x90
	.uleb128 0x27
	.llong	.LVL41
	.llong	.LVL54
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2f
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL11
	.llong	.LVL12
	.2byte	0x8
	.byte	0x90
	.uleb128 0x66
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x67
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL12
	.llong	.LVL15
	.2byte	0x8
	.byte	0x90
	.uleb128 0x64
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x65
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL31
	.llong	.LVL37
	.2byte	0x8
	.byte	0x90
	.uleb128 0x64
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x65
	.byte	0x93
	.uleb128 0x4
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL10
	.llong	.LVL15
	.2byte	0x8
	.byte	0x90
	.uleb128 0x68
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x69
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL32
	.llong	.LVL37
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
.LLST16:
	.llong	.LVL13
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.uleb128 0x60
	.llong	.LVL33
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6b
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL14
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.uleb128 0x61
	.llong	.LVL34
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6d
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL28
	.llong	.LVL43-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6f
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL29
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6f
	.llong	.LVL30
	.llong	.LVL43-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x72
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL1
	.llong	.LVL2
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL2
	.llong	.LVL27
	.2byte	0x1
	.byte	0x56
	.llong	.LVL27
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL3
	.llong	.LVL5
	.2byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL5
	.llong	.LVL56
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL56
	.llong	.LFE3
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL3
	.llong	.LVL4
	.2byte	0x8
	.byte	0x90
	.uleb128 0x24
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x25
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL4
	.llong	.LVL27
	.2byte	0x1
	.byte	0x54
	.llong	.LVL27
	.llong	.LFE3
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x24
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x8
	.byte	0x90
	.uleb128 0x26
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL7
	.llong	.LVL55
	.2byte	0x1
	.byte	0x58
	.llong	.LVL55
	.llong	.LFE3
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x26
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL6
	.llong	.LVL9
	.2byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL9
	.llong	.LFE3
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x22
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL6
	.llong	.LVL17
	.2byte	0x1
	.byte	0x69
	.llong	.LVL17
	.llong	.LVL21
	.2byte	0x4
	.byte	0x92
	.uleb128 0x4c
	.sleb128 -1
	.byte	0x9f
	.llong	.LVL21
	.llong	.LFE3
	.2byte	0xe
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x4f
	.byte	0x26
	.byte	0x4c
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6a
	.byte	0x22
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	0
	.llong	0
.LLST26:
	.llong	.LVL6
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.llong	.LVL25
	.llong	.LVL27
	.2byte	0x4
	.byte	0x92
	.uleb128 0x22
	.sleb128 1
	.byte	0x9f
	.llong	.LVL27
	.llong	.LVL54
	.2byte	0x13
	.byte	0x91
	.sleb128 -108
	.byte	0x94
	.byte	0x4
	.byte	0x1f
	.byte	0x4f
	.byte	0x26
	.byte	0x4c
	.byte	0x25
	.byte	0x91
	.sleb128 -108
	.byte	0x94
	.byte	0x4
	.byte	0x1c
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL54
	.llong	.LFE3
	.2byte	0xe
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6c
	.byte	0x4f
	.byte	0x26
	.byte	0x4c
	.byte	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6c
	.byte	0x22
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL42
	.llong	.LVL54
	.2byte	0x4
	.byte	0x91
	.sleb128 -100
	.byte	0x9f
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL42
	.llong	.LVL54
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL42
	.llong	.LVL46
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL42
	.llong	.LVL54
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.llong	0
	.llong	0
.LLST31:
	.llong	.LVL42
	.llong	.LVL54
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2f
	.llong	0
	.llong	0
.LLST32:
	.llong	.LVL42
	.llong	.LVL52
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	0
	.llong	0
.LLST33:
	.llong	.LVL46
	.llong	.LVL48
	.2byte	0x6
	.byte	0xf5
	.uleb128 0x38
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.byte	0x9f
	.llong	.LVL48
	.llong	.LVL51-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.llong	0
	.llong	0
.LLST34:
	.llong	.LVL47
	.llong	.LVL49
	.2byte	0x6
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.byte	0x9f
	.llong	.LVL49
	.llong	.LVL51-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	0
	.llong	0
.LLST35:
	.llong	.LVL47
	.llong	.LVL50
	.2byte	0xc
	.byte	0xf5
	.uleb128 0x38
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.byte	0x1c
	.byte	0x9f
	.llong	.LVL50
	.llong	.LVL51-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
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
	.llong	.LBB4
	.llong	.LBE4
	.llong	.LBB8
	.llong	.LBE8
	.llong	.LBB9
	.llong	.LBE9
	.llong	0
	.llong	0
	.llong	.LBB5
	.llong	.LBE5
	.llong	.LBB6
	.llong	.LBE6
	.llong	.LBB7
	.llong	.LBE7
	.llong	0
	.llong	0
	.llong	.LFB3
	.llong	.LFE3
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.string	"../version_vector.c"
.LASF24:
	.string	"z_angle"
.LASF35:
	.string	"vdt1"
.LASF36:
	.string	"vdt2"
.LASF13:
	.string	"x_real"
.LASF2:
	.string	"long long unsigned int"
.LASF27:
	.string	"loop_cnt"
.LASF31:
	.string	"zimag"
.LASF4:
	.string	"long long int"
.LASF9:
	.string	"signed char"
.LASF3:
	.string	"long int"
.LASF15:
	.string	"y_real"
.LASF0:
	.string	"double"
.LASF32:
	.string	"sum_real"
.LASF7:
	.string	"unsigned int"
.LASF17:
	.string	"z_real"
.LASF45:
	.string	"/cygdrive/c/Users/LinGuanguo/source/\346\235\234\344\272\232\345\250\237\350\200\201\345\270\210\351\241\271\347\233\256/DSPF_sp_qrd_solver_cmplx/Debug"
.LASF28:
	.string	"xreal"
.LASF8:
	.string	"long unsigned int"
.LASF46:
	.string	"complex_sp_div"
.LASF6:
	.string	"short unsigned int"
.LASF11:
	.string	"sizetype"
.LASF23:
	.string	"y_angle"
.LASF42:
	.string	"Ncols16"
.LASF43:
	.string	"GNU C 4.7.0"
.LASF1:
	.string	"float"
.LASF30:
	.string	"zreal"
.LASF20:
	.string	"y_mag"
.LASF14:
	.string	"x_imag"
.LASF5:
	.string	"unsigned char"
.LASF10:
	.string	"short int"
.LASF38:
	.string	"vft2"
.LASF37:
	.string	"vft1"
.LASF47:
	.string	"DSPF_sp_qrd_solver_cmplx_v1"
.LASF39:
	.string	"vft3"
.LASF40:
	.string	"vft4"
.LASF25:
	.string	"Nrows"
.LASF16:
	.string	"y_imag"
.LASF34:
	.string	"temp_cplx"
.LASF12:
	.string	"char"
.LASF33:
	.string	"sum_imag"
.LASF41:
	.string	"Nrows16"
.LASF18:
	.string	"z_imag"
.LASF29:
	.string	"ximag"
.LASF21:
	.string	"z_mag"
.LASF26:
	.string	"Ncols"
.LASF19:
	.string	"x_mag"
.LASF22:
	.string	"x_angle"
