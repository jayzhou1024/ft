	.file	"DSPF_sp_fir_gen.c"
.text;
.Ltext0:
	.section	.text.DSPF_sp_fir_gen_vc31,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_gen_vc31
	.type	DSPF_sp_fir_gen_vc31, @function
DSPF_sp_fir_gen_vc31:
.LFB0:
	.file 1 "../DSPF_sp_fir_gen.c"
	.loc 1 11 0
.LVL0:
	.loc 1 11 0
		SMVAGA36.M1		R15:R14, AR6
	|	SMOVIL		15, R42
	.loc 1 12 0
		SNOP		1
		SMVCGC.L		R42, VLR
.LVL1:
	.loc 1 18 0
		SMOVIL		0, R0
		SNOP		1
	.loc 1 5 0
		SMVAGA36.M1		R13:R12, OR0
	|	SLT		R0, R16, R1
	|	SADD.M2		-1,R16,R3
	.loc 1 18 0
	[!R1]	SBR		.L5
	|	SSHFLL		1, R3, R8
	|	SADD.M2		4,R10,R52
	.loc 1 5 0
		SADDA.M2		-4,OR0,AR0
	|	SSHFLL		2, R3, R44
		SLTU		R8, R3, R9
	|	SADD.M1		R44,R52,R53
		SLTU		R52, R10, R48
		SMVAAGL.M2		AR0, R47:R46
	|	SLTU		R44, R8, R12
	|	SADD.M1		R11,R48,R13
.LVL2:
		SSHFLL		1, R9, R14
.LVL3:
		SADD.M1		R14,R12,R15
	|	SMOVIL		0, R43
	|[R1]	SMVAAGH.M2		AR0, R47:R46
	;; condjump to .L5 occurs
		SLTU		R53, R52, R54
	|	SADD.M1		R15,R13,R16
.LVL4:
		SLT		R43, R18, R2
	|	SADD.M2		R16,R54,R17
.LVL5:
.L4:
		SADD.M2		4,R46,R19
	|[!R2]	SBR		.L10
	|	SMVAGA36.M1		R11:R10, AR4
	|	SMOVIL		0, R25
		SLTU		R19, R46, R21
	|	SMOV.M2		R19, R46
		SADD.M2		R47,R21,R47
	|	SMOV.M1		R18, R28
	|	SMOVIL		0, R26
		SMVAGA36.M2		R47:R46, AR10
	|	SMOVIL		0, R49
	.loc 1 20 0
		SNOP		1
	.loc 1 19 0
	[R2]	SLDW		*AR10, R22
		SNOP		5
	.loc 1 20 0
	;; condjump to .L10 occurs
	.loc 1 19 0
		SVBCAST.M2 		 R22,VR4
		SNOP		3
.LVL6:
.L9:
	.loc 1 5 0
		SMOV.M2		R25, R44
	|	SMOV.M1		R26, R45
	|	SMOVIL		4, R51
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,AR6,AR0
	|	SADDA.M2		R45:R44,AR4,AR2
	|	SLT		R51, R28, R1
	.loc 1 25 0
		SNOP		2
	.loc 1 24 0
		VLDW.LS 		*AR0,VR3
	|	VLDW.LS 		*AR2,VR5
	|	SADDU.M2		48,R25,R50
	|	SADD.M1		12,R49,R49
.LVL7:
		SLTU		R50, R25, R23
	|	SMOV.M2		R50, R25
	.loc 1 20 0
		SLT		R49, R18, R0
	|	SADD.M2		R26,R23,R26
		SNOP		5
	.loc 1 24 0
		VFMULAS32.M3	VR5,VR4,VR3,VR3
	|[R1]	SBR		.L16
	.loc 1 25 0
		SNOP		5
	.loc 1 24 0
		VSTW.LS 		VR3,*AR0
	;; condjump to .L16 occurs
.L7:
	.loc 1 20 0
	[R0]	SBR		.L9
	|	SADD.M2		-12,R28,R28
		SNOP		6
	;; condjump to .L9 occurs
.LVL8:
.L10:
		SLTU		R52, R10, R29
	|	SMOV.M2		R52, R10
	.loc 1 18 0
		SEQ		R52, R53, R0
	|	SADD.M2		R11,R29,R11
	|	SADD.M1		4,R52,R52
	[R0]	SEQ		R11, R17, R0
	[R0]	SBR		.L5
	[!R0]	SBR		.L4
		SNOP		6
	;; condjump to .L5 occurs
	;; jump to .L4 occurs
.LVL9:
.L16:
	.loc 1 28 0
		VLDW.LS 		*+AR0[4],VR0
	|	VLDW.LS 		*+AR2[4],VR1
	|	SMOVIL		8, R27
	.loc 1 30 0
		SLT		R27, R28, R1
		SNOP		6
	.loc 1 28 0
		VFMULAS32.M3	VR1,VR4,VR0,VR0
	|[!R1]	SBR		.L7
	.loc 1 30 0
		SNOP		5
	.loc 1 28 0
		VSTW.LS 		VR0,*+AR0[4]
	;; condjump to .L7 occurs
	.loc 1 33 0
		VLDW.LS 		*+AR2[8],VR2
	|	VLDW.LS 		*+AR0[8],VR6
	|	SADD.M2		-12,R28,R28
		SNOP		7
		VFMULAS32.M3	VR2,VR4,VR6,VR6
	|[R0]	SBR		.L9
	.loc 1 20 0
		SNOP		5
	.loc 1 33 0
		VSTW.LS 		VR6,*+AR0[8]
	;; condjump to .L9 occurs
		SBR		.L10
		SNOP		6
	;; jump to .L10 occurs
.LVL10:
.L5:
	.loc 1 37 0
		SMOVIL		65535, R10
		SMOVIH		65535, R10
		SMVCGC.L		R10, VLR
		SNOP		2
		SBR		R62
		SNOP		6
	;; return occurs
.LFE0:
	.size	DSPF_sp_fir_gen_vc31, .-DSPF_sp_fir_gen_vc31
	.section	.text.DSPF_sp_fir_gen_vc4,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_gen_vc4
	.type	DSPF_sp_fir_gen_vc4, @function
DSPF_sp_fir_gen_vc4:
.LFB1:
	.loc 1 45 0
.LVL11:
	.loc 1 45 0
		SMVAGA36.M1		R13:R12, AR0
	|	SMOVIL		15, R42
		SMVAGA36.M1		R15:R14, AR6
		SNOP		1
	.loc 1 46 0
		SMVCGC.L		R42, VLR
.LVL12:
	.loc 1 54 0
		SMOVIL		0, R0
		SNOP		1
	.loc 1 39 0
		SMVAAGL.M1		AR0, R43:R42
	|	SLT		R0, R16, R1
	|	SADDA.M2		12,AR0,AR2
		SADDA.M1		16,AR6,OR0
	|[!R1]	SBR		.L22
	|	SMOVIL		0, R45
		SMVAAGH.M2		AR0, R43:R42
	|	SLT		R45, R18, R2
		SMVAAGL.M1		AR2, R49:R48
		SADD.M2		-1,R16,R16
	|	SMVAAGL.M1		OR0, R51:R50
