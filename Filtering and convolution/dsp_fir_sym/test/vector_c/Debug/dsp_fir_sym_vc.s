	.file	"dsp_fir_sym_vc.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSP_fir_sym_vc,"ax",@progbits
	.align	2
	.global	DSP_fir_sym_vc
	.type	DSP_fir_sym_vc, @function
DSP_fir_sym_vc:
.LFB3:
	.file 1 "../dsp_fir_sym_vc.c"
	.loc 1 30 0
	.cfi_startproc
.LVL0:
		SMOVIL		256, R6
	|	SMOV.M2		R16, R19
	|	SADD.M1		-1,R20,R42
		SMOVIL		0, R7
	|	SMVAGA36.M1		R13:R12, AR12
	|	SVBCAST.M2 		 R20,VR12
		SSUBA.L		R7:R6, AR7, AR7
	.loc 1 33 0
		SMOVIL		1075183616, R56
		SNOP		1
	.loc 1 30 0
		SMOVIL		-88, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 88
	.loc 1 33 0
		SMOVIH		1075183616, R56
	.cfi_offset 56, -8
	.cfi_offset 57, -4
		SMOVIL		0, R57
	|	SSTDW		R41:R40, *+AR15[10]
	.cfi_offset 48, -40
	.cfi_offset 49, -36
		SMVAGA36.M2		R57:R56, AR10
	|	SMOVIL		67305985, R43
	|	SSTDW		R33:R32, *+AR15[6]
	.loc 1 34 0
		SMOVIL		1075183620, R56
	|	SMOV.M1		R14, R32
	.loc 1 33 0
		SMOVIH		67305985, R43
	|	SMOV.M2		R15, R33
	.loc 1 30 0
		SSTDW		R31:R30, *+AR15[5]
		SSTDW		R39:R38, *+AR15[9]
	.cfi_offset 46, -48
	.cfi_offset 47, -44
	.cfi_offset 54, -16
	.cfi_offset 55, -12
	.loc 1 34 0
		SMOVIH		1075183620, R56
	|	SMOV.M2		R10, R30
	|	SMOV.M1		R11, R31
		SMOVIL		0, R57
	.loc 1 30 0
		SSTDW		R37:R36, *+AR15[8]
		SSTDW		R35:R34, *+AR15[7]
	.cfi_offset 52, -24
	.cfi_offset 53, -20
	.cfi_offset 50, -32
	.cfi_offset 51, -28
	.loc 1 34 0
		SMOVIL		134678021, R0
		SMOVIH		134678021, R0
	.loc 1 33 0
		SSTW		R43, *AR10
	|	SMVAGA36.M2		R57:R56, AR10
	|	SMOVIL		1075183624, R56
	.loc 1 35 0
		SMOVIH		1075183624, R56
		SMOVIL		0, R57
	.loc 1 34 0
		SSTW		R0, *AR10
	|	SMOVIL		202050057, R1
	|	SMVAGA36.M2		R57:R56, AR10
	.loc 1 36 0
		SMOVIL		1075183628, R56
		SMOVIH		1075183628, R56
		SMOVIL		0, R57
	.loc 1 35 0
		SMOVIH		202050057, R1
		SSTW		R1, *AR10
	|	SMOVIL		269422093, R2
	|	SMVAGA36.M2		R57:R56, AR10
	.loc 1 37 0
		SMOVIL		1075183632, R56
		SMOVIH		1075183632, R56
		SMOVIL		0, R57
	.loc 1 36 0
		SMOVIH		269422093, R2
		SSTW		R2, *AR10
	|	SMOVIL		100992003, R3
	|	SMVAGA36.M2		R57:R56, AR10
	.loc 1 38 0
		SMOVIL		1075183636, R56
	.loc 1 37 0
		SMOVIH		100992003, R3
	.loc 1 38 0
		SMOVIH		1075183636, R56
	|	SSTW		R3, *AR10
		SMOVIL		0, R57
		SMVAGA36.M2		R57:R56, AR10
	|	SMOVIL		168364039, R8
	.loc 1 39 0
		SMOVIL		1075183640, R56
		SMOVIH		1075183640, R56
		SMOVIL		0, R57
	.loc 1 38 0
		SMOVIH		168364039, R8
		SSTW		R8, *AR10
	|	SMOVIL		235736075, R9
	|	SMVAGA36.M2		R57:R56, AR10
	.loc 1 40 0
		SMOVIL		1075183644, R56
		SMOVIH		1075183644, R56
		SMOVIL		0, R57
	.loc 1 39 0
		SMOVIH		235736075, R9
		SSTW		R9, *AR10
	|	SMVAGA36.M2		R57:R56, AR10
	|	SMOVIL		0, R57
	.loc 1 62 0
		SLT		R57, R16, R0
	[!R0]	SBR		.L18
	|	SMOVIL		1, R16
.LVL1:
	.loc 1 43 0
		SSHFLL		R42, R16, R17
.LVL2:
	.loc 1 103 0
		SMOVIL		0, R43
	|	SVBCAST.M2 		 R17,VR11
		SMOVIL		128, R42
		SADDA.M1		R43:R42,AR7,AR6
	|	SMOVIL		303108111, R12
