	.file	"DSP_fir_r8_vc1.c"
	.section	.text.DSP_fir_r8_vc1,"ax",@progbits
	.align	2
	.global	DSP_fir_r8_vc1
	.type	DSP_fir_r8_vc1, @function
DSP_fir_r8_vc1:
		SMOVIL		256, R6
	|	SMVAGA36.M2		R13:R12, AR12
	|	SADD.M1		15,R18,R43
		SMOVIL		0, R7
	|	SMVAGA36.M1		R15:R14, OR0
		SSUBA.L		R7:R6, AR7, AR7
		SMOVIL		1075183616, R28
		SNOP		1
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
		SMOVIH		1075183616, R28
		SMOVIL		0, R29
	|	SSTW		R32, *+AR15[13]
		SMVAGA36.M2		R29:R28, AR10
	|	SMOVIL		67305985, R12
	|	SSTW		R31, *+AR15[12]
		SMOVIH		67305985, R12
		SMOVIL		0, R13
		SSTW		R30, *+AR15[11]
		SSTW		R12, *AR10
	|	SMOVIL		1075183620, R12
		SMOVIH		1075183620, R12
		SMVAGA36.M2		R13:R12, AR10
	|	SMOVIL		134678021, R42
		SMOVIL		1075183624, R28
		SMOVIH		134678021, R42
		SMOVIH		1075183624, R28
	|	SSTW		R42, *AR10
		SMOVIL		0, R29
		SMVAGA36.M2		R29:R28, AR10
	|	SMOVIL		202050057, R54
		SMOVIL		1075183628, R12
		SMOVIH		202050057, R54
		SMOVIH		1075183628, R12
	|	SSTW		R54, *AR10
		SMOVIL		0, R13
		SMVAGA36.M2		R13:R12, AR10
	|	SMOVIL		269422093, R58
		SMOVIL		1075183632, R28
		SMOVIH		269422093, R58
		SMOVIH		1075183632, R28
	|	SSTW		R58, *AR10
		SMOVIL		0, R29
		SMVAGA36.M2		R29:R28, AR10
	|	SMOVIL		100992003, R0
		SMOVIL		1075183636, R12
		SMOVIH		100992003, R0
		SMOVIH		1075183636, R12
	|	SSTW		R0, *AR10
		SMOVIL		0, R13
		SMVAGA36.M2		R13:R12, AR10
	|	SMOVIL		168364039, R57
		SMOVIL		1075183640, R28
		SMOVIH		168364039, R57
		SMOVIH		1075183640, R28
	|	SSTW		R57, *AR10
		SMOVIL		0, R29
		SMVAGA36.M2		R29:R28, AR10
	|	SMOVIL		235736075, R56
		SMOVIL		1075183644, R12
		SMOVIH		235736075, R56
		SMOVIH		1075183644, R12
	|	SSTW		R56, *AR10
		SMOVIL		0, R13
		SMVAGA36.M2		R13:R12, AR10
	|	SMOVIL		303108111, R55
		SMOVIL		1075183648, R28
		SMOVIH		303108111, R55
		SMOVIH		1075183648, R28
	|	SSTW		R55, *AR10
		SMOVIL		0, R29
		SMVAGA36.M2		R29:R28, AR10
	|	SMOVIL		1075183652, R12
		SMOVIH		1075183652, R12
		SMOVIL		0, R13
	|	SSTW		R42, *AR10
		SMOVIL		1075183656, R28
	|	SMVAGA36.M2		R13:R12, AR10
		SMOVIH		1075183656, R28
		SMOVIL		0, R29
	|	SSTW		R54, *AR10
		SMVAGA36.M2		R29:R28, AR10
	|	SSHFAR		31, R43, R59
		SSHFLR		28, R59, R1
		SSTW		R58, *AR10
	|	SMOVIL		1075183660, R58
	|	SADD.M2		R43,R1,R2
		SMOVIH		1075183660, R58
		SMOVIL		0, R59
		SMVAGA36.M2		R59:R58, AR10
	|	SMOVIL		336794129, R3
		SMOVIL		1075183664, R12
		SMOVIH		1075183664, R12
		SMOVIL		0, R13
		SMOVIH		336794129, R3
		SSTW		R3, *AR10
	|	SMOVIL		1075183668, R28
	|	SMVAGA36.M2		R13:R12, AR10
		SMOVIH		1075183668, R28
		SMOVIL		0, R29
		SSTW		R57, *AR10
	|	SMOVIL		1075183672, R42
	|	SMVAGA36.M2		R29:R28, AR10
		SMOVIH		1075183672, R42
		SMOVIL		0, R43
		SSTW		R56, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	|	SMOVIL		1075183676, R54
		SMOVIH		1075183676, R54
		SMOVIL		370480147, R13
		SSTW		R55, *AR10
	|	SMOVIL		0, R55
		SMVAGA36.M2		R55:R54, AR10
	|	SMOVIH		370480147, R13
		SMOVIL		0, R8
		SSTW		R13, *AR10
	|	SMOVIL		128, R42
		SMOVIL		0, R43
		SMOVIL		-64, R12
	|	SADDA.M2		R43:R42,AR7,AR4
		SMOVIL		-1, R13
		SLT		R8, R16, R0
	|	SADDA.M2		R13:R12,OR0,AR0
	|	SADD.M1		-1,R16,R16
	[!R0]	SBR		.L7
	|	SSHFAR		4, R2, R9
		SSHFLR		3, R16, R19
		SMOVIL		32, R12
	|	SADD.M2		1,R19,R32
		SMOVIL		0, R13
		SMOVIL		192, R42
	|	SADDA.M2		R13:R12,AR4,AR6
	|	SMVAAGL.M1		AR0, R13:R12
		SMOVIL		0, R43
		SLTU		R32, R19, R21
	|[R0]	SADDA.M2		R43:R42,AR7,AR5
	|[R0]	SMVAAGH.M1		AR0, R13:R12
	;; condjump to .L7 occurs
		SSHFLR		28, R32, R22
		SMOVIL		0, R20
		SSHFLL		4, R21, R30
		SMOVIL		0, R16
		SMOVIL		0, R17
		SLT		R20, R18, R31
		SMOVIL		0, R2
		SOR		R30, R22, R30
		SSHFLL		4, R32, R32
		SMOVIL		2, R1
