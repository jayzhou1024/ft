	.file	"DSP_fir_r8_hM16_rM8A8X8_vc1.c"
.text;
.Ltext0:
	.section	.text.DSP_fir_r8_hM16_rM8A8X8_vc,"ax",@progbits
	.align	2
	.global	DSP_fir_r8_hM16_rM8A8X8_vc
	.type	DSP_fir_r8_hM16_rM8A8X8_vc, @function
DSP_fir_r8_hM16_rM8A8X8_vc:
.LFB3:
	.file 1 "../DSP_fir_r8_hM16_rM8A8X8_vc1.c"
	.loc 1 18 0
.LVL0:
		SMOVIL		256, R6
	|	SMVAGA36.M2		R13:R12, AR12
	|	SADD.M1		15,R18,R43
		SMOVIL		0, R7
	|	SMVAGA36.M1		R15:R14, OR0
		SSUBA.L		R7:R6, AR7, AR7
	.loc 1 22 0
		SMOVIL		1075183616, R28
		SNOP		1
	.loc 1 18 0
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.loc 1 22 0
		SMOVIH		1075183616, R28
.LCFI1:
		SMOVIL		0, R29
	|	SSTW		R32, *+AR15[13]
.LCFI2:
		SMVAGA36.M2		R29:R28, AR10
	|	SMOVIL		67305985, R12
	|	SSTW		R31, *+AR15[12]
.LVL1:
		SMOVIH		67305985, R12
	.loc 1 23 0
		SMOVIL		0, R13
	.loc 1 18 0
		SSTW		R30, *+AR15[11]