.LVL3:
	.loc 1 40 0
		SMOVIH		303108111, R12
		SSTW		R12, *AR10
	|	SMOVIL		32, R56
	;; condjump to .L18 occurs
	.loc 1 104 0
		SMOVIL		0, R57
	.loc 1 41 0
		SMOVIL		0, R13
	|	SADDA.M2		R57:R56,AR6,AR1
		SSHFLL		1, R19, R3
	.loc 1 67 0
		SMOVIL		192, R42
	|	SADD.M1		1,R3,R40
		SMOVIL		0, R43
	.loc 1 62 0
		SMOVIL		0, R56
	|	SADDA.M2		R43:R42,AR7,AR5
		SMOVIL		0, R57
	.loc 1 41 0
		SMVCGC.L		R13, SMR
	|	SSTDW		R57:R56, *+AR15[1]
		SSHFAR		31, R3, R25
		SNOP		1
		SLTU		R40, R3, R41
	.loc 1 62 0
		SMOVIL		0, R38
	|	SADD.M2		R25,R41,R12
		SLT		R38, R18, R37
.LVL4:
.L6:
	.loc 1 23 0
		SLDDW		*+AR15[1], R61:R60
	|	SSHFAR		2, R38, R26
	|	SMVAGA36.M1		R11:R10, OR0
	|	SMOV.M2		R37, R1
	.loc 1 85 0
		SADD.M2		1,R26,R28
	|	SLDW		*+AR15[2], R27
		SSHFLL		2, R28, R35
	|	SLDW		*+AR15[3], R36
	|	SMOV.M2		R32, R42
	|	SMOV.M1		R33, R43
		SSUB.M2		R35, R40, R39
	|	SSHFAR		31, R35, R44
		SLTU		R40, R39, R46
	|	SSUB.M2		R44, R12, R49
		SSHFLL		1, R39, R56
	|	SSUB.M2		R46, R49, R51
	.loc 1 23 0
	;no-op trunc di R61:R60 to pdi R61:R60
		SADDA.M2		R61:R60,AR12,AR10
	|	SLTU		R56, R39, R50
	.loc 1 85 0
		SSHFLL		1, R51, R52
	|	SADD.M1		R30,R27,R58
	.loc 1 63 0
		SLDH		*AR10, R45
	|	SADD.M2		R52,R50,R57
	|	SLTU		R58, R27, R34
	|	SADD.M1		R31,R36,R59
	.loc 1 68 0
		SLDH		*+AR10[1], R61
	;no-op trunc di R57:R56 to pdi R57:R56
	|	SADDA.M2		R57:R56,OR0,AR0
	|	SADD.M1		R59,R34,R59
	|	SMOVIL		0, R34
	.loc 1 73 0
		SLDH		*+AR10[2], R47
	|	SMVAGA36.M1		R59:R58, AR2
	.loc 1 78 0
		SLDH		*+AR10[3], R48
		SNOP		5
	.loc 1 63 0
		SSTH		R45, *+AR15[12]
	.loc 1 64 0
		SSTH		R45, *+AR15[13]
		SNOP		2
	.loc 1 65 0
		SLDW		*+AR15[6], R53
		SNOP		5
		SVBCAST.M2 		 R53,VR3
		SNOP		3
.LVL5:
		VSTW.LS 		VR3,*+AR7[48]
.LVL6:
	.loc 1 67 0
		VLDH.LS 		*AR5,VR5
	|	SSTH		R61, *+AR15[14]
.LVL7:
	.loc 1 69 0
		SSTH		R61, *+AR15[15]
		SNOP		2
	.loc 1 70 0
		SLDW		*+AR15[7], R54
		SNOP		5
		SVBCAST.M2 		 R54,VR0
		SNOP		3
.LVL8:
		VSTW.LS 		VR0,*+AR7[48]
.LVL9:
	.loc 1 71 0
		VLDH.LS 		*AR5,VR6
	|	SSTH		R47, *+AR15[16]
.LVL10:
	.loc 1 74 0
		SSTH		R47, *+AR15[17]
		SNOP		2
	.loc 1 75 0
		SLDW		*+AR15[8], R55
		SNOP		5
		SVBCAST.M2 		 R55,VR1
		SNOP		3
.LVL11:
		VSTW.LS 		VR1,*+AR7[48]
.LVL12:
	.loc 1 76 0
		VLDH.LS 		*AR5,VR7
	|	SSTH		R48, *+AR15[18]
.LVL13:
	.loc 1 79 0
		SSTH		R48, *+AR15[19]
		SNOP		2
	.loc 1 80 0
		SLDW		*+AR15[9], R56
		SNOP		3
	.loc 1 88 0
	[!R1]	SBR		.L11
		SNOP		1
	.loc 1 80 0
		SVBCAST.M2 		 R56,VR2
		SNOP		3
.LVL14:
		VSTW.LS 		VR2,*+AR7[48]
	;; condjump to .L11 occurs
.LVL15:
	.loc 1 81 0
		VLDH.LS 		*AR5,VR8
		SNOP		7
