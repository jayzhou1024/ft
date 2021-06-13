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
		SMOVIL		256, R6
		SMOVIL		0, R7
		SSUBA.L		R7:R6, AR7, AR7
		SMOVIL		-240, R6
		SNOP		1
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 240
		SMVAAGL.M1		AR14, R7:R6
	|	SSHFAR		31, R12, R42
	.loc 1 40 0
		SSHFLR		28, R42, R0
	|	SSTW		R12, *+AR15[14]
	.loc 1 14 0
		SMVAAGH.M2		AR14, R7:R6
	|	SADD.M1		R12,R0,R1
	|	SSHFAR		31, R10, R43
	|	SSTW		R10, *+AR15[17]
	.loc 1 40 0
		SSHFAR		4, R1, R3
	|	SMVAGA36.M1		R23:R22, AR14
	.loc 1 39 0
		SSHFLR		28, R43, R2
	.loc 1 14 0
		SSTDW		R7:R6, *+AR15[29]
	.cfi_offset 14, -8
		SMVAAGL.M2		OR9, R7:R6
	|	SSTW		R3, *+AR15[18]
	|	SMOVIL		0, R8
	|	SADD.M1		R10,R2,R55
	.loc 1 44 0
		SLT		R8, R3, R0
	.loc 1 14 0
		SMVAAGH.M1		OR9, R7:R6
	|	SMOVIL		0, R49
	|	SMVAGA36.M2		R15:R14, OR9
.LVL1:
	.loc 1 10 0
		SLDW		*+AR15[18], R48
	|	SMOVIL		128, R14
.LVL2:
	.loc 1 14 0
		SSTDW		R7:R6, *+AR15[27]
	.cfi_offset 89, -24
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SMVAAGL.M2		OR8, R7:R6
	|	SSTDW		R63:R62, *+AR15[28]
	.loc 1 39 0
		SSHFAR		4, R55, R10
.LVL3:
	.loc 1 14 0
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R21:R20, OR8
		SNOP		1
	.cfi_offset 88, -32
		SMVAAGL.M2		OR8, R43:R42
	|	SADD.M1		-1,R48,R51
	|	SMOVIL		0, R48
	|	SSTDW		R7:R6, *+AR15[26]
	.cfi_offset 56, -48
	.cfi_offset 57, -44
	.loc 1 10 0
		SSHFLL		7, R51, R50
	|	SMVAAGL.M1		AR8, R7:R6
	|	SVBCAST2.M2 		 R49:R48,VR5:VR4
	|	SSTDW		R41:R40, *+AR15[24]
		SMVAAGH.M1		OR8, R43:R42
	|	SSHFLR		25, R51, R12
.LVL4:
	.loc 1 14 0
		SMVAAGH.M1		AR8, R7:R6
	.cfi_offset 54, -56
	.cfi_offset 55, -52
		SMVAGA36.M1		R17:R16, AR8
	|	SMOVIL		128, R17
	|	SSTDW		R39:R38, *+AR15[23]
.LVL5:
	.cfi_offset 8, -40
	.loc 1 10 0
		SADD.M2		R50,R42,R11
	|	SSTDW		R7:R6, *+AR15[25]
		SADD.M2		R12,R43,R13
	|	SLTU		R11, R42, R52
	|	SADD.M1		R14,R11,R53
		SADD.M2		R13,R52,R15
	|	SLTU		R53, R11, R16
.LVL6:
	.cfi_offset 52, -64
	.cfi_offset 53, -60
		SADD.M2		R15,R16,R54
	|	SSTDW		R37:R36, *+AR15[22]
	.loc 1 14 0
		SSTDW		R35:R34, *+AR15[21]
	.loc 1 44 0
	[!R0]	SBR		.L6
		SNOP		1
	.loc 1 14 0
		SSTDW		R33:R32, *+AR15[20]
		SSTDW		R31:R30, *+AR15[19]
		SNOP		2
	.cfi_offset 50, -72
	.cfi_offset 51, -68
	.cfi_offset 48, -80
	.cfi_offset 49, -76
	.cfi_offset 46, -88
	.cfi_offset 47, -84
	.loc 1 44 0
		SSTW		R0, *+AR15[19]
	;; condjump to .L6 occurs
.LVL7:
.L5:
		SADD.M2		R17,R42,R20
	|	SMVAGA36.M1		R43:R42, AR0
		SLTU		R20, R42, R21
	|	SMOV.M2		R20, R42
		SADD.M2		R43,R21,R43
	|	SEQ		R20, R53, R1
	|	VSTDW.LS 		VR5:VR4,*AR0
	.loc 1 44 0 is_stmt 0 discriminator 2
	[R1]	SEQ		R43, R54, R1
	[!R1]	SBR		.L5
		SNOP		6
	;; condjump to .L5 occurs
.L6:
.LVL8:
	.loc 1 47 0 is_stmt 1
		SLDW		*+AR15[17], R23
	|	SMOVIL		0, R24
	|	VMOVIL		31,	VR3
	|	SADD.M2		1,R10,R56
	|	SMOV.M1		R18, R52
	.loc 1 10 0
		SLDW		*+AR15[17], R25
	|	SMOVIL		0, R27
	|	SMOV.M2		R19, R53
		SLT		R27, R10, R28
		SMOVIL		1, R51
		SNOP		2
	.loc 1 47 0
		SLT		R24, R23, R2
	[!R2]	SBR		.L4
	|	SADD.M2		1,R25,R26
	.loc 1 10 0
		SNOP		6
	.loc 1 47 0
	;; condjump to .L4 occurs
	.loc 1 10 0
		SSTW		R26, *+AR15[15]
	|	VSTW.LS 		VR3,*+AR7[32]
	.loc 1 47 0
		SSTW		R27, *+AR15[12]
		SNOP		2
		SSTW		R28, *+AR15[16]
.LVL9:
.L10:
	.loc 1 49 0
		SADD.LS		AR15,80,OR11
	|	SMOV.M2		R52, R10
	|	SMOV.M1		R53, R11
	|	SMOVIL		8, R14
		SNOP		1
	;no-op trunc di R11:R10 to pdi R11:R10
		SMVAAGL.M2		OR11, R13:R12
	|	SSTW		R44, *+AR15[7]
		SSTW		R45, *+AR15[6]
		SMVAAGH.M2		OR11, R13:R12
		SNOP		1
		SSTW		R46, *+AR15[3]
		SSTW		R47, *+AR15[2]
		SNOP		1
		SBR		M7002_datatrans
		SSTW		R56, *+AR15[8]
	|	SMOVIL		.L47, R62
		SSTW		R52, *+AR15[10]
	|	SMOVIH		.L47, R62
		SMOVIH4.L		.L47, R63
		SNOP		1
		SSTW		R53, *+AR15[9]
	;; call to M7002_datatrans occurs
		SSTW		R51, *+AR15[11]