.LCFI3:
	.loc 1 22 0
		SSTW		R12, *AR10
	|	SMOVIL		1075183620, R12
	.loc 1 23 0
		SMOVIH		1075183620, R12
		SMVAGA36.M2		R13:R12, AR10
	|	SMOVIL		134678021, R42
	.loc 1 24 0
		SMOVIL		1075183624, R28
	.loc 1 23 0
		SMOVIH		134678021, R42
	.loc 1 24 0
		SMOVIH		1075183624, R28
	|	SSTW		R42, *AR10
		SMOVIL		0, R29
		SMVAGA36.M2		R29:R28, AR10
	|	SMOVIL		202050057, R54
	.loc 1 25 0
		SMOVIL		1075183628, R12
	.loc 1 24 0
		SMOVIH		202050057, R54
	.loc 1 25 0
		SMOVIH		1075183628, R12
	|	SSTW		R54, *AR10
		SMOVIL		0, R13
		SMVAGA36.M2		R13:R12, AR10
	|	SMOVIL		269422093, R58
	.loc 1 27 0
		SMOVIL		1075183632, R28
	.loc 1 25 0
		SMOVIH		269422093, R58
	.loc 1 27 0
		SMOVIH		1075183632, R28
	|	SSTW		R58, *AR10
		SMOVIL		0, R29
		SMVAGA36.M2		R29:R28, AR10
	|	SMOVIL		100992003, R0
	.loc 1 28 0
		SMOVIL		1075183636, R12
	.loc 1 27 0
		SMOVIH		100992003, R0
	.loc 1 28 0
		SMOVIH		1075183636, R12
	|	SSTW		R0, *AR10
		SMOVIL		0, R13
		SMVAGA36.M2		R13:R12, AR10
	|	SMOVIL		168364039, R57
	.loc 1 29 0
		SMOVIL		1075183640, R28
	.loc 1 28 0
		SMOVIH		168364039, R57
	.loc 1 29 0
		SMOVIH		1075183640, R28
	|	SSTW		R57, *AR10
		SMOVIL		0, R29
		SMVAGA36.M2		R29:R28, AR10
	|	SMOVIL		235736075, R56
	.loc 1 30 0
		SMOVIL		1075183644, R12
	.loc 1 29 0
		SMOVIH		235736075, R56
	.loc 1 30 0
		SMOVIH		1075183644, R12
	|	SSTW		R56, *AR10
		SMOVIL		0, R13
		SMVAGA36.M2		R13:R12, AR10
	|	SMOVIL		303108111, R55
	.loc 1 34 0
		SMOVIL		1075183648, R28
	.loc 1 30 0
		SMOVIH		303108111, R55
	.loc 1 34 0
		SMOVIH		1075183648, R28
	|	SSTW		R55, *AR10
		SMOVIL		0, R29
		SMVAGA36.M2		R29:R28, AR10
	|	SMOVIL		1075183652, R12
	.loc 1 35 0
		SMOVIH		1075183652, R12
		SMOVIL		0, R13
	|	SSTW		R42, *AR10
	.loc 1 36 0
		SMOVIL		1075183656, R28
	|	SMVAGA36.M2		R13:R12, AR10
		SMOVIH		1075183656, R28
		SMOVIL		0, R29
	|	SSTW		R54, *AR10
		SMVAGA36.M2		R29:R28, AR10
	|	SSHFAR		31, R43, R59
	.loc 1 46 0
		SSHFLR		28, R59, R1
	.loc 1 36 0
		SSTW		R58, *AR10
	|	SMOVIL		1075183660, R58
	|	SADD.M2		R43,R1,R2
	.loc 1 37 0
		SMOVIH		1075183660, R58
		SMOVIL		0, R59
		SMVAGA36.M2		R59:R58, AR10
	|	SMOVIL		336794129, R3
	.loc 1 39 0
		SMOVIL		1075183664, R12
		SMOVIH		1075183664, R12
		SMOVIL		0, R13
	.loc 1 37 0
		SMOVIH		336794129, R3
		SSTW		R3, *AR10
	|	SMOVIL		1075183668, R28
	|	SMVAGA36.M2		R13:R12, AR10
	.loc 1 40 0
		SMOVIH		1075183668, R28
		SMOVIL		0, R29
	.loc 1 39 0
		SSTW		R57, *AR10
	|	SMOVIL		1075183672, R42
	|	SMVAGA36.M2		R29:R28, AR10
	.loc 1 41 0
		SMOVIH		1075183672, R42
		SMOVIL		0, R43
	.loc 1 40 0
		SSTW		R56, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	|	SMOVIL		1075183676, R54
	.loc 1 42 0
		SMOVIH		1075183676, R54
		SMOVIL		370480147, R13
	.loc 1 41 0
		SSTW		R55, *AR10
	|	SMOVIL		0, R55
	.loc 1 42 0
		SMVAGA36.M2		R55:R54, AR10
	|	SMOVIH		370480147, R13
	.loc 1 63 0
		SMOVIL		0, R8
	.loc 1 42 0
		SSTW		R13, *AR10
	|	SMOVIL		128, R42
	.loc 1 130 0
		SMOVIL		0, R43
	.loc 1 12 0
		SMOVIL		-64, R12
	|	SADDA.M2		R43:R42,AR7,AR4
		SMOVIL		-1, R13
	.loc 1 63 0
		SLT		R8, R16, R0
	|	SADDA.M2		R13:R12,OR0,AR0
	|	SADD.M1		-1,R16,R16
.LVL2:
	[!R0]	SBR		.L7
	|	SSHFAR		4, R2, R9
.LVL3:
	.loc 1 12 0
		SSHFLR		3, R16, R19
	.loc 1 131 0
		SMOVIL		32, R12
	|	SADD.M2		1,R19,R32
		SMOVIL		0, R13
	.loc 1 67 0
		SMOVIL		192, R42
	|	SADDA.M2		R13:R12,AR4,AR6
	|	SMVAAGL.M1		AR0, R13:R12
		SMOVIL		0, R43
	.loc 1 12 0
		SLTU		R32, R19, R21
	|[R0]	SADDA.M2		R43:R42,AR7,AR5
	|[R0]	SMVAAGH.M1		AR0, R13:R12
	;; condjump to .L7 occurs
		SSHFLR		28, R32, R22
		SMOVIL		0, R20
		SSHFLL		4, R21, R30
		SMOVIL		0, R16