.LVL16:
.L10:
	.loc 1 89 0
		SMOV.M2		R38, R2
	|	SSHFAR		31, R34, R57
	|	SMVAGA36.M1		R43:R42, AR4
	.loc 1 100 0
		SSHFAR		1, R34, R8
	|[!R2]	SBR		.L19
	|	SMOV.M2		R57, R59
		SMOV.M2		R8, R58
	|	SMOV.M1		R34, R20
	|	SMOVIL		64, R36
	;no-op trunc di R59:R58 to pdi R59:R58
		SSHFLR		30, R58, R23
	|	SMOV.M2		R57, R21
	|	SADD.M1		2,R34,R13
		SSHFLL		2, R59, R41
	;no-op trunc di R21:R20 to pdi R21:R20
	|	SMOV.M2		R13, R60
	|	SMOV.M1		R8, R56
		SOR		R41, R23, R49
	;no-op trunc di R57:R56 to pdi R57:R56
	|	SADD.M2		4,R34,R35
	|	SADD.M1		R36,R42,R39
		SSHFLL		2, R58, R48
	|	SMOV.M2		R13, R58
	[R2]	SADDA.M2		R49:R48,AR2,AR3
	|	SSHFLR		31, R20, R29
	;; condjump to .L19 occurs
	.loc 1 95 0
		SSHFLL		1, R21, R21
	|	VLDW.LS 		*AR4,VR14
	|	SADD.M1		16,R34,R34
.LVL17:
		SSHFLL		1, R20, R44
	|	SMOV.M1		R43, R20
	.loc 1 100 0
		VLDW.LS 		*AR3,VR4
	|	SSHFAR		31, R13, R22
	.loc 1 95 0
		SOR		R21, R29, R45
	|	SMOV.M2		R22, R61
	|	SMOV.M1		R22, R59
		SADDA.M2		R45:R44,AR2,AR3
	;no-op trunc di R61:R60 to pdi R61:R60
	|	SSHFLL		1, R61, R43
	;no-op trunc di R59:R58 to pdi R59:R58
	.loc 1 97 0
		SSHFLR		31, R60, R44
		SOR		R43, R44, R47
		SSHFLL		1, R60, R46
	|	VLDH.LS 		*AR3,VR10
.LVL18:
		SADDA.M2		R47:R46,AR2,AR3
	|	SSHFLR		30, R56, R60
	.loc 1 114 0
		SSHFLL		2, R57, R45
		SSHFLL		2, R56, R54
	|	VSHUFH		 VR4,VR4,VR13
	|	SMOV.M1		R35, R56
.LVL19:
		SOR		R45, R60, R55
	|	VLDH.LS 		*AR3,VR9
		SADDA.M2		R55:R54,AR0,AR3
	|	SSHFLR		31, R58, R61
	.loc 1 101 0
		VSTW.LS 		VR13,*+AR7[32]
	|	SSHFLL		1, R59, R59
.LVL20:
	.loc 1 106 0
		VLDH.LS 		*AR6,VR17
	|	SOR		R59, R61, R51
	|	VLDH.LS 		*AR1,VR20
	.loc 1 114 0
		VLDW.LS 		*AR3,VR15
	|	SSHFLL		1, R58, R50
	|	VMULAS16T.M3		 VR10,VR5,VR14,VR14
.LVL21:
	.loc 1 112 0
		SSHFAR		31, R35, R46
	|	SADDA.M2		R51:R50,AR0,AR3
		SMOV.M1		R46, R57
	|	SLT		R34, R18, R51
	;no-op trunc di R57:R56 to pdi R57:R56
		SSHFLR		31, R56, R47
	|	SMOV.M1		R51, R1
		SSHFLL		1, R57, R49
	|	VMULAS16T.M3		 VR9,VR7,VR14,VR14
	|	VLDH.LS 		*AR3,VR16
.LVL22:
		SOR		R49, R47, R53
		SSHFLL		1, R56, R52
		SADDA.M2		R53:R52,AR0,AR3
	|	VMULAS16T.M3		 VR17,VR6,VR14,VR14
	|	SLTU		R39, R42, R50
	|	SMOV.M1		R39, R42
.LVL23:
	.loc 1 115 0
		VSHUFH		 VR15,VR15,VR18
	|	SADD.M1		R20,R50,R43
.LVL24:
		SNOP		1
	.loc 1 112 0
		VLDH.LS 		*AR3,VR19
	|	VMULAS16T.M3		 VR20,VR8,VR14,VR14
.LVL25:
	.loc 1 115 0
		VSTW.LS 		VR18,*+AR7[32]
.LVL26:
	.loc 1 119 0
		VLDH.LS 		*AR6,VR21
	|	VLDH.LS 		*AR1,VR22
	.loc 1 111 0
		VMULAS16T.M3		 VR16,VR7,VR14,VR14
		SNOP		4
.LVL27:
	.loc 1 113 0
		VMULAS16T.M3		 VR19,VR5,VR14,VR14
		SNOP		2
.LVL28:
	.loc 1 88 0
	[R1]	SBR		.L10
	|	VMULAS16T.M3		 VR21,VR8,VR14,VR14
	.loc 1 119 0
		SNOP		2
.LVL29:
	.loc 1 120 0
		VMULAS16T.M3		 VR22,VR6,VR14,VR14
		SNOP		2
.LVL30:
	.loc 1 121 0
		VSTW.LS 		VR14,*AR4
	;; condjump to .L10 occurs