.LVL13:
		SADD.M2		28,R42,R44
	|	SSHFLR		2, R16, R58
	|	SMVAAGH.M1		AR2, R49:R48
		SLTU		R44, R42, R3
	|	SMVAAGH.M1		OR0, R51:R50
		SSHFLL		4, R58, R8
	|	SADD.M2		R43,R3,R9
	;; condjump to .L22 occurs
		SSHFLR		30, R16, R12
	|	SADD.M2		R8,R44,R13
.LVL14:
		SLTU		R13, R44, R14
	|	SADD.M2		R12,R9,R15
.LVL15:
		SADD.M2		R15,R14,R59
.LVL16:
.L21:
		SMVAGA36.M2		R49:R48, AR10
	|[!R2]	SBR		.L27
	|	SMVAGA36.M1		R11:R10, AR4
	|	SMOVIL		0, R23
		SMOVIL		0, R24
	.loc 1 55 0
	[R2]	SLDW		*-AR10[3], R17
	|	SMOV.M2		R18, R52
	|	SMOV.M1		R50, R44
	|	SMOVIL		0, R53
	.loc 1 56 0
	[R2]	SLDW		*-AR10[2], R19
	|	SMOV.M2		R51, R45
	.loc 1 57 0
	[R2]	SLDW		*-AR10[1], R43
	.loc 1 58 0
	[R2]	SLDW		*AR10, R20
		SNOP		2
	.loc 1 59 0
	;; condjump to .L27 occurs
	.loc 1 55 0
		SVBCAST.M2 		 R17,VR4
.LVL17:
	.loc 1 56 0
		SVBCAST.M1 		 R19,VR5
.LVL18:
	.loc 1 57 0
		SVBCAST.M1 		 R43,VR6
.LVL19:
	.loc 1 58 0
		SVBCAST.M1 		 R20,VR7
		SNOP		3
.LVL20:
.L26:
	.loc 1 39 0
		SMOV.M2		R23, R46
	|	SMOV.M1		R24, R47
	|	SMOVIL		8, R54
	;no-op trunc di R47:R46 to pdi R47:R46
		SADDA.M2		R47:R46,AR4,AR0
	|	SMOVIL		4, R21
	.loc 1 86 0
		SLT		R54, R52, R0
	.loc 1 103 0
		SLT		R21, R52, R1
	.loc 1 62 0
		VLDW.LS 		*AR0,VR11
	|	VLDW.LS 		*+AR0[1],VR10
.LVL21:
	.loc 1 70 0
		VLDW.LS 		*+AR0[2],VR9
	|	VLDW.LS 		*+AR0[3],VR8
	.loc 1 63 0
		VLDW.LS 		*+AR0[4],VR14
	|	VLDW.LS 		*+AR0[8],VR18
.LVL22:
	.loc 1 67 0
		VLDW.LS 		*+AR0[5],VR13
	|	VLDW.LS 		*+AR0[9],VR17
.LVL23:
	.loc 1 71 0
		VLDW.LS 		*+AR0[6],VR12
	|	VLDW.LS 		*+AR0[10],VR16
.LVL24:
	.loc 1 75 0
		VLDW.LS 		*+AR0[7],VR3
	|	VLDW.LS 		*+AR0[11],VR15
.LVL25:
	.loc 1 86 0
	[R0]	SBR		.L35
		SNOP		6
	;; condjump to .L35 occurs
	.loc 1 103 0
	[!R1]	SBR		.L25
		SNOP		6
	;; condjump to .L25 occurs
	.loc 1 39 0
		SMVAGA36.M1		R45:R44, AR2
	|	SADDA.M2		R47:R46,AR6,AR0
		SNOP		1
	.loc 1 104 0
		VLDW.LS 		*AR2,VR1
	|	SADD.M1		12,R53,R53
.LVL26:
	.loc 1 59 0
		SLT		R53, R18, R0
	|	SADDU.M2		48,R23,R47
	|	SADDU.M1		48,R44,R46
		SLTU		R47, R23, R57
	|	SADD.M2		-12,R52,R52
	|	SMOV.M1		R47, R23
		SLTU		R46, R44, R55
	|	SADD.M2		R24,R57,R24
	|	SMOV.M1		R46, R44
		SADD.M2		R45,R55,R45
		SNOP		3
	.loc 1 104 0
		VFMULAS32.M3	VR14,VR4,VR1,VR1
		SNOP		5
		VSTW.LS 		VR1,*AR2
	.loc 1 105 0
		VLDW.LS 		*AR0,VR2
		SNOP		7
		VFMULAS32.M3	VR11,VR4,VR2,VR2
		SNOP		5
		VSTW.LS 		VR2,*AR0
	.loc 1 107 0
		VLDW.LS 		*AR2,VR19
		SNOP		7
		VFMULAS32.M3	VR13,VR5,VR19,VR19
		SNOP		5
		VSTW.LS 		VR19,*AR2
	.loc 1 108 0
		VLDW.LS 		*AR0,VR20
		SNOP		7
		VFMULAS32.M3	VR10,VR5,VR20,VR20
		SNOP		5
		VSTW.LS 		VR20,*AR0
	.loc 1 110 0
		VLDW.LS 		*AR2,VR21
		SNOP		7
		VFMULAS32.M3	VR12,VR6,VR21,VR21
		SNOP		5
		VSTW.LS 		VR21,*AR2
	.loc 1 111 0
		VLDW.LS 		*AR0,VR22
		SNOP		7
		VFMULAS32.M3	VR9,VR6,VR22,VR22
		SNOP		5
		VSTW.LS 		VR22,*AR0
	.loc 1 113 0
		VLDW.LS 		*AR2,VR23
		SNOP		7
		VFMULAS32.M3	VR3,VR7,VR23,VR23
		SNOP		5
		VSTW.LS 		VR23,*AR2
	.loc 1 114 0
		VLDW.LS 		*AR0,VR24
		SNOP		7
	.loc 1 59 0
	[R0]	SBR		.L26
	|	VFMULAS32.M3	VR8,VR7,VR24,VR24
	.loc 1 114 0
		SNOP		5
		VSTW.LS 		VR24,*AR0
	;; condjump to .L26 occurs
.LVL27:
.L27:
		SADD.M2		16,R48,R25
	|	SADD.M1		16,R10,R28
		SLTU		R25, R48, R27
	|	SMOV.M2		R25, R48
		SADD.M2		R49,R27,R49
	|	SEQ		R25, R13, R1
	.loc 1 54 0
	[R1]	SEQ		R49, R59, R1
	[!R1]	SBR		.L21
	|	SLTU		R28, R10, R29
	|	SMOV.M2		R28, R10
		SADD.M2		R11,R29,R11
		SNOP		5
	;; condjump to .L21 occurs
.L22:
	.loc 1 125 0
		SMOVIL		65535, R10
		SMOVIH		65535, R10
		SMVCGC.L		R10, VLR
		SNOP		2
		SBR		R62
		SNOP		6
	;; return occurs
.LVL28:
.L25:
	.loc 1 39 0
		SADDA.M2		R47:R46,AR6,AR0
	|	SADD.M1		12,R53,R53