.LVL4:
		SMOVIL		0, R17
		SLT		R20, R18, R31
	.loc 1 107 0
		SMOVIL		0, R2
	.loc 1 12 0
		SOR		R30, R22, R30
		SSHFLL		4, R32, R32
	.loc 1 136 0
		SMOVIL		2, R1
.LVL5:
.L6:
	.loc 1 12 0
		SMOV.M2		R16, R54
	|	SMOV.M1		R17, R55
	|	SMOVIL		0, R19
	;no-op trunc di R55:R54 to pdi R55:R54
		SADDA.M2		R55:R54,AR12,AR10
	|	SMOV.M1		R31, R0
		SADD.M1		R10,R16,R42
	.loc 1 64 0
		SLDH		*AR10, R25
	|	SLTU		R42, R16, R23
	|	SADD.M2		R11,R17,R24
	.loc 1 69 0
		SLDH		*+AR10[1], R26
	|	SADD.M2		R24,R23,R43
	.loc 1 74 0
		SLDH		*+AR10[2], R27
	|	SMVAGA36.M1		R43:R42, OR1
	|	SMOV.M2		R12, R42
	.loc 1 79 0
		SLDH		*+AR10[3], R28
	|	SMOV.M2		R13, R43
	.loc 1 84 0
		SLDH		*+AR10[4], R29
		SNOP		5
	.loc 1 65 0
		SSTH		R25, *+AR15[5]
	.loc 1 64 0
		SSTH		R25, *+AR15[4]
		SNOP		2
	.loc 1 66 0
		SLDW		*+AR15[2], R45
	.loc 1 89 0
		SLDH		*+AR10[5], R44
		SNOP		4
	.loc 1 66 0
		SVBCAST.M2 		 R45,VR3
		SNOP		3
.LVL6:
		VSTW.LS 		VR3,*+AR7[48]
.LVL7:
	.loc 1 67 0
		VLDH.LS 		*AR5,VR9
	|	SSTH		R26, *+AR15[6]
.LVL8:
	.loc 1 70 0
		SSTH		R26, *+AR15[7]
		SNOP		2
	.loc 1 71 0
		SLDW		*+AR15[3], R46
		SNOP		5
		SVBCAST.M2 		 R46,VR0
		SNOP		3
.LVL9:
		VSTW.LS 		VR0,*+AR7[48]
.LVL10:
	.loc 1 72 0
		VLDH.LS 		*AR5,VR10
	|	SSTH		R27, *+AR15[8]
.LVL11:
	.loc 1 75 0
		SSTH		R27, *+AR15[9]
		SNOP		2
	.loc 1 76 0
		SLDW		*+AR15[4], R47
		SNOP		5
		SVBCAST.M2 		 R47,VR1
		SNOP		3
.LVL12:
		VSTW.LS 		VR1,*+AR7[48]
.LVL13:
	.loc 1 77 0
		VLDH.LS 		*AR5,VR11
	|	SSTH		R28, *+AR15[10]
.LVL14:
	.loc 1 80 0
		SSTH		R28, *+AR15[11]
		SNOP		2
	.loc 1 81 0
		SLDW		*+AR15[5], R48
		SNOP		5
		SVBCAST.M2 		 R48,VR2
		SNOP		3
.LVL15:
		VSTW.LS 		VR2,*+AR7[48]
.LVL16:
	.loc 1 82 0
		VLDH.LS 		*AR5,VR12
	|	SSTH		R29, *+AR15[12]
.LVL17:
	.loc 1 85 0
		SSTH		R29, *+AR15[13]
		SNOP		2
	.loc 1 86 0
		SLDW		*+AR15[6], R49
		SNOP		5
		SVBCAST.M2 		 R49,VR4
		SNOP		3
.LVL18:
		VSTW.LS 		VR4,*+AR7[48]
.LVL19:
	.loc 1 87 0
		VLDH.LS 		*AR5,VR13
	|	SSTH		R44, *+AR15[14]
