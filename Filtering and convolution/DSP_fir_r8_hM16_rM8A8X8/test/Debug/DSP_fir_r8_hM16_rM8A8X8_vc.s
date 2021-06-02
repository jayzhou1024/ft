	.file	"DSP_fir_r8_hM16_rM8A8X8_vc.c"
.text;
.Ltext0:
	.section	.text.DSP_fir_r8_hM16_rM8A8X8_vc,"ax",@progbits
	.align	2
	.global	DSP_fir_r8_hM16_rM8A8X8_vc
	.type	DSP_fir_r8_hM16_rM8A8X8_vc, @function
DSP_fir_r8_hM16_rM8A8X8_vc:
.LFB3:
	.file 1 "../DSP_fir_r8_hM16_rM8A8X8_vc.c"
	.loc 1 23 0
.LVL0:
	.loc 1 25 0
		SADD.M2		15,R18,R42
	|	SMOVIL		1024, R6
	|	SMVAGA36.M1		R15:R14, OR5
	|	VMOVIL		 0,VR3
	.loc 1 23 0
		SMOVIL		0, R7
	|	SADD.M2		-1,R16,R52
		SSUBA.L		R7:R6, AR7, AR7
	.loc 1 25 0
		SSHFAR		31, R42, R43
		SNOP		1
	.loc 1 23 0
		SMOVIL		-88, R6
		SMOVIL		-1, R7
	.loc 1 25 0
		SSHFLR		28, R43, R1
	|	SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
		SADD.M1		R42,R1,R2
	|	SMVAAGL.M2		AR14, R7:R6
	|	SMOVIL		992, R42
.LCFI1:
	.loc 1 66 0
		SMOVIL		0, R43
	|	SMVAAA.M1		AR7, OR11
	|	SSTDW		R31:R30, *+AR15[5]
.LCFI2:
		SADDA.M2		R43:R42,AR7,OR6
	|	SMOVIL		960, R42
	|	SMVAAGH.M1		AR14, R7:R6
	|	SSTDW		R63:R62, *+AR15[9]
	.loc 1 71 0
		SMOVIL		0, R43
	|	SMVAGA36.M1		R13:R12, AR14
		SADDA.M1		R43:R42,AR7,OR4
	|	SMOVIL		928, R42
.LCFI3:
	.loc 1 76 0
		SMOVIL		0, R43
	|	SSTDW		R7:R6, *+AR15[10]
.LCFI4:
		SADDA.M2		R43:R42,AR7,OR2
	|	SMOVIL		896, R42
	|	SMVAAGL.M1		OR8, R7:R6
	|	SSTDW		R33:R32, *+AR15[6]
	.loc 1 81 0
		SMOVIL		0, R43
		SADDA.M2		R43:R42,AR7,OR0
	|	SMOVIL		864, R42
	|	SMVAAGH.M1		OR8, R7:R6
	.loc 1 86 0
		SMOVIL		0, R43
.LCFI5:
	.loc 1 61 0
		SMOVIL		0, R30
	|	SADDA.M1		R43:R42,OR11,AR12
	|	SSTDW		R7:R6, *+AR15[8]
	.loc 1 91 0
		SMOVIL		832, R42
	|	SMVAAGL.M1		AR8, R7:R6
		SMOVIL		0, R43
	.loc 1 96 0
		SMOVIL		800, R28
	|	SADDA.M1		R43:R42,OR11,AR10
	|	SMVAAGH.M2		AR8, R7:R6
		SMOVIL		0, R29
.LCFI6:
	.loc 1 101 0
		SMOVIL		768, R26
	|	SADDA.M2		R29:R28,AR7,OR1
	|	SSTDW		R7:R6, *+AR15[7]
	.loc 1 101 0
		SMOVIL		0, R27
	|	VSTW.LS 		VR3,*AR7
	|	VSTW.LS 		VR3,*+AR7[16]
	.loc 1 17 0
		SMOVIL		-64, R12
	|	SADDA.M1		R27:R26,AR7,OR3
.LVL1:
		SMOVIL		-1, R13
	|	SMVAAGL.M2		OR1, R29:R28
	.loc 1 61 0
		SLT		R30, R16, R0
	|	SADDA.M1		R13:R12,OR5,AR0
	.loc 1 110 0
		SMOVIL		736, R42
	|[!R0]	SBR		.L7
	|	SMVAAGL.M2		OR3, R27:R26
	.loc 1 25 0
		SSHFAR		4, R2, R19
	|	SMVAAGH.M1		OR1, R29:R28
.LVL2:
	.loc 1 110 0
		SMOVIL		0, R43
	|	SMVAAGL.M1		AR0, R13:R12
	|	SMVAAGH.M2		OR3, R27:R26
		SADDA.M1		R43:R42,AR7,AR1
	|	SMOVIL		704, R42
	.loc 1 113 0
		SMOVIL		0, R43
	|	SMVAAGH.M2		AR0, R13:R12
	.loc 1 17 0
		SSHFLR		3, R52, R8
	|[R0]	SADDA.M1		R43:R42,AR7,AR6
	.loc 1 116 0
		SMOVIL		672, R42
	|	SADD.M2		1,R8,R9
	;; condjump to .L7 occurs
		SMOVIL		0, R43
		SADDA.M2		R43:R42,AR7,AR4
	|	SMOVIL		640, R42
	.loc 1 119 0
		SMOVIL		0, R43
	.loc 1 17 0
		SLTU		R9, R8, R21
	|	SADDA.M1		R43:R42,AR7,AR2
	.loc 1 59 0
		SAND		15, R18, R3
.LVL3:
		SMOVIL		0, R20
	.loc 1 17 0
		SSHFLR		28, R9, R22
		SSHFLL		4, R21, R23
		SEQ		R20, R3, R3
.LVL4:
		SMOVIL		0, R16
.LVL5:
		SMOVIL		0, R17
		SLT		R18, R20, R1
		SOR		R23, R22, R8
		SSHFLL		4, R9, R9