.LVL29:
	.loc 1 59 0
		SLT		R53, R18, R0
	|	SADDU.M1		48,R23,R47
		SADDU.M1		48,R44,R46
	|	SLTU		R47, R23, R57
	.loc 1 116 0
		VLDW.LS 		*AR0,VR0
	|	SLTU		R46, R44, R55
	|	SMOV.M2		R47, R23
	|	SMOV.M1		R46, R44
		SADD.M2		R24,R57,R24
	|	SADD.M1		-12,R52,R52
		SADD.M2		R45,R55,R45
		SNOP		5
		VFMULAS32.M3	VR11,VR4,VR0,VR0
		SNOP		5
	.loc 1 117 0
		VFMULAS32.M3	VR10,VR5,VR0,VR0
		SNOP		5
	.loc 1 118 0
		VFMULAS32.M3	VR9,VR6,VR0,VR0
		SNOP		5
	.loc 1 59 0
	[R0]	SBR		.L26
	|	VFMULAS32.M3	VR8,VR7,VR0,VR0
	.loc 1 119 0
		SNOP		5
		VSTW.LS 		VR0,*AR0
	;; condjump to .L26 occurs
		SBR		.L27
		SNOP		6
	;; jump to .L27 occurs
.LVL30:
.L35:
	.loc 1 39 0
		SMVAGA36.M1		R45:R44, AR0
	|	SADDA.M2		R47:R46,AR6,AR2
		SNOP		1
	.loc 1 87 0
		VLDW.LS 		*+AR0[4],VR25
	|	SADD.M1		12,R53,R53
.LVL31:
	.loc 1 59 0
		SLT		R53, R18, R0
	|	SADDU.M2		48,R23,R47
	|	SADDU.M1		48,R44,R46
		SLTU		R47, R23, R57
	|	SADD.M2		-12,R52,R52
	|	SMOV.M1		R47, R23
		SLTU		R46, R44, R55
	|	SADD.M2		R24,R57,R24
	|	SMOV.M1		R46, R44
		SADD.M2		R45,R55,R45
		SNOP		3
	.loc 1 87 0
		VFMULAS32.M3	VR18,VR4,VR25,VR25
		SNOP		5
		VSTW.LS 		VR25,*+AR0[4]
	.loc 1 88 0
		VLDW.LS 		*AR0,VR26
		SNOP		7
		VFMULAS32.M3	VR14,VR4,VR26,VR26
		SNOP		5
		VSTW.LS 		VR26,*AR0
	.loc 1 89 0
		VLDW.LS 		*AR2,VR27
		SNOP		7
		VFMULAS32.M3	VR11,VR4,VR27,VR27
		SNOP		5
		VSTW.LS 		VR27,*AR2
	.loc 1 91 0
		VLDW.LS 		*+AR0[4],VR28
		SNOP		7
		VFMULAS32.M3	VR17,VR5,VR28,VR28
		SNOP		5
		VSTW.LS 		VR28,*+AR0[4]
	.loc 1 92 0
		VLDW.LS 		*AR0,VR29
		SNOP		7
		VFMULAS32.M3	VR13,VR5,VR29,VR29
		SNOP		5
		VSTW.LS 		VR29,*AR0
	.loc 1 93 0
		VLDW.LS 		*AR2,VR30
		SNOP		7
		VFMULAS32.M3	VR10,VR5,VR30,VR30
		SNOP		5
		VSTW.LS 		VR30,*AR2
	.loc 1 95 0
		VLDW.LS 		*+AR0[4],VR31
		SNOP		7
		VFMULAS32.M3	VR16,VR6,VR31,VR31
		SNOP		5
		VSTW.LS 		VR31,*+AR0[4]
	.loc 1 96 0
		VLDW.LS 		*AR0,VR32
		SNOP		7
		VFMULAS32.M3	VR12,VR6,VR32,VR32
		SNOP		5
		VSTW.LS 		VR32,*AR0
	.loc 1 97 0
		VLDW.LS 		*AR2,VR33
		SNOP		7
		VFMULAS32.M3	VR9,VR6,VR33,VR33
		SNOP		5
		VSTW.LS 		VR33,*AR2
	.loc 1 99 0
		VLDW.LS 		*+AR0[4],VR34
		SNOP		7
		VFMULAS32.M3	VR15,VR7,VR34,VR34
		SNOP		5
		VSTW.LS 		VR34,*+AR0[4]
	.loc 1 100 0
		VLDW.LS 		*AR0,VR35
		SNOP		7
		VFMULAS32.M3	VR3,VR7,VR35,VR35
		SNOP		5
		VSTW.LS 		VR35,*AR0
	.loc 1 101 0
		VLDW.LS 		*AR2,VR36
		SNOP		7
	.loc 1 59 0
	[R0]	SBR		.L26
	|	VFMULAS32.M3	VR8,VR7,VR36,VR36
	.loc 1 101 0
		SNOP		5
		VSTW.LS 		VR36,*AR2
	;; condjump to .L26 occurs
		SBR		.L27
		SNOP		6
	;; jump to .L27 occurs
.LFE1:
	.size	DSPF_sp_fir_gen_vc4, .-DSPF_sp_fir_gen_vc4
	.section	.text.DSP_fir_gen_cn_v2,"ax",@progbits
	.align	2
	.global	DSP_fir_gen_cn_v2
	.type	DSP_fir_gen_cn_v2, @function
DSP_fir_gen_cn_v2:
.LFB2:
	.loc 1 133 0
.LVL32:
	.loc 1 127 0
		SMVAGA36.M1		R13:R12, OR0
	|	SMOVIL		0, R42
	|	SADD.M2		-1,R16,R2
	.loc 1 137 0
		SLT		R42, R16, R0
	|	SADD.M2		4,R10,R55
	|	SMVAGA36.M1		R15:R14, AR5
	.loc 1 127 0
		SADDA.M1		-4,OR0,AR0
	|[!R0]	SBR		.L37
	|	SSHFLL		1, R2, R3
		SSHFLL		2, R2, R44
		SLTU		R3, R2, R8
	|	SADD.M2		R44,R55,R56
		SLTU		R55, R10, R46
	|	SMVAAGL.M2		AR0, R51:R50
		SLTU		R44, R3, R9
	|	SADD.M1		R11,R46,R12
.LVL33:
		SSHFLL		1, R8, R13
	|	SMVAAGH.M2		AR0, R51:R50
		SADD.M1		R13,R9,R14
	|	SMOVIL		0, R43
	;; condjump to .L37 occurs
.LVL34:
		SLTU		R56, R55, R57
	|	SADD.M2		R14,R12,R15
		SLT		R43, R18, R1
	|	SADD.M2		R15,R57,R16
.LVL35:
		SMOVIL		128, R46
		SMOVIL		0, R47
		SMOVIL		192, R48
.LVL36:
.L40:
		SADD.M2		4,R50,R17
	|[!R1]	SBR		.L42
	|	SMVAGA36.M1		R11:R10, AR3
	|	SMOVIL		0, R23
		SLTU		R17, R50, R20
	|	SMOV.M2		R17, R50
		SADD.M2		R51,R20,R51
	|	SMOVIL		0, R24
		SMVAGA36.M2		R51:R50, AR10
	|	SMOVIL		0, R52
	.loc 1 139 0
		SNOP		1
	.loc 1 138 0
	[R1]	SLDW		*AR10, R21
		SNOP		5
	.loc 1 139 0
	;; condjump to .L42 occurs
	.loc 1 138 0
		SVBCAST.M2 		 R21,VR4
		SNOP		3
