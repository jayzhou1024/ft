	.file	"DSP_fir_r8_h24_vc1 -.c"
.text;
.Ltext0:
	.section	.text.DSP_fir_r8_h24_vc1,"ax",@progbits
	.align	2
	.global	DSP_fir_r8_h24_vc1
	.type	DSP_fir_r8_h24_vc1, @function
DSP_fir_r8_h24_vc1:
.LFB3:
	.file 1 "../DSP_fir_r8_h24_vc1 -.c"
	.loc 1 17 0
.LVL0:
		SMOVIL		256, R6
	|	SMVAGA36.M2		R13:R12, AR12
	|	SMVAGA36.M1		R15:R14, OR0
		SMOVIL		0, R7
		SSUBA.L		R7:R6, AR7, AR7
	.loc 1 129 0
		SMOVIL		128, R42
	|	SADD.M2		15,R16,R56
	.loc 1 45 0
		SNOP		1
	.loc 1 129 0
		SMOVIL		0, R43
		SADDA.M2		R43:R42,AR7,AR4
	|	SMOVIL		-56, R6
	.loc 1 17 0
		SMOVIL		-1, R7
	.loc 1 29 0
		SMOVIL		1075183644, R26
	|	SADDA.M1		R7:R6,AR15,AR15
.LCFI0:
	.loc 1 130 0
		SMOVIL		32, R12
.LVL1:
.LCFI1:
		SMOVIL		0, R13
	|	SSTW		R32, *+AR15[13]
.LCFI2:
	.loc 1 29 0
		SMOVIH		1075183644, R26
	|	SADDA.M2		R13:R12,AR4,AR6
	|	SSTW		R31, *+AR15[12]
		SMOVIL		0, R27
		SMVAGA36.M1		R27:R26, AR10
	|	SMOVIL		303108111, R12