.LVL31:
.L11:
		SLDW		*+AR15[2], R52
	|	SADD.M2		4,R38,R38
.LVL32:
	.loc 1 62 0
		SLT		R38, R19, R56
	|	SLDW		*+AR15[3], R55
		SMOV.M2		R56, R0
		SNOP		1
	[R0]	SBR		.L6
		SNOP		1
		SADD.M2		8,R52,R42
		SSTW		R42, *+AR15[2]
	|	SLTU		R42, R52, R54
		SADD.M2		R55,R54,R2
		SNOP		1
		SSTW		R2, *+AR15[3]
	;; condjump to .L6 occurs
.LVL33:
.L7:
	.loc 1 125 0
		SSHFAR		31, R19, R30
	|	SMOV.M2		R3, R42
	|	SMVAGA36.M1		R11:R10, OR1
		SLTU		R3, R19, R19
	|	SMOV.M2		R37, R1
.LVL34:
		SSHFLL		1, R30, R31
	|	SMOV.M2		R14, R44
	|	SMOV.M1		R15, R45
		SADD.M2		R31,R19,R43
	|	SMOVIL		0, R25
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M1		R43:R42,AR12,AR12
	|	SADDA.M2		R43:R42,OR1,OR2
	|	SMOVIL		0, R16
.LVL35:
		SMOVIL		128, R3
		SLDH		*AR12, R10
.LVL36:
		SMVAAGL.M2		OR2, R43:R42
		SNOP		1
		SMVAAGH.M2		OR2, R43:R42
		SNOP		2
		SSTH		R10, *+AR15[12]
	.loc 1 126 0
		SSTH		R10, *+AR15[13]
		SNOP		2
	.loc 1 127 0
		SLDW		*+AR15[6], R11
		SNOP		3
	.loc 1 137 0
	[!R1]	SBR		.L1
		SNOP		1
	.loc 1 127 0
		SVBCAST.M2 		 R11,VR23
		SNOP		3
.LVL37:
		VSTW.LS 		VR23,*+AR7[48]
	;; condjump to .L1 occurs
.LVL38:
	.loc 1 128 0
		VLDH.LS 		*+AR7[96],VR24
		SNOP		7
.LVL39:
.L13:
	.loc 1 23 0
		SMVAGA36.M1		R45:R44, AR0
	|	SSUB.M2		R16, R18, R8
	|	SMOVIL		16, R29
		SMVAGA36.M1		R43:R42, AR2
	|	SSHFAR		2, R25, R40
	|	SADD.M2		R3,R44,R9
	.loc 1 138 0
		VLDW.LS 		*AR0,VR25
	|	SSHFAR		31, R25, R12
	|	SMVAGA36.M1		R15:R14, OR3
	|	SADDU.M2		32,R16,R16
.LVL40:
	.loc 1 140 0
		VLDH.LS 		*AR2,VR26
	|	SLT		R29, R8, R2
	|	SADD.M2		2,R25,R25
.LVL41:
	.loc 1 148 0
		SSHFLR		25, R40, R37
		SSHFLL		7, R12, R13
		SOR		R13, R37, R17
		SSHFLL		7, R40, R24
	|	SMOV.M2		R17, R47
	.loc 1 149 0
		SSHFLR		26, R40, R41
	|	SMOV.M2		R24, R46
		SSHFLL		6, R12, R26
	;no-op trunc di R47:R46 to pdi R47:R46
	|	SADDA.M2		R47:R46,OR3,AR6
		SOR		R26, R41, R27
	.loc 1 142 0
	[R2]	SBR		.L20
	|	SLT		R16, R18, R0
	|	VMULAS16T.M3		 VR26,VR24,VR25,VR25
	|	SMOV.M1		R27, R47
.LVL42:
	.loc 1 149 0
		SSHFLL		6, R40, R28
		SMOVIL		64, R57
	|	SMOV.M2		R28, R46
		SADD.M1		R57,R42,R58
	;no-op trunc di R47:R46 to pdi R47:R46
	|	SADDA.M2		R47:R46,OR3,AR4
	|	VSHFAR		VR12,VR25, VR27
	|	SLTU		R9, R44, R21
	.loc 1 141 0
		VSTW.LS 		VR27,*AR0
	|	SMOV.M1		R9, R44
	|	SLTU		R58, R42, R35
		SADD.M1		R45,R21,R45
		SMOV.M2		R58, R42
	|	SADD.M1		R43,R35,R43
	;; condjump to .L20 occurs
	.loc 1 148 0
		VLDDWM2.LS 		*AR6,VR33:VR32
		SNOP		7
		VSTDW.LS 		VR33:VR32,*AR7
	.loc 1 149 0
		VLDW.LS 		*AR7,VR31
	|	VLDW.LS 		*+AR7[16],VR33
		SNOP		2
	.loc 1 137 0
	[R0]	SBR		.L13
		SNOP		4
	.loc 1 149 0
		VBALE2		VR31,VR33,VR34
		VSTW.LS 		VR34,*AR4
	;; condjump to .L13 occurs
