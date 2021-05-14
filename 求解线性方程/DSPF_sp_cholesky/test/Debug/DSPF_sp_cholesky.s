	.file	"DSPF_sp_cholesky.c"
.text;
.Ltext0:
	.section	.text.DSPF_sp_cholesky,"ax",@progbits
	.align	2
	.global	DSPF_sp_cholesky
	.type	DSPF_sp_cholesky, @function
DSPF_sp_cholesky:
.LFB3:
	.file 1 "../DSPF_sp_cholesky.c"
	.loc 1 3 0
.LVL0:
		SMOVIL		-144, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[16]
.LCFI1:
		SMVAAGH.M2		AR14, R7:R6
	|	SSTDW		R37:R36, *+AR15[10]
	.loc 1 8 0
		SSHFAR		31, R10, R36
		SMOV.M2		R36, R11
	.loc 1 3 0
		SSTDW		R7:R6, *+AR15[17]
.LCFI2:
		SMVAAGL.M2		OR9, R7:R6
	|	SSTDW		R41:R40, *+AR15[12]
		SNOP		1
		SMVAAGH.M2		OR9, R7:R6
		SSTDW		R39:R38, *+AR15[11]
		SSTDW		R7:R6, *+AR15[15]
.LCFI3:
		SMVAAGL.M2		OR8, R7:R6
	|	SMOV.M1		R10, R39
		SSHFLL		2, R39, R38
.LCFI4:
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R15:R14, OR8
	|	SSTDW		R31:R30, *+AR15[7]
		SSTDW		R35:R34, *+AR15[9]
		SMOVIL		-64, R30
		SMOVIL		-1, R31
.LCFI5:
	.loc 1 8 0
		SBR		calloc
	|	SSTDW		R7:R6, *+AR15[14]
	.loc 1 3 0
		SSTDW		R33:R32, *+AR15[8]
	|	SMOVIL		.L27, R62
.LCFI6:
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L27, R62
		SMOVIH4.L		.L27, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R13:R12, AR8
	|	SMOVIL		4, R12
.LVL1:
	.loc 1 8 0
		SMOVIL		0, R13
.LCFI7:
	;; call to calloc occurs, with return value
		SSTDW		R7:R6, *+AR15[13]
.LVL2:
.L27:
	.loc 1 14 0
		SMOVIL		0, R1
	|	SMVAGA36.M1		R11:R10, OR0
	|	SADD.M2		-1,R39,R42
		SLT		R1, R39, R0
	|	SMVAGA36.M1		R11:R10, OR9
	|	SADD.M2		1,R39,R3
.LVL3:
	[!R0]	SBR		.L2
	|	SADDA.M2		-4,OR0,AR0
	|	SSHFLL		2, R42, R2
	|	SMVAAA.M1		AR8, OR0
	.loc 1 10 0
		SSTW		R2, *+AR15[11]
	|	SLTU		R3, R39, R45
	|	SMVAAGL.M1		AR8, R33:R32
.LVL4:
	.loc 1 3 0
		SADDA.M2		R31:R30,OR0,AR2
	|	SMVAAA.M1		OR8, OR0
	|	SSHFLL		1, R3, R8
		SMVAAGL.M1		AR0, R47:R46
	|	SSHFLL		1, R39, R43
		SADDA.M2		R31:R30,OR0,OR1
	|	SSHFLL		1, R36, R15
	|	SMVAAGH.M1		AR8, R33:R32
		SMVAAGH.M1		AR0, R47:R46
	|	SLTU		R43, R39, R12
	[R0]	SMVAAGL.M1		AR2, R35:R34
	|	SMOVIL		0, R24
	;; condjump to .L2 occurs
		SSTW		R3, *+AR15[5]
	|	SADD.M2		R36,R45,R9
	|	SMVAAGL.M1		OR1, R31:R30
	|	SMOVIL		0, R25
		SSTDW		R47:R46, *+AR15[6]
	|	SSHFLL		1, R9, R11
	|	SMVAAGH.M1		AR2, R35:R34
	|	SADD.M2		R15,R12,R17
		SLTU		R38, R43, R21
	|	SMVAAGH.M1		OR1, R31:R30
	|	SMOV.M2		R39, R1
		SSHFLL		1, R17, R23
	|	SMOV.M2		R34, R36
		SLDW		*+AR15[5], R47
	|	SADD.M2		R23,R21,R37
		SSTW		R35, *+AR15[4]
		SSTW		R24, *+AR15[7]
		SNOP		3
		SSHFAR		31, R47, R41
	|	SSTW		R25, *+AR15[6]
		SLTU		R8, R47, R44
		SSHFLL		1, R41, R10
	|	SADD.M2		R11,R44,R14