.LCFI3:
	.loc 1 33 0
		SMOVIL		1075183648, R42
	|	SSTW		R30, *+AR15[11]
	.loc 1 29 0
		SMOVIH		303108111, R12
	.loc 1 33 0
		SMOVIH		1075183648, R42
		SMOVIL		0, R43
	|	SSTW		R12, *AR10
	.loc 1 22 0
		SMOVIL		134678021, R55
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 34 0
		SMOVIL		1075183652, R26
	.loc 1 22 0
		SMOVIH		134678021, R55
	.loc 1 34 0
		SMOVIH		1075183652, R26
	|	SSTW		R55, *AR10
		SMOVIL		0, R27
		SMVAGA36.M2		R27:R26, AR10
	|	SMOVIL		202050057, R54
	.loc 1 35 0
		SMOVIL		1075183656, R42
	.loc 1 23 0
		SMOVIH		202050057, R54
	.loc 1 35 0
		SMOVIH		1075183656, R42
	|	SSTW		R54, *AR10
		SMOVIL		0, R43
		SMVAGA36.M2		R43:R42, AR10
	|	SMOVIL		269422093, R59
	.loc 1 36 0
		SMOVIL		1075183660, R26
	.loc 1 24 0
		SMOVIH		269422093, R59
	.loc 1 36 0
		SMOVIH		1075183660, R26
	|	SSTW		R59, *AR10
		SMOVIL		0, R27
		SMVAGA36.M2		R27:R26, AR10
	|	SMOVIL		336794129, R42
		SMOVIH		336794129, R42
		SSTW		R42, *AR10
	|	SMOVIL		1075183664, R42
	.loc 1 38 0
		SMOVIH		1075183664, R42
		SMOVIL		0, R43
		SMVAGA36.M2		R43:R42, AR10
	|	SMOVIL		168364039, R58
	.loc 1 39 0
		SMOVIL		1075183668, R26
	.loc 1 27 0
		SMOVIH		168364039, R58
	.loc 1 39 0
		SMOVIH		1075183668, R26
	|	SSTW		R58, *AR10
		SMOVIL		0, R27
	.loc 1 66 0
		SMOVIL		192, R42
	|	SMVAGA36.M2		R27:R26, AR10
		SMOVIL		0, R43
		SADDA.M2		R43:R42,AR7,AR5
	|	SMOVIL		235736075, R57
	.loc 1 40 0
		SMOVIL		1075183672, R42
	.loc 1 28 0
		SMOVIH		235736075, R57
	.loc 1 40 0
		SMOVIH		1075183672, R42
	|	SSTW		R57, *AR10
		SMOVIL		0, R43
		SMVAGA36.M2		R43:R42, AR10
	|	SMOVIL		-1, R13
	.loc 1 41 0
		SMOVIL		370480147, R2
	.loc 1 40 0
		SSTW		R12, *AR10
	|	SMOVIL		-64, R12
	.loc 1 12 0
		SADDA.M2		R13:R12,OR0,AR0
	|	SMOVIL		1075183676, R12
	.loc 1 41 0
		SMOVIH		1075183676, R12
		SMOVIL		0, R13
		SMVAGA36.M1		R13:R12, AR10
	|	SMOVIL		1075183616, R26
	|	SMVAAGL.M2		AR0, R13:R12
		SMOVIH		370480147, R2
	.loc 1 21 0
		SMOVIH		1075183616, R26
	|	SSTW		R2, *AR10
	|	SMVAAGH.M2		AR0, R13:R12
		SMOVIL		0, R27
		SMVAGA36.M2		R27:R26, AR10
	|	SMOVIL		67305985, R3
	.loc 1 22 0
		SMOVIL		1075183620, R42
		SMOVIH		1075183620, R42
		SMOVIL		0, R43
	.loc 1 21 0
		SMOVIH		67305985, R3
		SSTW		R3, *AR10
	|	SMOVIL		1075183624, R26
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 23 0
		SMOVIH		1075183624, R26
		SMOVIL		0, R27
	.loc 1 22 0
		SSTW		R55, *AR10
	|	SMOVIL		1075183628, R42
	|	SMVAGA36.M2		R27:R26, AR10
	.loc 1 24 0
		SMOVIH		1075183628, R42
		SMOVIL		0, R43
	.loc 1 23 0
		SSTW		R54, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	|	SMOVIL		1075183632, R54
	.loc 1 26 0
		SMOVIH		1075183632, R54
		SMOVIL		0, R55
	.loc 1 24 0
		SSTW		R59, *AR10
	|	SMOVIL		100992003, R8
	|	SMVAGA36.M2		R55:R54, AR10
	.loc 1 27 0
		SMOVIL		1075183636, R26
		SMOVIH		1075183636, R26
		SMOVIL		0, R27
	.loc 1 26 0
		SMOVIH		100992003, R8
		SSTW		R8, *AR10
	|	SMOVIL		1075183640, R42
	|	SMVAGA36.M2		R27:R26, AR10
	.loc 1 28 0
		SMOVIL		0, R43
		SMOVIH		1075183640, R42
	.loc 1 27 0
		SSTW		R58, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	|	SSHFAR		31, R56, R32
	.loc 1 45 0
		SSHFLR		28, R32, R0
		SADD.M2		R56,R0,R1
	|	SMOVIL		0, R43
	.loc 1 28 0
		SSTW		R57, *AR10
	|	SSHFAR		4, R1, R32
.LVL2:
	.loc 1 45 0
		SMOVIL		0, R26
		SMOVIL		0, R27
		SLT		R43, R16, R31
	.loc 1 106 0
		SMOVIL		0, R2
	.loc 1 135 0
		SMOVIL		2, R1
	.loc 1 62 0
		SMOVIL		48, R30
