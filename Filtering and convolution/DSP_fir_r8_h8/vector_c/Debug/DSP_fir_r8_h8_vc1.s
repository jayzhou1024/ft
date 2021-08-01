	.file	"DSP_fir_r8_h8_vc1.c"
.text;
.Ltext0:
	.section	.text.DSP_fir_r8_h8_vc1,"ax",@progbits
	.align	2
	.global	DSP_fir_r8_h8_vc1
	.type	DSP_fir_r8_h8_vc1, @function
DSP_fir_r8_h8_vc1:
.LFB3:
	.file 1 "../DSP_fir_r8_h8_vc1.c"
	.loc 1 17 0
.LVL0:
		SMOVIL		256, R6
	|	SMVAGA36.M1		R15:R14, AR5
	|	SMVAGA36.M2		R13:R12, AR10
		SMOVIL		0, R7
	|	SMVAGA36.M1		R11:R10, AR0
		SSUBA.L		R7:R6, AR7, AR7
		SMOVIL		-56, R6
	.loc 1 63 0
		SLDH		*AR10, R59
	|	SADD.M2		15,R16,R0
	.loc 1 17 0
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
		SMVAAGL.M1		AR14, R7:R6
	|	SMOVIL		1075183616, R14
	|	SLDH		*+AR10[1], R58
.LVL1:
	.loc 1 21 0
		SMOVIH		1075183616, R14
	|	SLDH		*+AR10[3], R56
	.loc 1 17 0
		SMVAAGH.M2		AR14, R7:R6
	|	SMOVIL		0, R15
	|	SADD.LS		AR15,40,AR11
	.loc 1 21 0
		SMVAGA36.M1		R15:R14, AR13
	|	SMOVIL		67305985, R12
.LVL2:
	.loc 1 22 0
		SMOVIL		1075183620, R14
	|	SLDH		*+AR10[2], R57
	|	SMVAAA.M1		AR11, AR14
	|	SMVAAA.M2		AR11, AR12
		SMOVIH		1075183620, R14
		SMOVIL		0, R15
	.loc 1 21 0
		SMOVIH		67305985, R12
	.loc 1 17 0
		SSTDW		R7:R6, *+AR15[6]
.LCFI1:
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIL		134678021, R55
	.loc 1 22 0
		SMOVIH		134678021, R55
	.loc 1 17 0
		SMVAAGH.M1		AR8, R7:R6
	|	SMOVIL		202050057, R54
	|	SMVAAA.M2		AR11, AR8
	.loc 1 23 0
		SMOVIH		202050057, R54
	.loc 1 17 0
		SSTDW		R7:R6, *+AR15[5]
.LCFI2:
	.loc 1 21 0
		SSTW		R12, *AR13
	|	SMVAGA36.M2		R15:R14, AR13
	|	SMOVIL		1075183624, R14
	.loc 1 23 0
		SMOVIH		1075183624, R14
		SMOVIL		0, R15
	.loc 1 22 0
		SSTW		R55, *AR13
	|	SMVAGA36.M2		R15:R14, AR13
	|	SMOVIL		1075183628, R14
	.loc 1 24 0
		SMOVIH		1075183628, R14
		SMOVIL		0, R15
	.loc 1 23 0
		SSTW		R54, *AR13
	|	SMOVIL		269422093, R43
	|	SMVAGA36.M2		R15:R14, AR13
	.loc 1 26 0
		SMOVIL		1075183632, R14
	.loc 1 24 0
		SMOVIH		269422093, R43
	.loc 1 26 0
		SMOVIH		1075183632, R14
	|	SSTW		R43, *AR13
		SMOVIL		0, R15
		SMVAGA36.M2		R15:R14, AR13
	|	SMOVIL		100992003, R13
	.loc 1 27 0
		SMOVIL		1075183636, R14
		SMOVIH		1075183636, R14
		SMOVIL		0, R15
	.loc 1 26 0
		SMOVIH		100992003, R13
		SSTW		R13, *AR13
	|	SMOVIL		168364039, R42
	|	SMVAGA36.M2		R15:R14, AR13
	.loc 1 28 0
		SMOVIL		1075183640, R14
	.loc 1 27 0
		SMOVIH		168364039, R42
	.loc 1 28 0
		SMOVIH		1075183640, R14
	|	SSTW		R42, *AR13
		SMOVIL		0, R15
		SMVAGA36.M2		R15:R14, AR13
	|	SMOVIL		235736075, R11
	.loc 1 29 0
		SMOVIL		1075183644, R14
	.loc 1 28 0
		SMOVIH		235736075, R11
	.loc 1 29 0
		SMOVIH		1075183644, R14
	|	SSTW		R11, *AR13
		SMOVIL		0, R15
		SMVAGA36.M2		R15:R14, AR13
	|	SMOVIL		303108111, R10