.LVL5:
		SSHFLL		2, R47, R16
	|	SADD.M2		R10,R44,R13
		SLTU		R16, R8, R18
	|	SSTW		R16, *+AR15[8]
		SSHFLL		1, R14, R40
		SSHFLL		1, R13, R19
	|	SADD.M2		R40,R18,R22
		SADD.M2		R19,R18,R20
	|	SSTW		R22, *+AR15[10]
	|	SMOVIL		65535, R40
		SSTW		R20, *+AR15[9]
	|	SMOVIL		0, R41
.LBB2:
	.loc 1 33 0
		SMOVIH		65535, R40
.LVL6:
.L20:
	.loc 1 15 0
		SBR		vsip_mfill_f_v
	|	SSTW		R1, *+AR15[2]
	|	SMOV.M1		R39, R14
	|	SMVAAGL.M2		OR8, R13:R12
	|	SMOVIL		0, R10
		SMOVIL		.L28, R62
		SMVAAGH.M2		OR8, R13:R12
	|	SMOVIH		.L28, R62
		SMOVIH4.L		.L28, R63
		SMOVIH		0, R10
	;; call to vsip_mfill_f_v occurs
		SNOP		2
.LVL7:
.L28:
	.loc 1 16 0
		SMOVIL		0, R26
	|	SLDW		*+AR15[2], R0
		SLT		R26, R41, R1
	[R1]	SBR		.L3
		SNOP		6
	;; condjump to .L3 occurs
		SMOV.M2		R0, R10
	|	SLT		R26, R0, R15
.L4:
.LVL8:
	.loc 1 48 0
		SMOVIL		15, R46
	|	SMOV.M2		R15, R2
	|	SADD.M1		-1,R33,R52
		SLT		R46, R0, R1
	|[!R2]	SBR		.L14
	|	SMOV.M2		R34, R46
	|	SMOV.M1		R35, R47
	.loc 1 3 0
		SMOVIL		-64, R57
	|	SMOV.M2		R30, R44
	|	SMOV.M1		R31, R45
		SADD.M2		R57,R32,R54
	|	SMOVIL		0, R56
		SLTU		R54, R32, R53
	|	SMOV.M2		R54, R42
		SADD.M2		R52,R53,R43
		SNOP		2
	.loc 1 47 0
	;; condjump to .L14 occurs
	.loc 1 48 0
	[!R1]	SBR		.L24
		SNOP		6
	;; condjump to .L24 occurs
.LVL9:
.L19:
		SMOVIL		64, R3
	|	SADD.M2		-16,R10,R10
	|	SADD.M1		1,R56,R56
.LVL10:
		SADD.M2		R3,R44,R55
	|	SADD.M1		R3,R46,R61
	|	SMOVIL		0, R17
		SLTU		R55, R44, R60
	|	SMOV.M2		R55, R44
	|	SADD.M1		R3,R42,R9
		SLTU		R61, R46, R58
	|	SADD.M2		R45,R60,R45
	|	SMOV.M1		R61, R46
		SADD.M2		R47,R58,R47
	|	SMVAGA36.M1		R45:R44, AR2
	|	SMOVIL		15, R18
	.loc 1 3 0
		SMVAGA36.M1		R47:R46, AR0
	|	SLT		R17, R10, R1
	.loc 1 49 0
		VLDW.LS 		*AR2,VR2
	|	SLT		R18, R10, R2
		VLDW.LS 		*AR0,VR6
	|	SLTU		R9, R42, R16
	|	SMOV.M2		R9, R42
		SADD.M2		R43,R16,R43
	.loc 1 3 0
		SMVAGA36.M1		R43:R42, AR0
		SNOP		2
	.loc 1 47 0
	[!R1]	SBR		.L14
		SNOP		2
	.loc 1 49 0
		VFSUBS32.M1		VR2,VR6,VR7
		SNOP		2
		VSTW.LS 		VR7,*AR0
	;; condjump to .L14 occurs
	.loc 1 48 0
	[R2]	SBR		.L19
		SNOP		6
	;; condjump to .L19 occurs