.LVL6:
.L6:
		SMOV.M2		R16, R52
	|	SMOV.M1		R17, R53
	|	SMOVIL		0, R32
	;no-op trunc di R53:R52 to pdi R53:R52
		SADDA.M2		R53:R52,AR14,AR8
	|	SMOVIL		0, R33
	|	SADD.M1		R10,R16,R42
	.loc 1 65 0
		SMVAGA36.M1		R33:R32, OR14
	|	SMVAGA36.M2		R33:R32, OR12
	|	SMOVIL		0, R58
	.loc 1 63 0
		SLDH		*AR8, R24
	|	SMOVIL		0, R59
	.loc 1 65 0
		SMVAAA.M2		OR14, AR0
	|	SLDH		*+AR8[1], R25
	|	SMOVIL		0, R56
	|	SADD.M1		R11,R17,R46
	.loc 1 73 0
		SLDH		*+AR8[2], R32
	|	SMOVIL		0, R57
	.loc 1 78 0
		SLDH		*+AR8[3], R33
	|	SMOVIL		0, R54
	.loc 1 83 0
		SLDH		*+AR8[4], R44
	|	SMOVIL		0, R55
	.loc 1 90 0
		SMOVIL		0, R53
		SMOVIL		0, R52
	.loc 1 100 0
		SMVAGA36.M1		R53:R52, AR3
	|	SLTU		R42, R16, R45
	.loc 1 95 0
		SMVAGA36.M1		R53:R52, AR5
	|	SADD.M2		R46,R45,R43
	|	SMOVIL		0, R0
	.loc 1 17 0
		SMVAGA36.M1		R43:R42, OR8
	|	SMOV.M2		R12, R42
	.loc 1 64 0
		SSTH		R24, *+AR15[5]
	|	SMOV.M2		R13, R43
	.loc 1 63 0
		SSTH		R24, *+AR15[4]
		SNOP		2
	.loc 1 65 0
		SLDW		*+AR15[2], R31
	.loc 1 68 0
		SSTH		R25, *+AR15[6]
	.loc 1 69 0
		SSTH		R25, *+AR15[7]
		SNOP		3
	.loc 1 65 0
		SVBCAST.M2 		 R31,VR4
	|	SSTH		R32, *+AR15[8]
	.loc 1 74 0
		SSTH		R32, *+AR15[9]
		SNOP		2
	.loc 1 65 0
		VSTW.LS 		VR4,*AR0
	|	SSTH		R33, *+AR15[10]
	.loc 1 66 0
		VLDH.LS 		*AR0,VR0
	|	SMVAAA.M2		OR6, AR0
	|	SSTH		R33, *+AR15[11]
.LVL7:
	.loc 1 79 0
		SNOP		2
	.loc 1 83 0
		SSTH		R44, *+AR15[12]
	.loc 1 84 0
		SSTH		R44, *+AR15[13]
		SNOP		3
	.loc 1 66 0
		VSTH.LS 		VR0,*AR0
	|	SMVAAA.M2		OR12, AR0
.LVL8:
	.loc 1 70 0
		SLDW		*+AR15[3], R47
		SNOP		5
		SVBCAST.M2 		 R47,VR1
		SNOP		3
		VSTW.LS 		VR1,*AR0
	.loc 1 71 0
		VLDH.LS 		*AR0,VR2
	|	SMVAAA.M2		OR4, AR0
.LVL9:
		SNOP		7
		VSTH.LS 		VR2,*AR0
	|	SMVAGA36.M1		R59:R58, AR0
.LVL10:
	.loc 1 75 0
		SLDW		*+AR15[4], R48
		SNOP		5
		SVBCAST.M2 		 R48,VR5
		SNOP		3
		VSTW.LS 		VR5,*AR0
	.loc 1 76 0
		VLDH.LS 		*AR0,VR6
	|	SMVAAA.M2		OR2, AR0
.LVL11:
		SNOP		7
		VSTH.LS 		VR6,*AR0
	|	SMVAGA36.M1		R57:R56, AR0
.LVL12:
	.loc 1 80 0
		SLDW		*+AR15[5], R49
		SNOP		5
		SVBCAST.M2 		 R49,VR7
		SNOP		3
		VSTW.LS 		VR7,*AR0
	.loc 1 81 0
		VLDH.LS 		*AR0,VR8
	|	SMVAAA.M2		OR0, AR0
.LVL13:
		SNOP		7
		VSTH.LS 		VR8,*AR0
	|	SMVAGA36.M1		R55:R54, AR0
.LVL14:
	.loc 1 85 0
		SLDW		*+AR15[6], R50
		SNOP		5
		SVBCAST.M2 		 R50,VR9
		SNOP		3
		VSTW.LS 		VR9,*AR0
	.loc 1 86 0
		VLDH.LS 		*AR0,VR10
	|	SMVAAA.M2		AR12, AR0
.LVL15:
		SNOP		7
		VSTH.LS 		VR10,*AR0
	|	SLDH		*+AR8[5], R51
	|	SMVAAA.M2		AR10, AR0
.LVL16:
	.loc 1 93 0
		SLDH		*+AR8[6], R53
	.loc 1 98 0
		SLDH		*+AR8[7], R55
		SNOP		5
	.loc 1 88 0
		SSTH		R51, *+AR15[14]
	.loc 1 89 0
		SSTH		R51, *+AR15[15]
		SNOP		2
	.loc 1 90 0
		SLDW		*+AR15[7], R54
	.loc 1 93 0
		SSTH		R53, *+AR15[16]
	.loc 1 94 0
		SSTH		R53, *+AR15[17]
		SNOP		3
	.loc 1 90 0
		SVBCAST.M2 		 R54,VR11
	|	SSTH		R55, *+AR15[18]
	.loc 1 99 0
		SSTH		R55, *+AR15[19]
		SNOP		2
	.loc 1 90 0
		VSTW.LS 		VR11,*AR3
	.loc 1 91 0
		VLDH.LS 		*AR3,VR12
		SNOP		7
.LVL17:
		VSTH.LS 		VR12,*AR0
	|	SMVAGA36.M1		R29:R28, AR0
.LVL18:
	.loc 1 95 0
		SLDW		*+AR15[8], R56
		SNOP		5
		SVBCAST.M2 		 R56,VR13
		SNOP		3
		VSTW.LS 		VR13,*AR5
	.loc 1 96 0
		VLDH.LS 		*AR5,VR14
		SNOP		7
.LVL19:
		VSTH.LS 		VR14,*AR0
	|	SMVAGA36.M1		R27:R26, AR0
.LVL20:
	.loc 1 100 0
		SLDW		*+AR15[9], R57
		SNOP		5
		SVBCAST.M2 		 R57,VR15
		SNOP		3
		VSTW.LS 		VR15,*AR3
	.loc 1 101 0
		VLDH.LS 		*AR3,VR16
		SNOP		1
.LVL21:
	.loc 1 106 0
	[R1]	SBR		.L13
		SNOP		5
	.loc 1 101 0
		VSTH.LS 		VR16,*AR0
	;; condjump to .L13 occurs