.LVL37:
.L39:
	.loc 1 127 0
		SMOV.M2		R23, R44
	|	SMOV.M1		R24, R45
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,AR5,AR0
	|	SADDA.M2		R45:R44,AR3,AR2
	|	SMOVIL		64, R44
.LVL38:
		SMOVIL		0, R45
		SNOP		1
	.loc 1 144 0
		VLDW.LS 		*AR2,VR7
	|	VLDW.LS 		*AR0,VR3
	|	SADDA.M1		R45:R44,AR2,AR1
	|	SADDA.M2		R47:R46,AR2,AR2
	.loc 1 127 0
		SNOP		1
.LVL39:
		SADDA.M1		R45:R44,AR0,AR6
	|	SADDA.M2		R47:R46,AR0,AR4
	.loc 1 142 0
		VLDW.LS 		*AR1,VR6
	|	VLDW.LS 		*AR2,VR5
.LVL40:
	.loc 1 143 0
		SNOP		1
.LVL41:
	.loc 1 139 0
		SADDU.M2		48,R52,R52
	|	SADD.M1		R48,R23,R53
.LVL42:
		SLT		R52, R18, R0
		SLTU		R53, R23, R54
	|	SMOV.M2		R53, R23
	.loc 1 144 0
		VFMULAS32.M3	VR7,VR4,VR3,VR3
	|	SADD.M2		R24,R54,R24
		SNOP		5
		VSTW.LS 		VR3,*AR0
	.loc 1 145 0
		VLDW.LS 		*AR6,VR0
		SNOP		7
		VFMULAS32.M3	VR6,VR4,VR0,VR0
		SNOP		5
		VSTW.LS 		VR0,*AR6
	.loc 1 146 0
		VLDW.LS 		*AR4,VR1
		SNOP		7
	.loc 1 139 0
	[R0]	SBR		.L39
	|	VFMULAS32.M3	VR5,VR4,VR1,VR1
	.loc 1 146 0
		SNOP		5
		VSTW.LS 		VR1,*AR4
	;; condjump to .L39 occurs
.LVL43:
.L42:
		SLTU		R55, R10, R25
	|	SMOV.M2		R55, R10
	.loc 1 137 0
		SEQ		R55, R56, R2
	|	SADD.M2		R11,R25,R11
	|	SADD.M1		4,R55,R55
	[R2]	SEQ		R11, R16, R2
	[R2]	SBR		.L37
	[!R2]	SBR		.L40
		SNOP		6
	;; condjump to .L37 occurs
	;; jump to .L40 occurs
.L37:
		SBR		R62
		SNOP		6
	;; return occurs
.LFE2:
	.size	DSP_fir_gen_cn_v2, .-DSP_fir_gen_cn_v2
	.section	.text.DSPF_sp_fir_gen_vc1,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_gen_vc1
	.type	DSPF_sp_fir_gen_vc1, @function
DSPF_sp_fir_gen_vc1:
.LFB3:
	.loc 1 156 0
.LVL44:
	.loc 1 156 0
		SMVAGA36.M1		R15:R14, AR6
	|	SMOVIL		15, R42
	.loc 1 158 0
		SNOP		1
		SMVCGC.L		R42, VLR
.LVL45:
	.loc 1 162 0
		SMOVIL		0, R0
		SNOP		1
	.loc 1 150 0
		SMVAGA36.M1		R13:R12, OR0
	|	SLT		R0, R16, R1
	|	SADD.M2		-1,R16,R2
	.loc 1 162 0
	[!R1]	SBR		.L53
	|	SADD.M2		-1,R18,R43
	|	SSHFLL		1, R2, R3
	.loc 1 150 0
		SADDA.M2		-4,OR0,AR0
	|	SADD.M1		4,R10,R53
	|	SSHFLL		2, R2, R45
		SSHFLR		2, R43, R8
	|	SADD.M1		R45,R53,R54
		SLTU		R3, R2, R9
	|	SADD.M1		1,R8,R52
		SMVAAGL.M2		AR0, R47:R46
	|	SLTU		R53, R10, R49
		SLTU		R45, R3, R12
	|	SADD.M1		R11,R49,R13
.LVL46:
		SSHFLL		1, R9, R14
	|[R1]	SMVAAGH.M2		AR0, R47:R46
	;; condjump to .L53 occurs
.LVL47:
		SMOVIL		0, R44
	|	SADD.M1		R14,R12,R15
		SLTU		R52, R8, R16
	|	SADD.M2		R15,R13,R17
.LVL48:
		SLT		R44, R18, R1
		SLTU		R54, R53, R55
		SSHFLR		28, R52, R18
	|	SADD.M2		R17,R55,R19
.LVL49:
		SSHFLL		4, R16, R51
		SOR		R51, R18, R20
		SSHFLL		4, R52, R21
.LVL50:
.L52:
		SADD.M2		4,R46,R22
	|[!R1]	SBR		.L54
	|	SMVAGA36.M1		R11:R10, AR4
	|	SMOVIL		0, R28
		SLTU		R22, R46, R24
	|	SMOV.M2		R22, R46
		SADD.M2		R47,R24,R47
	|	SMOVIL		0, R29
		SMVAGA36.M2		R47:R46, AR10
		SNOP		1
	.loc 1 163 0
	[R1]	SLDW		*AR10, R25
		SNOP		5
	.loc 1 164 0
	;; condjump to .L54 occurs
	.loc 1 163 0
		SVBCAST.M2 		 R25,VR5
		SNOP		3
.LVL51:
.L51:
	.loc 1 150 0
		SMOV.M2		R28, R44
	|	SMOV.M1		R29, R45
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,AR6,AR0
	|	SADDA.M2		R45:R44,AR4,AR2
		SNOP		2
	.loc 1 167 0
		VLDW.LS 		*AR0,VR3
	|	VLDW.LS 		*AR2,VR4
	|	SADD.M2		16,R28,R26
		SLTU		R26, R28, R50
	|	SMOV.M2		R26, R28
		SADD.M2		R29,R50,R29
	|	SEQ		R26, R21, R0
	.loc 1 164 0
	[R0]	SEQ		R29, R20, R0
		SNOP		4
	.loc 1 167 0
		VFMULAS32.M3	VR4,VR5,VR3,VR3
	|[!R0]	SBR		.L51
	.loc 1 164 0
		SNOP		5
	.loc 1 167 0
		VSTW.LS 		VR3,*AR0
	;; condjump to .L51 occurs
.LVL52:
.L54:
		SLTU		R53, R10, R56
	|	SMOV.M2		R53, R10
	.loc 1 162 0
		SEQ		R53, R54, R2
	|	SADD.M2		R11,R56,R11
	|	SADD.M1		4,R53,R53
	[R2]	SEQ		R11, R19, R2
	[R2]	SBR		.L53
	[!R2]	SBR		.L52
		SNOP		6
	;; condjump to .L53 occurs
	;; jump to .L52 occurs
.L53:
	.loc 1 170 0
		SMOVIL		65535, R10
		SMOVIH		65535, R10
		SMVCGC.L		R10, VLR
		SNOP		2
		SBR		R62
		SNOP		6
	;; return occurs