.LVL3:
	.loc 1 33 0
		SMOVIL		1075183648, R14
	.loc 1 29 0
		SMOVIH		303108111, R10
	.loc 1 33 0
		SMOVIH		1075183648, R14
	|	SSTW		R10, *AR13
		SMOVIL		0, R15
		SMVAGA36.M2		R15:R14, AR13
	|	SMOVIL		1075183652, R14
	.loc 1 34 0
		SMOVIH		1075183652, R14
		SMOVIL		0, R15
	|	SSTW		R55, *AR13
		SMVAGA36.M2		R15:R14, AR13
	|	SMOVIL		0, R55
	.loc 1 36 0
		SMOVIL		1075183660, R14
	.loc 1 34 0
		SSTW		R54, *AR13
	|	SMOVIL		1075183656, R54
	.loc 1 35 0
		SMOVIH		1075183656, R54
		SMVAGA36.M2		R55:R54, AR13
	|	SMOVIH		1075183660, R14
	.loc 1 36 0
		SMOVIL		0, R15
	.loc 1 35 0
		SSTW		R43, *AR13
	|	SMOVIL		336794129, R1
	|	SMVAGA36.M2		R15:R14, AR13
	.loc 1 38 0
		SMOVIL		1075183664, R54
	.loc 1 36 0
		SMOVIH		336794129, R1
	.loc 1 38 0
		SMOVIH		1075183664, R54
	|	SSTW		R1, *AR13
		SMOVIL		0, R55
		SMVAGA36.M2		R55:R54, AR13
	|	SMOVIL		1075183668, R14
	.loc 1 39 0
		SMOVIH		1075183668, R14
		SMOVIL		0, R15
	|	SSTW		R42, *AR13
		SMVAGA36.M2		R15:R14, AR13
	|	SMOVIL		1075183672, R42
	.loc 1 40 0
		SMOVIH		1075183672, R42
		SMOVIL		0, R43
	|	SSTW		R11, *AR13
	.loc 1 41 0
		SMOVIL		1075183676, R54
	|	SMVAGA36.M2		R43:R42, AR13
		SMOVIH		1075183676, R54
		SMOVIL		0, R55
	|	SSTW		R10, *AR13
		SMOVIL		370480147, R2
	|	SMVAGA36.M2		R55:R54, AR13
		SMOVIH		370480147, R2
		SSTW		R2, *AR13
	|	SMOVIL		192, R42
	.loc 1 64 0
		SSTH		R59, *+AR15[5]
	|	SMOVIL		0, R43
	.loc 1 66 0
		SADDA.M2		R43:R42,AR7,AR2
	|	SSHFAR		31, R0, R29
	.loc 1 129 0
		SMOVIL		128, R42
	.loc 1 63 0
		SSTH		R59, *+AR15[4]
	|	SMOVIL		0, R43
.LVL4:
	.loc 1 70 0
		SLDW		*+AR15[3], R15
	|	SSHFLR		28, R29, R3
	|	SADDA.M2		R43:R42,AR7,AR4
	.loc 1 106 0
		SMOVIL		0, R9
	|	SADD.M1		R0,R3,R8
.LVL5:
	.loc 1 65 0
		SLDW		*+AR15[2], R17
	|	SMOVIL		-64, R42
	.loc 1 12 0
		SMOVIL		-1, R43
	.loc 1 106 0
		SLT		R9, R16, R0
	|	SADDA.M2		R43:R42,AR5,OR0
	.loc 1 130 0
		SMOVIL		32, R42
	.loc 1 70 0
		SVBCAST.M1 		 R15,VR3
	|	SMOVIL		0, R43