.LVL11:
	.loc 1 54 0
		SMOVIL		16, R42
		SSUB.M2		R10, R42, R10
	|	SSHFLL		4, R56, R47
.LVL12:
		SSHFAR		R10, R40, R43
	.loc 1 55 0
		SMVCGC.L		R43, VLR
		SNOP		2
	.loc 1 58 0
		SLDW		*+AR15[7], R19
	|	SADD.M1		R47,R41,R45
	|	SMVAAA.M2		OR8, OR0
	.loc 1 56 0
		SLDW		*+AR15[6], R44
	|	SSHFLL		1, R45, R21
	.loc 1 57 0
		SSHFAR		31, R45, R24
		SLTU		R21, R45, R26
		SSHFLL		1, R24, R27
		SSHFLL		2, R45, R46
	|	SADD.M2		R27,R26,R29
	.loc 1 58 0
		SADD.M2		R47,R19,R20
	|	SLTU		R46, R21, R50
		SSHFLL		1, R20, R23
	|	SADD.M2		R47,R44,R22
		SSHFAR		31, R20, R25
		SLTU		R23, R20, R28
		SSHFLL		1, R25, R48
	.loc 1 57 0
		SSHFLL		1, R29, R51
	|	SADD.M2		R48,R28,R49
	.loc 1 58 0
		SSHFLL		2, R20, R44
	|	SADD.M2		R51,R50,R47
		SLTU		R44, R23, R12
	;no-op trunc di R47:R46 to pdi R47:R46
	|	SADDA.M2		R47:R46,OR0,AR2
	|	SMVAAA.M1		AR8, OR0
		SSHFLL		1, R49, R14
		SADD.M1		R14,R12,R45
	|	SSHFLL		1, R22, R11
	.loc 1 56 0
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M2		R45:R44,OR0,AR0
	|	VLDW.LS 		*AR2,VR8
	|	SSHFAR		31, R22, R13
		SLTU		R11, R22, R46
		SSHFLL		1, R13, R47
		VLDW.LS 		*AR0,VR9
	|	SSHFLL		2, R22, R42
	|	SADD.M2		R47,R46,R52
		SLTU		R42, R11, R57
		SSHFLL		1, R52, R54
		SADD.M2		R54,R57,R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,OR0,AR0
		SNOP		3
		VFSUBS32.M1		VR8,VR9,VR10
		SNOP		2
		VSTW.LS 		VR10,*AR0
	|	SMVCGC.L		R40, VLR
	.loc 1 59 0
		SNOP		2
.LVL13:
.L14:
		SLDW		*+AR15[6], R3
	|	SMVAGA36.M2		R33:R32, AR14
	|	SADD.M1		-1,R0,R53
	|	SMOVIL		1, R14
		SLDW		*+AR15[5], R55
	|	SADD.M1		1,R41,R41
		SLDW		*+AR15[7], R60
	|	SMVAAGL.M1		AR14, R13:R12
	|	SMVAAGL.M2		AR14, R11:R10
	.loc 1 65 0
		SNOP		1
		SMVAAGH.M1		AR14, R13:R12
	|	SMVAAGH.M2		AR14, R11:R10
		SNOP		2
		SBR		vsip_vsqrt_f_v
	|	SADD.M2		R55,R3,R61
		SADD.M2		R55,R60,R59
	|	SSTW		R61, *+AR15[6]
	|	SMOVIL		.L29, R62
		SSTW		R59, *+AR15[7]
	|	SMOVIH		.L29, R62
		SMOVIH4.L		.L29, R63
		SNOP		1
		SSTW		R53, *+AR15[2]
	;; call to vsip_vsqrt_f_v occurs
		SSTW		R53, *+AR15[3]
.LVL14:
.L29:
	.loc 1 67 0
		SMVAAA.M2		AR14, AR0
	|	SADD.M1		4,R32,R8
	.loc 1 3 0
		SLTU		R8, R32, R58
	|	SMOV.M1		R8, R10
	.loc 1 67 0
		VLDW.LS 		*AR0,VR11
	|	SADD.M2		R33,R58,R15
	|	SLDW		*+AR15[3], R16
	.loc 1 3 0
		SMOV.M2		R15, R11
	;no-op trunc di R11:R10 to pdi R11:R10
	.loc 1 72 0
		SMVAGA36.M2		R11:R10, OR11
		SNOP		1
		SMVAAGL.M2		OR11, R15:R14
		SNOP		1
		SBR		vsip_vsdiv_f_v
	|	SMVAAGH.M2		OR11, R15:R14
		SMOVIL		.L30, R62
	.loc 1 67 0
		VMVCGC.L		VR11,SVR
	|	SMOVIH		.L30, R62
		SMOVIH4.L		.L30, R63
		SNOP		1
	.loc 1 69 0
		SMVCCG.L		SVR0,R12
	.loc 1 72 0
	;; call to vsip_vsdiv_f_v occurs
		SNOP		1