.L6:
		SMOV.M2		R16, R54
	|	SMOV.M1		R17, R55
	|	SMOVIL		0, R19
	;no-op trunc di R55:R54 to pdi R55:R54
		SADDA.M2		R55:R54,AR12,AR10
	|	SMOV.M1		R31, R0
		SADD.M1		R10,R16,R42
		SLDH		*AR10, R25
	|	SLTU		R42, R16, R23
	|	SADD.M2		R11,R17,R24
		SLDH		*+AR10[1], R26
	|	SADD.M2		R24,R23,R43
		SLDH		*+AR10[2], R27
	|	SMVAGA36.M1		R43:R42, OR1
	|	SMOV.M2		R12, R42
		SLDH		*+AR10[3], R28
	|	SMOV.M2		R13, R43
		SLDH		*+AR10[4], R29
		SNOP		5
		SSTH		R25, *+AR15[5]
		SSTH		R25, *+AR15[4]
		SNOP		2
		SLDW		*+AR15[2], R45
		SLDH		*+AR10[5], R44
		SNOP		4
		SVBCAST.M2 		 R45,VR3
		SNOP		3
		VSTW.LS 		VR3,*+AR7[48]
		VLDH.LS 		*AR5,VR9
	|	SSTH		R26, *+AR15[6]
		SSTH		R26, *+AR15[7]
		SNOP		2
		SLDW		*+AR15[3], R46
		SNOP		5
		SVBCAST.M2 		 R46,VR0
		SNOP		3
		VSTW.LS 		VR0,*+AR7[48]
		VLDH.LS 		*AR5,VR10
	|	SSTH		R27, *+AR15[8]
		SSTH		R27, *+AR15[9]
		SNOP		2
		SLDW		*+AR15[4], R47
		SNOP		5
		SVBCAST.M2 		 R47,VR1
		SNOP		3
		VSTW.LS 		VR1,*+AR7[48]
		VLDH.LS 		*AR5,VR11
	|	SSTH		R28, *+AR15[10]
		SSTH		R28, *+AR15[11]
		SNOP		2
		SLDW		*+AR15[5], R48
		SNOP		5
		SVBCAST.M2 		 R48,VR2
		SNOP		3
		VSTW.LS 		VR2,*+AR7[48]
		VLDH.LS 		*AR5,VR12
	|	SSTH		R29, *+AR15[12]
		SSTH		R29, *+AR15[13]
		SNOP		2
		SLDW		*+AR15[6], R49
		SNOP		5
		SVBCAST.M2 		 R49,VR4
		SNOP		3
		VSTW.LS 		VR4,*+AR7[48]
		VLDH.LS 		*AR5,VR13
	|	SSTH		R44, *+AR15[14]
		SSTH		R44, *+AR15[15]
		SNOP		2
		SLDW		*+AR15[7], R50
		SNOP		5
		SVBCAST.M2 		 R50,VR5
		SNOP		3
		VSTW.LS 		VR5,*+AR7[48]
	|	SLDH		*+AR10[6], R51
	|	VLDH.LS 		*AR5,VR14
		SLDH		*+AR10[7], R52
		SNOP		5
		SSTH		R51, *+AR15[16]
		SSTH		R51, *+AR15[17]
		SNOP		2
		SLDW		*+AR15[8], R53
		SNOP		5
		SVBCAST.M2 		 R53,VR6
		SNOP		3
		VSTW.LS 		VR6,*+AR7[48]
		VLDH.LS 		*AR5,VR15
	|	SSTH		R52, *+AR15[18]
		SSTH		R52, *+AR15[19]
		SNOP		2
		SLDW		*+AR15[9], R60
		SNOP		3
	[!R0]	SBR		.L9
		SNOP		1
		SVBCAST.M2 		 R60,VR7
		SNOP		3
		VSTW.LS 		VR7,*+AR7[48]
	;; condjump to .L9 occurs
		VLDH.LS 		*AR5,VR16
		SNOP		7