.LVL10:
.L47:
	.loc 1 10 0
		SMOVIL		1, R3
	.loc 1 51 0
		SMOVIL		0, R49
		SLDW		*+AR15[16], R0
	.loc 1 50 0
		SLDDW		*+AR15[10], R19:R18
		SLDW		*+AR15[14], R31
		SLDW		*+AR15[12], R32
	.loc 1 51 0
		SLDW		*+AR15[10], R30
		SNOP		2
	.loc 1 50 0
		SVBCAST2.M2 		 R19:R18,VR9:VR8
		SNOP		1
.LVL11:
		SMULIS.M1		R32,R31,R33
	.loc 1 51 0
		SLDW		*+AR15[9], R19
		SLDW		*+AR15[7], R44
		SLDW		*+AR15[6], R45
		SLDW		*+AR15[3], R46
		SLDW		*+AR15[2], R47
		SNOP		5
	[!R0]	SBR		.L12
	|	SLDW		*+AR15[8], R56
		SLDW		*+AR15[11], R57
		SNOP		5
	;; condjump to .L12 occurs
.LVL12:
.L11:
	.loc 1 52 0 discriminator 2
		SSHFLL		4, R49, R34
	|	SMVAAA.M2		OR9, OR0
	|	VLDW.LS 		*+AR7[32],VR0
		SADD.M1		R33,R34,R35
	|	SSHFLL		1, R49, R38
		SSHFAR		31, R35, R45
	|	SMOV.M2		R35, R42
	|	SMOV.M1		R35, R44
		SMOV.M2		R45, R43
	|	SSHFAR		31, R38, R39
	|	SADD.M1		1,R38,R40
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLR		29, R42, R41
		SSHFLL		3, R43, R58
		SSHFLL		3, R42, R34
		SOR		R58, R41, R35
		SADDA.M2		R35:R34,OR0,AR0
	|	SSHFLR		26, R38, R36
	|	SMVAAA.M1		OR8, OR0
	.loc 1 58 0 discriminator 2
		SSHFLL		6, R39, R37
		SSHFLL		7, R49, R60
	|	SMOV.M1		R3, R49
	.loc 1 52 0 discriminator 2
		VLDDWM2.LS 		*AR0,VR7:VR6
	|	SOR		R37, R36, R59
	|	SMOV.M2		R60, R42
	|	SADD.M1		1,R3,R3
.LVL13:
	.loc 1 58 0 discriminator 2
		SMOV.M2		R59, R43
	|	SLTU		R40, R38, R61
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,OR0,AR2
	|	SADD.M1		R39,R61,R55
	|	SSHFLR		26, R40, R8
	.loc 1 59 0 discriminator 2
		SSHFLL		6, R55, R42
		SOR		R42, R8, R9
		SSHFLL		6, R40, R43
		SMOV.M2		R43, R42
	|	SMOV.M1		R9, R43
	|	SEQ		R56, R3, R1
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,OR0,AR0
	.loc 1 53 0 discriminator 2
		VMOV.M1 	VR6,VR32 
	|	VMOV.M2  	VR7,VR33
		VMOV		VR32,	VR4
		VBEX		VR0,	VR33,	VR5
.LVL14:
	.loc 1 55 0 discriminator 2
		VFCREAL32.M1		VR5:VR4,VR9:VR8,VR1
	|	VFCIMAG32.M3		VR5:VR4,VR9:VR8,VR2
	|	VLDW.LS 		*AR2,VR5
.LVL15:
	.loc 1 58 0 discriminator 2
		SNOP		7
		VFADDS32.M1 		VR5,VR1,VR7
		SNOP		2
		VSTW.LS 		VR7,*AR2
	.loc 1 59 0 discriminator 2
		VLDW.LS 		*AR0,VR10
		SNOP		4
	.loc 1 51 0 discriminator 2
	[!R1]	SBR		.L11
		SNOP		2
	.loc 1 59 0 discriminator 2
		VFADDS32.M1 		VR10,VR2,VR11
		SNOP		2
		VSTW.LS 		VR11,*AR0
	;; condjump to .L11 occurs
.LVL16:
.L12:
	.loc 1 47 0
		SLDW		*+AR15[15], R11
	|	SADD.M2		1,R57,R51
	|	SADD.M1		8,R30,R10
		SLTU		R10, R30, R48
	|	SSTW		R57, *+AR15[12]
	|	SMOV.M2		R10, R52
		SADD.M2		R19,R48,R53
		SNOP		3
		SEQ		R11, R51, R2
	[!R2]	SBR		.L10
		SNOP		6
	;; condjump to .L10 occurs
.LVL17:
.L4:
	.loc 1 62 0
		SLDW		*+AR15[19], R0
	|	SMVAAGL.M2		OR8, R43:R42
	|	SMOVIL		128, R54
	.loc 1 10 0
		SLDW		*+AR15[18], R45
	|	SMOVIL		128, R23
		SMVAAGH.M2		OR8, R43:R42
		SNOP		3
	.loc 1 62 0
	[!R0]	SBR		.L8
	.loc 1 10 0
		SADD.M2		-1,R45,R44
		SSHFLL		7, R44, R12
		SADD.M2		R12,R42,R13
	|	SSHFLR		25, R44, R14
		SLTU		R13, R42, R15
	|	SADD.M2		R14,R43,R16
	|	SADD.M1		R54,R13,R17
		SADD.M2		R16,R15,R20
	|	SLTU		R17, R13, R21
		SADD.M2		R20,R21,R22
	;; condjump to .L8 occurs
.LVL18:
.L15:
	.loc 1 63 0 discriminator 2
		SMVAGA36.M1		R43:R42, AR0
	|	SADD.M2		R23,R42,R24
		SLTU		R24, R42, R25
	|	SMOV.M2		R24, R42
		SADD.M2		R43,R25,R43
	|	SEQ		R24, R17, R1
	|	VLDDW.LS 		*AR0,VR13:VR12
	.loc 1 62 0 discriminator 2
	[R1]	SEQ		R43, R22, R1
	[!R1]	SBR		.L15
		SNOP		5
	.loc 1 63 0 discriminator 2
		VSTDWM16.LS 		VR13:VR12,*AR0
	;; condjump to .L15 occurs
