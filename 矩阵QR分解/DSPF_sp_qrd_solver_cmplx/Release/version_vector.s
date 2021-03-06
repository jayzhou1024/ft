	.file	"version_vector.c"
	.section	.text.DSPF_sp_qrd_solver_cmplx_v1,"ax",@progbits
	.align	2
	.global	DSPF_sp_qrd_solver_cmplx_v1
	.type	DSPF_sp_qrd_solver_cmplx_v1, @function
DSPF_sp_qrd_solver_cmplx_v1:
		SMOVIL		576, R6
		SMOVIL		0, R7
		SSUBA.L		R7:R6, AR7, AR7
		SMOVIL		-248, R6
		SNOP		1
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
		SMVAAGL.M1		AR14, R7:R6
	|	SSHFAR		31, R12, R42
		SSHFLR		28, R42, R0
	|	SSTW		R12, *+AR15[14]
		SMVAAGH.M2		AR14, R7:R6
	|	SADD.M1		R12,R0,R1
	|	SSHFAR		31, R10, R43
	|	SSTW		R10, *+AR15[16]
		SSHFAR		4, R1, R3
	|	SMVAGA36.M1		R15:R14, AR14
		SSHFLR		28, R43, R2
		SSTDW		R7:R6, *+AR15[30]
		SMVAAGL.M2		OR9, R7:R6
	|	SSTW		R3, *+AR15[18]
	|	SMOVIL		0, R8
	|	SADD.M1		R10,R2,R51
		SLT		R8, R3, R0
		SMVAAGH.M1		OR9, R7:R6
	|	SMOVIL		0, R45
	|	SMVAGA36.M2		R23:R22, OR9
		SLDW		*+AR15[18], R44
	|	SMOVIL		128, R14
		SSTDW		R7:R6, *+AR15[28]
		SMVAAGL.M2		OR8, R7:R6
	|	SSTDW		R63:R62, *+AR15[29]
		SSHFAR		4, R51, R10
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R21:R20, OR8
		SNOP		1
		SMVAAGL.M2		OR8, R43:R42
	|	SADD.M1		-1,R44,R47
	|	SMOVIL		0, R44
	|	SSTDW		R7:R6, *+AR15[27]
		SSHFLL		7, R47, R46
	|	SMVAAGL.M1		AR8, R7:R6
	|	SVBCAST2.M2 		 R45:R44,VR5:VR4
	|	SSTDW		R41:R40, *+AR15[25]
		SMVAAGH.M1		OR8, R43:R42
	|	SSHFLR		25, R47, R12
		SMVAAGH.M1		AR8, R7:R6
		SMVAGA36.M1		R17:R16, AR8
	|	SMOVIL		128, R17
	|	SSTDW		R39:R38, *+AR15[24]
		SADD.M2		R46,R42,R11
	|	SSTDW		R7:R6, *+AR15[26]
		SADD.M2		R12,R43,R13
	|	SLTU		R11, R42, R48
	|	SADD.M1		R14,R11,R49
		SADD.M2		R13,R48,R15
	|	SLTU		R49, R11, R16
		SADD.M2		R15,R16,R50
	|	SSTDW		R37:R36, *+AR15[23]
		SSTDW		R35:R34, *+AR15[22]
	[!R0]	SBR		.L6
		SNOP		1
		SSTDW		R33:R32, *+AR15[21]
		SSTDW		R31:R30, *+AR15[20]
		SNOP		2
		SSTW		R0, *+AR15[17]
	;; condjump to .L6 occurs
.L5:
		SADD.M2		R17,R42,R20
	|	SMVAGA36.M1		R43:R42, AR0
		SLTU		R20, R42, R21
	|	SMOV.M2		R20, R42
		SADD.M2		R43,R21,R43
	|	SEQ		R20, R49, R1
	|	VSTDW.LS 		VR5:VR4,*AR0
	[R1]	SEQ		R43, R50, R1
	[!R1]	SBR		.L5
		SNOP		6
	;; condjump to .L5 occurs