.LVL15:
.L30:
		SADD.M2		4,R30,R1
	|	SLDW		*+AR15[8], R16
	|	SADD.M1		4,R36,R2
		SLTU		R1, R30, R42
	|	SLDW		*+AR15[10], R30
		SLDW		*+AR15[4], R45
	|	SLTU		R2, R36, R43
	|	SADD.M2		R31,R42,R31
	|	SMOV.M1		R2, R36
		SNOP		3
		SADD.M2		R32,R16,R17
	|	SADD.M1		R34,R16,R18
		SADD.M2		R35,R30,R35
	|	SMOV.M1		R1, R30
	|	SLTU		R17, R32, R0
.LBE2:
	.loc 1 14 0
		SLDW		*+AR15[2], R1
	|	SLTU		R18, R34, R10
	|	SADD.M2		R45,R43,R19
	|	SMOV.M1		R18, R34
		SLDW		*+AR15[9], R32
	|	SADD.M2		R35,R10,R35
		SSTW		R19, *+AR15[4]
		SNOP		3
	[R1]	SBR		.L20
		SADD.M2		R33,R32,R33
	|	SMOV.M1		R17, R32
		SADD.M2		R33,R0,R33
		SNOP		4
	;; condjump to .L20 occurs
.L2:
	.loc 1 81 0
		SLDDW		*+AR15[13], R7:R6
	|	SMVAAGL.M2		OR9, R11:R10
		SLDDW		*+AR15[7], R31:R30
	.loc 1 80 0
		SMVAAGH.M2		OR9, R11:R10
	|	SLDDW		*+AR15[8], R33:R32
	.loc 1 81 0
		SLDDW		*+AR15[9], R35:R34
		SLDDW		*+AR15[10], R37:R36
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
		SNOP		3
.LVL16:
		SLDDW		*+AR15[14], R7:R6
		SLDDW		*+AR15[11], R39:R38
		SLDDW		*+AR15[12], R41:R40
		SLDDW		*+AR15[16], R63:R62
		SNOP		2
		SMVAGA36.M2		R7:R6, OR8
		SNOP		2
.LVL17:
		SLDDW		*+AR15[15], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR9
	|	SLDDW		*+AR15[17], R7:R6
.LVL18:
		SNOP		2
	.loc 1 80 0
		SBR		free
		SNOP		2
	.loc 1 81 0
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		144, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	.loc 1 80 0
	;; sibcall to free occurs
		SNOP		1
.LVL19:
.L3:
.LBB4:
.LBB3:
	.loc 1 3 0
		SLDW		*+AR15[4], R29
	|	SMOVIL		64, R27
	|	SMVAAGL.M2		OR9, R13:R12
	|	SADD.M1		-1,R41,R14
	.loc 1 19 0
		SBR		M7002_datatrans_index
	|	SADD.M1		R27,R36,R10
	|	SMOVIL		1, R16
	|	SSTW		R0, *+AR15[2]
		SMVAAGH.M2		OR9, R13:R12
	|	SLDW		*+AR15[11], R18
	|	SMOVIL		.L31, R62
		SMOVIH		.L31, R62
		SMOVIH4.L		.L31, R63
	.loc 1 3 0
		SLTU		R10, R36, R28
		SADD.M2		R29,R28,R11
		SNOP		1
	.loc 1 19 0
	;; call to M7002_datatrans_index occurs, with return value
	;no-op trunc di R11:R10 to pdi R11:R10
.LVL20:
.L31:
		SLDW		*+AR15[2], R0
	|	SMOVIL		0, R12
	|	SMOV.M2		R36, R11
	|	SMOV.M1		R41, R14
		SLDDW		*+AR15[6], R47:R46
	|	SMOVIL		15, R48
.LBE3:
.LBE4:
	.loc 1 3 0
		SLDW		*+AR15[4], R13
	|	SMOVIL		16, R17