.LVL43:
.L1:
	.loc 1 152 0
		SLDDW		*+AR15[5], R31:R30
	|	SMOVIL		256, R6
		SLDDW		*+AR15[6], R33:R32
	|	SMOVIL		0, R7
		SLDDW		*+AR15[7], R35:R34
	|	SADDA.M2		R7:R6,AR7,AR7
		SLDDW		*+AR15[8], R37:R36
	|	SMOVIL		88, R6
		SLDDW		*+AR15[9], R39:R38
	|	SMOVIL		0, R7
		SMVCGC.L		R63, BRReg
		SNOP		3
		SBR		R62
		SLDDW		*+AR15[10], R41:R40
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
	;; return occurs
.LVL44:
.L20:
	.loc 1 23 0
		SMOVIL		64, R46
		SMOVIL		0, R47
		SMOVIL		32, R56
	|	SADDA.M2		R47:R46,AR0,AR0
		SMOVIL		0, R57
		SADDA.M1		R57:R56,AR2,AR2
	.loc 1 143 0
		VLDW.LS 		*AR0,VR28
		SNOP		1
.LVL45:
	.loc 1 145 0
		VLDH.LS 		*AR2,VR29
		SNOP		7
		VMULAS16T.M3		 VR29,VR24,VR28,VR28
		SNOP		2
.LVL46:
	.loc 1 146 0
		VSHFAR		VR12,VR28, VR30
		VSTW.LS 		VR30,*AR0
	.loc 1 148 0
		VLDDWM2.LS 		*AR6,VR33:VR32
		SNOP		7
		VSTDW.LS 		VR33:VR32,*AR7
	.loc 1 149 0
		VLDW.LS 		*AR7,VR31
	|	VLDW.LS 		*+AR7[16],VR33
		SNOP		2
	.loc 1 137 0
	[R0]	SBR		.L13
		SNOP		4
	.loc 1 149 0
		VBALE2		VR31,VR33,VR34
		VSTW.LS 		VR34,*AR4
	;; condjump to .L13 occurs
		SBR		.L1
		SNOP		6
	;; jump to .L1 occurs
.LVL47:
.L19:
	.loc 1 95 0
		SSHFAR		31, R34, R57
	|	SMOV.M2		R34, R20
	|	SADD.M1		2,R34,R13
	|	VMOV		VR11,	VR14
.LVL48:
	.loc 1 100 0
		SSHFAR		1, R34, R8
	|	SMOV.M2		R57, R59
	|	SMOV.M1		R57, R21
		SMOV.M2		R8, R58
	;no-op trunc di R21:R20 to pdi R21:R20
	|	SSHFLR		31, R20, R29
	|	SMOV.M1		R13, R60
	;no-op trunc di R59:R58 to pdi R59:R58
		SSHFLR		30, R58, R23
	|	SMOV.M2		R8, R56
	|	SADD.M1		4,R34,R35
		SSHFLL		2, R59, R41
	;no-op trunc di R57:R56 to pdi R57:R56
	|	SADD.M2		16,R34,R34
		SOR		R41, R23, R49
		SSHFLL		2, R58, R48
	|	SMOV.M2		R13, R58
		SADDA.M2		R49:R48,AR2,AR3
	|	SSHFLL		1, R21, R21
	.loc 1 95 0
		SSHFLL		1, R20, R44
	|	SMOV.M1		R43, R20
	.loc 1 97 0
		SSHFAR		31, R13, R22
	.loc 1 100 0
		VLDW.LS 		*AR3,VR4
	|	SOR		R21, R29, R45
	|	SMOV.M2		R22, R61
	|	SMOV.M1		R22, R59
	.loc 1 95 0
		SADDA.M2		R45:R44,AR2,AR3
	;no-op trunc di R61:R60 to pdi R61:R60
	|	SSHFLL		1, R61, R43
	;no-op trunc di R59:R58 to pdi R59:R58
	.loc 1 97 0
		SSHFLR		31, R60, R44
		SOR		R43, R44, R47
		SSHFLL		1, R60, R46
	|	VLDH.LS 		*AR3,VR10
.LVL49:
		SADDA.M2		R47:R46,AR2,AR3
	|	SSHFLR		30, R56, R60
	.loc 1 114 0
		SSHFLL		2, R57, R45
		SSHFLL		2, R56, R54
	|	SMOV.M1		R35, R56
	.loc 1 101 0
		VSHUFH		 VR4,VR4,VR13
	|	SOR		R45, R60, R55
	|	VLDH.LS 		*AR3,VR9
.LVL50:
	.loc 1 114 0
		SADDA.M2		R55:R54,AR0,AR3
	|	SSHFLR		31, R58, R61
	.loc 1 110 0
		SSHFLL		1, R59, R59
	.loc 1 101 0
		VSTW.LS 		VR13,*+AR7[32]
	|	SOR		R59, R61, R51
.LVL51:
	.loc 1 114 0
		VLDW.LS 		*AR3,VR15
	|	VLDH.LS 		*AR6,VR17
	|	SSHFLL		1, R58, R50
	|	VMULAS16T.M3		 VR10,VR5,VR14,VR14
.LVL52:
	.loc 1 112 0
		SSHFAR		31, R35, R46
	|	SADDA.M2		R51:R50,AR0,AR3
	|	VLDH.LS 		*AR1,VR20
		SMOV.M1		R46, R57
	|	SLT		R34, R18, R51
	;no-op trunc di R57:R56 to pdi R57:R56
		SSHFLR		31, R56, R47
	|	SMOV.M1		R51, R1
		SSHFLL		1, R57, R49
	|	VMULAS16T.M3		 VR9,VR7,VR14,VR14
	|	VLDH.LS 		*AR3,VR16