.LVL20:
	.loc 1 90 0
		SSTH		R44, *+AR15[15]
		SNOP		2
	.loc 1 91 0
		SLDW		*+AR15[7], R50
		SNOP		5
		SVBCAST.M2 		 R50,VR5
		SNOP		3
.LVL21:
		VSTW.LS 		VR5,*+AR7[48]
	|	SLDH		*+AR10[6], R51
	|	VLDH.LS 		*AR5,VR14
.LVL22:
	.loc 1 99 0
		SLDH		*+AR10[7], R52
		SNOP		5
	.loc 1 94 0
		SSTH		R51, *+AR15[16]
	.loc 1 95 0
		SSTH		R51, *+AR15[17]
		SNOP		2
	.loc 1 96 0
		SLDW		*+AR15[8], R53
		SNOP		5
		SVBCAST.M2 		 R53,VR6
		SNOP		3
.LVL23:
		VSTW.LS 		VR6,*+AR7[48]
.LVL24:
	.loc 1 97 0
		VLDH.LS 		*AR5,VR15
	|	SSTH		R52, *+AR15[18]
.LVL25:
	.loc 1 100 0
		SSTH		R52, *+AR15[19]
		SNOP		2
	.loc 1 101 0
		SLDW		*+AR15[9], R60
		SNOP		3
.LVL26:
	.loc 1 107 0
	[!R0]	SBR		.L9
		SNOP		1
	.loc 1 101 0
		SVBCAST.M2 		 R60,VR7
		SNOP		3
.LVL27:
		VSTW.LS 		VR7,*+AR7[48]
	;; condjump to .L9 occurs
.LVL28:
	.loc 1 102 0
		VLDH.LS 		*AR5,VR16
		SNOP		7
.LVL29:
.L8:
	.loc 1 111 0
		SSHFAR		31, R19, R59
	|	SMOV.M2		R19, R58
	|	SADD.M1		2,R19,R54
	.loc 1 124 0
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
	.loc 1 111 0
		SSHFLR		31, R58, R23
		SSHFLL		1, R59, R27
		SLTU		R21, R42, R47
	|	SMOV.M2		R21, R42
	.loc 1 124 0
		SSHFLL		2, R56, R52
	|	SADD.M2		R43,R47,R43
	|	SMOV.M1		R26, R56
	.loc 1 114 0
		SSHFAR		31, R54, R20
	|	SMVAGA36.M1		R43:R42, AR2
	.loc 1 111 0
		SOR		R27, R23, R45
	|	SMOV.M2		R20, R55
	.loc 1 124 0
		SOR		R46, R29, R53
	;no-op trunc di R55:R54 to pdi R55:R54
	|	VLDW.LS 		*AR2,VR17
.LVL30:
	.loc 1 111 0
		SSHFLL		1, R58, R44
	|	SADDA.M2		R53:R52,OR1,AR1
		SADDA.M1		R45:R44,OR1,AR3
	|	SSHFLR		31, R54, R44
	.loc 1 114 0
		SSHFLL		1, R55, R45
	.loc 1 117 0
		SSHFAR		31, R26, R48
	|	VLDW.LS 		*AR1,VR18
	.loc 1 114 0
		SSHFLL		1, R54, R46
	|	VLDH.LS 		*AR3,VR8
	|	SMOV.M2		R48, R57
	|	SMOV.M1		R28, R54
.LVL31:
		SOR		R45, R44, R47
	;no-op trunc di R57:R56 to pdi R57:R56
		SADDA.M2		R47:R46,OR1,AR1
	|	SSHFLR		31, R56, R50
	.loc 1 117 0
		SSHFLL		1, R57, R49
	.loc 1 120 0
		SSHFAR		31, R28, R51
	.loc 1 117 0
		SOR		R49, R50, R49
	|	VLDH.LS 		*AR1,VR19
	|	SMOV.M2		R51, R55
		SSHFLL		1, R56, R48
	;no-op trunc di R55:R54 to pdi R55:R54
		SADDA.M2		R49:R48,OR1,AR1
	|	SSHFLR		31, R54, R56
	.loc 1 120 0
		SSHFLL		1, R55, R52
	|	VMULAS16T.M3		 VR8,VR9,VR17,VR17