.L8:
	.loc 1 70 0
		SLDW		*+AR15[17], R27
		SLDW		*+AR15[14], R28
		SNOP		5
		SLT		R27, R28, R2
	[R2]	SBR		.L45
		SNOP		6
	;; condjump to .L45 occurs
	.loc 1 71 0
		SLDH		*+AR15[28], R29
		SNOP		5
.LVL19:
.L16:
	.loc 1 10 0
		SLDW		*+AR15[18], R18
	|	SMVAAGL.M2		AR14, R43:R42
	|	SMOVIL		128, R56
	.loc 1 75 0
		SLDW		*+AR15[19], R0
	|	SMOVIL		0, R44
		SMVAAGH.M2		AR14, R43:R42
	|	SMOVIL		0, R45
	.loc 1 76 0
		SVBCAST2.M1 		 R45:R44,VR15:VR14
	|	SMOVIL		128, R39
		SNOP		2
	.loc 1 10 0
		SADD.M2		-1,R18,R30
	.loc 1 75 0
	[!R0]	SBR		.L21
	|	SSHFLL		7, R30, R19
	.loc 1 10 0
		SADD.M2		R56,R19,R57
	|	SSHFLR		25, R30, R31
		SLTU		R57, R19, R33
	|	SADD.M2		R57,R42,R32
		SADD.M2		R31,R33,R34
	|	SLTU		R32, R42, R35
		SADD.M2		R34,R43,R38
		SADD.M2		R38,R35,R40
		SNOP		1
	.loc 1 75 0
	;; condjump to .L21 occurs
.LVL20:
.L20:
		SADD.M2		R39,R42,R36
	|	SMVAGA36.M1		R43:R42, AR0
		SLTU		R36, R42, R37
	|	SMOV.M2		R36, R42
		SADD.M2		R43,R37,R43
	|	SEQ		R36, R32, R1
	|	VSTDW.LS 		VR15:VR14,*AR0
	.loc 1 75 0 is_stmt 0 discriminator 2
	[R1]	SEQ		R43, R40, R1
	[!R1]	SBR		.L20
		SNOP		6
	;; condjump to .L20 occurs
.L21:
	.loc 1 79 0 is_stmt 1
		SADD.M1		-1,R29,R55
	|	SMOVIL		0, R60
	|	SMVAAGL.M2		OR8, R45:R44
	|	SLDW		*+AR15[14], R22
		SSHFLL		16, R55, R58
	|	SMVAAGL.M1		AR14, R43:R42
	|	SLDW		*+AR15[14], R61
	|	SMVAAA.M2		AR7, OR12
.LVL21:
		SSHFAR		16, R58, R59
	|	SMVAAGH.M1		OR8, R45:R44
	|	SLDW		*+AR15[18], R8
		SLT		R59, R60, R2
	|	SMVAAGH.M1		AR14, R43:R42
	|	SADD.LS		OR12,64,OR9
	|	SMOV.M2		R59, R39
.LVL22:
	[R2]	SBR		.L43
	|	SSHFAR		31, R58, R49
	.loc 1 10 0
		SSHFLL		1, R59, R3
		SLTU		R3, R59, R9
		SSHFLL		2, R59, R11
	|	SMULIS.M2		R61,R59,R38
		SLTU		R11, R3, R52
	|	SADD.M2		1,R8,R53
		SSHFLL		3, R59, R12
		SADD.M2		R44,R12,R14
	|	SADD.M1		R42,R12,R15
	|	SLTU		R12, R11, R44
	;; condjump to .L43 occurs
		SSTW		R49, *+AR15[13]
	|	SMOVIL		0, R42
	.loc 1 81 0
		SMOVIH		0, R42
	|	SSTW		R14, *+AR15[15]
		SVBCAST.M2 		 R42,VR9
	|	SLTU		R15, R12, R20
	.loc 1 10 0
		SNEG		R22, R23
		SLDW		*+AR15[13], R10
	|	SMOVIL		0, R34
		SSTW		R15, *+AR15[16]
	|	SMOVIL		0, R35
		SSTW		R23, *+AR15[14]
	|	VSTW.LS 		VR9,*+AR7[48]
	.loc 1 81 0
		SNOP		3
	.loc 1 10 0
		SSHFLL		1, R10, R51
		SADD.M2		R51,R9,R48
		SSHFLL		1, R48, R50
		SADD.M2		R50,R52,R13
		SSHFLL		1, R13, R16
		SADD.M2		R16,R44,R54
		SADD.M2		R45,R54,R17
	|	SADD.M1		R43,R54,R43
	|	SLTU		R14, R12, R45
		SADD.M2		R17,R45,R21
	|	SADD.M1		R43,R20,R24
		SSTW		R21, *+AR15[17]
		SSTW		R24, *+AR15[18]
.LVL23:
.L25:
	.loc 1 84 0
		SLDW		*+AR15[19], R0
	|	VLDW.LS 		*+AR7[48],VR19
	|	SMOVIL		1, R26
		SMOVIL		0, R25
		SNOP		4
	[!R0]	SBR		.L23
		SNOP		1
	.loc 1 81 0
		VSTW.LS 		VR19,*+AR7[16]
	|	VSTW.LS 		VR19,*AR7
	|	VMOV		VR19,	VR18
.LVL24:
		SNOP		4
	.loc 1 84 0
	;; condjump to .L23 occurs
.LVL25:
.L24:
	.loc 1 85 0 discriminator 2
		SSHFLL		4, R25, R47
	|	SMVAAA.M2		AR8, OR0
	|	SMOV.M1		R26, R25
		SADD.M1		R38,R47,R27
		SSHFAR		31, R27, R29
	|	SMOV.M2		R27, R44
	|	SMOV.M1		R47, R46
		SMOV.M2		R29, R45
	|	SSHFAR		31, R47, R47
	|	SMOV.M1		R46, R42
	;no-op trunc di R45:R44 to pdi R45:R44
		SSHFLR		29, R44, R30
	|	SMOV.M2		R47, R43
	|	SADD.M1		1,R26,R26
		SSHFLL		3, R45, R19
	;no-op trunc di R43:R42 to pdi R43:R42
		SOR		R19, R30, R31
		SSHFLL		3, R44, R30
		SADDA.M2		R31:R30,OR0,AR2
	|	SSHFLR		29, R42, R18
	|	SMVAAA.M1		AR14, OR0
	.loc 1 86 0 discriminator 2
		SSHFLL		3, R43, R56
		SOR		R56, R18, R33
		SSHFLL		3, R42, R32
	|	VLDDWM2.LS 		*AR2,VR5:VR4