.LVL22:
.L12:
		SMOVIL		64, R58
	|	SMOV.M1		R0, R54
	|	SMVAAA.M2		OR8, OR1
	|	VMOV		VR3,	VR36
.LVL23:
		SADD.M1		R58,R42,R59
	|	SSHFAR		31, R0, R2
	|	SMVAAA.M2		OR6, AR0
	|	VMOV		VR3,	VR40
.LVL24:
		SLTU		R59, R42, R30
	|	SMOV.M1		R59, R52
	|	VMOV		VR3,	VR44
.LVL25:
		SADD.M2		R43,R30,R53
	|	SMOV.M1		R2, R55
	|	VMOV		VR3,	VR48
.LVL26:
	.loc 1 17 0
		SMVAGA36.M1		R53:R52, AR3
	;no-op trunc di R55:R54 to pdi R55:R54
	|	SSHFLR		31, R54, R23
	|	SADD.M2		2,R0,R21
	.loc 1 110 0
		SSHFLL		1, R55, R24
	|	SMOV.M2		R21, R58
	.loc 1 108 0
		VLDW.LS 		*AR3,VR17
	|	SSHFLL		1, R54, R44
	|	SADD.M2		4,R0,R25
	|	SADD.M1		6,R0,R32
	.loc 1 110 0
		SOR		R24, R23, R45
	|	SMOV.M2		R25, R56
	|	SMOV.M1		R32, R54
		SADDA.M2		R45:R44,OR1,AR5
	|	SSHFAR		31, R21, R44
	.loc 1 113 0
		SMOV.M1		R44, R59
	|	SSHFAR		31, R25, R31
	;no-op trunc di R59:R58 to pdi R59:R58
		SSHFLR		31, R58, R46
	|	SMOV.M1		R31, R57
		SSHFLL		1, R59, R47
	;no-op trunc di R57:R56 to pdi R57:R56
		SOR		R47, R46, R47
		SSHFLL		1, R58, R46
	.loc 1 108 0
		VSTW.LS 		VR17,*+AR7[144]
	|	SADDA.M2		R47:R46,OR8,OR13
	|	SSHFLR		31, R56, R48
	.loc 1 110 0
		VLDH.LS 		*AR5,VR18
	|	SSHFLL		1, R57, R49
	.loc 1 113 0
		SMVAAGL.M2		OR13, R59:R58
	|	SOR		R49, R48, R49
	.loc 1 116 0
		SSHFLL		1, R56, R48
	.loc 1 113 0
		SMVAAGH.M1		OR13, R59:R58
	|	SADDA.M2		R49:R48,OR8,OR11
	|	SSHFAR		31, R32, R45
	.loc 1 119 0
		SNOP		1
		SMOV.M2		R45, R55
	;no-op trunc di R55:R54 to pdi R55:R54
		SSHFLR		31, R54, R50
		SSHFLL		1, R55, R51
	.loc 1 110 0
		VSTH.LS 		VR18,*AR1
	|	SOR		R51, R50, R51
	.loc 1 111 0
		VLDH.LS 		*AR1,VR19
	|	VLDH.LS 		*AR0,VR20
	|	SMVAGA36.M1		R59:R58, AR0
	|	SSHFLL		1, R54, R50
		VLDW.LS 		*+AR7[144],VR21
	|	SADDA.M1		R51:R50,OR1,AR5
	.loc 1 119 0
		SNOP		7
	.loc 1 111 0
		VMULAS16T.M3		 VR19,VR20,VR21,VR21
		SNOP		2
.LVL27:
		VSTW.LS 		VR21,*+AR7[144]
.LVL28:
	.loc 1 113 0
		VLDH.LS 		*AR0,VR22
	|	SMVAAA.M2		OR2, AR0
	.loc 1 114 0
		SNOP		7
	.loc 1 113 0
		VSTH.LS 		VR22,*AR6
	.loc 1 114 0
		VLDH.LS 		*AR6,VR23
	|	VLDH.LS 		*AR0,VR24
	|	SMVAAA.M2		OR11, AR0
		VLDW.LS 		*+AR7[144],VR25
		SNOP		7
		VMULAS16T.M3		 VR23,VR24,VR25,VR25
		SNOP		2
.LVL29:
		VSTW.LS 		VR25,*+AR7[144]
.LVL30:
	.loc 1 116 0
		VLDH.LS 		*AR0,VR26
	|	SMVAAA.M2		AR12, AR0
	.loc 1 117 0
		SNOP		7
	.loc 1 116 0
		VSTH.LS 		VR26,*AR4
	.loc 1 117 0
		VLDH.LS 		*AR4,VR27
	|	VLDH.LS 		*AR0,VR28
	|	SMVAGA36.M1		R29:R28, AR0
		VLDW.LS 		*+AR7[144],VR29
		SNOP		7
		VMULAS16T.M3		 VR27,VR28,VR29,VR29
		SNOP		2
.LVL31:
		VSTW.LS 		VR29,*+AR7[144]
.LVL32:
	.loc 1 119 0
		VLDH.LS 		*AR5,VR30
		SNOP		7
		VSTH.LS 		VR30,*AR2
	.loc 1 120 0
		VLDH.LS 		*AR2,VR31
	|	VLDH.LS 		*AR0,VR32
	|	SMVAAA.M2		OR4, AR0
		VLDW.LS 		*+AR7[144],VR33
		SNOP		7
		VMULAS16T.M3		 VR31,VR32,VR33,VR33
		SNOP		2
.LVL33:
		VSTW.LS 		VR33,*+AR7[144]
.LVL34:
	.loc 1 123 0
		VLDH.LS 		*AR1,VR34
	|	VLDH.LS 		*AR0,VR35
	|	SMVAAA.M2		OR0, AR0
	.loc 1 124 0
		SNOP		7
	.loc 1 123 0
		VMULAS16T.M3		 VR34,VR35,VR36,VR36
		SNOP		2
		VSTW.LS 		VR36,*+AR7[80]
.LVL35:
	.loc 1 124 0
		VLDH.LS 		*AR6,VR38
	|	VLDH.LS 		*AR0,VR39
	|	SMVAAA.M2		AR10, AR0
	.loc 1 125 0
		SNOP		7
	.loc 1 124 0
		VMULAS16T.M3		 VR38,VR39,VR40,VR40
		SNOP		2
		VSTW.LS 		VR40,*+AR7[64]