.LVL3:
.L3:
	.loc 1 12 0
		SMOV.M2		R26, R54
	|	SMOV.M1		R27, R55
	;no-op trunc di R55:R54 to pdi R55:R54
		SADDA.M2		R55:R54,AR12,AR10
	|	SMOV.M1		R31, R0
		SADD.M1		R10,R26,R42
	.loc 1 63 0
		SLDH		*AR10, R18
	|	SLTU		R42, R26, R9
	|	SADD.M2		R11,R27,R17
	.loc 1 68 0
		SLDH		*+AR10[1], R19
	|	SADD.M2		R17,R9,R43
	|	SMOVIL		0, R17
	.loc 1 73 0
		SLDH		*+AR10[2], R20
	|	SMVAGA36.M1		R43:R42, OR1
	|	SMOV.M2		R12, R42
	.loc 1 78 0
		SLDH		*+AR10[3], R21
	|	SMOV.M2		R13, R43
	.loc 1 83 0
		SLDH		*+AR10[4], R22
		SNOP		5
	.loc 1 63 0
		SSTH		R18, *+AR15[4]
	.loc 1 64 0
		SSTH		R18, *+AR15[5]
		SNOP		2
	.loc 1 65 0
		SLDW		*+AR15[2], R24
	.loc 1 88 0
		SLDH		*+AR10[5], R23
		SNOP		4
	.loc 1 65 0
		SVBCAST.M2 		 R24,VR3
		SNOP		3
.LVL4:
		VSTW.LS 		VR3,*+AR7[48]
.LVL5:
	.loc 1 66 0
		VLDH.LS 		*AR5,VR9
	|	SSTH		R19, *+AR15[6]
.LVL6:
	.loc 1 69 0
		SSTH		R19, *+AR15[7]
		SNOP		2
	.loc 1 70 0
		SLDW		*+AR15[3], R25
		SNOP		5
		SVBCAST.M2 		 R25,VR0
		SNOP		3
.LVL7:
		VSTW.LS 		VR0,*+AR7[48]
.LVL8:
	.loc 1 71 0
		VLDH.LS 		*AR5,VR10
	|	SSTH		R20, *+AR15[8]
.LVL9:
	.loc 1 74 0
		SSTH		R20, *+AR15[9]
		SNOP		2
	.loc 1 75 0
		SLDW		*+AR15[4], R28
		SNOP		5
		SVBCAST.M2 		 R28,VR1
		SNOP		3
.LVL10:
		VSTW.LS 		VR1,*+AR7[48]
.LVL11:
	.loc 1 76 0
		VLDH.LS 		*AR5,VR11
	|	SSTH		R21, *+AR15[10]
.LVL12:
	.loc 1 79 0
		SSTH		R21, *+AR15[11]
		SNOP		2
	.loc 1 80 0
		SLDW		*+AR15[5], R29
		SNOP		5
		SVBCAST.M2 		 R29,VR2
		SNOP		3
.LVL13:
		VSTW.LS 		VR2,*+AR7[48]
.LVL14:
	.loc 1 81 0
		VLDH.LS 		*AR5,VR12
	|	SSTH		R22, *+AR15[12]
.LVL15:
	.loc 1 84 0
		SSTH		R22, *+AR15[13]
		SNOP		2
	.loc 1 85 0
		SLDW		*+AR15[6], R44
		SNOP		5
		SVBCAST.M2 		 R44,VR4
		SNOP		3
.LVL16:
		VSTW.LS 		VR4,*+AR7[48]
.LVL17:
	.loc 1 86 0
		VLDH.LS 		*AR5,VR13
	|	SSTH		R23, *+AR15[14]
.LVL18:
	.loc 1 89 0
		SSTH		R23, *+AR15[15]
		SNOP		2
	.loc 1 90 0
		SLDW		*+AR15[7], R45
		SNOP		5
		SVBCAST.M2 		 R45,VR5
		SNOP		3
.LVL19:
		VSTW.LS 		VR5,*+AR7[48]
	|	SLDH		*+AR10[6], R46
	|	VLDH.LS 		*AR5,VR14