.L6:
		SLDW		*+AR15[16], R23
	|	SMOVIL		0, R24
	|	SADD.M2		1,R10,R52
	|	SMOV.M1		R18, R47
		SLDW		*+AR15[16], R25
	|	SMOVIL		0, R27
	|	SMOV.M2		R19, R46
		SLT		R27, R10, R28
		SMOVIL		1, R8
		SNOP		2
		SLT		R24, R23, R2
	[!R2]	SBR		.L4
	|	SADD.M2		1,R25,R26
		SNOP		6
	;; condjump to .L4 occurs
		SSTW		R26, *+AR15[11]
		SSTW		R27, *+AR15[10]
		SNOP		2
		SSTW		R28, *+AR15[15]
.L10:
		SADD.LS		AR15,88,OR11
	|	SMOV.M2		R47, R10
	|	SMOV.M1		R46, R11
	|	SMOVIL		8, R14
		SBR		M7002_datatrans
	;no-op trunc di R11:R10 to pdi R11:R10
	|	SMOVIL		0, R15
		SMVAAGL.M2		OR11, R13:R12
	|	SSTW		R52, *+AR15[4]
	|	SMOVIL		.L47, R62
		SSTW		R47, *+AR15[6]
	|	SMOVIH		.L47, R62
		SMVAAGH.M2		OR11, R13:R12
	|	SMOVIH4.L		.L47, R63
		SNOP		1
		SSTW		R46, *+AR15[5]
	;; call to M7002_datatrans occurs, with return value
		SSTW		R8, *+AR15[7]
.L47:
		SMOVIL		1, R59
		SMOVIL		0, R45
		SLDW		*+AR15[15], R0
		SLDDW		*+AR15[11], R19:R18
		SLDW		*+AR15[14], R31
		SLDW		*+AR15[10], R32
		SLDW		*+AR15[6], R30
		SNOP		2
		SVBCAST2.M2 		 R19:R18,VR1:VR0
		SNOP		1
		SMULIS.M1		R32,R31,R38
		SLDW		*+AR15[5], R19
	[!R0]	SBR		.L12
	|	SLDW		*+AR15[4], R52
	|	VSTDW.LS 		VR1:VR0,*AR7
		SLDW		*+AR15[7], R53
		SNOP		5
	;; condjump to .L12 occurs
.L11:
		SADD.M1		R38,R45,R33
	|	SMVAAA.M2		AR14, OR0
	|	SSHFLL		1, R45, R36
		SSHFAR		31, R33, R41
	|	SMOV.M1		R33, R42
		SMOV.M2		R41, R43
	|	SSHFAR		31, R36, R37
	|	SADD.M1		1,R36,R39
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLR		29, R42, R54
		SSHFLL		3, R43, R55
		SSHFLL		3, R42, R32
		SOR		R55, R54, R33
		SADDA.M2		R33:R32,OR0,AR0
	|	SSHFLR		26, R36, R34
	|	SMVAAA.M1		OR8, OR0
		SSHFLL		6, R37, R35
		SSHFLL		7, R45, R57
	|	SMOV.M1		R59, R45
		VLDDWM2.LS 		*AR0,VR3:VR2
	|	SOR		R35, R34, R56
	|	SMOV.M2		R57, R42
	|	SADD.M1		1,R59,R59
		SMOV.M2		R56, R43
	|	SLTU		R39, R36, R58
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,OR0,AR2
	|	SADD.M1		R37,R58,R60
	|	SSHFLR		26, R39, R61
		SSHFLL		6, R60, R42
		SOR		R42, R61, R3
		SSHFLL		6, R39, R43
		SMOV.M2		R43, R42
	|	SMOV.M1		R3, R43
	|	SEQ		R52, R59, R1
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,OR0,AR0
		VSTDW.LS 		VR3:VR2,*+AR7[16]
		VLDDW.LS 		*+AR7[16],VR5:VR4
	|	VLDDW.LS 		*AR7,VR7:VR6
		SNOP		7
		VFCREAL32.M3		VR5:VR4,VR7:VR6,VR1
		SNOP		6
		VSTW.LS 		VR1,*+AR7[112]
		VLDDW.LS 		*+AR7[16],VR5:VR4
	|	VLDDW.LS 		*AR7,VR9:VR8
		SNOP		7
		VFCIMAG32.M3		VR5:VR4,VR9:VR8,VR3
	|	VLDW.LS 		*AR2,VR5
		SNOP		6
		VSTW.LS 		VR3,*+AR7[96]
		VLDW.LS 		*+AR7[112],VR7
	|	VLDW.LS 		*+AR7[96],VR9
		SNOP		7
		VFADDS32.M1 		VR5,VR7,VR10
		SNOP		2
		VSTW.LS 		VR10,*AR2
		VLDW.LS 		*AR0,VR11
		SNOP		4
	[!R1]	SBR		.L11
		SNOP		2
		VFADDS32.M1 		VR11,VR9,VR12
		SNOP		2
		VSTW.LS 		VR12,*AR0
	;; condjump to .L11 occurs