.LVL6:
	.loc 1 130 0
		SADDA.M2		R43:R42,AR4,AR6
	|	SMVAAGL.M1		OR0, R43:R42
	|	SMOVIL		0, R10
	.loc 1 65 0
		SVBCAST.M1 		 R17,VR4
	|	SMOVIL		0, R28
		SMVAAGH.M1		OR0, R43:R42
	|	SMOVIL		2, R1
	.loc 1 45 0
		SSHFAR		4, R8, R14
		SNOP		1
.LVL7:
	.loc 1 65 0
		VSTW.LS 		VR4,*+AR7[48]
.LVL8:
	.loc 1 66 0
		VLDH.LS 		*AR2,VR9
	|	SSTH		R58, *--AR11[14]
	|	VSTW.LS 		VR3,*+AR7[48]
.LVL9:
	.loc 1 70 0
		SNOP		2
	.loc 1 69 0
		SSTH		R58, *+AR11[1]
		SNOP		2
	.loc 1 71 0
		VLDH.LS 		*AR2,VR10
	|	SSTH		R57, *+AR15[8]
.LVL10:
	.loc 1 74 0
		SSTH		R57, *+AR15[9]
		SNOP		2
.LVL11:
	.loc 1 75 0
		SLDW		*+AR15[4], R18
	.loc 1 83 0
		SLDH		*+AR10[4], R19
	.loc 1 88 0
		SLDH		*+AR10[5], R20
.LVL12:
	.loc 1 90 0
		SLDW		*+AR15[7], R24
	.loc 1 93 0
		SLDH		*+AR10[6], R21
		SNOP		1
	.loc 1 75 0
		SVBCAST.M2 		 R18,VR0
		SNOP		2
.LVL13:
	.loc 1 90 0
		SVBCAST.M1 		 R24,VR1
	.loc 1 75 0
		VSTW.LS 		VR0,*+AR7[48]
	|	SLDH		*+AR10[7], R22
.LVL14:
	.loc 1 76 0
		VLDH.LS 		*AR2,VR11
	|	SSTH		R56, *--AR14[10]
.LVL15:
	.loc 1 100 0
		SLDW		*+AR15[9], R25
		SNOP		1
	.loc 1 79 0
		SSTH		R56, *+AR14[1]
		SNOP		3
.LVL16:
	.loc 1 80 0
		SLDW		*+AR15[5], R23
	|	SVBCAST.M2 		 R25,VR2
	.loc 1 100 0
		SNOP		5
.LVL17:
	.loc 1 80 0
		SVBCAST.M2 		 R23,VR5
		SNOP		3
		VSTW.LS 		VR5,*+AR7[48]
.LVL18:
	.loc 1 81 0
		VLDH.LS 		*AR2,VR12
	|	SSTH		R19, *+AR15[12]
.LVL19:
	.loc 1 84 0
		SSTH		R19, *+AR15[13]
		SNOP		2
.LVL20:
	.loc 1 85 0
		SLDW		*+AR15[6], R26
		SNOP		5
		SVBCAST.M2 		 R26,VR6
		SNOP		3
.LVL21:
		VSTW.LS 		VR6,*+AR7[48]
.LVL22:
	.loc 1 86 0
		VLDH.LS 		*AR2,VR13
	|	SSTH		R20, *--AR8[6]
	|	VSTW.LS 		VR1,*+AR7[48]
.LVL23:
	.loc 1 90 0
		SNOP		2
	.loc 1 89 0
		SSTH		R20, *+AR8[1]
		SNOP		2
	.loc 1 91 0
		VLDH.LS 		*AR2,VR14
	|	SSTH		R21, *+AR15[16]
.LVL24:
	.loc 1 94 0
		SSTH		R21, *+AR15[17]
		SNOP		2
.LVL25:
	.loc 1 95 0
		SLDW		*+AR15[8], R27
		SNOP		5
		SVBCAST.M2 		 R27,VR7
		SNOP		3
.LVL26:
		VSTW.LS 		VR7,*+AR7[48]
.LVL27:
	.loc 1 96 0
		VLDH.LS 		*AR2,VR15
	|	SSTH		R22, *--AR12[2]
	|	VSTW.LS 		VR2,*+AR7[48]