.LBB5:
	.loc 1 33 0
		SNOP		3
		SMOV.M2		R0, R10
	|	SLT		R12, R0, R15
	.loc 1 26 0
		SLT		R48, R0, R16
.LVL21:
.L12:
		SADD.M2		4,R46,R49
	|	SMOV.M1		R15, R2
	|	SMOVIL		0, R53
		SLTU		R49, R46, R51
	|	SMOV.M2		R49, R46
	|	SMOV.M1		R16, R1
	|[!R2]	SBR		.L6
		SADD.M2		R47,R51,R47
	|	SMOV.M1		R11, R42
	.loc 1 3 0
		SMVAGA36.M2		R47:R46, AR10
	|	SMOV.M1		R30, R44
	.loc 1 26 0
		SMOV.M1		R31, R45
	.loc 1 22 0
	[R2]	SLDW		*AR10, R52
	|	SMOV.M2		R0, R54
	|	SMOV.M1		R13, R43
	.loc 1 26 0
		SNOP		2
	.loc 1 25 0
	;; condjump to .L6 occurs
	.loc 1 26 0
	[!R1]	SBR		.L25
		SNOP		2
	.loc 1 22 0
		SVBCAST.M2 		 R52,VR5
		SNOP		3
.LVL22:
	.loc 1 26 0
	;; condjump to .L25 occurs
.LVL23:
.L11:
		SMOVIL		64, R55
	|	SADD.M2		-16,R54,R54
	|	SADD.M1		1,R53,R53
.LVL24:
		SADD.M2		R55,R42,R56
	|	SADD.M1		R55,R44,R3
	|	SMOVIL		0, R8
		SLTU		R56, R42, R61
	|	SMOV.M2		R56, R42
		SLTU		R3, R44, R59
	|	SADD.M2		R43,R61,R43
	|	SMOV.M1		R3, R44
		SADD.M2		R45,R59,R45
	|	SMVAGA36.M1		R43:R42, AR2
	|	SMOVIL		15, R9
	.loc 1 3 0
		SMVAGA36.M1		R45:R44, AR0
	|	SLT		R8, R54, R1
	.loc 1 27 0
		VLDW.LS 		*AR2,VR4
	|	SLT		R9, R54, R2
		VLDW.LS 		*AR0,VR3
		SNOP		7
	.loc 1 25 0
	[!R1]	SBR		.L6
	|	VFMULAS32.M3	VR5,VR4,VR3,VR3
	.loc 1 27 0
		SNOP		5
		VSTW.LS 		VR3,*AR0
	;; condjump to .L6 occurs
	.loc 1 26 0
	[R2]	SBR		.L11
		SNOP		6
	;; condjump to .L11 occurs
.LVL25:
	.loc 1 33 0
		SSUB.M2		R54, R17, R42
	|	SSHFLL		4, R53, R57
		SSHFAR		R42, R40, R43
	.loc 1 34 0
		SMVCGC.L		R43, VLR
		SNOP		2
	.loc 1 38 0
		SADD.M2		R57,R41,R45
	|	SADD.M1		R57,R14,R18
		SSHFLL		1, R45, R19
	|	SMVAAA.M2		OR8, OR0
		SSHFAR		31, R45, R44
		SLTU		R19, R45, R22
		SSHFLL		1, R44, R23
	.loc 1 37 0
		SSHFLL		1, R18, R20
	|	SADD.M2		R23,R22,R25
	.loc 1 38 0
		SSHFLL		2, R45, R44
	.loc 1 37 0
		SSHFAR		31, R18, R21
	.loc 1 38 0
		SLTU		R44, R19, R28
	.loc 1 37 0
		SLTU		R20, R18, R24
		SSHFLL		1, R21, R26
	.loc 1 38 0
		SSHFLL		1, R25, R48
	|	SADD.M2		R26,R24,R27
	.loc 1 37 0
		SSHFLL		2, R18, R42
	|	SADD.M2		R48,R28,R45
		SLTU		R42, R20, R29
	;no-op trunc di R45:R44 to pdi R45:R44
	|	SADDA.M2		R45:R44,OR0,AR0
	|	SMVAAA.M1		AR8, OR0
		SSHFLL		1, R27, R49
		SADD.M1		R49,R29,R43
	.loc 1 35 0
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,OR0,AR2
	|	VLDW.LS 		*AR0,VR0
		SNOP		2
		VLDW.LS 		*AR2,VR1
		SNOP		7
		VFMULAS32.M3	VR5,VR1,VR0,VR0
		SNOP		5
		VSTW.LS 		VR0,*AR0
	|	SMVCGC.L		R40, VLR
	.loc 1 39 0
		SNOP		2