.L12:
		SLDW		*+AR15[11], R44
	|	SADD.M2		1,R53,R8
	|	SADD.M1		8,R30,R51
		SLTU		R51, R30, R9
	|	SSTW		R53, *+AR15[10]
	|	SMOV.M2		R51, R47
		SADD.M2		R19,R9,R46
		SNOP		3
		SEQ		R44, R8, R2
	[!R2]	SBR		.L10
		SNOP		6
	;; condjump to .L10 occurs
.L4:
		SLDW		*+AR15[17], R0
	|	SMVAAGL.M2		OR8, R43:R42
	|	SMOVIL		128, R16
		SLDW		*+AR15[18], R11
	|	SMOVIL		128, R22
		SMVAAGH.M2		OR8, R43:R42
		SNOP		3
	[!R0]	SBR		.L8
		SADD.M2		-1,R11,R12
		SSHFLL		7, R12, R13
		SADD.M2		R13,R42,R14
	|	SSHFLR		25, R12, R49
		SLTU		R14, R42, R48
	|	SADD.M2		R49,R43,R15
	|	SADD.M1		R16,R14,R17
		SADD.M2		R15,R48,R50
	|	SLTU		R17, R14, R20
		SADD.M2		R50,R20,R21
	;; condjump to .L8 occurs
.L15:
		SMVAGA36.M1		R43:R42, AR0
	|	SADD.M2		R22,R42,R23
		SLTU		R23, R42, R24
	|	SMOV.M2		R23, R42
		SADD.M2		R43,R24,R43
	|	SEQ		R23, R17, R1
	|	VLDDW.LS 		*AR0,VR15:VR14
	[R1]	SEQ		R43, R21, R1
	[!R1]	SBR		.L15
		SNOP		5
		VSTDWM16.LS 		VR15:VR14,*AR0
	;; condjump to .L15 occurs
.L8:
		SLDW		*+AR15[16], R26
		SLDW		*+AR15[14], R27
		SNOP		5
		SLT		R26, R27, R2
	[R2]	SBR		.L45
		SNOP		6
	;; condjump to .L45 occurs
		SLDH		*+AR15[28], R28
		SNOP		5
.L16:
		SLDW		*+AR15[18], R29
	|	SMVAAGL.M2		OR9, R43:R42
	|	SMOVIL		128, R19
		SLDW		*+AR15[17], R0
	|	SMOVIL		0, R44
		SMVAAGH.M2		OR9, R43:R42
	|	SMOVIL		0, R45
		SVBCAST2.M1 		 R45:R44,VR17:VR16
	|	SMOVIL		128, R40
		SNOP		2
		SADD.M2		-1,R29,R18
	[!R0]	SBR		.L21
	|	SSHFLL		7, R18, R30
		SADD.M2		R19,R30,R52
	|	SSHFLR		25, R18, R53
		SLTU		R52, R30, R32
	|	SADD.M2		R52,R42,R31
		SADD.M2		R53,R32,R38
	|	SLTU		R31, R42, R33
		SADD.M2		R38,R43,R36
		SADD.M2		R36,R33,R37
		SNOP		1
	;; condjump to .L21 occurs
.L20:
		SADD.M2		R40,R42,R39
	|	SMVAGA36.M1		R43:R42, AR0
		SLTU		R39, R42, R41
	|	SMOV.M2		R39, R42
		SADD.M2		R43,R41,R43
	|	SEQ		R39, R31, R1
	|	VSTDW.LS 		VR17:VR16,*AR0
	[R1]	SEQ		R43, R37, R1
	[!R1]	SBR		.L20
		SNOP		6
	;; condjump to .L20 occurs