.LFE3:
	.size	DSPF_sp_fir_gen_vc1, .-DSPF_sp_fir_gen_vc1
	.section	.text.DSPF_sp_fir_gen_vc3,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_gen_vc3
	.type	DSPF_sp_fir_gen_vc3, @function
DSPF_sp_fir_gen_vc3:
.LFB4:
	.loc 1 179 0
.LVL53:
	.loc 1 179 0
		SMVAGA36.M1		R15:R14, AR6
	|	SMOVIL		15, R42
	.loc 1 180 0
		SNOP		1
		SMVCGC.L		R42, VLR
.LVL54:
	.loc 1 185 0
		SMOVIL		0, R0
		SNOP		1
	.loc 1 173 0
		SMVAGA36.M1		R13:R12, OR0
	|	SLT		R0, R16, R1
	|	SADD.M2		-1,R16,R3
	.loc 1 185 0
	[!R1]	SBR		.L69
	|	SSHFLL		1, R3, R8
	|	SADD.M2		4,R10,R52
	.loc 1 173 0
		SADDA.M2		-4,OR0,AR0
	|	SSHFLL		2, R3, R44
		SLTU		R8, R3, R9
	|	SADD.M1		R44,R52,R53
		SLTU		R52, R10, R48
		SMVAAGL.M2		AR0, R47:R46
	|	SLTU		R44, R8, R12
	|	SADD.M1		R11,R48,R13
.LVL55:
		SSHFLL		1, R9, R14
.LVL56:
		SADD.M1		R14,R12,R15
	|	SMOVIL		0, R43
	|[R1]	SMVAAGH.M2		AR0, R47:R46
	;; condjump to .L69 occurs
		SLTU		R53, R52, R54
	|	SADD.M1		R15,R13,R16
.LVL57:
		SLT		R43, R18, R2
	|	SADD.M2		R16,R54,R17
.LVL58:
.L68:
		SADD.M2		4,R46,R19
	|[!R2]	SBR		.L74
	|	SMVAGA36.M1		R11:R10, AR4
	|	SMOVIL		0, R25
		SLTU		R19, R46, R21
	|	SMOV.M2		R19, R46
		SADD.M2		R47,R21,R47
	|	SMOV.M1		R18, R28
	|	SMOVIL		0, R26
		SMVAGA36.M2		R47:R46, AR10
	|	SMOVIL		0, R49
	.loc 1 189 0
		SNOP		1
	.loc 1 186 0
	[R2]	SLDW		*AR10, R22
		SNOP		5
	.loc 1 189 0
	;; condjump to .L74 occurs
	.loc 1 186 0
		SVBCAST.M2 		 R22,VR5
		SNOP		3
.LVL59:
.L73:
	.loc 1 173 0
		SMOV.M2		R25, R44
	|	SMOV.M1		R26, R45
	|	SMOVIL		4, R51
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,AR6,AR0
	|	SADDA.M2		R45:R44,AR4,AR2
	|	SLT		R51, R28, R1
	.loc 1 198 0
		SNOP		2
	.loc 1 197 0
		VLDW.LS 		*AR2,VR4
	|	VLDW.LS 		*AR0,VR3
	|	SADDU.M2		48,R25,R50
	|	SADD.M1		12,R49,R49
.LVL60:
	.loc 1 191 0
		VLDW.LS 		*+AR2[4],VR7
	|	VLDW.LS 		*+AR2[8],VR6
	|	SLTU		R50, R25, R23
	|	SMOV.M2		R50, R25
.LVL61:
	.loc 1 189 0
		SLT		R49, R18, R0
	|	SADD.M2		R26,R23,R26
		SNOP		5
	.loc 1 197 0
		VFMULAS32.M3	VR4,VR5,VR3,VR3
	|[R1]	SBR		.L80
	.loc 1 198 0
		SNOP		5
	.loc 1 197 0
		VSTW.LS 		VR3,*AR0
	;; condjump to .L80 occurs
.L71:
	.loc 1 189 0
	[R0]	SBR		.L73
	|	SADD.M2		-12,R28,R28
		SNOP		6
	;; condjump to .L73 occurs
.LVL62:
.L74:
		SLTU		R52, R10, R29
	|	SMOV.M2		R52, R10
	.loc 1 185 0
		SEQ		R52, R53, R0
	|	SADD.M2		R11,R29,R11
	|	SADD.M1		4,R52,R52
	[R0]	SEQ		R11, R17, R0
	[R0]	SBR		.L69
	[!R0]	SBR		.L68
		SNOP		6
	;; condjump to .L69 occurs
	;; jump to .L68 occurs
.LVL63:
.L80:
	.loc 1 199 0
		VLDW.LS 		*+AR0[4],VR0
	|	SMOVIL		8, R27
	.loc 1 201 0
		SLT		R27, R28, R1
		SNOP		6
	.loc 1 199 0
		VFMULAS32.M3	VR7,VR5,VR0,VR0
	|[!R1]	SBR		.L71
	.loc 1 201 0
		SNOP		5
	.loc 1 199 0
		VSTW.LS 		VR0,*+AR0[4]
	;; condjump to .L71 occurs
	.loc 1 202 0
		VLDW.LS 		*+AR0[8],VR1
	|	SADD.M2		-12,R28,R28
		SNOP		7
		VFMULAS32.M3	VR6,VR5,VR1,VR1
	|[R0]	SBR		.L73
	.loc 1 189 0
		SNOP		5
	.loc 1 202 0
		VSTW.LS 		VR1,*+AR0[8]
	;; condjump to .L73 occurs
		SBR		.L74
		SNOP		6
	;; jump to .L74 occurs
.LVL64:
.L69:
	.loc 1 206 0
		SMOVIL		65535, R10
		SMOVIH		65535, R10
		SMVCGC.L		R10, VLR
		SNOP		2
		SBR		R62
		SNOP		6
	;; return occurs
.LFE4:
	.size	DSPF_sp_fir_gen_vc3, .-DSPF_sp_fir_gen_vc3
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
	.llong	.LFB0
	.llong	.LFE0-.LFB0
	.align	3
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.llong	.LFB1
	.llong	.LFE1-.LFB1
	.align	3
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.llong	.LFB2
	.llong	.LFE2-.LFB2
	.align	3
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.align	3
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.llong	.LFB4
	.llong	.LFE4-.LFB4
	.align	3