.LVL28:
	.loc 1 106 0
	[!R0]	SBR		.L6
		SNOP		1
	.loc 1 99 0
		SSTH		R22, *+AR12[1]
		SNOP		4
	.loc 1 106 0
	;; condjump to .L6 occurs
	.loc 1 101 0
		VLDH.LS 		*AR2,VR16
		SNOP		7
.LVL29:
.L5:
	.loc 1 110 0
		SSHFAR		31, R10, R44
	|	SMOV.M2		R10, R58
	|	SADD.M1		2,R10,R45
	.loc 1 123 0
		SSHFAR		1, R10, R46
	|	SMOV.M2		R44, R59
	|	SMOV.M1		R44, R57
		SMOV.M2		R46, R56
	|	SMOVIL		64, R50
	;no-op trunc di R59:R58 to pdi R59:R58
	|	SMOV.M1		R45, R54
	;no-op trunc di R57:R56 to pdi R57:R56
		SADD.M2		R50,R42,R51
	|	SSHFLR		31, R58, R52
	|	SADD.M1		4,R10,R11
	.loc 1 110 0
		SSHFLL		1, R59, R2
	|	SADD.M2		6,R10,R59
	|	SADD.M1		16,R10,R10
	.loc 1 123 0
		SSHFLR		30, R56, R13
		SSHFLL		2, R57, R53
	.loc 1 113 0
		SSHFAR		31, R45, R49
		SLTU		R51, R42, R57
	|	SMOV.M2		R49, R55
	|	SMOV.M1		R51, R42
	.loc 1 110 0
		SOR		R2, R52, R45
	|	SADD.M2		R43,R57,R43
	;no-op trunc di R55:R54 to pdi R55:R54
		SSHFLL		1, R58, R44
	|	SMVAGA36.M1		R43:R42, AR2
	.loc 1 123 0
		SSHFLL		2, R56, R52
	|	SADDA.M1		R45:R44,AR0,AR3
	|	SMOV.M2		R11, R56
		SOR		R53, R13, R53
	|	VLDW.LS 		*AR2,VR17
.LVL30:
		SADDA.M1		R53:R52,AR0,AR1
	|	SSHFLR		31, R54, R58
	.loc 1 113 0
		SSHFLL		1, R55, R55
	|	VLDH.LS 		*AR3,VR8
.LVL31:
		SOR		R55, R58, R47
		SSHFLL		1, R54, R46
	|	VLDW.LS 		*AR1,VR18
	|	SMOV.M2		R59, R54
	.loc 1 116 0
		SSHFAR		31, R11, R8
	|	SADDA.M2		R47:R46,AR0,AR1
		SMOV.M1		R8, R57
	|	SSHFAR		31, R59, R15
	;no-op trunc di R57:R56 to pdi R57:R56
		SSHFLR		31, R56, R9
	|	SMOV.M1		R15, R55
		SSHFLL		1, R57, R0
	|	VLDH.LS 		*AR1,VR19
	;no-op trunc di R55:R54 to pdi R55:R54
		SSHFLL		1, R56, R48
		SOR		R0, R9, R49
	|	VMULAS16T.M3		 VR8,VR9,VR17,VR17
.LVL32:
		SADDA.M2		R49:R48,AR0,AR1
	|	SSHFLR		31, R54, R56
	.loc 1 119 0
		SSHFLL		1, R55, R17
	.loc 1 126 0
		SMVCGC.L		R28, SMR
	.loc 1 119 0
		SOR		R17, R56, R51
	|	VLDH.LS 		*AR1,VR21
	.loc 1 116 0
		SNOP		1
	.loc 1 119 0
		SSHFLL		1, R54, R50
	|	VSHUFH		 VR18,VR18,VR20
	|	VMULAS16T.M3		 VR19,VR11,VR17,VR17
.LVL33:
		SADDA.M2		R51:R50,AR0,AR1
	|	SMVCGC.L		R1, SMR
	.loc 1 106 0
		SLT		R10, R16, R2
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
.LVL34:
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
.LVL35:
	.loc 1 131 0
		VMULAS16T.M3		 VR23,VR10,VR17,VR17
		SNOP		2