.LVL36:
	.loc 1 125 0
		VLDH.LS 		*AR4,VR42
	|	VLDH.LS 		*AR0,VR43
	|	SMVAGA36.M1		R27:R26, AR0
	.loc 1 126 0
		SNOP		7
	.loc 1 125 0
		VMULAS16T.M3		 VR42,VR43,VR44,VR44
		SNOP		2
		VSTW.LS 		VR44,*+AR7[48]
	|	VLDH.LS 		*AR2,VR46
.LVL37:
	.loc 1 126 0
		VLDH.LS 		*AR0,VR47
		SNOP		7
		VMULAS16T.M3		 VR46,VR47,VR48,VR48
		SNOP		2
		VSTW.LS 		VR48,*+AR7[32]
.LVL38:
	.loc 1 129 0
		VLDW.LS 		*+AR7[80],VR50
	.loc 1 128 0
	[R0]	SBR		.L8
		SNOP		6
	;; condjump to .L8 occurs
.LVL39:
	.loc 1 129 0
		VSTW.LS 		VR50,*AR7
	|	SEQ		R18, R0, R54
	|	SMVAGA36.M1		R43:R42, AR5
.LVL40:
	.loc 1 131 0
		VLDW.LS 		*+AR7[1],VR60
	|	VLDW.LS 		*+AR7[144],VR61
	|	SAND		R3, R54, R2
	.loc 1 150 0
		SNOP		7
	.loc 1 131 0
		VADD.M3		VR60,VR61,VR62
.LVL41:
		VSTW.LS 		VR62,*+AR7[144]
.LVL42:
	.loc 1 133 0
		VLDW.LS 		*+AR7[64],VR63
		SNOP		7
		VSTW.LS 		VR63,*AR7
	.loc 1 134 0
		VLDW.LS 		*+AR7[1],VR4
	|	VLDW.LS 		*+AR7[144],VR0
		SNOP		7
.LVL43:
		VADD.M3		VR4,VR0,VR1
.LVL44:
		VSTW.LS 		VR1,*+AR7[144]
.LVL45:
	.loc 1 136 0
		VLDW.LS 		*+AR7[48],VR2
		SNOP		7
.LVL46:
		VSTW.LS 		VR2,*AR7
	.loc 1 137 0
		VLDW.LS 		*+AR7[1],VR6
	|	VLDW.LS 		*+AR7[144],VR5
.LVL47:
		SNOP		7
		VADD.M3		VR6,VR5,VR7
.LVL48:
		VSTW.LS 		VR7,*+AR7[144]
.LVL49:
	.loc 1 139 0
		VLDW.LS 		*+AR7[32],VR8
		SNOP		7
.LVL50:
		VSTW.LS 		VR8,*AR7
	.loc 1 140 0
		VLDW.LS 		*+AR7[1],VR9
	|	VLDW.LS 		*+AR7[144],VR10
		SNOP		2
.LVL51:
	.loc 1 150 0
	[R2]	SBR		.L29
		SNOP		4
	.loc 1 140 0
		VADD.M3		VR9,VR10,VR11
.LVL52:
		VSTW.LS 		VR11,*+AR7[144]
	;; condjump to .L29 occurs
.LVL53:
.L10:
	.loc 1 157 0
		SMOVIL		0, R42
	|	VLDW.LS 		*+AR7[144],VR12
.LVL54:
		SEQ		R42, R0, R43
		SEQ		R42, R43, R56
	|	SMOV.M2		R53, R43
		SEQ		R42, R54, R55
	|	SMOV.M2		R52, R42
		SAND		R56, R55, R2
	[R2]	SBR		.L30
		SNOP		2
	.loc 1 155 0
		VSTW.LS 		VR12,*AR3
		SNOP		3
	.loc 1 157 0
	;; condjump to .L30 occurs
	.loc 1 106 0
		SADD.M2		16,R0,R0
.LVL55:
		SLT		R18, R0, R2
	[!R2]	SBR		.L12
		SNOP		6
	;; condjump to .L12 occurs
.LVL56:
.L13:
		SADD.M2		16,R16,R53
		SLTU		R53, R16, R52
	|	SMOV.M2		R53, R16
		SADD.M2		R17,R52,R17
	|	SEQ		R53, R9, R0
	.loc 1 61 0
	[R0]	SEQ		R17, R8, R0
	[!R0]	SBR		.L6
		SNOP		6
	;; condjump to .L6 occurs
.LVL57:
.L7:
	.loc 1 172 0
		SADD.M2		1,R19,R10
	|	SMOVIL		0, R18
	|	SMOV.M1		R14, R42
.LVL58:
		SSHFLR		31, R10, R11
	|	SMOV.M2		R15, R43
		SADD.M2		R10,R11,R12
	|	SMOVIL		64, R29
		SSHFAR		1, R12, R13
	|	SADD.M2		R29,R14,R19
.LVL59:
		SLT		R18, R13, R1
	|	SADD.M2		-1,R13,R27
	[!R1]	SBR		.L4
	|	SLTU		R19, R14, R28
	.loc 1 17 0
		SSHFLL		6, R27, R3
	|	SADD.M2		R15,R28,R8
		SSHFLR		26, R27, R9
	|	SADD.M2		R3,R19,R57
		SLTU		R57, R19, R59
	|	SADD.M2		R9,R8,R61
		SADD.M2		R61,R59,R30
		SNOP		2
	.loc 1 172 0
	;; condjump to .L4 occurs
.LVL60:
.L14:
	.loc 1 17 0
		SSHFLL		1, R42, R60
	|	SMVAGA36.M1		R43:R42, AR0
		SLTU		R60, R42, R20
	|	SSUB.M2		R14, R60, R44
		SSHFLL		1, R43, R25
		SADD.M2		R25,R20,R22
	|	SLTU		R60, R44, R32
		SSUB.M2		R15, R22, R33
	|	SMOVIL		64, R21
		SSUB.M2		R32, R33, R45
	|	SADD.M1		R21,R42,R23
		SMVAGA36.M1		R45:R44, AR2
	|	SLTU		R23, R42, R31
	|	SMOV.M2		R23, R42
		SADD.M2		R43,R31,R43
	|	SEQ		R23, R57, R2
	.loc 1 174 0
		VLDDWM2.LS 		*AR2,VR25:VR24
	|[R2]	SEQ		R43, R30, R2
	.loc 1 172 0
		SNOP		7
	.loc 1 174 0
		VSTDW.LS 		VR25:VR24,*AR7
	.loc 1 176 0
		VLDW.LS 		*AR7,VR3
	|	VLDW.LS 		*+AR7[16],VR25
	.loc 1 177 0
		SNOP		4
	.loc 1 172 0
	[!R2]	SBR		.L14
		SNOP		2
	.loc 1 176 0
		VSHFAR		15,VR3, VR23
		VSTW.LS 		VR23,*AR7
	|	VSHFAR		15,VR25, VR26
	.loc 1 177 0
		VSTW.LS 		VR26,*+AR7[16]
	|	VSBALE2		VR23,VR26,VR27
	.loc 1 179 0
		VSTW.LS 		VR27,*AR0
	;; condjump to .L14 occurs