.L21:
		SADD.M1		-1,R28,R35
	|	SMOVIL		0, R56
	|	SMVAAGL.M2		OR8, R45:R44
	|	SLDW		*+AR15[14], R17
		SSHFLL		16, R35, R54
	|	SMVAAGL.M1		OR9, R43:R42
	|	SLDW		*+AR15[14], R58
	|	SMVAAA.M2		AR7, OR12
		SSHFAR		16, R54, R55
	|	SMVAAGH.M1		OR8, R45:R44
		SLT		R55, R56, R2
	|	SMVAAGH.M1		OR9, R43:R42
	|	SMOV.M2		R35, R48
	[R2]	SBR		.L43
	|	SSHFAR		31, R54, R57
	|	SMOV.M2		R55, R41
		SSHFLL		1, R55, R59
		SLTU		R59, R55, R60
		SSHFLL		2, R55, R8
	|	SMULIS.M2		R58,R55,R40
		SLTU		R8, R59, R9
		SSHFLL		3, R55, R11
		SADD.M2		R44,R11,R12
	|	SADD.M1		R42,R11,R13
	|	SLTU		R11, R8, R44
	;; condjump to .L43 occurs
		SSTW		R57, *+AR15[10]
	|	SMOVIL		0, R42
		SMOVIH		0, R42
	|	SSTW		R12, *+AR15[15]
		SVBCAST.M2 		 R42,VR13
	|	SLTU		R13, R11, R15
		SNEG		R17, R50
		SLDW		*+AR15[10], R61
	|	SSHFLL		16, R48, R21
		SSTW		R13, *+AR15[16]
	|	SMOVIL		0, R32
		SSTW		R50, *+AR15[14]
	|	VSTW.LS 		VR13,*+AR7[128]
	|	SMOVIL		0, R33
		SNOP		3
		SSHFLL		1, R61, R3
	|	SSTW		R21, *+AR15[21]
		SADD.M2		R3,R60,R51
		SSHFLL		1, R51, R10
		SADD.M2		R10,R9,R47
		SSHFLL		1, R47, R46
		SADD.M2		R46,R44,R14
	|	SMOVIL		256, R44
		SADD.M2		R43,R14,R43
	|	SADD.M1		R45,R14,R49
	|	SMOVIL		0, R45
		SADD.M1		R43,R15,R20
	|	SMOVIL		320, R46
	|	SADDA.M2		R45:R44,OR12,OR8
		SMOVIL		0, R47
	|	SSTW		R20, *+AR15[20]
		SLTU		R12, R11, R45
	|	SADDA.M2		R47:R46,OR12,AR14
		SADD.M1		R49,R45,R16
		SSTW		R16, *+AR15[19]
	|	SMOVIL		0, R16
.L25:
		SLDW		*+AR15[21], R22
	|	VLDW.LS 		*+AR7[128],VR15
	|	SMVAAA.M2		OR9, OR0
	|	SMOVIL		1, R38
		SLDW		*+AR15[17], R1
	|	SMOVIL		0, R53
		SLDW		*+AR15[18], R30
		SNOP		3
		SSHFAR		16, R22, R23
		SSUB.M2		R16, R23, R24
		SSHFAR		31, R24, R25
	|	SSTW		R24, *+AR15[12]
	|	VSTW.LS 		VR15,*+AR7[80]
		SSTW		R25, *+AR15[13]
	|	VSTW.LS 		VR15,*+AR7[64]
		SNOP		2
		SLDDW		*+AR15[6], R43:R42
		SNOP		5
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLR		29, R42, R26
		SSHFLL		3, R43, R27
		SOR		R27, R26, R0
		SSHFLL		3, R42, R29
	|	SSTW		R0, *+AR15[9]
		SSTW		R29, *+AR15[8]
		SNOP		2
		SLDDW		*+AR15[4], R19:R18
		SNOP		5
		SADDA.M2		R19:R18,OR0,AR0
	|	SADD.M1		1,R30,R19
		SNOP		2
		VLDDWM2.LS 		*AR0,VR19:VR18
		SNOP		1
	[!R1]	SBR		.L23
		SNOP		5
		VSTDW.LS 		VR19:VR18,*AR7
	;; condjump to .L23 occurs