.L8:
		SSHFAR		31, R19, R59
	|	SMOV.M2		R19, R58
	|	SADD.M1		2,R19,R54
		SSHFAR		1, R19, R57
	|	SMOV.M2		R59, R61
	;no-op trunc di R59:R58 to pdi R59:R58
	|	SADD.M1		4,R19,R26
		SMOV.M2		R57, R56
	|	SMOVIL		64, R8
	|	SMOV.M1		R61, R57
	;no-op trunc di R57:R56 to pdi R57:R56
		SADD.M2		R8,R42,R21
	|	SSHFLL		2, R57, R46
	|	SADD.M1		6,R19,R28
		SSHFLR		30, R56, R29
	|	SADD.M2		16,R19,R19
		SSHFLR		31, R58, R23
		SSHFLL		1, R59, R27
		SLTU		R21, R42, R47
	|	SMOV.M2		R21, R42
		SSHFLL		2, R56, R52
	|	SADD.M2		R43,R47,R43
	|	SMOV.M1		R26, R56
		SSHFAR		31, R54, R20
	|	SMVAGA36.M1		R43:R42, AR2
		SOR		R27, R23, R45
	|	SMOV.M2		R20, R55
		SOR		R46, R29, R53
	;no-op trunc di R55:R54 to pdi R55:R54
	|	VLDW.LS 		*AR2,VR17
		SSHFLL		1, R58, R44
	|	SADDA.M2		R53:R52,OR1,AR1
		SADDA.M1		R45:R44,OR1,AR3
	|	SSHFLR		31, R54, R44
		SSHFLL		1, R55, R45
		SSHFAR		31, R26, R48
	|	VLDW.LS 		*AR1,VR18
		SSHFLL		1, R54, R46
	|	VLDH.LS 		*AR3,VR8
	|	SMOV.M2		R48, R57
	|	SMOV.M1		R28, R54
		SOR		R45, R44, R47
	;no-op trunc di R57:R56 to pdi R57:R56
		SADDA.M2		R47:R46,OR1,AR1
	|	SSHFLR		31, R56, R50
		SSHFLL		1, R57, R49
		SSHFAR		31, R28, R51
		SOR		R49, R50, R49
	|	VLDH.LS 		*AR1,VR19
	|	SMOV.M2		R51, R55
		SSHFLL		1, R56, R48
	;no-op trunc di R55:R54 to pdi R55:R54
		SADDA.M2		R49:R48,OR1,AR1
	|	SSHFLR		31, R54, R56
		SSHFLL		1, R55, R52
	|	VMULAS16T.M3		 VR8,VR9,VR17,VR17
		SMVCGC.L		R2, SMR
		SOR		R52, R56, R51
	|	VLDH.LS 		*AR1,VR21
		SNOP		1
		SSHFLL		1, R54, R50
	|	VSHUFH		 VR18,VR18,VR20
		SADDA.M2		R51:R50,OR1,AR1
	|	SMVCGC.L		R1, SMR
	|	VMULAS16T.M3		 VR19,VR11,VR17,VR17
		SLT		R19, R18, R0
		SNOP		1
		VLDH.LS 		*AR1,VR22
	|	VSHUFH		 VR18,VR18,VR24
		VSTW.LS 		VR20,*+AR7[32]
		VLDH.LS 		*AR4,VR23
	|	VMULAS16T.M3		 VR21,VR13,VR17,VR17
	|	VLDH.LS 		*AR6,VR25
		VSTW.LS 		VR24,*+AR7[32]
		VLDH.LS 		*AR4,VR26
	|	VLDH.LS 		*AR6,VR27
		SNOP		3
		VMULAS16T.M3		 VR22,VR15,VR17,VR17
		SNOP		2
		VMULAS16T.M3		 VR23,VR10,VR17,VR17
		SNOP		2
		VMULAS16T.M3		 VR25,VR12,VR17,VR17
		SNOP		2
	[R0]	SBR		.L8
	|	VMULAS16T.M3		 VR26,VR14,VR17,VR17
		SNOP		2
		VMULAS16T.M3		 VR27,VR16,VR17,VR17
		SNOP		2
		VSTW.LS 		VR17,*AR2
	;; condjump to .L8 occurs