.LEFDE8:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7f8
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../DSPF_sp_fir_gen.c"
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSPF_sp_fir_gen/test/Debug"
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
	.string	"DSPF_sp_fir_gen_vc31"
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x2bb
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x6
	.4byte	0x2c8
	.4byte	.LLST0
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x7
	.4byte	0x2ce
	.4byte	.LLST1
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x8
	.4byte	0x2c8
	.4byte	.LLST2
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x9
	.4byte	0x12f
	.4byte	.LLST3
	.byte	0x5
	.string	"nr"
	.byte	0x1
	.byte	0xa
	.4byte	0x12f
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0xd
	.4byte	0x12f
	.4byte	.LLST4
	.byte	0x6
	.string	"j"
	.byte	0x1
	.byte	0xd
	.4byte	0x12f
	.4byte	.LLST5
	.byte	0x7
	.string	"k"
	.byte	0x1
	.byte	0xd
	.4byte	0x12f
	.byte	0x7
	.string	"t"
	.byte	0x1
	.byte	0xd
	.4byte	0x12f
	.byte	0x8
	.4byte	.LASF0
	.byte	0x1
	.byte	0xe
	.4byte	0x2bb
	.4byte	.LLST6
	.byte	0x9
	.4byte	.LASF1
	.byte	0x1
	.byte	0xe
	.4byte	0x2bb
	.byte	0x9
	.4byte	.LASF2
	.byte	0x1
	.byte	0xe
	.4byte	0x2bb
	.byte	0x6
	.string	"temp4"
	.byte	0x1
	.byte	0xe
	.4byte	0x2bb
	.4byte	.LLST7
	.byte	0x6
	.string	"temp5"
	.byte	0x1
	.byte	0xe
	.4byte	0x2bb
	.4byte	.LLST8
	.byte	0x6
	.string	"temp6"
	.byte	0x1
	.byte	0xe
	.4byte	0x2bb
	.4byte	.LLST9
	.byte	0x7
	.string	"temp7"
	.byte	0x1
	.byte	0xf
	.4byte	0x2c8
	.byte	0x7
	.string	"temp8"
	.byte	0x1
	.byte	0xf
	.4byte	0x2c8
	.byte	0x7
	.string	"temp9"
	.byte	0x1
	.byte	0xf
	.4byte	0x2c8
	.byte	0x8
	.4byte	.LASF3
	.byte	0x1
	.byte	0x10
	.4byte	0x2e4
	.4byte	.LLST10
	.byte	0x6
	.string	"x_temp"
	.byte	0x1
	.byte	0x11
	.4byte	0x2ce
	.4byte	.LLST11
	.byte	0
	.byte	0xa
	.byte	0x1
	.4byte	0x167
	.4byte	0x2c8
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xc
	.byte	0x8
	.4byte	0x2bb
	.byte	0xc
	.byte	0x8
	.4byte	0x167
	.byte	0xd
	.4byte	0x167
	.4byte	0x2e4
	.byte	0xe
	.4byte	0x153
	.byte	0x3
	.byte	0
	.byte	0xc
	.byte	0x8
	.4byte	0x2d4
	.byte	0x3
	.byte	0x1
	.string	"DSPF_sp_fir_gen_vc4"
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.llong	.LFB1
	.llong	.LFE1
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x50b
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x28
	.4byte	0x2c8
	.4byte	.LLST12
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x29
	.4byte	0x2ce
	.4byte	.LLST13
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x2a
	.4byte	0x2c8
	.4byte	.LLST14
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x2b
	.4byte	0x12f
	.4byte	.LLST15
	.byte	0x5
	.string	"nr"
	.byte	0x1
	.byte	0x2c
	.4byte	0x12f
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x2f
	.4byte	0x12f
	.4byte	.LLST16
	.byte	0x6
	.string	"j"
	.byte	0x1
	.byte	0x2f
	.4byte	0x12f
	.4byte	.LLST17
	.byte	0x7
	.string	"k"
	.byte	0x1
	.byte	0x2f
	.4byte	0x12f
	.byte	0x6
	.string	"t"
	.byte	0x1
	.byte	0x2f
	.4byte	0x12f
	.4byte	.LLST18
	.byte	0x6
	.string	"htemp1"
	.byte	0x1
	.byte	0x30
	.4byte	0x2bb
	.4byte	.LLST19
	.byte	0x6
	.string	"htemp2"
	.byte	0x1
	.byte	0x30
	.4byte	0x2bb
	.4byte	.LLST20
	.byte	0x6
	.string	"htemp3"
	.byte	0x1
	.byte	0x30
	.4byte	0x2bb
	.4byte	.LLST21
	.byte	0x6
	.string	"htemp4"
	.byte	0x1
	.byte	0x30
	.4byte	0x2bb
	.4byte	.LLST22
	.byte	0x6
	.string	"xtemp1"
	.byte	0x1
	.byte	0x31
	.4byte	0x2bb
	.4byte	.LLST23
	.byte	0x6
	.string	"xtemp2"
	.byte	0x1
	.byte	0x31
	.4byte	0x2bb
	.4byte	.LLST24
	.byte	0x6
	.string	"xtemp3"
	.byte	0x1
	.byte	0x31
	.4byte	0x2bb
	.4byte	.LLST25
	.byte	0x6
	.string	"xtemp4"
	.byte	0x1
	.byte	0x31
	.4byte	0x2bb
	.4byte	.LLST26
	.byte	0x6
	.string	"xtemp5"
	.byte	0x1
	.byte	0x31
	.4byte	0x2bb
	.4byte	.LLST27
	.byte	0x6
	.string	"xtemp6"
	.byte	0x1
	.byte	0x31
	.4byte	0x2bb
	.4byte	.LLST28
	.byte	0x6
	.string	"xtemp7"
	.byte	0x1
	.byte	0x31
	.4byte	0x2bb
	.4byte	.LLST29
	.byte	0x6
	.string	"xtemp8"
	.byte	0x1
	.byte	0x31
	.4byte	0x2bb
	.4byte	.LLST30
	.byte	0x6
	.string	"xtemp9"
	.byte	0x1
	.byte	0x31
	.4byte	0x2bb
	.4byte	.LLST31
	.byte	0x6
	.string	"xtemp10"
	.byte	0x1
	.byte	0x31
	.4byte	0x2bb
	.4byte	.LLST32
	.byte	0x6
	.string	"xtemp11"
	.byte	0x1
	.byte	0x31
	.4byte	0x2bb
	.4byte	.LLST33
	.byte	0x6
	.string	"xtemp12"
	.byte	0x1
	.byte	0x31
	.4byte	0x2bb
	.4byte	.LLST34
	.byte	0x7
	.string	"rtemp1"
	.byte	0x1
	.byte	0x32
	.4byte	0x2c8
	.byte	0x7
	.string	"rtemp2"
	.byte	0x1
	.byte	0x32
	.4byte	0x2c8
	.byte	0x7
	.string	"rtemp3"
	.byte	0x1
	.byte	0x32
	.4byte	0x2c8
	.byte	0x8
	.4byte	.LASF3
	.byte	0x1
	.byte	0x33
	.4byte	0x2e4
	.4byte	.LLST35
	.byte	0x6
	.string	"x_temp"
	.byte	0x1
	.byte	0x34
	.4byte	0x2ce
	.4byte	.LLST36
	.byte	0x7
	.string	"tmp_x_j"
	.byte	0x1
	.byte	0x35
	.4byte	0x2ce
	.byte	0
	.byte	0x3
	.byte	0x1
	.string	"DSP_fir_gen_cn_v2"
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.llong	.LFB2
	.llong	.LFE2
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x601
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x80
	.4byte	0x2c8
	.4byte	.LLST37
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x81
	.4byte	0x2ce
	.4byte	.LLST38
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x82
	.4byte	0x2c8
	.4byte	.LLST39
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x83
	.4byte	0x12f
	.4byte	.LLST40
	.byte	0x5
	.string	"nr"
	.byte	0x1
	.byte	0x84
	.4byte	0x12f
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x86
	.4byte	0x12f
	.4byte	.LLST41
	.byte	0x6
	.string	"j"
	.byte	0x1
	.byte	0x86
	.4byte	0x12f
	.4byte	.LLST42
	.byte	0x7
	.string	"k"
	.byte	0x1
	.byte	0x86
	.4byte	0x12f
	.byte	0x7
	.string	"t"
	.byte	0x1
	.byte	0x87
	.4byte	0x12f
	.byte	0x8
	.4byte	.LASF0
	.byte	0x1
	.byte	0x88
	.4byte	0x2bb
	.4byte	.LLST43
	.byte	0x9
	.4byte	.LASF1
	.byte	0x1
	.byte	0x88
	.4byte	0x2bb
	.byte	0x9
	.4byte	.LASF2
	.byte	0x1
	.byte	0x88
	.4byte	0x2bb
	.byte	0x6
	.string	"temp4"
	.byte	0x1
	.byte	0x88
	.4byte	0x2bb
	.4byte	.LLST44
	.byte	0x6
	.string	"temp5"
	.byte	0x1
	.byte	0x88
	.4byte	0x2bb
	.4byte	.LLST45
	.byte	0x6
	.string	"temp6"
	.byte	0x1
	.byte	0x88
	.4byte	0x2bb
	.4byte	.LLST46
	.byte	0
	.byte	0x3
	.byte	0x1
	.string	"DSPF_sp_fir_gen_vc1"
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x6c9
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x97
	.4byte	0x2c8
	.4byte	.LLST47
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x98
	.4byte	0x2ce
	.4byte	.LLST48
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x99
	.4byte	0x2c8
	.4byte	.LLST49
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x9a
	.4byte	0x12f
	.4byte	.LLST50
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x9b
	.4byte	0x12f
	.4byte	.LLST51
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x9d
	.4byte	0x12f
	.4byte	.LLST52
	.byte	0x7
	.string	"j"
	.byte	0x1
	.byte	0x9d
	.4byte	0x12f
	.byte	0x7
	.string	"k"
	.byte	0x1
	.byte	0x9d
	.4byte	0x12f
	.byte	0x8
	.4byte	.LASF3
	.byte	0x1
	.byte	0x9f
	.4byte	0x2e4
	.4byte	.LLST53
	.byte	0x8
	.4byte	.LASF0
	.byte	0x1
	.byte	0xa0
	.4byte	0x2bb
	.4byte	.LLST54
	.byte	0x9
	.4byte	.LASF1
	.byte	0x1
	.byte	0xa0
	.4byte	0x2bb
	.byte	0x9
	.4byte	.LASF2
	.byte	0x1
	.byte	0xa1
	.4byte	0x2c8
	.byte	0
	.byte	0xf
	.byte	0x1
	.string	"DSPF_sp_fir_gen_vc3"
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.llong	.LFB4
	.llong	.LFE4
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0xae
	.4byte	0x2c8
	.4byte	.LLST55
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0xaf
	.4byte	0x2ce
	.4byte	.LLST56
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0xb0
	.4byte	0x2c8
	.4byte	.LLST57
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0xb1
	.4byte	0x12f
	.4byte	.LLST58
	.byte	0x5
	.string	"nr"
	.byte	0x1
	.byte	0xb2
	.4byte	0x12f
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0xb5
	.4byte	0x12f
	.4byte	.LLST59
	.byte	0x6
	.string	"j"
	.byte	0x1
	.byte	0xb5
	.4byte	0x12f
	.4byte	.LLST60
	.byte	0x7
	.string	"k"
	.byte	0x1
	.byte	0xb5
	.4byte	0x12f
	.byte	0x7
	.string	"t"
	.byte	0x1
	.byte	0xb5
	.4byte	0x12f
	.byte	0x8
	.4byte	.LASF0
	.byte	0x1
	.byte	0xb6
	.4byte	0x2bb
	.4byte	.LLST61
	.byte	0x8
	.4byte	.LASF1
	.byte	0x1
	.byte	0xb6
	.4byte	0x2bb
	.4byte	.LLST61
	.byte	0x8
	.4byte	.LASF2
	.byte	0x1
	.byte	0xb6
	.4byte	0x2bb
	.4byte	.LLST61
	.byte	0x6
	.string	"temp4"
	.byte	0x1
	.byte	0xb6
	.4byte	0x2bb
	.4byte	.LLST64
	.byte	0x6
	.string	"temp5"
	.byte	0x1
	.byte	0xb6
	.4byte	0x2bb
	.4byte	.LLST65
	.byte	0x6
	.string	"temp6"
	.byte	0x1
	.byte	0xb6
	.4byte	0x2bb
	.4byte	.LLST66
	.byte	0x7
	.string	"temp7"
	.byte	0x1
	.byte	0xb7
	.4byte	0x2c8
	.byte	0x7
	.string	"temp8"
	.byte	0x1
	.byte	0xb7
	.4byte	0x2c8
	.byte	0x7
	.string	"temp9"
	.byte	0x1
	.byte	0xb7
	.4byte	0x2c8
	.byte	0x8
	.4byte	.LASF3
	.byte	0x1
	.byte	0xb8
	.4byte	0x2e4
	.4byte	.LLST67
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
	.byte	0xa
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
	.byte	0xe
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
	.byte	0x9
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0xa
	.byte	0x97,0x42
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.llong	.LVL0
	.llong	.LVL5
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL5
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST1:
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
	.llong	.LFE0
	.2byte	0x2
	.byte	0x90
	.byte	0x50
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL3
	.llong	.LFE0
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL4
	.llong	.LFE0
	.2byte	0x3
	.byte	0x83
	.byte	0x1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL1
	.llong	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL7
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.byte	0x41
	.llong	.LVL9
	.llong	.LVL10
	.2byte	0x2
	.byte	0x90
	.byte	0x41
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL6
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	.LVL9
	.llong	.LVL10
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL7
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	.LVL9
	.llong	.LVL10
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL9
	.llong	.LVL10
	.2byte	0x2
	.byte	0x72
	.byte	0x10
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL9
	.llong	.LVL10
	.2byte	0x2
	.byte	0x72
	.byte	0x20
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL1
	.llong	.LVL3
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL3
	.llong	.LFE0
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL1
	.llong	.LVL5
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL5
	.llong	.LFE0
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL11
	.llong	.LVL16
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL16
	.llong	.LFE1
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL11
	.llong	.LVL14
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL14
	.llong	.LVL16
	.2byte	0x1
	.byte	0x50
	.llong	.LVL16
	.llong	.LFE1
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL11
	.llong	.LVL15
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL15
	.llong	.LFE1
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL11
	.llong	.LVL13
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL13
	.llong	.LFE1
	.2byte	0x4
	.byte	0x92
	.byte	0x20
	.byte	0x1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL12
	.llong	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL26
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x45
	.llong	.LVL29
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.byte	0x45
	.llong	.LVL31
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x45
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL20
	.llong	.LVL26
	.2byte	0x8
	.byte	0x92
	.byte	0x22
	.byte	0
	.byte	0x92
	.byte	0x45
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.llong	.LVL26
	.llong	.LVL27
	.2byte	0xa
	.byte	0x92
	.byte	0x22
	.byte	0
	.byte	0x92
	.byte	0x45
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0xc
	.byte	0x9f
	.llong	.LVL28
	.llong	.LVL29
	.2byte	0x8
	.byte	0x92
	.byte	0x22
	.byte	0
	.byte	0x92
	.byte	0x45
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.llong	.LVL29
	.llong	.LVL30
	.2byte	0xa
	.byte	0x92
	.byte	0x22
	.byte	0
	.byte	0x92
	.byte	0x45
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0xc
	.byte	0x9f
	.llong	.LVL30
	.llong	.LVL31
	.2byte	0x8
	.byte	0x92
	.byte	0x22
	.byte	0
	.byte	0x92
	.byte	0x45
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.llong	.LVL31
	.llong	.LFE1
	.2byte	0xa
	.byte	0x92
	.byte	0x22
	.byte	0
	.byte	0x92
	.byte	0x45
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0xc
	.byte	0x9f
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL17
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	.LVL28
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL18
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	.LVL28
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL19
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	.LVL28
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL20
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	.LVL28
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL21
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x6b
	.llong	.LVL28
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x6b
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL22
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x6e
	.llong	.LVL28
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x6e
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL22
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x72
	.llong	.LVL28
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x72
	.llong	0
	.llong	0