.L24:
		SADD.M1		R40,R53,R52
	|	SMVAAA.M2		AR8, OR0
		SSHFAR		31, R52, R36
	|	SMOV.M1		R52, R42
		SMOV.M2		R36, R43
	|	SMOV.M1		R38, R53
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLR		29, R42, R37
	|	SADD.M2		1,R38,R38
		SSHFLL		3, R43, R39
		SOR		R39, R37, R31
		SSHFLL		3, R42, R30
		SADDA.M2		R31:R30,OR0,AR0
	|	SEQ		R19, R38, R2
		SNOP		2
		VLDDWM2.LS 		*AR0,VR21:VR20
		SNOP		7
		VSTDW.LS 		VR21:VR20,*+AR7[16]
		VLDDW.LS 		*+AR7[16],VR5:VR4
	|	VLDDW.LS 		*AR7,VR23:VR22
		SNOP		7
		VFCREAL32.M3		VR5:VR4,VR23:VR22,VR17
		SNOP		6
		VSTW.LS 		VR17,*+AR7[112]
		VLDDW.LS 		*+AR7[16],VR5:VR4
	|	VLDDW.LS 		*AR7,VR25:VR24
		SNOP		7
		VFCIMAG32.M3		VR5:VR4,VR25:VR24,VR19
		SNOP		6
		VSTW.LS 		VR19,*+AR7[96]
		VLDW.LS 		*+AR7[80],VR21
	|	VLDW.LS 		*+AR7[112],VR23
		SNOP		7
		VFADDS32.M1 		VR21,VR23,VR25
		SNOP		2
		VSTW.LS 		VR25,*+AR7[80]
		VLDW.LS 		*+AR7[64],VR26
	|	VLDW.LS 		*+AR7[96],VR27
		SNOP		4
	[!R2]	SBR		.L24
		SNOP		2
		VFADDS32.M1 		VR26,VR27,VR28
		SNOP		2
		VSTW.LS 		VR28,*+AR7[64]
	;; condjump to .L24 occurs
.L23:
		SBR		M7002_datatrans
	|	SADD.LS		AR15,96,OR13
	|	SADD.M1		1,R16,R34
	|	SMOVIL		64, R14
	|	SMVAAGL.M2		AR14, R11:R10
		SMOVIL		.L48, R62
		SMVAAGL.M1		OR13, R13:R12
	|	SMVAAGH.M2		AR14, R11:R10
	|	SSTW		R48, *+AR15[2]
	|	SMOVIH		.L48, R62
		SSTW		R34, *+AR15[3]
	|	SMOVIH4.L		.L48, R63
		SMVAAGH.M2		OR13, R13:R12
	|	SMOVIL		0, R15
	;; call to M7002_datatrans occurs, with return value
		SNOP		2
.L48:
		SLDW		*+AR15[24], R48
	|	SMVAAGL.M2		OR8, R11:R10
	|	SMOVIL		64, R14
		SLDW		*+AR15[25], R35
	|	SMOVIL		0, R15
		SLDW		*+AR15[26], R55
	|	SMVAAGH.M2		OR8, R11:R10
		SLDW		*+AR15[27], R57
		SLDW		*+AR15[28], R58
		SNOP		2
		SFADDS32.M2		R48, R35, R54
		SNOP		1
		SADD.LS		AR15,96,OR14
		SFADDS32.M2		R54, R55, R59
		SLDW		*+AR15[29], R56
	|	SMVAAGL.M1		OR14, R13:R12
		SLDW		*+AR15[30], R60
		SFADDS32.M2		R59, R57, R51
	|	SLDW		*+AR15[31], R61
	|	SMVAAGH.M1		OR14, R13:R12
		SLDW		*+AR15[32], R3
		SLDW		*+AR15[33], R8
		SFADDS32.M2		R51, R58, R49
		SNOP		2
		SFADDS32.M2		R49, R56, R43
		SNOP		1
		SLDW		*+AR15[34], R9
		SFADDS32.M2		R43, R60, R16
	|	SLDW		*+AR15[35], R47
		SLDW		*+AR15[36], R46
		SLDW		*+AR15[37], R44
		SFADDS32.M2		R16, R61, R17
	|	SLDW		*+AR15[38], R45
		SNOP		2
		SFADDS32.M2		R17, R3, R50
		SNOP		2
		SFADDS32.M2		R50, R8, R20
	|	SLDW		*+AR15[39], R42
		SNOP		2
		SFADDS32.M2		R20, R9, R21
		SNOP		2
		SFADDS32.M2		R21, R47, R22
		SNOP		2
		SFADDS32.M2		R22, R46, R23
		SNOP		2
		SFADDS32.M2		R23, R44, R24
		SNOP		1
		SBR		M7002_datatrans
		SFADDS32.M2		R24, R45, R25
	|	SMOVIL		.L49, R62
		SMOVIH		.L49, R62
		SMOVIH4.L		.L49, R63
		SFADDS32.M2		R25, R42, R30
	;; call to M7002_datatrans occurs, with return value
		SNOP		2