.LVL26:
		SADDA.M2		R33:R32,OR0,AR0
	|	SEQ		R53, R26, R1
	.loc 1 84 0 discriminator 2
		SNOP		2
	.loc 1 86 0 discriminator 2
		VLDDWM2.LS 		*AR0,VR17:VR16
		SNOP		7
.LVL27:
	.loc 1 88 0 discriminator 2
		VFCREAL32.M1		VR5:VR4,VR17:VR16,VR13
	|	VFCIMAG32.M3		VR5:VR4,VR17:VR16,VR15
.LVL28:
	.loc 1 89 0 discriminator 2
		SNOP		4
.LVL29:
	.loc 1 84 0 discriminator 2
	[!R1]	SBR		.L24
		SNOP		1
	.loc 1 91 0 discriminator 2
		VFADDS32.M1 		VR18,VR13,VR18
	.loc 1 92 0 discriminator 2
		VFADDS32.M1 		VR19,VR15,VR19
		SNOP		1
	.loc 1 91 0 discriminator 2
		VSTW.LS 		VR18,*+AR7[16]
	.loc 1 92 0 discriminator 2
		VSTW.LS 		VR19,*AR7
	;; condjump to .L24 occurs
.LVL30:
.L23:
	.loc 1 95 0
		SADD.LS		AR15,88,OR13
	|	SMVAAGL.M2		OR9, R11:R10
	|	SMOVIL		64, R14
	.loc 1 99 0
		SADD.LS		AR15,88,OR8
	.loc 1 95 0
		SBR		M7002_datatrans
	|	SMVAAGL.M1		OR13, R13:R12
	|	SMVAAGH.M2		OR9, R11:R10
		SSTW		R47, *+AR15[2]
	|	SMOVIL		.L48, R62
		SMVAAGH.M2		OR13, R13:R12
	|	SSTW		R46, *+AR15[3]
	|	SMOVIH		.L48, R62
		SMOVIH4.L		.L48, R63
		SNOP		1
		SSTW		R53, *+AR15[4]
	;; call to M7002_datatrans occurs
		SSTW		R55, *+AR15[5]
.LVL31:
.L48:
	.loc 1 99 0
		SMVAAA.M1		AR7, OR14
	|	SMVAAGL.M2		OR8, R13:R12
	|	SMOVIL		64, R14
		SNOP		1
	.loc 1 96 0
		SLDW		*+AR15[22], R46
	|	SMVAAGL.M1		OR14, R11:R10
	|	SMVAAGH.M2		OR8, R13:R12
		SLDW		*+AR15[23], R55
		SLDW		*+AR15[24], R57
	|	SMVAAGH.M2		OR14, R11:R10
		SLDW		*+AR15[25], R31
		SLDW		*+AR15[26], R32
		SNOP		2
		SFADDS32.M2		R46, R55, R53
		SNOP		2
		SFADDS32.M2		R53, R57, R40
	|	SLDW		*+AR15[27], R33
		SLDW		*+AR15[28], R36
		SLDW		*+AR15[29], R41
		SFADDS32.M2		R40, R31, R37
	|	SLDW		*+AR15[30], R58
	.loc 1 97 0
		SLDW		*+AR15[31], R59
		SNOP		1
	.loc 1 96 0
		SFADDS32.M2		R37, R32, R3
		SNOP		2
		SFADDS32.M2		R3, R33, R51
	.loc 1 97 0
		SLDW		*+AR15[32], R60
		SLDW		*+AR15[33], R2
	.loc 1 96 0
		SFADDS32.M2		R51, R36, R48
	|	SLDW		*+AR15[34], R49
	.loc 1 97 0
		SLDW		*+AR15[35], R61
		SLDW		*+AR15[36], R8
	.loc 1 96 0
		SFADDS32.M2		R48, R41, R52
		SNOP		2
		SFADDS32.M2		R52, R58, R50
		SNOP		1
		SLDW		*+AR15[37], R9
	.loc 1 97 0
		SFADDS32.M2		R50, R59, R15
		SNOP		2
		SFADDS32.M2		R15, R60, R44
		SNOP		2
		SFADDS32.M2		R44, R2, R42
		SNOP		2
		SFADDS32.M2		R42, R49, R16
		SNOP		2
		SFADDS32.M2		R16, R61, R54
		SNOP		1
	.loc 1 99 0
		SBR		M7002_datatrans
	.loc 1 97 0
		SFADDS32.M2		R54, R8, R17
	|	SMOVIL		.L49, R62
		SMOVIH		.L49, R62
		SMOVIH4.L		.L49, R63
	.loc 1 96 0
		SFADDS32.M2		R17, R9, R30
	.loc 1 99 0
	;; call to M7002_datatrans occurs
		SNOP		2
.LVL32:
.L49:
	.loc 1 100 0
		SLDW		*+AR15[22], R10
	|	SMOVIL		8, R14
		SLDW		*+AR15[23], R11
		SLDW		*+AR15[24], R20
		SLDW		*+AR15[25], R45
		SLDW		*+AR15[26], R21
		SNOP		2
		SFADDS32.M2		R10, R11, R43
		SNOP		1
	.loc 1 105 0
		SADD.LS		AR15,80,OR11
	.loc 1 100 0
		SFADDS32.M2		R43, R20, R23
		SLDW		*+AR15[27], R22
	|	SMVAAGL.M1		OR11, R13:R12
		SLDW		*+AR15[28], R24
		SFADDS32.M2		R23, R45, R0
	|	SLDW		*+AR15[29], R47
	|	SMVAAGH.M1		OR11, R13:R12
		SLDW		*+AR15[30], R25
	.loc 1 101 0
		SLDW		*+AR15[31], R26
	.loc 1 100 0
		SFADDS32.M2		R0, R21, R18
		SNOP		2
		SFADDS32.M2		R18, R22, R57
		SNOP		1
	.loc 1 101 0
		SLDW		*+AR15[32], R27
	.loc 1 100 0
		SFADDS32.M2		R57, R24, R32
	|	SLDW		*+AR15[33], R1
	.loc 1 101 0
		SLDW		*+AR15[34], R28
		SLDW		*+AR15[35], R29
	.loc 1 100 0
		SFADDS32.M2		R32, R47, R33
	|	SLDW		*+AR15[36], R46
	.loc 1 101 0
		SNOP		2
	.loc 1 100 0
		SFADDS32.M2		R33, R25, R40
		SNOP		2
	.loc 1 101 0
		SFADDS32.M2		R40, R26, R36
	|	SLDW		*+AR15[15], R19
	|	SMOVIL		1073741824, R40
	.loc 1 10 0
		SLDW		*+AR15[17], R55
	|	SMOVIH		1073741824, R40
	.loc 1 100 0
		SLDW		*+AR15[37], R31
	.loc 1 101 0
		SFADDS32.M2		R36, R27, R41
		SNOP		2
		SFADDS32.M2		R41, R1, R58
	|	SADD.M1		R34,R19,R10
	.loc 1 10 0
		SADD.M2		R35,R55,R53
	|	SLTU		R10, R34, R56
		SADD.M1		R53,R56,R11
	.loc 1 101 0
		SFADDS32.M2		R58, R28, R59
		SNOP		2
	;no-op trunc di R11:R10 to pdi R11:R10
		SFADDS32.M2		R59, R29, R37
		SNOP		1
	.loc 1 105 0
		SBR		M7002_datatrans
	.loc 1 101 0
		SFADDS32.M2		R37, R46, R60
	|	SMOVIL		.L50, R62
		SMOVIH		.L50, R62
		SMOVIH4.L		.L50, R63
	.loc 1 100 0
		SFADDS32.M2		R60, R31, R31
	.loc 1 105 0
	;; call to M7002_datatrans occurs
		SNOP		2