.LVL26:
.L6:
	.loc 1 21 0
		SADD.M2		1,R12,R12
	|	SADD.M1		R38,R11,R50
.LVL27:
		SEQ		R41, R12, R1
	|	SADD.M2		R37,R13,R13
	|	SADD.M1		R39,R14,R14
	[!R1]	SBR		.L12
	|	SLTU		R50, R11, R51
	|	SMOV.M2		R50, R11
		SADD.M2		R13,R51,R13
		SNOP		5
	;; condjump to .L12 occurs
		SBR		.L4
		SNOP		6
	;; jump to .L4 occurs
.LVL28:
.L25:
	.loc 1 24 0
		SMOV.M2		R0, R54
	|	SMOVIL		0, R57
.LVL29:
	.loc 1 33 0
		SSUB.M2		R54, R17, R42
		SSHFAR		R42, R40, R43
	.loc 1 34 0
		SMVCGC.L		R43, VLR
		SNOP		2
	.loc 1 38 0
		SADD.M2		R57,R41,R45
	|	SADD.M1		R57,R14,R18
		SSHFLL		1, R45, R19
	|	SMVAAA.M2		OR8, OR0
		SSHFAR		31, R45, R44
		SLTU		R19, R45, R22
		SSHFLL		1, R44, R23
	.loc 1 37 0
		SSHFLL		1, R18, R20
	|	SADD.M2		R23,R22,R25
	.loc 1 38 0
		SSHFLL		2, R45, R44
	.loc 1 37 0
		SSHFAR		31, R18, R21
	.loc 1 38 0
		SLTU		R44, R19, R28
	.loc 1 37 0
		SLTU		R20, R18, R24
		SSHFLL		1, R21, R26
	.loc 1 38 0
		SSHFLL		1, R25, R48
	|	SADD.M2		R26,R24,R27
	.loc 1 37 0
		SSHFLL		2, R18, R42
	|	SADD.M2		R48,R28,R45
		SLTU		R42, R20, R29
	;no-op trunc di R45:R44 to pdi R45:R44
	|	SADDA.M2		R45:R44,OR0,AR0
	|	SMVAAA.M1		AR8, OR0
		SSHFLL		1, R27, R49
		SADD.M1		R49,R29,R43
	.loc 1 35 0
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,OR0,AR2
	|	VLDW.LS 		*AR0,VR0
		SNOP		2
		VLDW.LS 		*AR2,VR1
		SNOP		7
		VFMULAS32.M3	VR5,VR1,VR0,VR0
		SNOP		1
		SBR		.L6
		SNOP		3
		VSTW.LS 		VR0,*AR0
	|	SMVCGC.L		R40, VLR
	.loc 1 39 0
		SNOP		2
	;; jump to .L6 occurs
.LVL30:
.L24:
	.loc 1 54 0
		SMOVIL		16, R42
		SSUB.M2		R10, R42, R10
	|	SMOVIL		0, R47
		SSHFAR		R10, R40, R43
	.loc 1 55 0
		SMVCGC.L		R43, VLR
		SNOP		2
	.loc 1 58 0
		SLDW		*+AR15[7], R19
	|	SADD.M1		R47,R41,R45
	|	SMVAAA.M2		OR8, OR0
	.loc 1 56 0
		SLDW		*+AR15[6], R44
	|	SSHFLL		1, R45, R21
	.loc 1 57 0
		SSHFAR		31, R45, R24
		SLTU		R21, R45, R26
		SSHFLL		1, R24, R27
		SSHFLL		2, R45, R46
	|	SADD.M2		R27,R26,R29
	.loc 1 58 0
		SADD.M2		R47,R19,R20
	|	SLTU		R46, R21, R50
		SSHFLL		1, R20, R23
	|	SADD.M2		R47,R44,R22
		SSHFAR		31, R20, R25
		SLTU		R23, R20, R28
		SSHFLL		1, R25, R48
	.loc 1 57 0
		SSHFLL		1, R29, R51
	|	SADD.M2		R48,R28,R49
	.loc 1 58 0
		SSHFLL		2, R20, R44
	|	SADD.M2		R51,R50,R47
		SLTU		R44, R23, R12
	;no-op trunc di R47:R46 to pdi R47:R46
	|	SADDA.M2		R47:R46,OR0,AR2
	|	SMVAAA.M1		AR8, OR0
		SSHFLL		1, R49, R14
		SADD.M1		R14,R12,R45
	|	SSHFLL		1, R22, R11
	.loc 1 56 0
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M2		R45:R44,OR0,AR0
	|	VLDW.LS 		*AR2,VR8
	|	SSHFAR		31, R22, R13
		SLTU		R11, R22, R46
		SSHFLL		1, R13, R47
		VLDW.LS 		*AR0,VR9
	|	SSHFLL		2, R22, R42
	|	SADD.M2		R47,R46,R52
		SLTU		R42, R11, R57
		SSHFLL		1, R52, R54
		SADD.M2		R54,R57,R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,OR0,AR0
		SNOP		2
		SBR		.L14
		VFSUBS32.M1		VR8,VR9,VR10
		SNOP		2
		VSTW.LS 		VR10,*AR0
	|	SMVCGC.L		R40, VLR
	.loc 1 59 0
		SNOP		2
	;; jump to .L14 occurs