.L49:
		SLDW		*+AR15[24], R10
	|	SMOVIL		8, R14
		SLDW		*+AR15[25], R11
	|	SMOVIL		0, R15
		SLDW		*+AR15[26], R27
		SLDW		*+AR15[27], R28
		SLDW		*+AR15[28], R0
		SNOP		2
		SFADDS32.M2		R10, R11, R26
		SNOP		1
		SADD.LS		AR15,88,OR11
		SFADDS32.M2		R26, R27, R18
		SLDW		*+AR15[29], R29
	|	SMVAAGL.M1		OR11, R13:R12
		SLDW		*+AR15[30], R1
		SFADDS32.M2		R18, R28, R38
	|	SLDW		*+AR15[31], R19
	|	SMVAAGH.M1		OR11, R13:R12
		SLDW		*+AR15[32], R31
		SLDW		*+AR15[33], R53
		SFADDS32.M2		R38, R0, R37
		SNOP		2
		SFADDS32.M2		R37, R29, R57
		SNOP		1
		SLDW		*+AR15[34], R52
		SFADDS32.M2		R57, R1, R56
	|	SLDW		*+AR15[35], R36
		SLDW		*+AR15[36], R2
		SLDW		*+AR15[37], R39
		SFADDS32.M2		R56, R19, R59
	|	SLDW		*+AR15[38], R35
		SNOP		2
		SFADDS32.M2		R59, R31, R60
		SNOP		2
		SFADDS32.M2		R60, R53, R61
	|	SLDW		*+AR15[15], R34
		SLDW		*+AR15[19], R54
		SLDW		*+AR15[39], R58
		SFADDS32.M2		R61, R52, R3
		SNOP		2
		SFADDS32.M2		R3, R36, R8
	|	SADD.M1		R32,R34,R10
		SLTU		R10, R32, R48
	|	SADD.M2		R33,R54,R55
		SADD.M1		R55,R48,R11
		SFADDS32.M2		R8, R2, R51
		SNOP		2
	;no-op trunc di R11:R10 to pdi R11:R10
		SFADDS32.M2		R51, R39, R9
		SNOP		1
		SBR		M7002_datatrans
		SFADDS32.M2		R9, R35, R47
	|	SMOVIL		.L50, R62
		SMOVIH		.L50, R62
		SMOVIH4.L		.L50, R63
		SFADDS32.M2		R47, R58, R31
	;; call to M7002_datatrans occurs, with return value
		SNOP		2