.L4:
	.loc 1 181 0
		SBR		vfree
	|	SMVAAA.M2		AR7, OR14
		SMOVIL		.L32, R62
		SMVAAGL.M2		OR14, R11:R10
	|	SMOVIH		.L32, R62
.LVL61:
		SMOVIH4.L		.L32, R63
		SMVAAGH.M2		OR14, R11:R10
	;; call to vfree occurs, with return value
		SNOP		2
.LVL62:
.L32:
	.loc 1 182 0
		SMOVIL		1024, R6
	|	SLDDW		*+AR15[9], R63:R62
		SMOVIL		0, R7
	|	SLDDW		*+AR15[5], R31:R30
		SADDA.M2		R7:R6,AR7,AR7
		SLDDW		*+AR15[7], R7:R6
		SLDDW		*+AR15[6], R33:R32
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		2
		SMVAGA36.M2		R7:R6, AR8
		SLDDW		*+AR15[8], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[10], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		88, R6
.LVL63:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL64:
.L30:
	.loc 1 159 0
		VLDW.LS 		*+AR5[15],VR13
	|	SADD.M2		16,R0,R0
	|	SMOV.M1		R52, R42
.LVL65:
	.loc 1 106 0
		SLT		R18, R0, R2
	|	SMOV.M2		R53, R43
		SNOP		6
	.loc 1 159 0
		VSTW.LS 		VR13,*+AR7[112]
	.loc 1 160 0
		VLDW.LS 		*+AR7[128],VR14
	|	VLDW.LS 		*+AR7[112],VR15
.LVL66:
		SNOP		7
		VADD.M3		VR14,VR15,VR16
.LVL67:
		VSTW.LS 		VR16,*+AR7[112]
.LVL68:
	.loc 1 161 0
		VLDW.LS 		*+AR7[112],VR17
		SNOP		1
	.loc 1 106 0
	[!R2]	SBR		.L12
		SNOP		5
	.loc 1 161 0
		VSTW.LS 		VR17,*+AR5[15]
	;; condjump to .L12 occurs
		SBR		.L13
		SNOP		6
	;; jump to .L13 occurs
.LVL69:
.L8:
	.loc 1 142 0
		VSTW.LS 		VR50,*+AR7[128]
	|	SEQ		R18, R0, R54
	|	SMVAGA36.M1		R43:R42, AR5
.LVL70:
	.loc 1 143 0
		VLDW.LS 		*+AR7[64],VR51
	|	VLDW.LS 		*+AR7[128],VR52
	|	SAND		R3, R54, R2
	.loc 1 150 0
		SNOP		7
	.loc 1 143 0
		VADD.M3		VR51,VR52,VR53
.LVL71:
		VSTW.LS 		VR53,*+AR7[128]
.LVL72:
	.loc 1 144 0
		VLDW.LS 		*+AR7[48],VR54
	|	VLDW.LS 		*+AR7[128],VR55
		SNOP		7
		VADD.M3		VR54,VR55,VR56
.LVL73:
		VSTW.LS 		VR56,*+AR7[128]
.LVL74:
	.loc 1 145 0
		VLDW.LS 		*+AR7[32],VR57
	|	VLDW.LS 		*+AR7[128],VR58
		SNOP		2
	.loc 1 150 0
	[!R2]	SBR		.L10
		SNOP		4
	.loc 1 145 0
		VADD.M3		VR57,VR58,VR59
.LVL75:
		VSTW.LS 		VR59,*+AR7[128]
	;; condjump to .L10 occurs
.LVL76:
.L29:
	.loc 1 151 0
		VLDW.LS 		*+AR5[15],VR18
	|	SADD.M2		16,R0,R0
	|	SMOV.M1		R52, R42
.LVL77:
	.loc 1 106 0
		SLT		R18, R0, R2
	|	SMOV.M2		R53, R43
		SNOP		6
	.loc 1 151 0
		VSTW.LS 		VR18,*+AR7[96]
	.loc 1 152 0
		VLDW.LS 		*+AR7[128],VR19
	|	VLDW.LS 		*+AR7[96],VR20
		SNOP		7
		VADD.M3		VR19,VR20,VR21
.LVL78:
		VSTW.LS 		VR21,*+AR7[128]
.LVL79:
	.loc 1 153 0
		VLDW.LS 		*+AR7[128],VR22
		SNOP		1
	.loc 1 106 0
	[!R2]	SBR		.L12
		SNOP		5
	.loc 1 153 0
		VSTW.LS 		VR22,*+AR5[15]
	;; condjump to .L12 occurs
		SBR		.L13
		SNOP		6
	;; jump to .L13 occurs
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
	.byte	0x58
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xae
	.byte	0xc
	.byte	0xaf
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xb0
	.byte	0xa
	.byte	0xb1
	.byte	0x9
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x5
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x88
	.byte	0x8
	.align	3