.LVL33:
.L50:
	.loc 1 110 0
		SLDW		*+AR15[13], R49
	|	SADD.M2		R39,R38,R12
	|	SSHFAR		31, R38, R13
	.loc 1 106 0
		SLDW		*+AR15[20], R14
	|	SLTU		R12, R38, R2
	.loc 1 110 0
		SSHFLL		1, R12, R8
	|	SLDW		*+AR15[21], R3
		SLTU		R8, R12, R52
	|	SLDW		*+AR15[14], R51
		SSHFLL		2, R12, R44
		SLTU		R44, R8, R16
		SADD.M2		R49,R13,R61
	|	SSHFLL		3, R12, R17
		SADD.M1		R61,R2,R9
	|	SFSUBS32.M2		R30, R14, R48
	|	SLTU		R17, R44, R10
.LVL34:
		SSHFLL		1, R9, R50
	|	SADD.LS		AR15,80,OR12
	|	SFSUBS32.M1		R31, R3, R15
.LVL35:
		SADD.M1		R50,R52,R42
	|	SMOVIL		8, R14
		SSHFLL		1, R42, R54
	|	SMVAAGL.M1		OR12, R13:R12
	|	SADD.M2		R51,R38,R38
	|	SSTW		R48, *+AR15[11]
		SADD.M2		R54,R16,R30
	|	SSTW		R15, *+AR15[10]
.LVL36:
		SSHFLL		1, R30, R11
	|	SMVAAGH.M2		OR12, R13:R12
		SADD.M1		R11,R10,R43
		SMOV.M2		R43, R11
	|	SMOV.M1		R17, R10
	|	SBR		M7002_datatrans
	;no-op trunc di R11:R10 to pdi R11:R10
		SADDA.M2		R11:R10,AR8,OR13
	|	SMOVIL		.L51, R62
		SMOVIH		.L51, R62
		SMVAAGL.M2		OR13, R11:R10
	|	SMOVIH4.L		.L51, R63
		SNOP		1
		SMVAAGH.M2		OR13, R11:R10
	;; call to M7002_datatrans occurs
		SNOP		1
.LVL37:
.L51:
.LBB4:
.LBB5:
	.loc 1 128 0
		SLDW		*+AR15[10], R20
		SLDW		*+AR15[11], R23
.LBE5:
.LBE4:
	.loc 1 113 0
		SLDW		*+AR15[20], R21
		SLDW		*+AR15[21], R22
		SNOP		2
.LVL38:
.LBB8:
.LBB6:
	.loc 1 128 0
		SFMULS32.M2		R20, R20, R45
		SNOP		2
		SSTW		R21, *+AR15[9]
		SFMULAS32.M2	R23, R23, R45, R45
	|	SSTW		R22, *+AR15[8]
		SBR		sqrt
		SMOVIL		.L52, R62
		SMOVIH		.L52, R62
		SMOVIH4.L		.L52, R63
		SNOP		1
		SFSPDP32T.M2		R45, R11:R10
	;; call to sqrt occurs, with return value
		SNOP		1
.LVL39:
.L52:
	.loc 1 129 0
		SLDW		*+AR15[8], R24
	|	SMOV.M2		R10, R36
	|	SMOV.M1		R11, R37
.LVL40:
		SLDW		*+AR15[9], R25
		SNOP		4
		SFMULS32.M2		R24, R24, R47
		SNOP		3
		SFMULAS32.M2	R25, R25, R47, R47
		SBR		sqrt
		SMOVIL		.L53, R62
		SMOVIH		.L53, R62
		SMOVIH4.L		.L53, R63
		SNOP		1
		SFSPDP32T.M2		R47, R11:R10
	;; call to sqrt occurs, with return value
		SNOP		1
.LVL41:
.L53:
	.loc 1 133 0
		SLDW		*+AR15[10], R27
	|	SMOV.M2		R11, R0
	|	SMOV.M1		R10, R26
		SLDW		*+AR15[11], R1
		SBR		atan2
	|	SSTW		R0, *+AR15[6]
		SMOVIL		.L54, R62
		SMOVIH		.L54, R62
		SMOVIH4.L		.L54, R63
		SFSPDP32T.M2		R27, R11:R10
		SFSPDP32T.M1		R1, R13:R12
	|	SSTW		R26, *+AR15[7]
	;; call to atan2 occurs, with return value
		SNOP		1
.LVL42:
.L54:
		SMOV.M2		R10, R28
	|	SMOV.M1		R11, R29
	.loc 1 134 0
		SLDW		*+AR15[8], R18
		SLDW		*+AR15[9], R19
		SBR		atan2
	|	SSTW		R28, *+AR15[11]
		SMOVIL		.L55, R62
		SMOVIH		.L55, R62
		SMOVIH4.L		.L55, R63
		SFSPDP32T.M2		R18, R11:R10
		SFSPDP32T.M1		R19, R13:R12
	|	SSTW		R29, *+AR15[10]
	;; call to atan2 occurs, with return value
		SNOP		1
.LVL43:
.L55:
		SFDPSP32.M2		R11:R10, R46