.LVL53:
		SOR		R49, R47, R53
		SSHFLL		1, R56, R52
		SADDA.M2		R53:R52,AR0,AR3
	|	SMOVIL		64, R36
	.loc 1 106 0
		VMULAS16T.M3		 VR17,VR6,VR14,VR14
	|	VSHUFH		 VR15,VR15,VR18
	|	SADD.M1		R36,R42,R39
.LVL54:
		SLTU		R39, R42, R50
	|	SMOV.M1		R39, R42
	.loc 1 112 0
		VLDH.LS 		*AR3,VR19
	|	SADD.M2		R20,R50,R43
	.loc 1 115 0
		VSTW.LS 		VR18,*+AR7[32]
	|	VMULAS16T.M3		 VR20,VR8,VR14,VR14
.LVL55:
	.loc 1 119 0
		VLDH.LS 		*AR6,VR21
	|	VLDH.LS 		*AR1,VR22
	.loc 1 120 0
		SNOP		1
	.loc 1 111 0
		VMULAS16T.M3		 VR16,VR7,VR14,VR14
		SNOP		3
.LVL56:
	.loc 1 113 0
		VMULAS16T.M3		 VR19,VR5,VR14,VR14
		SNOP		2
.LVL57:
	.loc 1 88 0
	[R1]	SBR		.L10
	|	VMULAS16T.M3		 VR21,VR8,VR14,VR14
	.loc 1 119 0
		SNOP		2
.LVL58:
	.loc 1 120 0
		VMULAS16T.M3		 VR22,VR6,VR14,VR14
		SNOP		2
.LVL59:
	.loc 1 121 0
		VSTW.LS 		VR14,*AR4
	;; condjump to .L10 occurs
		SBR		.L11
		SNOP		6
	;; jump to .L11 occurs
.LVL60:
.L18:
		SBR		.L7
	|	SMOVIL		0, R20
.LVL61:
		SSHFLL		1, R19, R3
		SLT		R20, R18, R37
		SNOP		4
	;; jump to .L7 occurs
	.cfi_endproc
.LFE3:
	.size	DSP_fir_sym_vc, .-DSP_fir_sym_vc
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x363
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x1
	.4byte	.LASF43
	.4byte	.LASF44
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
	.4byte	.LASF45
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x2ee
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0x18
	.4byte	0x2fb
	.4byte	.LLST1
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0x19
	.4byte	0x301
	.4byte	.LLST2
	.uleb128 0x6
	.string	"r"
	.byte	0x1
	.byte	0x1a
	.4byte	0x2fb
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0x1b
	.4byte	0x62
	.4byte	.LLST3
	.uleb128 0x6
	.string	"nr"
	.byte	0x1
	.byte	0x1c
	.4byte	0x62
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x5
	.string	"s"
	.byte	0x1
	.byte	0x1d
	.4byte	0x62
	.4byte	.LLST4
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x20
	.4byte	0x307
	.4byte	0x40160000
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x2b
	.4byte	0x62
	.4byte	.LLST5
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x1
	.byte	0x2d
	.4byte	0x30d
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x2e
	.4byte	0x31a
	.byte	0x2
	.byte	0x90
	.uleb128 0x6c
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x30
	.4byte	0x62
	.4byte	.LLST6
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x30
	.4byte	0x62
	.4byte	.LLST7
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x30
	.4byte	0x62
	.4byte	.LLST8
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x30
	.4byte	0x62
	.4byte	.LLST9
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x31
	.4byte	0x30d
	.4byte	.LLST10
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x32
	.4byte	0x2ee
	.4byte	.LLST11
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x32
	.4byte	0x2ee
	.4byte	.LLST12
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x32
	.4byte	0x2ee
	.4byte	.LLST13
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.byte	0x32
	.4byte	0x2ee
	.4byte	.LLST14
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x34
	.4byte	0x327
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x1
	.byte	0x35
	.4byte	0x30d
	.4byte	.LLST15
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x1
	.byte	0x35
	.4byte	0x30d
	.4byte	.LLST16
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x1
	.byte	0x37
	.4byte	0x2ee
	.4byte	.LLST17
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x1
	.byte	0x37
	.4byte	0x2ee
	.4byte	.LLST18
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x1
	.byte	0x37
	.4byte	0x2ee
	.4byte	.LLST19
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x1
	.byte	0x37
	.4byte	0x2ee
	.4byte	.LLST20
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x1
	.byte	0x38
	.4byte	0x32d
	.4byte	.LLST21
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x1
	.byte	0x3a
	.4byte	0x2fb
	.4byte	.LLST22
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x1
	.byte	0x3a
	.4byte	0x2fb
	.4byte	.LLST23
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3b
	.4byte	0x33a
	.4byte	.LLST22
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x1
	.byte	0x3b
	.4byte	0x33a
	.4byte	.LLST23
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x3d
	.4byte	0x62
	.4byte	.LLST26
	.uleb128 0xb
	.string	"j"
	.byte	0x1
	.byte	0x3d
	.4byte	0x62
	.4byte	.LLST27
	.uleb128 0xb
	.string	"k"
	.byte	0x1
	.byte	0x3d
	.4byte	0x62
	.4byte	.LLST28
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x1
	.byte	0x81
	.4byte	0x2fb
	.4byte	.LLST29
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x1
	.byte	0x84
	.4byte	0x340
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x1
	.byte	0x85
	.4byte	0x35a
	.4byte	.LLST30
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x1
	.byte	0x86
	.4byte	0x360
	.4byte	.LLST30
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x1
	.byte	0x87
	.4byte	0x360
	.4byte	.LLST32
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	0x5b
	.4byte	0x2fb
	.uleb128 0xd
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.4byte	0x2ee
	.uleb128 0xe
	.byte	0x8
	.4byte	0x5b
	.uleb128 0xe
	.byte	0x8
	.4byte	0x62
	.uleb128 0xc
	.byte	0x1
	.4byte	0x62
	.4byte	0x31a
	.uleb128 0xd
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	0x46
	.4byte	0x327
	.uleb128 0xd
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.4byte	0x30d
	.uleb128 0xc
	.byte	0x1
	.4byte	0x5b
	.4byte	0x33a
	.uleb128 0xd
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.4byte	0x32d
	.uleb128 0xc
	.byte	0x1
	.4byte	0x8c
	.4byte	0x34d
	.uleb128 0xd
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	0x8c
	.4byte	0x35a
	.uleb128 0xd
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.4byte	0x34d
	.uleb128 0xe
	.byte	0x8
	.4byte	0x31a
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
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x2
	.uleb128 0xa
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
	.sleb128 88
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL36
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL36
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.llong	.LVL47
	.llong	.LFE3
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	0
	.llong	0