.LLST26:
	.llong	.LVL22
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x6a
	.llong	.LVL28
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x6a
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL23
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x6d
	.llong	.LVL28
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x6d
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL23
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x71
	.llong	.LVL28
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x71
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL23
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x69
	.llong	.LVL28
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x69
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL24
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x6c
	.llong	.LVL28
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x6c
	.llong	0
	.llong	0
.LLST31:
	.llong	.LVL24
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x70
	.llong	.LVL28
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x70
	.llong	0
	.llong	0
.LLST32:
	.llong	.LVL24
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	.LVL28
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x68
	.llong	0
	.llong	0
.LLST33:
	.llong	.LVL25
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x63
	.llong	.LVL28
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x63
	.llong	0
	.llong	0
.LLST34:
	.llong	.LVL25
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x6f
	.llong	.LVL28
	.llong	.LFE1
	.2byte	0x2
	.byte	0x90
	.byte	0x6f
	.llong	0
	.llong	0
.LLST35:
	.llong	.LVL12
	.llong	.LVL15
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL15
	.llong	.LFE1
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST36:
	.llong	.LVL12
	.llong	.LVL16
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL16
	.llong	.LFE1
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST37:
	.llong	.LVL32
	.llong	.LVL36
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL36
	.llong	.LFE2
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST38:
	.llong	.LVL32
	.llong	.LVL33
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL33
	.llong	.LFE2
	.2byte	0x2
	.byte	0x90
	.byte	0x50
	.llong	0
	.llong	0