.LVL44:
	.loc 1 133 0
		SLDW		*+AR15[11], R42
		SLDW		*+AR15[10], R43
		SNOP		5
		SFDPSP32.M2		R43:R42, R56
		SNOP		2
	.loc 1 138 0
		SBR		cos
	|	SFSUBS32.M2		R46, R56, R55
	.loc 1 135 0
		SMOVIL		.L56, R62
		SMOVIH		.L56, R62
	.loc 1 138 0
		SFSPDP32T.M2		R55, R43:R42
	|	SMOVIH4.L		.L56, R63
		SNOP		1
		SMOV.M2		R42, R10
	|	SMOV.M1		R43, R11
	|	SSTW		R42, *+AR15[11]
.LVL45:
	;; call to cos occurs, with return value
		SSTW		R43, *+AR15[10]
.LVL46:
.L56:
	.loc 1 128 0
		SFDPSP32.M2		R37:R36, R57
		SNOP		1
.LVL47:
	.loc 1 129 0
		SLDW		*+AR15[7], R44
		SLDW		*+AR15[6], R45
	.loc 1 139 0
		SLDW		*+AR15[11], R12
		SLDW		*+AR15[10], R13
		SNOP		3
	.loc 1 129 0
		SFDPSP32.M2		R45:R44, R53
		SNOP		2
	.loc 1 130 0
		SFRCPS32.M2		R53, R32
		SFMULS32.M2		R53, R32, R33
		SNOP		3
		SFSUBS32.M2		R33, R40, R36
		SNOP		2
		SFMULS32.M2		R32, R36, R41
		SNOP		3
		SFMULS32.M2		R53, R41, R58
		SNOP		3
		SFSUBS32.M2		R58, R40, R59
		SNOP		2
		SFMULS32.M2		R41, R59, R37
		SNOP		3
		SFMULS32.M2		R57, R37, R60
		SNOP		3
	.loc 1 138 0
		SFSPDP32T.M2		R60, R31:R30
		SNOP		1
		SFMULD.M2		R11:R10, R31:R30, R45:R44
		SNOP		1
	.loc 1 139 0
		SMOV.M2		R12, R10
	|	SMOV.M1		R13, R11
		SBR		sin
		SMOVIL		.L57, R62
		SMOVIH		.L57, R62
	.loc 1 138 0
		SFDPSP32.M2		R45:R44, R14
	|	SMOVIH4.L		.L57, R63
		SNOP		2
	.loc 1 139 0
	;; call to sin occurs, with return value
		SSTW		R14, *+AR15[20]
.LVL48:
.L57:
		SFMULD.M2		R31:R30, R11:R10, R37:R36
	|	SLDW		*+AR15[18], R49
	|	SMOVIL		8, R14
.LBE6:
.LBE8:
	.loc 1 116 0
		SADD.LS		AR15,80,OR14
		SNOP		1
.LVL49:
	.loc 1 10 0
		SLDW		*+AR15[16], R31
	|	SMVAAGL.M1		OR14, R11:R10
.LVL50:
	.loc 1 116 0
		SNOP		1
		SMVAAGH.M1		OR14, R11:R10
		SBR		M7002_datatrans
	|	SFDPSP32.M1		R37:R36, R3
	|	SADD.M2		R35,R49,R61
		SADD.M2		-1,R35,R35
	|	SMOVIL		.L58, R62
		SMOVIH		.L58, R62
.LBB9:
.LBB7:
	.loc 1 139 0
		SSTW		R3, *+AR15[21]
	|	SADD.M2		R34,R31,R12
	|	SMOVIH4.L		.L58, R63
.LBE7:
.LBE9:
	.loc 1 10 0
		SLTU		R12, R34, R2
		SADD.M2		R61,R2,R13
		SNOP		1
	.loc 1 116 0
	;; call to M7002_datatrans occurs
	;no-op trunc di R13:R12 to pdi R13:R12
.LVL51:
.L58:
	.loc 1 79 0
		SLDW		*+AR15[5], R8
	|	SADD.M2		-8,R34,R9
	|	SADD.M1		-1,R39,R52
		SLTU		R9, R34, R48
	|	SLDW		*+AR15[13], R34
		SLTU		R52, R39, R44
	|	SLDW		*+AR15[3], R46
	|	SADD.M2		R35,R48,R35
		SMOVIL		0, R39
	|	SLDW		*+AR15[2], R47
		SLDW		*+AR15[4], R53
		SNOP		1
		SADD.M2		-1,R8,R55
.LVL52:
		SSHFLL		16, R55, R15
	|	SADD.M2		-1,R34,R50
	|	SMOV.M1		R9, R34
		SLT		R15, R39, R0
	|	SADD.M2		R50,R44,R51
	|	SMOV.M1		R52, R39
	[!R0]	SBR		.L25
		SSTW		R51, *+AR15[13]
		SNOP		5
	;; condjump to .L25 occurs
.LVL53:
.L43:
	.loc 1 119 0
		SMOVIL		256, R6
	|	SLDDW		*+AR15[28], R63:R62
		SMOVIL		0, R7
	|	SLDDW		*+AR15[19], R31:R30
		SADDA.M2		R7:R6,AR7,AR7
		SLDDW		*+AR15[25], R7:R6
	|	SMOVIL		0, R10
		SLDDW		*+AR15[20], R33:R32
		SNOP		1
		SMVCGC.L		R63, BRReg
		SLDDW		*+AR15[21], R35:R34
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
.LVL54:
		SLDDW		*+AR15[26], R7:R6
		SLDDW		*+AR15[22], R37:R36
		SNOP		1
		SLDDW		*+AR15[23], R39:R38
		SLDDW		*+AR15[24], R41:R40
		SNOP		1
		SMVAGA36.M2		R7:R6, OR8
		SLDDW		*+AR15[27], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR9
	|	SLDDW		*+AR15[29], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		240, R6
.LVL55:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL56:
.L45:
		SBR		.L16
	|	SLDH		*+AR15[34], R29
	.loc 1 73 0
		SNOP		6
.LVL57:
	;; jump to .L16 occurs
	.cfi_endproc