.LVL20:
	.loc 1 98 0
		SLDH		*+AR10[7], R47
		SNOP		5
	.loc 1 93 0
		SSTH		R46, *+AR15[16]
	.loc 1 94 0
		SSTH		R46, *+AR15[17]
		SNOP		2
	.loc 1 95 0
		SLDW		*+AR15[8], R48
		SNOP		5
		SVBCAST.M2 		 R48,VR6
		SNOP		3
.LVL21:
		VSTW.LS 		VR6,*+AR7[48]
.LVL22:
	.loc 1 96 0
		VLDH.LS 		*AR5,VR15
	|	SSTH		R47, *+AR15[18]
.LVL23:
	.loc 1 99 0
		SSTH		R47, *+AR15[19]
		SNOP		2
	.loc 1 100 0
		SLDW		*+AR15[9], R49
		SNOP		3
	.loc 1 106 0
	[!R0]	SBR		.L6
		SNOP		1
	.loc 1 100 0
		SVBCAST.M2 		 R49,VR7
		SNOP		3
.LVL24:
		VSTW.LS 		VR7,*+AR7[48]
	;; condjump to .L6 occurs
.LVL25:
	.loc 1 101 0
		VLDH.LS 		*AR5,VR16
		SNOP		7
.LVL26:
.L5:
	.loc 1 110 0
		SSHFAR		31, R17, R50
	|	SMOV.M2		R17, R58
	|	SADD.M1		2,R17,R51
	.loc 1 123 0
		SSHFAR		1, R17, R52
	|	SMOV.M2		R50, R59
	|	SMOV.M1		R50, R57
		SMOV.M2		R52, R56
	|	SMOVIL		64, R54
	;no-op trunc di R59:R58 to pdi R59:R58
	|	SADD.M1		4,R17,R19
	;no-op trunc di R57:R56 to pdi R57:R56
		SADD.M2		R54,R42,R18
	|	SSHFLR		31, R58, R9
	|	SMOV.M1		R51, R54
	.loc 1 110 0
		SSHFLL		1, R59, R21
	|	SADD.M2		6,R17,R59
	|	SADD.M1		16,R17,R17
	.loc 1 123 0
		SSHFLR		30, R56, R23
		SSHFLL		2, R57, R24
	.loc 1 110 0
		SSHFLL		1, R58, R44
		SLTU		R18, R42, R57
	|	SMOV.M2		R18, R42
	.loc 1 113 0
		SSHFAR		31, R51, R3
	|	SADD.M2		R43,R57,R43
	.loc 1 110 0
		SOR		R21, R9, R45
	|	SMOV.M2		R3, R55
	|	SMVAGA36.M1		R43:R42, AR2
	.loc 1 123 0
		SSHFLL		2, R56, R52
	|	SADDA.M1		R45:R44,OR1,AR3
	;no-op trunc di R55:R54 to pdi R55:R54
	|	SMOV.M2		R19, R56
		SOR		R24, R23, R53
	|	VLDW.LS 		*AR2,VR17
.LVL27:
		SADDA.M1		R53:R52,OR1,AR1
	|	SSHFLR		31, R54, R58
	.loc 1 113 0
		SSHFLL		1, R55, R25
	|	VLDH.LS 		*AR3,VR8
.LVL28:
		SSHFLL		1, R54, R46
	|	SMOV.M2		R59, R54
	.loc 1 116 0
		SSHFAR		31, R19, R28
	|	VLDW.LS 		*AR1,VR18
	.loc 1 113 0
		SOR		R25, R58, R47
	|	SMOV.M2		R28, R57
		SADDA.M2		R47:R46,OR1,AR1
	;no-op trunc di R57:R56 to pdi R57:R56
	|	SSHFLR		31, R56, R29
	.loc 1 116 0
		SSHFLL		1, R57, R44
		SSHFLL		1, R56, R48
	.loc 1 119 0
		SSHFAR		31, R59, R45
	|	VLDH.LS 		*AR1,VR19
	.loc 1 116 0
		SOR		R44, R29, R49
	|	SMOV.M2		R45, R55
	|	VMULAS16T.M3		 VR8,VR9,VR17,VR17