.L9:
		SADD.M2		16,R16,R42
		SLTU		R42, R16, R43
	|	SMOV.M2		R42, R16
		SADD.M2		R17,R43,R17
	|	SEQ		R42, R32, R0
	[R0]	SEQ		R17, R30, R0
	[!R0]	SBR		.L6
		SNOP		6
	;; condjump to .L6 occurs
.L7:
		SADD.M2		1,R9,R18
	|	SMOVIL		0, R10
	|	SMOV.M1		R14, R11
		SSHFLR		31, R18, R12
	|	SMOV.M2		R15, R31
	|	SMOV.M1		R14, R42
		SADD.M2		R18,R12,R9
	|	SMOVIL		64, R32
	|	SMOV.M1		R15, R43
		SSHFAR		1, R9, R13
	|	SADD.M2		R32,R14,R1
		SLT		R10, R13, R2
	|	SADD.M2		-1,R13,R30
	[!R2]	SBR		.L1
	|	SLTU		R1, R14, R60
		SSHFLL		6, R30, R53
	|	SADD.M2		R15,R60,R58
		SSHFLR		26, R30, R54
	|	SADD.M2		R53,R1,R57
		SLTU		R57, R1, R61
	|	SADD.M2		R54,R58,R55
		SADD.M2		R55,R61,R3
		SNOP		2
	;; condjump to .L1 occurs
.L10:
		SSHFLL		1, R42, R20
	|	SMVAGA36.M1		R43:R42, AR0
		SLTU		R20, R42, R23
	|	SSUB.M2		R11, R20, R44
		SSHFLL		1, R43, R25
		SADD.M2		R25,R23,R27
	|	SLTU		R20, R44, R22
		SSUB.M2		R31, R27, R28
	|	SMOVIL		64, R8
		SSUB.M2		R22, R28, R45
	|	SADD.M1		R8,R42,R21
		SMVAGA36.M1		R45:R44, AR2
	|	SLTU		R21, R42, R29
	|	SMOV.M2		R21, R42
		SADD.M2		R43,R29,R43
	|	SEQ		R21, R57, R0
		VLDDWM2.LS 		*AR2,VR29:VR28
	|[R0]	SEQ		R43, R3, R0
		SNOP		7
		VSTDW.LS 		VR29:VR28,*AR7
		VLDW.LS 		*AR7,VR29
	|	VLDW.LS 		*+AR7[16],VR31
		SNOP		4
	[!R0]	SBR		.L10
		SNOP		2
		VSHFAR		15,VR29, VR30
		VSHFAR		15,VR31, VR32
		VSBALE2		VR30,VR32,VR33
		VSTW.LS 		VR33,*AR0
	;; condjump to .L10 occurs
.L1:
		SLDW		*+AR15[11], R30
	|	SMOVIL		256, R6
		SLDW		*+AR15[12], R31
	|	SMOVIL		0, R7
		SLDW		*+AR15[13], R32
	|	SADDA.M2		R7:R6,AR7,AR7
		SMOVIL		56, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
	.size	DSP_fir_r8_vc1, .-DSP_fir_r8_vc1