.LVL32:
	.loc 1 127 0
		SMVCGC.L		R2, SMR
	.loc 1 120 0
		SOR		R52, R56, R51
	|	VLDH.LS 		*AR1,VR21
	.loc 1 117 0
		SNOP		1
	.loc 1 120 0
		SSHFLL		1, R54, R50
	|	VSHUFH		 VR18,VR18,VR20
		SADDA.M2		R51:R50,OR1,AR1
	|	SMVCGC.L		R1, SMR
	|	VMULAS16T.M3		 VR19,VR11,VR17,VR17
.LVL33:
	.loc 1 107 0
		SLT		R19, R18, R0
		SNOP		1
	.loc 1 120 0
		VLDH.LS 		*AR1,VR22
	|	VSTW.LS 		VR20,*+AR7[32]
	|	VSHUFH		 VR18,VR18,VR24
	.loc 1 130 0
		VLDH.LS 		*AR4,VR23
	|	VLDH.LS 		*AR6,VR25
	.loc 1 118 0
		VMULAS16T.M3		 VR21,VR13,VR17,VR17
.LVL34:
	.loc 1 137 0
		VSTW.LS 		VR24,*+AR7[32]
	.loc 1 142 0
		VLDH.LS 		*AR4,VR26
	|	VLDH.LS 		*AR6,VR27
	.loc 1 143 0
		SNOP		3
	.loc 1 121 0
		VMULAS16T.M3		 VR22,VR15,VR17,VR17
		SNOP		2
.LVL35:
	.loc 1 132 0
		VMULAS16T.M3		 VR23,VR10,VR17,VR17
		SNOP		2
.LVL36:
	.loc 1 133 0
		VMULAS16T.M3		 VR25,VR12,VR17,VR17
		SNOP		2
.LVL37:
	.loc 1 107 0
	[R0]	SBR		.L8
	|	VMULAS16T.M3		 VR26,VR14,VR17,VR17
	.loc 1 142 0
		SNOP		2
.LVL38:
	.loc 1 143 0
		VMULAS16T.M3		 VR27,VR16,VR17,VR17
		SNOP		2
.LVL39:
	.loc 1 145 0
		VSTW.LS 		VR17,*AR2
	;; condjump to .L8 occurs
.LVL40:
.L9:
		SADD.M2		16,R16,R42
		SLTU		R42, R16, R43
	|	SMOV.M2		R42, R16
		SADD.M2		R17,R43,R17
	|	SEQ		R42, R32, R0
	.loc 1 63 0
	[R0]	SEQ		R17, R30, R0
	[!R0]	SBR		.L6
		SNOP		6
	;; condjump to .L6 occurs
.LVL41:
.L7:
	.loc 1 152 0
		SADD.M2		1,R9,R18
	|	SMOVIL		0, R10
	|	SMOV.M1		R14, R11
.LVL42:
		SSHFLR		31, R18, R12
	|	SMOV.M2		R15, R31
	|	SMOV.M1		R14, R42
		SADD.M2		R18,R12,R9
	|	SMOVIL		64, R32
	|	SMOV.M1		R15, R43
.LVL43:
		SSHFAR		1, R9, R13
	|	SADD.M2		R32,R14,R1
		SLT		R10, R13, R2
	|	SADD.M2		-1,R13,R30
	[!R2]	SBR		.L1
	|	SLTU		R1, R14, R60
	.loc 1 12 0
		SSHFLL		6, R30, R53
	|	SADD.M2		R15,R60,R58
		SSHFLR		26, R30, R54
	|	SADD.M2		R53,R1,R57
		SLTU		R57, R1, R61
	|	SADD.M2		R54,R58,R55
		SADD.M2		R55,R61,R3
		SNOP		2
	.loc 1 152 0
	;; condjump to .L1 occurs