.LVL29:
		SADDA.M2		R49:R48,OR1,AR1
	;no-op trunc di R55:R54 to pdi R55:R54
	|	SSHFLR		31, R54, R56
	.loc 1 119 0
		SSHFLL		1, R55, R46
	.loc 1 126 0
		SMVCGC.L		R2, SMR
	.loc 1 119 0
		SOR		R46, R56, R51
	|	VLDH.LS 		*AR1,VR21
	.loc 1 116 0
		SNOP		1
	.loc 1 119 0
		SSHFLL		1, R54, R50
	|	VSHUFH		 VR18,VR18,VR20
		SADDA.M2		R51:R50,OR1,AR1
	|	SMVCGC.L		R1, SMR
	|	VMULAS16T.M3		 VR19,VR11,VR17,VR17
.LVL30:
	.loc 1 106 0
		SLT		R17, R16, R0
		SNOP		1
	.loc 1 119 0
		VLDH.LS 		*AR1,VR22
	|	VSTW.LS 		VR20,*+AR7[32]
	|	VSHUFH		 VR18,VR18,VR24
	.loc 1 129 0
		VLDH.LS 		*AR4,VR23
	|	VLDH.LS 		*AR6,VR25
	.loc 1 117 0
		VMULAS16T.M3		 VR21,VR13,VR17,VR17
.LVL31:
	.loc 1 136 0
		VSTW.LS 		VR24,*+AR7[32]
	.loc 1 141 0
		VLDH.LS 		*AR4,VR26
	|	VLDH.LS 		*AR6,VR27
	.loc 1 142 0
		SNOP		3
	.loc 1 120 0
		VMULAS16T.M3		 VR22,VR15,VR17,VR17
		SNOP		2
.LVL32:
	.loc 1 131 0
		VMULAS16T.M3		 VR23,VR10,VR17,VR17
		SNOP		2
.LVL33:
	.loc 1 132 0
		VMULAS16T.M3		 VR25,VR12,VR17,VR17
		SNOP		2
.LVL34:
	.loc 1 106 0
	[R0]	SBR		.L5
	|	VMULAS16T.M3		 VR26,VR14,VR17,VR17
	.loc 1 141 0
		SNOP		2
.LVL35:
	.loc 1 142 0
		VMULAS16T.M3		 VR27,VR16,VR17,VR17
		SNOP		2
.LVL36:
	.loc 1 144 0
		VSTW.LS 		VR17,*AR2
	;; condjump to .L5 occurs
.LVL37:
.L6:
		SADD.M2		16,R26,R42
		SLTU		R42, R26, R43
	|	SMOV.M2		R42, R26
		SADD.M2		R27,R43,R27
	|	SEQ		R42, R30, R0
	.loc 1 62 0
	[R0]	SEQ		0, R27, R0
	[!R0]	SBR		.L3
		SNOP		6
	;; condjump to .L3 occurs
.LVL38:
	.loc 1 151 0
		SADD.M2		1,R32,R13
	|	SMOVIL		0, R12
	|	SMOV.M1		R14, R42
		SSHFLR		31, R13, R16
	|	SMOV.M2		R15, R43
.LVL39:
		SADD.M2		R13,R16,R10
	|	SMOVIL		64, R31
.LVL40:
		SSHFAR		1, R10, R11
	|	SADD.M2		R31,R14,R1
		SLT		R12, R11, R2
	|	SADD.M2		-1,R11,R32