.LFE3:
	.size	DSPF_sp_qrd_solver_cmplx_v1, .-DSPF_sp_qrd_solver_cmplx_v1
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4b9
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x1
	.4byte	.LASF46
	.4byte	.LASF47
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
	.4byte	.LASF48
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.byte	0x1
	.4byte	0x125
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x7a
	.4byte	0x38
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x7a
	.4byte	0x38
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0x7a
	.4byte	0x38
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x1
	.byte	0x7a
	.4byte	0x38
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x1
	.byte	0x7a
	.4byte	0x125
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x1
	.byte	0x7a
	.4byte	0x125
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0x7c
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0x7c
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x1
	.byte	0x7c
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x1
	.byte	0x7d
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x1
	.byte	0x7d
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x1
	.byte	0x7d
	.4byte	0x38
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.4byte	0x38
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF49
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.4byte	0x46
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x475
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0xb
	.4byte	0x475
	.4byte	.LLST1
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0xb
	.4byte	0x475
	.4byte	.LLST2
	.uleb128 0xa
	.string	"Q"
	.byte	0x1
	.byte	0xc
	.4byte	0x487
	.4byte	.LLST3
	.uleb128 0xa
	.string	"R"
	.byte	0x1
	.byte	0xc
	.4byte	0x487
	.4byte	.LLST4
	.uleb128 0xa
	.string	"b"
	.byte	0x1
	.byte	0xc
	.4byte	0x487
	.4byte	.LLST5
	.uleb128 0xa
	.string	"y"
	.byte	0x1
	.byte	0xd
	.4byte	0x487
	.4byte	.LLST6
	.uleb128 0xa
	.string	"x"
	.byte	0x1
	.byte	0xd
	.4byte	0x487
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
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0x10
	.4byte	0x38
	.4byte	.LLST14
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x10
	.4byte	0x38
	.4byte	.LLST15
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
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x1
	.byte	0x10
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x1
	.byte	0x10
	.4byte	0x38
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x1
	.byte	0x11
	.4byte	0x48d
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x1
	.byte	0x15
	.4byte	0x47a
	.4byte	.LLST16
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x1
	.byte	0x17
	.4byte	0x47a
	.4byte	.LLST17
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x1
	.byte	0x19
	.4byte	0x49d
	.4byte	.LLST18
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x1
	.byte	0x1b
	.4byte	0x49d
	.4byte	.LLST19
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0x1d
	.4byte	0x49d
	.byte	0x3
	.byte	0x77
	.sleb128 64
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x1
	.byte	0x1f
	.4byte	0x49d
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xb
	.string	"Qf"
	.byte	0x1
	.byte	0x21
	.4byte	0x4aa
	.4byte	.LLST20
	.uleb128 0xb
	.string	"Rf"
	.byte	0x1
	.byte	0x22
	.4byte	0x4aa
	.4byte	.LLST21
	.uleb128 0xb
	.string	"yf"
	.byte	0x1
	.byte	0x23
	.4byte	0x4aa
	.4byte	.LLST22
	.uleb128 0xb
	.string	"xf"
	.byte	0x1
	.byte	0x24
	.4byte	0x4aa
	.4byte	.LLST23
	.uleb128 0xb
	.string	"bf"
	.byte	0x1
	.byte	0x25
	.4byte	0x4aa
	.4byte	.LLST24
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x1
	.byte	0x27
	.4byte	0x46
	.4byte	.LLST25
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x1
	.byte	0x28
	.4byte	0x46
	.4byte	.LLST26
	.uleb128 0xf
	.string	"buf"
	.byte	0x1
	.byte	0x44
	.4byte	0x4b0
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x10
	.4byte	0x93
	.llong	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x71
	.4byte	0x3b0
	.uleb128 0x11
	.4byte	0xd7
	.4byte	.LLST27
	.uleb128 0x11
	.4byte	0xcc
	.4byte	.LLST28
	.uleb128 0x11
	.4byte	0xc1
	.4byte	.LLST29
	.uleb128 0x11
	.4byte	0xb6
	.4byte	.LLST30
	.uleb128 0x11
	.4byte	0xab
	.4byte	.LLST31
	.uleb128 0x11
	.4byte	0xa0
	.4byte	.LLST32
	.uleb128 0x12
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x13
	.4byte	0xe2
	.4byte	.LLST33
	.uleb128 0x14
	.4byte	0xed
	.uleb128 0x14
	.4byte	0xf8
	.uleb128 0x14
	.4byte	0x103
	.uleb128 0x13
	.4byte	0x10e
	.4byte	.LLST34
	.uleb128 0x14
	.4byte	0x119
	.byte	0
	.byte	0
	.uleb128 0x15
	.llong	.LVL10
	.4byte	0x3cf
	.uleb128 0x16
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x38
	.uleb128 0x16
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x15
	.llong	.LVL31
	.4byte	0x3fb
	.uleb128 0x16
	.byte	0x1
	.byte	0x6e
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x16
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x58
	.sleb128 0
	.uleb128 0x16
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x59
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.llong	.LVL32
	.4byte	0x41b
	.uleb128 0x16
	.byte	0x1
	.byte	0x6e
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x16
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x58
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.llong	.LVL33
	.4byte	0x43a
	.uleb128 0x16
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x38
	.uleb128 0x16
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x15
	.llong	.LVL37
	.4byte	0x459
	.uleb128 0x16
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x38
	.uleb128 0x16
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x17
	.llong	.LVL51
	.uleb128 0x16
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x38
	.uleb128 0x16
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x46
	.uleb128 0x19
	.byte	0x1
	.4byte	0x31
	.4byte	0x487
	.uleb128 0x1a
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.4byte	0x47a
	.uleb128 0x1b
	.4byte	0x38
	.4byte	0x49d
	.uleb128 0x1c
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	0x38
	.4byte	0x4aa
	.uleb128 0x1a
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.4byte	0x49d
	.uleb128 0x1d
	.4byte	0x38
	.uleb128 0x1c
	.4byte	0x85
	.byte	0xf
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
	.uleb128 0x10
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
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
	.llong	.LFE3
	.2byte	0x3
	.byte	0x7f
	.sleb128 240
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL3
	.llong	.LFE3
	.2byte	0x3
	.byte	0x91
	.sleb128 -172
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL4
	.llong	.LFE3
	.2byte	0x3
	.byte	0x91
	.sleb128 -184
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
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.uleb128 0x59
	.llong	.LVL22
	.llong	.LVL56
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x9f
	.llong	.LVL56
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x59
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL6
	.2byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL6
	.llong	.LVL54
	.2byte	0x1
	.byte	0x58
	.llong	.LVL54
	.llong	.LVL56
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.byte	0x9f
	.llong	.LVL56
	.llong	.LFE3
	.2byte	0x1
	.byte	0x58
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
	.llong	.LVL7
	.2byte	0x8
	.byte	0x90
	.uleb128 0x24
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x25
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL7
	.llong	.LVL23
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL23
	.llong	.LVL56
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x24
	.sleb128 0
	.byte	0x9f
	.llong	.LVL56
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL0
	.llong	.LVL9
	.2byte	0x8
	.byte	0x90
	.uleb128 0x26
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL9
	.llong	.LVL55
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL55
	.llong	.LVL56
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x26
	.sleb128 0
	.byte	0x9f
	.llong	.LVL56
	.llong	.LFE3
	.2byte	0x1
	.byte	0x5e
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL8
	.llong	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL21
	.llong	.LVL31-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x47
	.llong	.LVL52
	.llong	.LVL56
	.2byte	0x2
	.byte	0x90
	.uleb128 0x47
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL11
	.llong	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL17
	.llong	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL24
	.llong	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL19
	.llong	.LVL23
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.llong	.LVL57
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL5
	.llong	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL19
	.llong	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL32
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL33
	.llong	.LVL50
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2f
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL34
	.llong	.LVL37-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL35
	.llong	.LVL37-1
	.2byte	0x1
	.byte	0x6f
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL13
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
	.llong	.LVL14
	.llong	.LVL16
	.2byte	0x8
	.byte	0x90
	.uleb128 0x64
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x65
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL26
	.llong	.LVL30
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
.LLST17:
	.llong	.LVL11
	.llong	.LVL17
	.2byte	0x8
	.byte	0x90
	.uleb128 0x68
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x69
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL27
	.llong	.LVL30
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
.LLST18:
	.llong	.LVL15
	.llong	.LVL16
	.2byte	0x2
	.byte	0x90
	.uleb128 0x61
	.llong	.LVL28
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6d
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL15
	.llong	.LVL16
	.2byte	0x2
	.byte	0x90
	.uleb128 0x62
	.llong	.LVL29
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6f
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
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.uleb128 0x59
	.llong	.LVL22
	.llong	.LVL56
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x9f
	.llong	.LVL56
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x59
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL5
	.llong	.LVL6
	.2byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL6
	.llong	.LVL54
	.2byte	0x1
	.byte	0x58
	.llong	.LVL54
	.llong	.LVL56
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.byte	0x9f
	.llong	.LVL56
	.llong	.LFE3
	.2byte	0x1
	.byte	0x58
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL5
	.llong	.LVL7
	.2byte	0x8
	.byte	0x90
	.uleb128 0x24
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x25
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL7
	.llong	.LVL23
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL23
	.llong	.LVL56
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x24
	.sleb128 0
	.byte	0x9f
	.llong	.LVL56
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL5
	.llong	.LVL9
	.2byte	0x8
	.byte	0x90
	.uleb128 0x26
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL9
	.llong	.LVL55
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL55
	.llong	.LVL56
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x26
	.sleb128 0
	.byte	0x9f
	.llong	.LVL56
	.llong	.LFE3
	.2byte	0x1
	.byte	0x5e
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL5
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
	.llong	.LVL5
	.llong	.LVL9
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL9
	.llong	.LFE3
	.2byte	0x12
	.byte	0x91
	.sleb128 -172
	.byte	0x94
	.byte	0x4
	.byte	0x4f
	.byte	0x26
	.byte	0x4c
	.byte	0x25
	.byte	0x91
	.sleb128 -172
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	0
	.llong	0