.LEFDE0:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6fe
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSP_fir_r8_hM16_rM8A8X8_vc.c"
	.string	"/cygdrive/e/project/function  demo/function/DSP_fir_r8_hM16_rM8A8X8/Debug"
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
	.byte	0x11
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x684
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x12
	.4byte	0x691
	.4byte	.LLST1
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x13
	.4byte	0x697
	.4byte	.LLST2
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x14
	.4byte	0x691
	.4byte	.LLST3
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x15
	.4byte	0x11d
	.4byte	.LLST4
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x16
	.4byte	0x11d
	.4byte	.LLST5
	.byte	0x5
	.string	"i"
	.byte	0x1
	.byte	0x18
	.4byte	0x11d
	.4byte	.LLST6
	.byte	0x5
	.string	"j"
	.byte	0x1
	.byte	0x18
	.4byte	0x11d
	.4byte	.LLST7
	.byte	0x5
	.string	"k"
	.byte	0x1
	.byte	0x18
	.4byte	0x11d
	.4byte	.LLST8
	.byte	0x5
	.string	"vr_len"
	.byte	0x1
	.byte	0x19
	.4byte	0x11d
	.4byte	.LLST9
	.byte	0x6
	.string	"int_h_0"
	.byte	0x1
	.byte	0x1b
	.4byte	0x69d
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x6
	.string	"int_h_1"
	.byte	0x1
	.byte	0x1b
	.4byte	0x69d
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x6
	.string	"int_h_2"
	.byte	0x1
	.byte	0x1b
	.4byte	0x69d
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x6
	.string	"int_h_3"
	.byte	0x1
	.byte	0x1b
	.4byte	0x69d
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x6
	.string	"int_h_4"
	.byte	0x1
	.byte	0x1b
	.4byte	0x69d
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x6
	.string	"int_h_5"
	.byte	0x1
	.byte	0x1b
	.4byte	0x69d
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x6
	.string	"int_h_6"
	.byte	0x1
	.byte	0x1b
	.4byte	0x69d
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x6
	.string	"int_h_7"
	.byte	0x1
	.byte	0x1b
	.4byte	0x69d
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x5
	.string	"temp_vh_0"
	.byte	0x1
	.byte	0x1c
	.4byte	0x6a2
	.4byte	.LLST10
	.byte	0x5
	.string	"temp_vh_1"
	.byte	0x1
	.byte	0x1c
	.4byte	0x6a2
	.4byte	.LLST11
	.byte	0x5
	.string	"temp_vh_2"
	.byte	0x1
	.byte	0x1c
	.4byte	0x6a2
	.4byte	.LLST12
	.byte	0x5
	.string	"temp_vh_3"
	.byte	0x1
	.byte	0x1c
	.4byte	0x6a2
	.4byte	.LLST13
	.byte	0x5
	.string	"temp_vh_4"
	.byte	0x1
	.byte	0x1c
	.4byte	0x6a2
	.4byte	.LLST14
	.byte	0x5
	.string	"temp_vh_5"
	.byte	0x1
	.byte	0x1c
	.4byte	0x6a2
	.4byte	.LLST15
	.byte	0x5
	.string	"temp_vh_6"
	.byte	0x1
	.byte	0x1c
	.4byte	0x6a2
	.4byte	.LLST16
	.byte	0x5
	.string	"temp_vh_7"
	.byte	0x1
	.byte	0x1c
	.4byte	0x6a2
	.4byte	.LLST17
	.byte	0x5
	.string	"temp_vr_0_15"
	.byte	0x1
	.byte	0x1f
	.4byte	0x6af
	.4byte	.LLST18
	.byte	0x5
	.string	"temp_vr_15_30"
	.byte	0x1
	.byte	0x1f
	.4byte	0x6af
	.4byte	.LLST19
	.byte	0x5
	.string	"temp_vr_15_30_new"
	.byte	0x1
	.byte	0x1f
	.4byte	0x6af
	.4byte	.LLST20
	.byte	0x6
	.string	"temp_vr_15_30_old"
	.byte	0x1
	.byte	0x1f
	.4byte	0x6af
	.byte	0x3
	.byte	0x77
	.byte	0x80,0x3
	.byte	0x5
	.string	"temp_vr_0_14"
	.byte	0x1
	.byte	0x20
	.4byte	0x6af
	.4byte	.LLST21
	.byte	0x5
	.string	"temp_vr_2_16"
	.byte	0x1
	.byte	0x20
	.4byte	0x6af
	.4byte	.LLST22
	.byte	0x5
	.string	"temp_vr_4_18"
	.byte	0x1
	.byte	0x20
	.4byte	0x6af
	.4byte	.LLST23
	.byte	0x5
	.string	"temp_vr_6_20"
	.byte	0x1
	.byte	0x20
	.4byte	0x6af
	.4byte	.LLST24
	.byte	0x6
	.string	"temp_vx_0_15"
	.byte	0x1
	.byte	0x22
	.4byte	0x6a2
	.byte	0x3
	.byte	0x77
	.byte	0xe0,0x5
	.byte	0x6
	.string	"temp_vx_2_17"
	.byte	0x1
	.byte	0x22
	.4byte	0x6a2
	.byte	0x3
	.byte	0x77
	.byte	0xc0,0x5
	.byte	0x6
	.string	"temp_vx_4_19"
	.byte	0x1
	.byte	0x22
	.4byte	0x6a2
	.byte	0x3
	.byte	0x77
	.byte	0xa0,0x5
	.byte	0x6
	.string	"temp_vx_6_21"
	.byte	0x1
	.byte	0x22
	.4byte	0x6a2
	.byte	0x3
	.byte	0x77
	.byte	0x80,0x5
	.byte	0x5
	.string	"tmpr"
	.byte	0x1
	.byte	0x24
	.4byte	0x6c9
	.4byte	.LLST25
	.byte	0x6
	.string	"svb_temp_h_1"
	.byte	0x1
	.byte	0x26
	.4byte	0x6cf
	.byte	0x2
	.byte	0x90
	.byte	0x5e
	.byte	0x6
	.string	"svb_temp_h_2"
	.byte	0x1
	.byte	0x26
	.4byte	0x6cf
	.byte	0x2
	.byte	0x90
	.byte	0x5c
	.byte	0x6
	.string	"svb_temp_h_3"
	.byte	0x1
	.byte	0x26
	.4byte	0x6cf
	.byte	0x8
	.byte	0x90
	.byte	0x4a
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x4b
	.byte	0x93
	.byte	0x4
	.byte	0x6
	.string	"svb_temp_h_4"
	.byte	0x1
	.byte	0x26
	.4byte	0x6cf
	.byte	0x8
	.byte	0x90
	.byte	0x48
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x49
	.byte	0x93
	.byte	0x4
	.byte	0x6
	.string	"svb_temp_h_5"
	.byte	0x1
	.byte	0x26
	.4byte	0x6cf
	.byte	0x8
	.byte	0x90
	.byte	0x46
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x47
	.byte	0x93
	.byte	0x4
	.byte	0x6
	.string	"svb_temp_h_6"
	.byte	0x1
	.byte	0x26
	.4byte	0x6cf
	.byte	0x8
	.byte	0x90
	.byte	0x44
	.byte	0x93
	.byte	0x4
	.byte	0x90
	.byte	0x45
	.byte	0x93
	.byte	0x4
	.byte	0x6
	.string	"svb_temp_h_7"
	.byte	0x1
	.byte	0x26
	.4byte	0x6cf
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.string	"svb_temp_h_8"
	.byte	0x1
	.byte	0x26
	.4byte	0x6cf
	.byte	0x1
	.byte	0x53
	.byte	0x5
	.string	"temp_x_offset_addr"
	.byte	0x1
	.byte	0x28
	.4byte	0x6d5
	.4byte	.LLST26
	.byte	0x5
	.string	"temp_r_offset_addr"
	.byte	0x1
	.byte	0x2a
	.4byte	0x6cf
	.4byte	.LLST27
	.byte	0x6
	.string	"ttt"
	.byte	0x1
	.byte	0x30
	.4byte	0x6db
	.byte	0x2
	.byte	0x77
	.byte	0
	.byte	0x5
	.string	"temp_in_r"
	.byte	0x1
	.byte	0x31
	.4byte	0x6e8
	.4byte	.LLST28
	.byte	0x5
	.string	"temp_in_r_high"
	.byte	0x1
	.byte	0x32
	.4byte	0x6c9
	.4byte	.LLST28
	.byte	0x5
	.string	"temp_in_r_low"
	.byte	0x1
	.byte	0x33
	.4byte	0x6cf
	.4byte	.LLST30
	.byte	0x5
	.string	"temp_in_r_offset1"
	.byte	0x1
	.byte	0x36
	.4byte	0x6cf
	.4byte	.LLST31
	.byte	0x5
	.string	"temp_computer"
	.byte	0x1
	.byte	0x3a
	.4byte	0x6bc
	.4byte	.LLST32
	.byte	0x5
	.string	"old_deal"
	.byte	0x1
	.byte	0x3b
	.4byte	0x11d
	.4byte	.LLST33
	.byte	0x7
	.string	"M2LD_temp1"
	.byte	0x1
	.byte	0xa8
	.4byte	0x6c9
	.byte	0x7
	.string	"M2LD_temp2"
	.byte	0x1
	.byte	0xa8
	.4byte	0x6c9
	.byte	0x7
	.string	"M2LD_Dst"
	.byte	0x1
	.byte	0xa9
	.4byte	0x6fb
	.byte	0x8
	.byte	0x1
	.string	"vfree"
	.byte	0x1
	.byte	0xb5
	.4byte	0x11d
	.byte	0x1
	.byte	0x9
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x1
	.4byte	0x110
	.4byte	0x691
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xc
	.byte	0x8
	.4byte	0x684
	.byte	0xc
	.byte	0x8
	.4byte	0x110
	.byte	0xd
	.4byte	0x11d
	.byte	0xa
	.byte	0x1
	.4byte	0x110
	.4byte	0x6af
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xa
	.byte	0x1
	.4byte	0x11d
	.4byte	0x6bc
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xa
	.byte	0x1
	.4byte	0x11d
	.4byte	0x6c9
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xc
	.byte	0x8
	.4byte	0x6bc
	.byte	0xc
	.byte	0x8
	.4byte	0x6af
	.byte	0xc
	.byte	0x8
	.4byte	0x6a2
	.byte	0xa
	.byte	0x1
	.4byte	0x11d
	.4byte	0x6e8
	.byte	0xb
	.byte	0x1f
	.byte	0
	.byte	0xc
	.byte	0x8
	.4byte	0x6db
	.byte	0xa
	.byte	0x1
	.4byte	0x15e
	.4byte	0x6fb
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xc
	.byte	0x8
	.4byte	0x6ee
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
	.byte	0x96,0x42
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
	.byte	0x2
	.byte	0xa
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
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x18
	.byte	0
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
	.byte	0x35
	.byte	0
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
	.byte	0xd8,0
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL58
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL58
	.llong	.LVL64
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
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
	.llong	.LVL63
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL63
	.llong	.LVL64
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x1
	.byte	0x5e
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL62-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL62-1
	.llong	.LVL64
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL5
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL5
	.llong	.LVL6
	.2byte	0x4
	.byte	0x92
	.byte	0x44
	.byte	0x1
	.byte	0x9f
	.llong	.LVL6
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
	.llong	.LVL0
	.llong	.LVL58
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL58
	.llong	.LVL64
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL3
	.llong	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL57
	.llong	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL16
	.llong	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL55
	.llong	.LVL56
	.2byte	0x1
	.byte	0x60
	.llong	.LVL65
	.llong	.LVL69
	.2byte	0x1
	.byte	0x60
	.llong	.LVL77
	.llong	.LFE3
	.2byte	0x1
	.byte	0x60
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL16
	.llong	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL2
	.llong	.LVL59
	.2byte	0x2
	.byte	0x90
	.byte	0x23
	.llong	.LVL59
	.llong	.LVL61
	.2byte	0x3
	.byte	0x8a
	.byte	0x7f
	.byte	0x9f
	.llong	.LVL61
	.llong	.LVL64
	.2byte	0x14
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x23
	.byte	0xf
	.byte	0x4f
	.byte	0x26
	.byte	0x4c
	.byte	0x25
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x22
	.byte	0x23
	.byte	0xf
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x23
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x2
	.byte	0x90
	.byte	0x60
	.llong	.LVL8
	.llong	.LVL43
	.2byte	0x2
	.byte	0x90
	.byte	0x60
	.llong	.LVL53
	.llong	.LVL62-1
	.2byte	0x2
	.byte	0x90
	.byte	0x60
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x60
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL6
	.llong	.LVL9
	.2byte	0x2
	.byte	0x90
	.byte	0x62
	.llong	.LVL10
	.llong	.LVL46
	.2byte	0x2
	.byte	0x90
	.byte	0x62
	.llong	.LVL53
	.llong	.LVL62-1
	.2byte	0x2
	.byte	0x90
	.byte	0x62
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x62
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL6
	.llong	.LVL11
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	.LVL12
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	.LVL53
	.llong	.LVL62-1
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL6
	.llong	.LVL13
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	.LVL14
	.llong	.LVL50
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	.LVL53
	.llong	.LVL62-1
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL6
	.llong	.LVL15
	.2byte	0x2
	.byte	0x90
	.byte	0x6a
	.llong	.LVL16
	.llong	.LVL51
	.2byte	0x2
	.byte	0x90
	.byte	0x6a
	.llong	.LVL53
	.llong	.LVL62-1
	.2byte	0x2
	.byte	0x90
	.byte	0x6a
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x6a
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL6
	.llong	.LVL17
	.2byte	0x2
	.byte	0x90
	.byte	0x6c
	.llong	.LVL18
	.llong	.LVL54
	.2byte	0x2
	.byte	0x90
	.byte	0x6c
	.llong	.LVL56
	.llong	.LVL62-1
	.2byte	0x2
	.byte	0x90
	.byte	0x6c
	.llong	.LVL69
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x6c
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL6
	.llong	.LVL19
	.2byte	0x2
	.byte	0x90
	.byte	0x6e
	.llong	.LVL20
	.llong	.LVL62-1
	.2byte	0x2
	.byte	0x90
	.byte	0x6e
	.llong	.LVL64
	.llong	.LVL66
	.2byte	0x2
	.byte	0x90
	.byte	0x6e
	.llong	.LVL69
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x6e
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL6
	.llong	.LVL21
	.2byte	0x2
	.byte	0x90
	.byte	0x70
	.llong	.LVL22
	.llong	.LVL62-1
	.2byte	0x2
	.byte	0x90
	.byte	0x70
	.llong	.LVL64
	.llong	.LVL67
	.2byte	0x2
	.byte	0x90
	.byte	0x70
	.llong	.LVL69
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x70
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL6
	.llong	.LVL27
	.2byte	0x3
	.byte	0x90
	.byte	0x81,0x1
	.llong	.LVL28
	.llong	.LVL29
	.2byte	0x2
	.byte	0x90
	.byte	0x75
	.llong	.LVL30
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.byte	0x79
	.llong	.LVL32
	.llong	.LVL33
	.2byte	0x2
	.byte	0x90
	.byte	0x7d
	.llong	.LVL34
	.llong	.LVL41
	.2byte	0x3
	.byte	0x90
	.byte	0x81,0x1
	.llong	.LVL42
	.llong	.LVL44
	.2byte	0x3
	.byte	0x90
	.byte	0x9e,0x1
	.llong	.LVL45
	.llong	.LVL48
	.2byte	0x2
	.byte	0x90
	.byte	0x61
	.llong	.LVL49
	.llong	.LVL52
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	.LVL53
	.llong	.LVL62-1
	.2byte	0x3
	.byte	0x90
	.byte	0x81,0x1
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x3
	.byte	0x90
	.byte	0x81,0x1
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL6
	.llong	.LVL62-1
	.2byte	0x2
	.byte	0x90
	.byte	0x75
	.llong	.LVL64
	.llong	.LVL69
	.2byte	0x3
	.byte	0x90
	.byte	0x9b,0x1
	.llong	.LVL69
	.llong	.LVL71
	.2byte	0x3
	.byte	0x90
	.byte	0x92,0x1
	.llong	.LVL72
	.llong	.LVL73
	.2byte	0x3
	.byte	0x90
	.byte	0x95,0x1
	.llong	.LVL74
	.llong	.LVL75
	.2byte	0x3
	.byte	0x90
	.byte	0x98,0x1
	.llong	.LVL76
	.llong	.LVL78
	.2byte	0x3
	.byte	0x90
	.byte	0x9b,0x1
	.llong	.LVL79
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x75
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL6
	.llong	.LVL21
	.2byte	0x2
	.byte	0x90
	.byte	0x70
	.llong	.LVL22
	.llong	.LVL62-1
	.2byte	0x2
	.byte	0x90
	.byte	0x70
	.llong	.LVL64
	.llong	.LVL67
	.2byte	0x2
	.byte	0x90
	.byte	0x70
	.llong	.LVL68
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x70
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL6
	.llong	.LVL23
	.2byte	0x3
	.byte	0x90
	.byte	0x84,0x1
	.llong	.LVL35
	.llong	.LVL62-1
	.2byte	0x3
	.byte	0x90
	.byte	0x84,0x1
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x3
	.byte	0x90
	.byte	0x84,0x1
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL6
	.llong	.LVL24
	.2byte	0x3
	.byte	0x90
	.byte	0x88,0x1
	.llong	.LVL36
	.llong	.LVL62-1
	.2byte	0x3
	.byte	0x90
	.byte	0x88,0x1
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x3
	.byte	0x90
	.byte	0x88,0x1
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL6
	.llong	.LVL25
	.2byte	0x3
	.byte	0x90
	.byte	0x8c,0x1
	.llong	.LVL37
	.llong	.LVL62-1
	.2byte	0x3
	.byte	0x90
	.byte	0x8c,0x1
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x3
	.byte	0x90
	.byte	0x8c,0x1
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL6
	.llong	.LVL26
	.2byte	0x3
	.byte	0x90
	.byte	0x90,0x1
	.llong	.LVL38
	.llong	.LVL62-1
	.2byte	0x3
	.byte	0x90
	.byte	0x90,0x1
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x3
	.byte	0x90
	.byte	0x90,0x1
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL2
	.llong	.LVL62-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL62-1
	.llong	.LVL64
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	0
	.llong	0