.LVL44:
.L10:
	.loc 1 12 0
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
	.loc 1 154 0
		VLDDWM2.LS 		*AR2,VR29:VR28
	|[R0]	SEQ		R43, R3, R0
	.loc 1 152 0
		SNOP		7
	.loc 1 154 0
		VSTDW.LS 		VR29:VR28,*AR7
	.loc 1 159 0
		VLDW.LS 		*AR7,VR29
	|	VLDW.LS 		*+AR7[16],VR31
	.loc 1 160 0
		SNOP		4
	.loc 1 152 0
	[!R0]	SBR		.L10
		SNOP		2
	.loc 1 159 0
		VSHFAR		15,VR29, VR30
.LVL45:
	.loc 1 160 0
		VSHFAR		15,VR31, VR32
.LVL46:
	.loc 1 162 0
		VSBALE2		VR30,VR32,VR33
		VSTW.LS 		VR33,*AR0
	;; condjump to .L10 occurs
.LVL47:
.L1:
	.loc 1 164 0
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
.LFE3:
	.size	DSP_fir_r8_hM16_rM8A8X8_vc, .-DSP_fir_r8_hM16_rM8A8X8_vc
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
	.byte	0x38
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xb0
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xaf
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xae
	.byte	0x3
	.align	3
.LEFDE0:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5a5
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSP_fir_r8_hM16_rM8A8X8_vc1.c"
	.string	"/cygdrive/c/Users/zhou hang/OneDrive/\346\241\214\351\235\242/DSP_fir_/DSP_fir_r8_hM16_rM8A8X8/Debug"
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
	.string	"DSP_fir_r8_hM16_rM8A8X8_vc"
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x55a
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0xd
	.4byte	0x567
	.4byte	.LLST1
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0xe
	.4byte	0x56d
	.4byte	.LLST2
	.byte	0x5
	.string	"r"
	.byte	0x1
	.byte	0xf
	.4byte	0x567
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x10
	.4byte	0x127
	.4byte	.LLST3
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x11
	.4byte	0x127
	.4byte	.LLST4
	.byte	0x6
	.string	"MW_config_Addr"
	.byte	0x1
	.byte	0x14
	.4byte	0x573
	.4byte	0x40160000
	.byte	0x7
	.string	"i"
	.byte	0x1
	.byte	0x2d
	.4byte	0x127
	.4byte	.LLST5
	.byte	0x7
	.string	"j"
	.byte	0x1
	.byte	0x2d
	.4byte	0x127
	.4byte	.LLST6
	.byte	0x8
	.string	"k"
	.byte	0x1
	.byte	0x2d
	.4byte	0x127
	.byte	0x7
	.string	"vr_len"
	.byte	0x1
	.byte	0x2e
	.4byte	0x127
	.4byte	.LLST7
	.byte	0x9
	.string	"int_h_0"
	.byte	0x1
	.byte	0x30
	.4byte	0x127
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x9
	.string	"int_h_1"
	.byte	0x1
	.byte	0x30
	.4byte	0x127
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x9
	.string	"int_h_2"
	.byte	0x1
	.byte	0x30
	.4byte	0x127
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x9
	.string	"int_h_3"
	.byte	0x1
	.byte	0x30
	.4byte	0x127
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x9
	.string	"int_h_4"
	.byte	0x1
	.byte	0x30
	.4byte	0x127
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x9
	.string	"int_h_5"
	.byte	0x1
	.byte	0x30
	.4byte	0x127
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x9
	.string	"int_h_6"
	.byte	0x1
	.byte	0x30
	.4byte	0x127
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x7
	.string	"int_h_7"
	.byte	0x1
	.byte	0x30
	.4byte	0x127
	.4byte	.LLST8
	.byte	0x7
	.string	"temp_vh_0"
	.byte	0x1
	.byte	0x31
	.4byte	0x55a
	.4byte	.LLST9
	.byte	0x7
	.string	"temp_vh_1"
	.byte	0x1
	.byte	0x31
	.4byte	0x55a
	.4byte	.LLST10
	.byte	0x7
	.string	"temp_vh_2"
	.byte	0x1
	.byte	0x31
	.4byte	0x55a
	.4byte	.LLST11
	.byte	0x7
	.string	"temp_vh_3"
	.byte	0x1
	.byte	0x31
	.4byte	0x55a
	.4byte	.LLST12
	.byte	0x7
	.string	"temp_vh_4"
	.byte	0x1
	.byte	0x31
	.4byte	0x55a
	.4byte	.LLST13
	.byte	0x7
	.string	"temp_vh_5"
	.byte	0x1
	.byte	0x31
	.4byte	0x55a
	.4byte	.LLST14
	.byte	0x7
	.string	"temp_vh_6"
	.byte	0x1
	.byte	0x31
	.4byte	0x55a
	.4byte	.LLST15
	.byte	0x7
	.string	"temp_vh_7"
	.byte	0x1
	.byte	0x31
	.4byte	0x55a
	.4byte	.LLST16
	.byte	0x7
	.string	"svb_temp_h"
	.byte	0x1
	.byte	0x32
	.4byte	0x579
	.4byte	.LLST17
	.byte	0x7
	.string	"temp_vr_0_15"
	.byte	0x1
	.byte	0x34
	.4byte	0x579
	.4byte	.LLST18
	.byte	0x9
	.string	"tmpr"
	.byte	0x1
	.byte	0x35
	.4byte	0x586
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.byte	0x7
	.string	"temp_vx_0_15"
	.byte	0x1
	.byte	0x37
	.4byte	0x55a
	.4byte	.LLST19
	.byte	0x7
	.string	"temp_vx_1_16"
	.byte	0x1
	.byte	0x37
	.4byte	0x55a
	.4byte	.LLST20
	.byte	0x7
	.string	"temp_vx_2_17"
	.byte	0x1
	.byte	0x37
	.4byte	0x55a
	.4byte	.LLST21
	.byte	0x7
	.string	"temp_vx_3_18"
	.byte	0x1
	.byte	0x37
	.4byte	0x55a
	.4byte	.LLST22
	.byte	0x7
	.string	"temp_vx_4_19"
	.byte	0x1
	.byte	0x38
	.4byte	0x55a
	.4byte	.LLST23
	.byte	0x7
	.string	"temp_vx_5_20"
	.byte	0x1
	.byte	0x38
	.4byte	0x55a
	.4byte	.LLST24
	.byte	0x7
	.string	"temp_vx_6_21"
	.byte	0x1
	.byte	0x38
	.4byte	0x55a
	.4byte	.LLST25
	.byte	0x9
	.string	"temp_vx_7_22"
	.byte	0x1
	.byte	0x38
	.4byte	0x55a
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x7
	.string	"temp_vx_0_31"
	.byte	0x1
	.byte	0x39
	.4byte	0x58c
	.4byte	.LLST26
	.byte	0x9
	.string	"temp_vx_0_31_shuff"
	.byte	0x1
	.byte	0x39
	.4byte	0x58c
	.byte	0x3
	.byte	0x77
	.byte	0x80,0x1
	.byte	0x7
	.string	"temp_x_offset_addr"
	.byte	0x1
	.byte	0x3b
	.4byte	0x567
	.4byte	.LLST27
	.byte	0x8
	.string	"temp_r_offset_addr"
	.byte	0x1
	.byte	0x3c
	.4byte	0x586
	.byte	0x7
	.string	"temp_x_offset_addr_p_d"
	.byte	0x1
	.byte	0x3d
	.4byte	0x599
	.4byte	.LLST27
	.byte	0x9
	.string	"temp_in_r"
	.byte	0x1
	.byte	0x95
	.4byte	0x59f
	.byte	0x2
	.byte	0x77
	.byte	0
	.byte	0x7
	.string	"M2LD_temp1"
	.byte	0x1
	.byte	0x96
	.4byte	0x579
	.4byte	.LLST29
	.byte	0x7
	.string	"M2LD_temp2"
	.byte	0x1
	.byte	0x96
	.4byte	0x579
	.4byte	.LLST30
	.byte	0x8
	.string	"M2LD_Dst"
	.byte	0x1
	.byte	0x97
	.4byte	0x586
	.byte	0
	.byte	0xa
	.byte	0x1
	.4byte	0x11a
	.4byte	0x567
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xc
	.byte	0x8
	.4byte	0x55a
	.byte	0xc
	.byte	0x8
	.4byte	0x11a
	.byte	0xc
	.byte	0x8
	.4byte	0x127
	.byte	0xa
	.byte	0x1
	.4byte	0x127
	.4byte	0x586
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xc
	.byte	0x8
	.4byte	0x579
	.byte	0xa
	.byte	0x1
	.4byte	0x11a
	.4byte	0x599
	.byte	0xb
	.byte	0x1f
	.byte	0
	.byte	0xc
	.byte	0x8
	.4byte	0x58c
	.byte	0xd
	.byte	0x1
	.4byte	0x168
	.byte	0xb
	.byte	0xf
	.byte	0
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
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
	.byte	0x21
	.byte	0
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.byte	0x87,0x42
	.byte	0xc
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
	.2byte	0x2
	.byte	0x7f
	.byte	0x38
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL42
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL42
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
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
	.llong	.LFE3
	.2byte	0x1
	.byte	0x5c
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL2
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL2
	.llong	.LVL4
	.2byte	0x4
	.byte	0x92
	.byte	0x20
	.byte	0x1
	.byte	0x9f
	.llong	.LVL4
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL42
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL42
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL3
	.llong	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL41
	.llong	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL39
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x23
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL3
	.llong	.LVL43
	.2byte	0x1
	.byte	0x69
	.llong	.LVL43
	.llong	.LFE3
	.2byte	0x4
	.byte	0x92
	.byte	0x22
	.byte	0x7f
	.byte	0x9f
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL5
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.byte	0x4c
	.llong	.LVL26
	.llong	.LFE3
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL8
	.llong	.LVL41
	.2byte	0x2
	.byte	0x90
	.byte	0x69
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL11
	.llong	.LVL41
	.2byte	0x2
	.byte	0x90
	.byte	0x6a
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL14
	.llong	.LVL41
	.2byte	0x2
	.byte	0x90
	.byte	0x6b
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL17
	.llong	.LVL41
	.2byte	0x2
	.byte	0x90
	.byte	0x6c
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL20
	.llong	.LVL41
	.2byte	0x2
	.byte	0x90
	.byte	0x6d
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL22
	.llong	.LVL41
	.2byte	0x2
	.byte	0x90
	.byte	0x6e
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL25
	.llong	.LVL41
	.2byte	0x2
	.byte	0x90
	.byte	0x6f
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL29
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x70
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL5
	.llong	.LVL6
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	.LVL7
	.llong	.LVL9
	.2byte	0x2
	.byte	0x90
	.byte	0x63
	.llong	.LVL10
	.llong	.LVL12
	.2byte	0x2
	.byte	0x90
	.byte	0x60
	.llong	.LVL13
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.byte	0x61
	.llong	.LVL16
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x62
	.llong	.LVL19
	.llong	.LVL21
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	.LVL22
	.llong	.LVL23
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	.LVL24
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	.LVL28
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL30
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x71
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL31
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL35
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x77
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL32
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x73
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL35
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x79
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL33
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x75
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL37
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x7a
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL34
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x76
	.llong	0
	.llong	0
.LLST26:
	.llong	.LVL35
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x72
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL29
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x51
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL44
	.llong	.LVL45
	.2byte	0x2
	.byte	0x77
	.byte	0
	.llong	.LVL45
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.byte	0x7e
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL44
	.llong	.LVL46
	.2byte	0x3
	.byte	0x77
	.byte	0xc0,0
	.llong	.LVL46
	.llong	.LVL47
	.2byte	0x3
	.byte	0x90
	.byte	0x80,0x1
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