.LVL36:
	.loc 1 132 0
		VMULAS16T.M3		 VR25,VR12,VR17,VR17
		SNOP		2
.LVL37:
	.loc 1 106 0
	[R2]	SBR		.L5
	|	VMULAS16T.M3		 VR26,VR14,VR17,VR17
	.loc 1 141 0
		SNOP		2
.LVL38:
	.loc 1 142 0
		VMULAS16T.M3		 VR27,VR16,VR17,VR17
		SNOP		2
.LVL39:
	.loc 1 144 0
		VSTW.LS 		VR17,*AR2
	;; condjump to .L5 occurs
.LVL40:
.L6:
	.loc 1 151 0
		SADD.M2		1,R14,R16
	|	SMOVIL		0, R14
.LVL41:
		SSHFLR		31, R16, R54
		SADD.M2		R16,R54,R43
	|	SMOVIL		64, R19
		SSHFAR		1, R43, R42
		SLT		R14, R42, R1
	|	SMVAAGL.M2		AR5, R15:R14
	|	SADD.M1		-1,R42,R18
	[!R1]	SBR		.L1
	|	SSHFLL		6, R18, R23
		SMVAAGH.M2		AR5, R15:R14
	|	SSHFLR		26, R18, R25
	.loc 1 12 0
		SNOP		1
		SADD.M2		R19,R14,R20
	|	SMOV.M1		R14, R42
		SLTU		R20, R14, R21
	|	SADD.M2		R23,R20,R26
	|	SMOV.M1		R15, R43
		SADD.M2		R15,R21,R24
	|	SLTU		R26, R20, R27
		SADD.M2		R25,R24,R28
	;; condjump to .L1 occurs
		SADD.M2		R28,R27,R60
.LVL42:
.L7:
		SSHFLL		1, R42, R46
	|	SMVAGA36.M1		R43:R42, AR0
		SMOVIL		64, R44
		SLTU		R46, R42, R47
	|	SADD.M2		R44,R42,R61
	|	SSUB.M1		R14, R46, R44
		SSHFLL		1, R43, R49
		SADD.M2		R49,R47,R50
	|	SLTU		R46, R44, R51
		SSUB.M2		R15, R50, R45
	|	SLTU		R61, R42, R52
	|	SMOV.M1		R61, R42
		SSUB.M2		R51, R45, R45
	|	SADD.M1		R43,R52,R43
	|	SEQ		R61, R26, R0
		SMVAGA36.M1		R45:R44, AR2
	|[R0]	SEQ		R43, R60, R0
	.loc 1 151 0
		SNOP		1
	.loc 1 153 0
		VLDDWM2.LS 		*AR2,VR29:VR28
		SNOP		7
		VSTDW.LS 		VR29:VR28,*AR7
	.loc 1 158 0
		VLDW.LS 		*AR7,VR29
	|	VLDW.LS 		*+AR7[16],VR31
	.loc 1 159 0
		SNOP		4
	.loc 1 151 0
	[!R0]	SBR		.L7
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
	;; condjump to .L7 occurs
.LVL45:
.L1:
	.loc 1 163 0
		SMOVIL		256, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR7,AR7
		SLDDW		*+AR15[5], R7:R6
	|	SMVCGC.L		R63, BRReg
		SNOP		5
		SMVAGA36.M2		R7:R6, AR8
	|	SLDDW		*+AR15[6], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		56, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LFE3:
	.size	DSP_fir_r8_h8_vc1, .-DSP_fir_r8_h8_vc1
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
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x88
	.byte	0x4
	.align	3