.LVL41:
	[!R2]	SBR		.L1
	|	SLTU		R1, R14, R30
	.loc 1 12 0
		SSHFLL		6, R32, R48
	|	SADD.M2		R15,R30,R49
		SSHFLR		26, R32, R50
	|	SADD.M2		R48,R1,R60
		SLTU		R60, R1, R51
	|	SADD.M2		R50,R49,R52
		SADD.M2		R52,R51,R61
		SNOP		2
	.loc 1 151 0
	;; condjump to .L1 occurs
.LVL42:
.L8:
	.loc 1 12 0
		SSHFLL		1, R42, R53
	|	SMVAGA36.M1		R43:R42, AR0
		SLTU		R53, R42, R54
	|	SSUB.M2		R14, R53, R44
		SSHFLL		1, R43, R18
		SADD.M2		R18,R54,R8
	|	SLTU		R53, R44, R19
		SSUB.M2		R15, R8, R21
	|	SMOVIL		64, R55
		SSUB.M2		R19, R21, R45
	|	SADD.M1		R55,R42,R3
		SMVAGA36.M1		R45:R44, AR2
	|	SLTU		R3, R42, R20
	|	SMOV.M2		R3, R42
		SADD.M2		R43,R20,R43
	|	SEQ		R3, R60, R0
	.loc 1 153 0
		VLDDWM2.LS 		*AR2,VR29:VR28
	|[R0]	SEQ		R43, R61, R0
	.loc 1 151 0
		SNOP		7
	.loc 1 153 0
		VSTDW.LS 		VR29:VR28,*AR7
	.loc 1 158 0
		VLDW.LS 		*AR7,VR29
	|	VLDW.LS 		*+AR7[16],VR31
	.loc 1 159 0
		SNOP		4
	.loc 1 151 0
	[!R0]	SBR		.L8
		SNOP		2
	.loc 1 158 0
		VSHFAR		15,VR29, VR30
.LVL43:
	.loc 1 159 0
		VSHFAR		15,VR31, VR32
.LVL44:
	.loc 1 161 0
		VSBALE2		VR30,VR32,VR33
		VSTW.LS 		VR33,*AR0
	;; condjump to .L8 occurs