.LLST2:
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
	.llong	.LVL35
	.2byte	0x1
	.byte	0x5c
	.llong	.LVL35
	.llong	.LVL47
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0x9f
	.llong	.LVL47
	.llong	.LFE3
	.2byte	0x1
	.byte	0x5c
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL1
	.llong	.LVL34
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.llong	.LVL34
	.llong	.LVL47
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x9f
	.llong	.LVL47
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	.LVL4
	.llong	.LVL60
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x9f
	.llong	.LVL60
	.llong	.LVL61
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	.LVL61
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL2
	.llong	.LVL39
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.llong	.LVL39
	.llong	.LVL47
	.2byte	0x9
	.byte	0x31
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x31
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.llong	.LVL47
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL4
	.llong	.LVL60
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL4
	.llong	.LVL60
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL4
	.llong	.LVL60
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL4
	.llong	.LVL60
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL4
	.llong	.LVL5
	.2byte	0x2
	.byte	0x90
	.uleb128 0x62
	.llong	.LVL6
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.uleb128 0x63
	.llong	.LVL9
	.llong	.LVL11
	.2byte	0x2
	.byte	0x90
	.uleb128 0x60
	.llong	.LVL12
	.llong	.LVL14
	.2byte	0x2
	.byte	0x90
	.uleb128 0x61
	.llong	.LVL15
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.uleb128 0x62
	.llong	.LVL38
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.uleb128 0x77
	.llong	.LVL47
	.llong	.LVL60
	.2byte	0x2
	.byte	0x90
	.uleb128 0x62
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL7
	.llong	.LVL33
	.2byte	0x2
	.byte	0x90
	.uleb128 0x65
	.llong	.LVL39
	.llong	.LVL43
	.2byte	0x2
	.byte	0x90
	.uleb128 0x78
	.llong	.LVL44
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.uleb128 0x78
	.llong	.LVL47
	.llong	.LVL60
	.2byte	0x2
	.byte	0x90
	.uleb128 0x65
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL10
	.llong	.LVL33
	.2byte	0x2
	.byte	0x90
	.uleb128 0x66
	.llong	.LVL47
	.llong	.LVL60
	.2byte	0x2
	.byte	0x90
	.uleb128 0x66
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL13
	.llong	.LVL33
	.2byte	0x2
	.byte	0x90
	.uleb128 0x67
	.llong	.LVL47
	.llong	.LVL60
	.2byte	0x2
	.byte	0x90
	.uleb128 0x67
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL16
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.uleb128 0x68
	.llong	.LVL47
	.llong	.LVL60
	.2byte	0x2
	.byte	0x90
	.uleb128 0x68
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL17
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6e
	.llong	.LVL40
	.llong	.LVL43
	.2byte	0x2
	.byte	0x90
	.uleb128 0x79
	.llong	.LVL44
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.uleb128 0x79
	.llong	.LVL48
	.llong	.LVL60
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6e
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL45
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.uleb128 0x7c
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL18
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6a
	.llong	.LVL25
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.uleb128 0x70
	.llong	.LVL40
	.llong	.LVL43
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.llong	.LVL44
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.uleb128 0x7a
	.llong	.LVL49
	.llong	.LVL55
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6a
	.llong	.LVL55
	.llong	.LVL60
	.2byte	0x2
	.byte	0x90
	.uleb128 0x70
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL22
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.uleb128 0x71
	.llong	.LVL27
	.llong	.LVL28
	.2byte	0x2
	.byte	0x90
	.uleb128 0x73
	.llong	.LVL28
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.uleb128 0x75
	.llong	.LVL53
	.llong	.LVL56
	.2byte	0x2
	.byte	0x90
	.uleb128 0x71
	.llong	.LVL56
	.llong	.LVL57
	.2byte	0x2
	.byte	0x90
	.uleb128 0x73
	.llong	.LVL57
	.llong	.LVL60
	.2byte	0x2
	.byte	0x90
	.uleb128 0x75
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL21
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.uleb128 0x69
	.llong	.LVL52
	.llong	.LVL60
	.2byte	0x2
	.byte	0x90
	.uleb128 0x69
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL22
	.llong	.LVL28
	.2byte	0x2
	.byte	0x90
	.uleb128 0x74
	.llong	.LVL28
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.uleb128 0x76
	.llong	.LVL53
	.llong	.LVL57
	.2byte	0x2
	.byte	0x90
	.uleb128 0x74
	.llong	.LVL57
	.llong	.LVL60
	.2byte	0x2
	.byte	0x90
	.uleb128 0x76
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL4
	.llong	.LVL19
	.2byte	0x2
	.byte	0x90
	.uleb128 0x72
	.llong	.LVL20
	.llong	.LVL24
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6d
	.llong	.LVL26
	.llong	.LVL50
	.2byte	0x2
	.byte	0x90
	.uleb128 0x72
	.llong	.LVL51
	.llong	.LVL54
	.2byte	0x2
	.byte	0x90
	.uleb128 0x6d
	.llong	.LVL55
	.llong	.LVL60
	.2byte	0x2
	.byte	0x90
	.uleb128 0x72
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL16
	.llong	.LVL31
	.2byte	0x1
	.byte	0x52
	.llong	.LVL47
	.llong	.LVL60
	.2byte	0x1
	.byte	0x52
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL16
	.llong	.LVL31
	.2byte	0x1
	.byte	0x50
	.llong	.LVL47
	.llong	.LVL60
	.2byte	0x1
	.byte	0x50
	.llong	0
	.llong	0