.LEFDE0:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x56a
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSP_fir_r8_h8_vc1.c"
	.string	"/cygdrive/c/Users/zhou hang/OneDrive/\346\241\214\351\235\242/DSP_fir_/DSP_fir_r8_h8/Debug"
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
	.string	"DSP_fir_r8_h8_vc1"
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x51f
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0xd
	.4byte	0x52c
	.4byte	.LLST1
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0xe
	.4byte	0x532
	.4byte	.LLST2
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0xf
	.4byte	0x52c
	.4byte	.LLST3
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x10
	.4byte	0x113
	.4byte	.LLST4
	.byte	0x5
	.string	"MW_config_Addr"
	.byte	0x1
	.byte	0x13
	.4byte	0x538
	.4byte	0x40160000
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.4byte	0x113
	.4byte	.LLST5
	.byte	0x6
	.string	"j"
	.byte	0x1
	.byte	0x2c
	.4byte	0x113
	.4byte	.LLST6
	.byte	0x7
	.string	"k"
	.byte	0x1
	.byte	0x2c
	.4byte	0x113
	.byte	0x6
	.string	"vr_len"
	.byte	0x1
	.byte	0x2d
	.4byte	0x113
	.4byte	.LLST7
	.byte	0x8
	.string	"int_h_0"
	.byte	0x1
	.byte	0x2f
	.4byte	0x113
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x8
	.string	"int_h_1"
	.byte	0x1
	.byte	0x2f
	.4byte	0x113
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x8
	.string	"int_h_2"
	.byte	0x1
	.byte	0x2f
	.4byte	0x113
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x8
	.string	"int_h_3"
	.byte	0x1
	.byte	0x2f
	.4byte	0x113
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x8
	.string	"int_h_4"
	.byte	0x1
	.byte	0x2f
	.4byte	0x113
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x8
	.string	"int_h_5"
	.byte	0x1
	.byte	0x2f
	.4byte	0x113
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x8
	.string	"int_h_6"
	.byte	0x1
	.byte	0x2f
	.4byte	0x113
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x8
	.string	"int_h_7"
	.byte	0x1
	.byte	0x2f
	.4byte	0x113
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x8
	.string	"temp_vh_0"
	.byte	0x1
	.byte	0x30
	.4byte	0x51f
	.byte	0x2
	.byte	0x90
	.byte	0x69
	.byte	0x8
	.string	"temp_vh_1"
	.byte	0x1
	.byte	0x30
	.4byte	0x51f
	.byte	0x2
	.byte	0x90
	.byte	0x6a
	.byte	0x8
	.string	"temp_vh_2"
	.byte	0x1
	.byte	0x30
	.4byte	0x51f
	.byte	0x2
	.byte	0x90
	.byte	0x6b
	.byte	0x8
	.string	"temp_vh_3"
	.byte	0x1
	.byte	0x30
	.4byte	0x51f
	.byte	0x2
	.byte	0x90
	.byte	0x6c
	.byte	0x8
	.string	"temp_vh_4"
	.byte	0x1
	.byte	0x30
	.4byte	0x51f
	.byte	0x2
	.byte	0x90
	.byte	0x6d
	.byte	0x8
	.string	"temp_vh_5"
	.byte	0x1
	.byte	0x30
	.4byte	0x51f
	.byte	0x2
	.byte	0x90
	.byte	0x6e
	.byte	0x8
	.string	"temp_vh_6"
	.byte	0x1
	.byte	0x30
	.4byte	0x51f
	.byte	0x2
	.byte	0x90
	.byte	0x6f
	.byte	0x6
	.string	"temp_vh_7"
	.byte	0x1
	.byte	0x30
	.4byte	0x51f
	.4byte	.LLST8
	.byte	0x6
	.string	"svb_temp_h"
	.byte	0x1
	.byte	0x31
	.4byte	0x53e
	.4byte	.LLST9
	.byte	0x6
	.string	"temp_vr_0_15"
	.byte	0x1
	.byte	0x33
	.4byte	0x53e
	.4byte	.LLST10
	.byte	0x8
	.string	"tmpr"
	.byte	0x1
	.byte	0x34
	.4byte	0x54b
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.string	"temp_vx_0_15"
	.byte	0x1
	.byte	0x36
	.4byte	0x51f
	.4byte	.LLST11
	.byte	0x6
	.string	"temp_vx_1_16"
	.byte	0x1
	.byte	0x36
	.4byte	0x51f
	.4byte	.LLST12
	.byte	0x6
	.string	"temp_vx_2_17"
	.byte	0x1
	.byte	0x36
	.4byte	0x51f
	.4byte	.LLST13
	.byte	0x6
	.string	"temp_vx_3_18"
	.byte	0x1
	.byte	0x36
	.4byte	0x51f
	.4byte	.LLST14
	.byte	0x6
	.string	"temp_vx_4_19"
	.byte	0x1
	.byte	0x37
	.4byte	0x51f
	.4byte	.LLST15
	.byte	0x6
	.string	"temp_vx_5_20"
	.byte	0x1
	.byte	0x37
	.4byte	0x51f
	.4byte	.LLST16
	.byte	0x6
	.string	"temp_vx_6_21"
	.byte	0x1
	.byte	0x37
	.4byte	0x51f
	.4byte	.LLST17
	.byte	0x8
	.string	"temp_vx_7_22"
	.byte	0x1
	.byte	0x37
	.4byte	0x51f
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x6
	.string	"temp_vx_0_31"
	.byte	0x1
	.byte	0x38
	.4byte	0x551
	.4byte	.LLST18
	.byte	0x8
	.string	"temp_vx_0_31_shuff"
	.byte	0x1
	.byte	0x38
	.4byte	0x551
	.byte	0x3
	.byte	0x77
	.byte	0x80,0x1
	.byte	0x6
	.string	"temp_x_offset_addr"
	.byte	0x1
	.byte	0x3a
	.4byte	0x52c
	.4byte	.LLST19
	.byte	0x7
	.string	"temp_r_offset_addr"
	.byte	0x1
	.byte	0x3b
	.4byte	0x54b
	.byte	0x6
	.string	"temp_x_offset_addr_p_d"
	.byte	0x1
	.byte	0x3c
	.4byte	0x55e
	.4byte	.LLST19
	.byte	0x8
	.string	"temp_in_r"
	.byte	0x1
	.byte	0x94
	.4byte	0x564
	.byte	0x2
	.byte	0x77
	.byte	0
	.byte	0x6
	.string	"M2LD_temp1"
	.byte	0x1
	.byte	0x95
	.4byte	0x53e
	.4byte	.LLST21
	.byte	0x6
	.string	"M2LD_temp2"
	.byte	0x1
	.byte	0x95
	.4byte	0x53e
	.4byte	.LLST22
	.byte	0x7
	.string	"M2LD_Dst"
	.byte	0x1
	.byte	0x96
	.4byte	0x54b
	.byte	0
	.byte	0x9
	.byte	0x1
	.4byte	0x106
	.4byte	0x52c
	.byte	0xa
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0x8
	.4byte	0x51f
	.byte	0xb
	.byte	0x8
	.4byte	0x106
	.byte	0xb
	.byte	0x8
	.4byte	0x113
	.byte	0x9
	.byte	0x1
	.4byte	0x113
	.4byte	0x54b
	.byte	0xa
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0x8
	.4byte	0x53e
	.byte	0x9
	.byte	0x1
	.4byte	0x106
	.4byte	0x55e
	.byte	0xa
	.byte	0x1f
	.byte	0
	.byte	0xb
	.byte	0x8
	.4byte	0x551
	.byte	0xc
	.byte	0x1
	.4byte	0x154
	.byte	0xa
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
	.byte	0x2
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
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
	.byte	0x21
	.byte	0
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.llong	.LVL3
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL3
	.llong	.LVL42
	.2byte	0x1
	.byte	0x50
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
	.llong	.LVL2
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL2
	.llong	.LFE3
	.2byte	0x1
	.byte	0x5a
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL1
	.llong	.LFE3
	.2byte	0x1
	.byte	0x55
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL41
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL41
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL7
	.llong	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL39
	.llong	.LVL40
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL7
	.llong	.LVL41
	.2byte	0x1
	.byte	0x6e
	.llong	.LVL41
	.llong	.LFE3
	.2byte	0x4
	.byte	0x92
	.byte	0x20
	.byte	0x7f
	.byte	0x9f
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL29
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x70
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL8
	.llong	.LVL13
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	.LVL14
	.llong	.LVL17
	.2byte	0x2
	.byte	0x90
	.byte	0x60
	.llong	.LVL18
	.llong	.LVL21
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	.LVL22
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	.LVL27
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL30
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x71
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL31
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL35
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x77
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL32
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x73
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL35
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x79
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL33
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x75
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL37
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x7a
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL34
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x76
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL35
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.byte	0x72
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL29
	.llong	.LVL40
	.2byte	0x1
	.byte	0x50
	.llong	0
	.llong	0
.LLST21:
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
.LLST22:
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