.LLST26:
	.llong	.LVL16
	.llong	.LVL39
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL39
	.llong	.LVL56
	.2byte	0x2
	.byte	0x90
	.byte	0x51
	.llong	.LVL56
	.llong	.LVL57
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x51
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL40
	.llong	.LVL56
	.2byte	0x1
	.byte	0x55
	.llong	.LVL64
	.llong	.LVL69
	.2byte	0x1
	.byte	0x55
	.llong	.LVL70
	.llong	.LFE3
	.2byte	0x1
	.byte	0x55
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL2
	.llong	.LVL62-1
	.2byte	0x1
	.byte	0x57
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x1
	.byte	0x57
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL2
	.llong	.LVL62-1
	.2byte	0x4
	.byte	0x77
	.byte	0xc0,0
	.byte	0x9f
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x4
	.byte	0x77
	.byte	0xc0,0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST31:
	.llong	.LVL2
	.llong	.LVL62-1
	.2byte	0x3
	.byte	0x77
	.byte	0x4
	.byte	0x9f
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x3
	.byte	0x77
	.byte	0x4
	.byte	0x9f
	.llong	0
	.llong	0
.LLST32:
	.llong	.LVL2
	.llong	.LVL60
	.2byte	0x2
	.byte	0x90
	.byte	0x63
	.llong	.LVL60
	.llong	.LVL62-1
	.2byte	0x2
	.byte	0x77
	.byte	0
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x63
	.llong	0
	.llong	0
.LLST33:
	.llong	.LVL3
	.llong	.LVL4
	.2byte	0x1
	.byte	0x63
	.llong	.LVL4
	.llong	.LVL57
	.2byte	0x6
	.byte	0x92
	.byte	0x22
	.byte	0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.llong	.LVL64
	.llong	.LFE3
	.2byte	0x6
	.byte	0x92
	.byte	0x22
	.byte	0
	.byte	0x3f
	.byte	0x1a
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