.LLST26:
	.llong	.LVL2
	.llong	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL32
	.llong	.LVL33
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.llong	.LVL41
	.llong	.LVL43
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL44
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL60
	.llong	.LFE3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL30
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	.LVL59
	.llong	.LVL60
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL41
	.llong	.LVL43
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.llong	.LVL44
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.uleb128 0x29
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL39
	.llong	.LVL43
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.llong	.LVL44
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL39
	.llong	.LVL43
	.2byte	0x1
	.byte	0x57
	.llong	.LVL44
	.llong	.LVL47
	.2byte	0x1
	.byte	0x57
	.llong	0
	.llong	0
.LLST32:
	.llong	.LVL39
	.llong	.LVL43
	.2byte	0x4
	.byte	0x77
	.sleb128 64
	.byte	0x9f
	.llong	.LVL44
	.llong	.LVL47
	.2byte	0x4
	.byte	0x77
	.sleb128 64
	.byte	0x9f
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
.LASF42:
	.string	"GNU C 4.7.0"
.LASF27:
	.string	"temp_vr_16_31"
.LASF45:
	.string	"DSP_fir_sym_vc"
.LASF37:
	.string	"temp_vx_nh_addr"
.LASF28:
	.string	"temp_vx_0_15"
.LASF16:
	.string	"int_h_0"
.LASF17:
	.string	"int_h_1"
.LASF31:
	.string	"temp_vx_3_18"
.LASF19:
	.string	"int_h_3"
.LASF38:
	.string	"temp_in_r"
.LASF11:
	.string	"float"
.LASF20:
	.string	"svb_temp_h"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF21:
	.string	"temp_vh_0"
.LASF22:
	.string	"temp_vh_1"
.LASF23:
	.string	"temp_vh_2"
.LASF24:
	.string	"temp_vh_3"
.LASF12:
	.string	"double"
.LASF39:
	.string	"M2LD_Dst"
.LASF14:
	.string	"round"
.LASF43:
	.string	"../dsp_fir_sym_vc.c"
.LASF3:
	.string	"unsigned int"
.LASF32:
	.string	"temp_vx_0_31"
.LASF0:
	.string	"long long unsigned int"
.LASF40:
	.string	"M2LD_temp1"
.LASF35:
	.string	"temp_x_offset_addr_p_d"
.LASF26:
	.string	"temp_vr_0_15"
.LASF9:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF25:
	.string	"tmpr"
.LASF46:
	.string	"shfar_ucst5"
.LASF34:
	.string	"temp_x_offset_addr_n"
.LASF18:
	.string	"int_h_2"
.LASF33:
	.string	"temp_x_offset_addr_p"
.LASF13:
	.string	"MW_config_Addr"
.LASF29:
	.string	"temp_vx_1_16"
.LASF6:
	.string	"short int"
.LASF30:
	.string	"temp_vx_2_17"
.LASF15:
	.string	"un_shfar_ucst5"
.LASF8:
	.string	"long int"
.LASF10:
	.string	"char"
.LASF41:
	.string	"M2LD_temp2"
.LASF44:
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/dsp_fir_sym/test/vector_c/Debug"
.LASF5:
	.string	"signed char"
.LASF36:
	.string	"temp_x_offset_addr_n_d"