.L50:
		SLDW		*+AR15[10], R46
	|	SADD.M2		R41,R40,R12
	|	SSHFAR		31, R40, R13
		SLTU		R12, R40, R15
	|	SLDW		*+AR15[23], R49
		SSHFLL		1, R12, R42
	|	SLDW		*+AR15[14], R45
		SLTU		R42, R12, R16
	|	SLDW		*+AR15[22], R14
		SSHFLL		2, R12, R50
		SLTU		R50, R42, R21
		SADD.M2		R46,R13,R44
	|	SSHFLL		3, R12, R23
		SADD.M1		R44,R15,R43
	|	SLTU		R23, R50, R25
	|	SFSUBS32.M2		R31, R49, R38
		SSHFLL		1, R43, R17
	|	SADD.LS		AR15,88,OR12
	|	SADD.M2		R45,R40,R40
		SADD.M1		R17,R16,R20
	|	SMOVIL		0, R15
	|	SFSUBS32.M2		R30, R14, R30
		SSHFLL		1, R20, R22
	|	SMVAAGL.M1		OR12, R13:R12
		SMOVIL		8, R14
		SADD.M1		R22,R21,R24
	|	SMVAAGH.M2		OR12, R13:R12
		SSHFLL		1, R24, R10
		SADD.M2		R10,R25,R26
	|	SMOV.M1		R23, R10
		SMOV.M2		R26, R11
	|	SBR		M7002_datatrans
	;no-op trunc di R11:R10 to pdi R11:R10
		SADDA.M2		R11:R10,AR8,OR13
	|	SMOVIL		.L51, R62
		SMOVIH		.L51, R62
		SMVAAGL.M2		OR13, R11:R10
	|	SMOVIH4.L		.L51, R63
		SNOP		1
		SMVAAGH.M2		OR13, R11:R10
	;; call to M7002_datatrans occurs, with return value
		SNOP		1
.L51:
		SFMULS32.M2		R38, R38, R11
	|	SLDW		*+AR15[22], R27
		SLDW		*+AR15[23], R28
		SNOP		2
		SFMULAS32.M2	R30, R30, R11, R11
		SBR		sqrt
		SMOVIL		.L52, R62
		SSTW		R27, *+AR15[7]
	|	SMOVIH		.L52, R62
		SSTW		R28, *+AR15[6]
	|	SMOVIH4.L		.L52, R63
		SNOP		1
		SFSPDP32T.M2		R11, R11:R10
	;; call to sqrt occurs, with return value
		SNOP		1
.L52:
		SLDW		*+AR15[6], R0
	|	SMOV.M2		R11, R35
	|	SMOV.M1		R10, R34
		SLDW		*+AR15[7], R18
		SNOP		4
		SFMULS32.M2		R0, R0, R29
		SNOP		3
		SFMULAS32.M2	R18, R18, R29, R29
		SBR		sqrt
		SMOVIL		.L53, R62
		SMOVIH		.L53, R62
		SMOVIH4.L		.L53, R63
		SNOP		1
		SFSPDP32T.M2		R29, R11:R10
	;; call to sqrt occurs, with return value
		SNOP		1
.L53:
		SBR		atan2
	|	SMOV.M2		R10, R1
	|	SMOV.M1		R11, R19
		SFSPDP32T.M1		R30, R13:R12
	|	SFSPDP32T.M2		R38, R11:R10
	|	SSTW		R1, *+AR15[5]
	|	SMOVIL		.L54, R62
		SSTW		R19, *+AR15[4]
	|	SMOVIH		.L54, R62
		SMOVIH4.L		.L54, R63
	;; call to atan2 occurs, with return value
		SNOP		3
.L54:
		SLDW		*+AR15[6], R53
	|	SMOV.M2		R11, R37
	|	SMOV.M1		R10, R36
		SLDW		*+AR15[7], R52
		SBR		atan2
		SMOVIL		.L55, R62
		SMOVIH		.L55, R62
		SMOVIH4.L		.L55, R63
		SFSPDP32T.M2		R53, R11:R10
		SFSPDP32T.M1		R52, R13:R12
	;; call to atan2 occurs, with return value
		SNOP		1
.L55:
		SFDPSP32.M1		R37:R36, R36
	|	SFDPSP32.M2		R11:R10, R2
		SNOP		1
		SBR		cos
	|	SFDPSP32.M1		R35:R34, R34
		SFSUBS32.M2		R2, R36, R39
	|	SMOVIL		.L56, R62
		SMOVIH		.L56, R62
		SMOVIH4.L		.L56, R63
		SFSPDP32T.M2		R39, R37:R36
		SNOP		1
	;; call to cos occurs, with return value
		SMOV.M2		R37, R11
	|	SMOV.M1		R36, R10