.LVL45:
.L1:
	.loc 1 163 0
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
	.size	DSP_fir_r8_h24_vc1, .-DSP_fir_r8_h24_vc1
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
	.4byte	0x577
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSP_fir_r8_h24_vc1 -.c"
	.string	"/cygdrive/c/Users/zhou hang/OneDrive/\346\241\214\351\235\242/DSP_fir_/DSP_fir_r8_h24/Debug"
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
	.string	"DSP_fir_r8_h24_vc1"
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x52c
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0xd
	.4byte	0x539
	.4byte	.LLST1
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0xe
	.4byte	0x53f
	.4byte	.LLST2
	.byte	0x5
	.string	"r"
	.byte	0x1
	.byte	0xf
	.4byte	0x539
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x10
	.4byte	0x117
	.4byte	.LLST3
	.byte	0x6
	.string	"MW_config_Addr"
	.byte	0x1
	.byte	0x13
	.4byte	0x545
	.4byte	0x40160000
	.byte	0x7
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.4byte	0x117
	.4byte	.LLST4
	.byte	0x7
	.string	"j"
	.byte	0x1
	.byte	0x2c
	.4byte	0x117
	.4byte	.LLST5
	.byte	0x8
	.string	"k"
	.byte	0x1
	.byte	0x2c
	.4byte	0x117
	.byte	0x7
	.string	"vr_len"
	.byte	0x1
	.byte	0x2d
	.4byte	0x117
	.4byte	.LLST6
	.byte	0x9
	.string	"int_h_0"
	.byte	0x1
	.byte	0x2f
	.4byte	0x117
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x9
	.string	"int_h_1"
	.byte	0x1
	.byte	0x2f
	.4byte	0x117
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x9
	.string	"int_h_2"
	.byte	0x1
	.byte	0x2f
	.4byte	0x117
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x9
	.string	"int_h_3"
	.byte	0x1
	.byte	0x2f
	.4byte	0x117
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x9
	.string	"int_h_4"
	.byte	0x1
	.byte	0x2f
	.4byte	0x117
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x9
	.string	"int_h_5"
	.byte	0x1
	.byte	0x2f
	.4byte	0x117
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x9
	.string	"int_h_6"
	.byte	0x1
	.byte	0x2f
	.4byte	0x117
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x9
	.string	"int_h_7"
	.byte	0x1
	.byte	0x2f
	.4byte	0x117
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x9
	.string	"temp_vh_0"
	.byte	0x1
	.byte	0x30
	.4byte	0x52c
	.byte	0x2
	.byte	0x90
	.byte	0x69
	.byte	0x9
	.string	"temp_vh_1"
	.byte	0x1
	.byte	0x30
	.4byte	0x52c
	.byte	0x2
	.byte	0x90
	.byte	0x6a
	.byte	0x9
	.string	"temp_vh_2"
	.byte	0x1
	.byte	0x30
	.4byte	0x52c
	.byte	0x2
	.byte	0x90
	.byte	0x6b
	.byte	0x9
	.string	"temp_vh_3"
	.byte	0x1
	.byte	0x30
	.4byte	0x52c
	.byte	0x2
	.byte	0x90
	.byte	0x6c
	.byte	0x9
	.string	"temp_vh_4"
	.byte	0x1
	.byte	0x30
	.4byte	0x52c
	.byte	0x2
	.byte	0x90
	.byte	0x6d
	.byte	0x9
	.string	"temp_vh_5"
	.byte	0x1
	.byte	0x30
	.4byte	0x52c
	.byte	0x2
	.byte	0x90
	.byte	0x6e
	.byte	0x9
	.string	"temp_vh_6"
	.byte	0x1
	.byte	0x30
	.4byte	0x52c
	.byte	0x2
	.byte	0x90
	.byte	0x6f
	.byte	0x7
	.string	"temp_vh_7"
	.byte	0x1
	.byte	0x30
	.4byte	0x52c
	.4byte	.LLST7
	.byte	0x7
	.string	"svb_temp_h"
	.byte	0x1
	.byte	0x31
	.4byte	0x54b
	.4byte	.LLST8
	.byte	0x7
	.string	"temp_vr_0_15"
	.byte	0x1
	.byte	0x33
	.4byte	0x54b
	.4byte	.LLST9
	.byte	0x9
	.string	"tmpr"
	.byte	0x1
	.byte	0x34
	.4byte	0x558
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
	.byte	0x36
	.4byte	0x52c
	.4byte	.LLST10
	.byte	0x7
	.string	"temp_vx_1_16"
	.byte	0x1
	.byte	0x36
	.4byte	0x52c
	.4byte	.LLST11
	.byte	0x7
	.string	"temp_vx_2_17"
	.byte	0x1
	.byte	0x36
	.4byte	0x52c
	.4byte	.LLST12
	.byte	0x7
	.string	"temp_vx_3_18"
	.byte	0x1
	.byte	0x36
	.4byte	0x52c
	.4byte	.LLST13
	.byte	0x7
	.string	"temp_vx_4_19"
	.byte	0x1
	.byte	0x37
	.4byte	0x52c
	.4byte	.LLST14
	.byte	0x7
	.string	"temp_vx_5_20"
	.byte	0x1
	.byte	0x37
	.4byte	0x52c
	.4byte	.LLST15
	.byte	0x7
	.string	"temp_vx_6_21"
	.byte	0x1
	.byte	0x37
	.4byte	0x52c
	.4byte	.LLST16
	.byte	0x9
	.string	"temp_vx_7_22"
	.byte	0x1
	.byte	0x37
	.4byte	0x52c
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x7
	.string	"temp_vx_0_31"
	.byte	0x1
	.byte	0x38
	.4byte	0x55e
	.4byte	.LLST17
	.byte	0x9
	.string	"temp_vx_0_31_shuff"
	.byte	0x1
	.byte	0x38
	.4byte	0x55e
	.byte	0x3
	.byte	0x77
	.byte	0x80,0x1
	.byte	0x7
	.string	"temp_x_offset_addr"
	.byte	0x1
	.byte	0x3a
	.4byte	0x539
	.4byte	.LLST18
	.byte	0x8
	.string	"temp_r_offset_addr"
	.byte	0x1
	.byte	0x3b
	.4byte	0x558
	.byte	0x7
	.string	"temp_x_offset_addr_p_d"
	.byte	0x1
	.byte	0x3c
	.4byte	0x56b
	.4byte	.LLST18
	.byte	0x9
	.string	"temp_in_r"
	.byte	0x1
	.byte	0x94
	.4byte	0x571
	.byte	0x2
	.byte	0x77
	.byte	0
	.byte	0x7
	.string	"M2LD_temp1"
	.byte	0x1
	.byte	0x95
	.4byte	0x54b
	.4byte	.LLST20
	.byte	0x7
	.string	"M2LD_temp2"
	.byte	0x1
	.byte	0x95
	.4byte	0x54b
	.4byte	.LLST21
	.byte	0x8
	.string	"M2LD_Dst"
	.byte	0x1
	.byte	0x96
	.4byte	0x558
	.byte	0
	.byte	0xa
	.byte	0x1
	.4byte	0x10a
	.4byte	0x539
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xc
	.byte	0x8
	.4byte	0x52c
	.byte	0xc
	.byte	0x8
	.4byte	0x10a
	.byte	0xc
	.byte	0x8
	.4byte	0x117
	.byte	0xa
	.byte	0x1
	.4byte	0x117
	.4byte	0x558
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xc
	.byte	0x8
	.4byte	0x54b
	.byte	0xa
	.byte	0x1
	.4byte	0x10a
	.4byte	0x56b
	.byte	0xb
	.byte	0x1f
	.byte	0
	.byte	0xc
	.byte	0x8
	.4byte	0x55e
	.byte	0xd
	.byte	0x1
	.4byte	0x158
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
	.llong	.LVL40
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL40
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
	.llong	.LVL39
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL39
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
	.llong	.LVL2
	.llong	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL38
	.llong	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL36
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.byte	0x21
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL2
	.llong	.LVL41
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	.LVL41
	.llong	.LFE3
	.2byte	0x3
	.byte	0x8d
	.byte	0x7f
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL26
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.byte	0x70
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL3
	.llong	.LVL4
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	.LVL5
	.llong	.LVL7
	.2byte	0x2
	.byte	0x90
	.byte	0x63
	.llong	.LVL8
	.llong	.LVL10
	.2byte	0x2
	.byte	0x90
	.byte	0x60
	.llong	.LVL11
	.llong	.LVL13
	.2byte	0x2
	.byte	0x90
	.byte	0x61
	.llong	.LVL14
	.llong	.LVL16
	.2byte	0x2
	.byte	0x90
	.byte	0x62
	.llong	.LVL17
	.llong	.LVL19
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	.LVL20
	.llong	.LVL21
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	.LVL22
	.llong	.LVL24
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	.LVL25
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL27
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.byte	0x71
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL28
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL32
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.byte	0x77
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL29
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.byte	0x73
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL32
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.byte	0x79
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL30
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.byte	0x75
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL34
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.byte	0x7a
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL31
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.byte	0x76
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL32
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.byte	0x72
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL26
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.byte	0x51
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL42
	.llong	.LVL43
	.2byte	0x2
	.byte	0x77
	.byte	0
	.llong	.LVL43
	.llong	.LVL45
	.2byte	0x2
	.byte	0x90
	.byte	0x7e
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL42
	.llong	.LVL44
	.2byte	0x3
	.byte	0x77
	.byte	0xc0,0
	.llong	.LVL44
	.llong	.LVL45
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