.LLST26:
	.llong	.LVL5
	.llong	.LVL9
	.2byte	0x1
	.byte	0x63
	.llong	.LVL9
	.llong	.LFE3
	.2byte	0x3
	.byte	0x91
	.sleb128 -168
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL38
	.llong	.LVL53
	.2byte	0x4
	.byte	0x91
	.sleb128 -156
	.byte	0x9f
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL38
	.llong	.LVL49
	.2byte	0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x9f
	.llong	.LVL49
	.llong	.LVL51-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x5e
	.llong	.LVL51-1
	.llong	.LVL53
	.2byte	0x4
	.byte	0x91
	.sleb128 -160
	.byte	0x9f
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL38
	.llong	.LVL39-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL38
	.llong	.LVL39-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.llong	0
	.llong	0
.LLST31:
	.llong	.LVL38
	.llong	.LVL39-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	0
	.llong	0
.LLST32:
	.llong	.LVL38
	.llong	.LVL39-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -196
	.llong	0
	.llong	0
.LLST33:
	.llong	.LVL40
	.llong	.LVL47
	.2byte	0x6
	.byte	0xf5
	.uleb128 0x34
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.byte	0x9f
	.llong	.LVL47
	.llong	.LVL48-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x49
	.llong	0
	.llong	0
.LLST34:
	.llong	.LVL43
	.llong	.LVL44
	.2byte	0x6
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.byte	0x9f
	.llong	.LVL44
	.llong	.LVL46-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
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
.LASF46:
	.string	"../version_vector.c"
.LASF24:
	.string	"z_angle"
.LASF37:
	.string	"vdt1"
.LASF38:
	.string	"vdt2"
.LASF13:
	.string	"x_real"
.LASF2:
	.string	"long long unsigned int"
.LASF27:
	.string	"loop_cnt"
.LASF33:
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
.LASF34:
	.string	"sum_real"
.LASF7:
	.string	"unsigned int"
.LASF17:
	.string	"z_real"
.LASF47:
	.string	"/cygdrive/c/Users/LinGuanguo/source/\346\235\234\344\272\232\345\250\237\350\200\201\345\270\210\351\241\271\347\233\256/DSPF_sp_qrd_solver_cmplx/Debug"
.LASF28:
	.string	"xreal"
.LASF8:
	.string	"long unsigned int"
.LASF48:
	.string	"complex_sp_div"
.LASF6:
	.string	"short unsigned int"
.LASF11:
	.string	"sizetype"
.LASF23:
	.string	"y_angle"
.LASF44:
	.string	"Ncols16"
.LASF45:
	.string	"GNU C 4.7.0"
.LASF1:
	.string	"float"
.LASF31:
	.string	"yimag"
.LASF32:
	.string	"zreal"
.LASF20:
	.string	"y_mag"
.LASF14:
	.string	"x_imag"
.LASF5:
	.string	"unsigned char"
.LASF10:
	.string	"short int"
.LASF40:
	.string	"vft2"
.LASF39:
	.string	"vft1"
.LASF49:
	.string	"DSPF_sp_qrd_solver_cmplx_v1"
.LASF41:
	.string	"vft3"
.LASF42:
	.string	"vft4"
.LASF25:
	.string	"Nrows"
.LASF16:
	.string	"y_imag"
.LASF36:
	.string	"temp_cplx"
.LASF12:
	.string	"char"
.LASF35:
	.string	"sum_imag"
.LASF43:
	.string	"Nrows16"
.LASF18:
	.string	"z_imag"
.LASF29:
	.string	"ximag"
.LASF21:
	.string	"z_mag"
.LASF26:
	.string	"Ncols"
.LASF30:
	.string	"yreal"
.LASF19:
	.string	"x_mag"
.LASF22:
	.string	"x_angle"