.L56:
		SLDW		*+AR15[5], R42
	|	SMOVIL		1073741824, R55
		SLDW		*+AR15[4], R43
	|	SMOVIH		1073741824, R55
		SNOP		5
		SFDPSP32.M2		R43:R42, R48
		SNOP		2
		SFRCPS32.M2		R48, R35
		SFMULS32.M2		R48, R35, R54
		SNOP		3
		SFSUBS32.M2		R54, R55, R57
		SNOP		2
		SFMULS32.M2		R35, R57, R58
		SNOP		3
		SFMULS32.M2		R48, R58, R56
		SNOP		3
		SFSUBS32.M2		R56, R55, R59
		SNOP		2
		SFMULS32.M2		R58, R59, R60
		SNOP		3
		SFMULS32.M2		R34, R60, R61
		SNOP		3
		SFSPDP32T.M2		R61, R31:R30
		SNOP		1
		SFMULD.M2		R11:R10, R31:R30, R43:R42
		SNOP		1
		SMOV.M2		R37, R11
	|	SMOV.M1		R36, R10
		SBR		sin
		SMOVIL		.L57, R62
		SMOVIH		.L57, R62
		SFDPSP32.M2		R43:R42, R37
	|	SMOVIH4.L		.L57, R63
		SNOP		2
	;; call to sin occurs, with return value
		SSTW		R37, *+AR15[22]
.L57:
		SLDW		*+AR15[16], R3
	|	SFMULD.M2		R31:R30, R11:R10, R35:R34
	|	SMOVIL		8, R14
		SADD.LS		AR15,88,OR14
	|	SMOVIL		0, R15
		SNOP		1
		SLDW		*+AR15[20], R51
	|	SMVAAGL.M1		OR14, R11:R10
		SNOP		1
		SBR		M7002_datatrans
	|	SMVAAGH.M1		OR14, R11:R10
		SADD.M2		R32,R3,R12
	|	SFDPSP32.M1		R35:R34, R47
	|	SMOVIL		.L58, R62
		SMOVIH		.L58, R62
		SMOVIH4.L		.L58, R63
		SLTU		R12, R32, R8
	|	SADD.M2		R33,R51,R9
	|	SSTW		R47, *+AR15[23]
	|	SADD.M1		-1,R33,R33
		SADD.M2		R9,R8,R13
		SNOP		1
	;; call to M7002_datatrans occurs, with return value
	;no-op trunc di R13:R12 to pdi R13:R12
.L58:
		SLDW		*+AR15[2], R31
	|	SADD.M2		-8,R32,R13
	|	SADD.M1		-1,R41,R14
		SLTU		R13, R32, R46
	|	SLDW		*+AR15[10], R32
		SLTU		R14, R41, R42
	|	SLDW		*+AR15[3], R16
	|	SADD.M2		R33,R46,R33
		SMOVIL		0, R41
		SNOP		2
		SADD.M2		-1,R31,R12
		SSHFLL		16, R12, R15
	|	SADD.M2		-1,R32,R44
	|	SMOV.M1		R12, R48
		SLT		R15, R41, R0
	|	SADD.M2		R44,R42,R49
	|	SMOV.M1		R13, R32
	[!R0]	SBR		.L25
	|	SMOV.M2		R14, R41
	|	SSTW		R49, *+AR15[10]
		SNOP		6
	;; condjump to .L25 occurs
.L43:
		SMOVIL		576, R6
	|	SLDDW		*+AR15[29], R63:R62
		SMOVIL		0, R7
	|	SLDDW		*+AR15[20], R31:R30
		SADDA.M2		R7:R6,AR7,AR7
		SLDDW		*+AR15[26], R7:R6
	|	SMOVIL		0, R10
		SLDDW		*+AR15[21], R33:R32
		SNOP		1
		SMVCGC.L		R63, BRReg
		SLDDW		*+AR15[22], R35:R34
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
		SLDDW		*+AR15[27], R7:R6
		SLDDW		*+AR15[23], R37:R36
		SNOP		1
		SLDDW		*+AR15[24], R39:R38
		SLDDW		*+AR15[25], R41:R40
		SNOP		1
		SMVAGA36.M2		R7:R6, OR8
		SLDDW		*+AR15[28], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR9
	|	SLDDW		*+AR15[30], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		248, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.L45:
		SBR		.L16
	|	SLDH		*+AR15[32], R28
		SNOP		6
	;; jump to .L16 occurs
	.size	DSPF_sp_qrd_solver_cmplx_v1, .-DSPF_sp_qrd_solver_cmplx_v1