.LLST39:
	.llong	.LVL32
	.llong	.LVL34
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL34
	.llong	.LFE2
	.2byte	0x1
	.byte	0x55
	.llong	0
	.llong	0
.LLST40:
	.llong	.LVL32
	.llong	.LVL35
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL35
	.llong	.LVL36
	.2byte	0x3
	.byte	0x82
	.byte	0x1
	.byte	0x9f
	.llong	.LVL36
	.llong	.LFE2
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST41:
	.llong	.LVL32
	.llong	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST42:
	.llong	.LVL42
	.llong	.LVL43
	.2byte	0x2
	.byte	0x90
	.byte	0x44
	.llong	0
	.llong	0
.LLST43:
	.llong	.LVL37
	.llong	.LVL43
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	0
	.llong	0
.LLST44:
	.llong	.LVL38
	.llong	.LVL39
	.2byte	0x2
	.byte	0x72
	.byte	0
	.llong	.LVL39
	.llong	.LVL43
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	0
	.llong	0
.LLST45:
	.llong	.LVL40
	.llong	.LVL43
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	0
	.llong	0
.LLST46:
	.llong	.LVL41
	.llong	.LVL43
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	0
	.llong	0
.LLST47:
	.llong	.LVL44
	.llong	.LVL50
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL50
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST48:
	.llong	.LVL44
	.llong	.LVL46
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL46
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x50
	.llong	0
	.llong	0
.LLST49:
	.llong	.LVL44
	.llong	.LVL47
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL47
	.llong	.LFE3
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST50:
	.llong	.LVL44
	.llong	.LVL48
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL48
	.llong	.LVL50
	.2byte	0x3
	.byte	0x82
	.byte	0x1
	.byte	0x9f
	.llong	.LVL50
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST51:
	.llong	.LVL44
	.llong	.LVL49
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL49
	.llong	.LFE3
	.2byte	0x4
	.byte	0x92
	.byte	0x3b
	.byte	0x1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST52:
	.llong	.LVL45
	.llong	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST53:
	.llong	.LVL45
	.llong	.LVL47
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL47
	.llong	.LFE3
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST54:
	.llong	.LVL51
	.llong	.LVL52
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	0
	.llong	0
.LLST55:
	.llong	.LVL53
	.llong	.LVL58
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL58
	.llong	.LFE4
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST56:
	.llong	.LVL53
	.llong	.LVL55
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL55
	.llong	.LFE4
	.2byte	0x2
	.byte	0x90
	.byte	0x50
	.llong	0
	.llong	0
.LLST57:
	.llong	.LVL53
	.llong	.LVL56
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL56
	.llong	.LFE4
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST58:
	.llong	.LVL53
	.llong	.LVL57
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL57
	.llong	.LFE4
	.2byte	0x3
	.byte	0x83
	.byte	0x1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST59:
	.llong	.LVL54
	.llong	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST60:
	.llong	.LVL60
	.llong	.LVL62
	.2byte	0x2
	.byte	0x90
	.byte	0x41
	.llong	.LVL63
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.byte	0x41
	.llong	0
	.llong	0
.LLST61:
	.llong	.LVL59
	.llong	.LVL62
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	.LVL63
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	0
	.llong	0
.LLST64:
	.llong	.LVL60
	.llong	.LVL62
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	.LVL63
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	0
	.llong	0
.LLST65:
	.llong	.LVL61
	.llong	.LVL62
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	.LVL63
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.byte	0x67
	.llong	0
	.llong	0
.LLST66:
	.llong	.LVL61
	.llong	.LVL62
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	.LVL63
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.byte	0x66
	.llong	0
	.llong	0
.LLST67:
	.llong	.LVL54
	.llong	.LVL56
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL56
	.llong	.LFE4
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.llong	.LFB0
	.llong	.LFE0-.LFB0
	.llong	.LFB1
	.llong	.LFE1-.LFB1
	.llong	.LFB2
	.llong	.LFE2-.LFB2
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.llong	.LFB4
	.llong	.LFE4-.LFB4
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LFB0
	.llong	.LFE0
	.llong	.LFB1
	.llong	.LFE1
	.llong	.LFB2
	.llong	.LFE2
	.llong	.LFB3
	.llong	.LFE3
	.llong	.LFB4
	.llong	.LFE4
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"",@progbits
.LASF0:
	.string	"temp1"
.LASF1:
	.string	"temp2"
.LASF2:
	.string	"temp3"
.LASF3:
	.string	"tempr"