.LBE5:
.LFE3:
	.size	DSPF_sp_cholesky, .-DSPF_sp_cholesky
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
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.byte	0x90,0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0xb4
	.byte	0x10
	.byte	0xb5
	.byte	0xf
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x8e
	.byte	0x2
	.byte	0xb8
	.byte	0xc
	.byte	0xb9
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xb6
	.byte	0xe
	.byte	0xb7
	.byte	0xd
	.byte	0x5
	.byte	0x59
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xae
	.byte	0x16
	.byte	0xaf
	.byte	0x15
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xb2
	.byte	0x12
	.byte	0xb3
	.byte	0x11
	.byte	0x5
	.byte	0x58
	.byte	0x8
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xb0
	.byte	0x14
	.byte	0xb1
	.byte	0x13
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x88
	.byte	0xa
	.align	3
.LEFDE0:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x326
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSPF_sp_cholesky.c"
	.string	"/cygdrive/e/FT-M700/project/t/Debug"
	.4byte	.Ldebug_ranges0+0x40
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
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
	.byte	0x8
	.byte	0x7
	.string	"sizetype"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.byte	0x3
	.byte	0x1
	.string	"DSPF_sp_cholesky"
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.4byte	0x307
	.byte	0x4
	.string	"order"
	.byte	0x1
	.byte	0x3
	.4byte	0x85
	.4byte	.LLST1
	.byte	0x4
	.string	"L_am"
	.byte	0x1
	.byte	0x3
	.4byte	0x31d
	.4byte	.LLST2
	.byte	0x4
	.string	"t_am"
	.byte	0x1
	.byte	0x3
	.4byte	0x31d
	.4byte	.LLST3
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0x4
	.4byte	0x85
	.4byte	.LLST4
	.byte	0x5
	.string	"j"
	.byte	0x1
	.byte	0x4
	.4byte	0x85
	.4byte	.LLST5
	.byte	0x5
	.string	"k"
	.byte	0x1
	.byte	0x4
	.4byte	0x85
	.4byte	.LLST6
	.byte	0x5
	.string	"temp"
	.byte	0x1
	.byte	0x5
	.4byte	0x307
	.4byte	.LLST7
	.byte	0x5
	.string	"close"
	.byte	0x1
	.byte	0x6
	.4byte	0xba
	.4byte	.LLST8
	.byte	0x5
	.string	"buffer"
	.byte	0x1
	.byte	0x8
	.4byte	0x323
	.4byte	.LLST9
	.byte	0x5
	.string	"increment_src"
	.byte	0x1
	.byte	0xa
	.4byte	0x85
	.4byte	.LLST10
	.byte	0x6
	.string	"increment_dest"
	.byte	0x1
	.byte	0xb
	.4byte	0x85
	.byte	0
	.byte	0x5
	.string	"increment"
	.byte	0x1
	.byte	0xc
	.4byte	0x85
	.4byte	.LLST10
	.byte	0x5
	.string	"len"
	.byte	0x1
	.byte	0xd
	.4byte	0x85
	.4byte	.LLST12
	.byte	0x7
	.4byte	.Ldebug_ranges0+0
	.byte	0x5
	.string	"Ljj_i"
	.byte	0x1
	.byte	0x45
	.4byte	0x85
	.4byte	.LLST13
	.byte	0x5
	.string	"Ljj"
	.byte	0x1
	.byte	0x46
	.4byte	0x314
	.4byte	.LLST13
	.byte	0x8
	.llong	.LBB3
	.llong	.LBE3
	.4byte	0x2bf
	.byte	0x9
	.byte	0x1
	.string	"M7002_datatrans_index"
	.byte	0x1
	.byte	0x13
	.4byte	0x85
	.byte	0x1
	.4byte	0x291
	.byte	0xa
	.byte	0
	.byte	0xb
	.llong	.LVL20
	.byte	0xc
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x5
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x94
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x1
	.byte	0x31
	.byte	0xc
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0x92
	.byte	0x39
	.byte	0x7f
	.byte	0xc
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x59
	.byte	0
	.byte	0
	.byte	0
	.byte	0xd
	.llong	.LVL7
	.4byte	0x2e0
	.byte	0xc
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0x92
	.byte	0x37
	.byte	0
	.byte	0xc
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0xb
	.llong	.LVL14
	.byte	0xc
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x31
	.byte	0xc
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x7e
	.byte	0
	.byte	0xc
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x7e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x1
	.4byte	0x314
	.4byte	0x314
	.byte	0xf
	.byte	0xf
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.byte	0x10
	.byte	0x8
	.4byte	0x307
	.byte	0x10
	.byte	0x8
	.4byte	0x314
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0xa
	.byte	0x91,0x42
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
	.byte	0x21
	.byte	0
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
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
	.llong	.LFB3
	.llong	.LCFI0
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI0
	.llong	.LFE3
	.2byte	0x3
	.byte	0x7f
	.byte	0x90,0x1
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL2-1
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL2-1
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x37
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL1
	.llong	.LVL16
	.2byte	0x1
	.byte	0x58
	.llong	.LVL16
	.llong	.LVL19
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	.LVL19
	.llong	.LFE3
	.2byte	0x1
	.byte	0x58
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL2-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL2-1
	.llong	.LVL17
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL17
	.llong	.LVL19
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	.LVL19
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL20
	.llong	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL27
	.llong	.LVL28
	.2byte	0x1
	.byte	0x6c
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL4
	.llong	.LVL6
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
	.llong	.LVL10
	.llong	.LVL13
	.2byte	0x2
	.byte	0x90
	.byte	0x48
	.llong	.LVL22
	.llong	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL24
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.byte	0x45
	.llong	.LVL28
	.llong	.LFE3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL22
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	.LVL28
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL11
	.llong	.LVL12
	.2byte	0x9
	.byte	0xa
	.2byte	0xffff
	.byte	0x40
	.byte	0x8a
	.byte	0
	.byte	0x1c
	.byte	0x26
	.byte	0x9f
	.llong	.LVL25
	.llong	.LVL26
	.2byte	0xa
	.byte	0xa
	.2byte	0xffff
	.byte	0x40
	.byte	0x92
	.byte	0x46
	.byte	0
	.byte	0x1c
	.byte	0x26
	.byte	0x9f
	.llong	.LVL29
	.llong	.LVL30
	.2byte	0xa
	.byte	0xa
	.2byte	0xffff
	.byte	0x40
	.byte	0x92
	.byte	0x46
	.byte	0
	.byte	0x1c
	.byte	0x26
	.byte	0x9f
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL3
	.llong	.LVL5
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL5
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x59
	.llong	.LVL19
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x59
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL4
	.llong	.LVL6
	.2byte	0x1
	.byte	0x62
	.llong	.LVL6
	.llong	.LFE3
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL8
	.llong	.LVL9
	.2byte	0x1
	.byte	0x60
	.llong	.LVL10
	.llong	.LVL12
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL22
	.llong	.LVL23
	.2byte	0x1
	.byte	0x60
	.llong	.LVL23
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.byte	0x46
	.llong	.LVL28
	.llong	.LFE3
	.2byte	0x1
	.byte	0x60
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL15
	.llong	.LVL15-1
	.2byte	0x1
	.byte	0x6c
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
	.llong	.LBB2
	.llong	.LBE2
	.llong	.LBB4
	.llong	.LBE4
	.llong	.LBB5
	.llong	.LBE5
	.llong	0
	.llong	0
	.llong	.LFB3
	.llong	.LFE3
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
