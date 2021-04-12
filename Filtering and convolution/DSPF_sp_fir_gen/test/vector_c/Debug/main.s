	.file	"main.c"
.text;
.Ltext0:
	.section	.text.DSP_fir_gen_cn_v1,"ax",@progbits
	.align	2
	.global	DSP_fir_gen_cn_v1
	.type	DSP_fir_gen_cn_v1, @function
DSP_fir_gen_cn_v1:
.LFB3:
	.file 1 "../main.c"
	.loc 1 23 0
.LVL0:
	.loc 1 17 0
		SMVAGA36.M1		R13:R12, OR0
	|	SMOVIL		0, R42
	|	SADD.M2		-1,R16,R43
		SMVAGA36.M1		R15:R14, OR1
	|	SMOVIL		-64, R50
	|	SADD.M2		4,R10,R1
		SMOVIL		-1, R51
	|	SADDA.M1		-4,OR0,AR2
	|	SADD.M2		-1,R18,R2
	.loc 1 26 0
		SLT		R42, R16, R0
	|	SADDA.M2		R51:R50,OR1,AR0
	[!R0]	SBR		.L1
	|	SSHFLL		1, R43, R45
	.loc 1 17 0
		SSHFLL		2, R43, R46
	|	SMVAAGL.M2		AR2, R49:R48
	|	SMOV.M1		R11, R58
		SLTU		R45, R43, R3
	|	SMVAAGL.M2		AR0, R51:R50
	|	SADD.M1		R46,R1,R60
		SMOVIL		64, R47
	|	SMVAAGH.M2		AR2, R49:R48
	|	SMOV.M1		R10, R57
		SLTU		R1, R10, R8
	|	SADD.M1		R47,R10,R59
	|	SMVAAGH.M2		AR0, R51:R50
		SLTU		R46, R45, R9
	|	SADD.M1		R11,R8,R12
.LVL1:
		SSHFLL		1, R3, R13
	;; condjump to .L1 occurs
		SADD.M2		R13,R9,R14
	|	SLTU		R60, R1, R15
.LVL2:
		SADD.M2		R14,R12,R16
	|	SSHFLR		4, R2, R17
.LVL3:
		SLTU		R59, R10, R19
	|	SADD.M2		R16,R15,R61
		SMOVIL		0, R22
	|	SADD.M2		R11,R19,R21
		SSHFLL		4, R17, R20
		SMOVIL		0, R46
		SMOVIL		0, R47
		SLT		R22, R18, R1
.LVL4:
.L4:
		SADD.M2		4,R48,R18
	|	SADD.M1		R20,R46,R55
	|[!R1]	SBR		.L7
		SLTU		R18, R48, R24
	|	SMOV.M2		R18, R48
	|	SMOV.M1		R50, R44
		SADD.M2		R49,R24,R49
	|	SLTU		R55, R46, R54
	|	SMOV.M1		R51, R45
		SMVAGA36.M2		R49:R48, AR10
	|	SSHFLL		1, R55, R52
	|	SADD.M1		R47,R54,R26
		SLTU		R52, R55, R27
	|	SMOV.M1		R57, R42
	.loc 1 27 0
	[R1]	SLDW		*AR10, R25
	|	SSHFLL		1, R26, R28
	|	SMOV.M2		R58, R43
	.loc 1 17 0
		SSHFLL		2, R55, R29
	|	SADD.M2		R28,R27,R56
	;; condjump to .L7 occurs
		SLTU		R29, R52, R0
	|	SADD.M2		R29,R59,R10
		SSHFLL		1, R56, R11
		SADD.M2		R11,R0,R2
	|	SLTU		R10, R59, R3
		SADD.M2		R2,R21,R8
	.loc 1 27 0
		SVBCAST.M2 		 R25,VR5
	|	SADD.M1		R8,R3,R9
.LVL5:
	.loc 1 17 0
		SNOP		3
.LVL6:
.L6:
		SMOVIL		64, R12
	|	SMVAGA36.M1		R43:R42, AR2
		SADD.M2		R12,R44,R13
	|	SMOVIL		64, R16
		SLTU		R13, R44, R15
	|	SMOV.M2		R13, R44
	|	VLDW.LS 		*AR2,VR4
	|	SADD.M1		R16,R42,R17
		SADD.M2		R45,R15,R45
	|	SLTU		R17, R42, R19
	|	SMOV.M1		R17, R42
		SMVAGA36.M1		R45:R44, AR0
	|	SADD.M2		R43,R19,R43
	|	SEQ		R17, R10, R0
.LVL7:
	.loc 1 28 0
	[R0]	SEQ		R43, R9, R0
	.loc 1 30 0
		VLDW.LS 		*AR0,VR3
		SNOP		7
	.loc 1 28 0
	[!R0]	SBR		.L6
	|	VFMULAS32.M3	VR4,VR5,VR3,VR3
	.loc 1 30 0
		SNOP		5
		VSTW.LS 		VR3,*AR0
	;; condjump to .L6 occurs
.LVL8:
.L7:
		SADD.M2		4,R57,R45
	|	SADD.M1		1,R46,R42
		SLTU		R45, R57, R44
	|	SMOV.M2		R45, R57
		SADD.M2		R58,R44,R58
	|	SEQ		R60, R45, R2
	.loc 1 26 0
	[R2]	SEQ		R61, R58, R2
	[!R2]	SBR		.L4
	|	SLTU		R42, R46, R22
	|	SMOV.M2		R42, R46
		SADD.M2		R47,R22,R47
		SNOP		5
	;; condjump to .L4 occurs
		SBR		R62
		SNOP		6
	;; return occurs
.LVL9:
.L1:
		SBR		R62
		SNOP		6
	;; return occurs
.LFE3:
	.size	DSP_fir_gen_cn_v1, .-DSP_fir_gen_cn_v1
	.section	.text.DSP_fir_gen_cn,"ax",@progbits
	.align	2
	.global	DSP_fir_gen_cn
	.type	DSP_fir_gen_cn, @function
DSP_fir_gen_cn:
.LFB4:
	.loc 1 39 0
.LVL10:
		SMOVIL		-24, R6
		SMOVIL		-1, R7
	.loc 1 34 0
		SMVAGA36.M1		R15:R14, OR0
	|	SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
		SMVAGA36.M1		R11:R10, OR1
	|	SMVAAGL.M2		AR14, R7:R6
	|	SMOVIL		0, R42
		SMVAGA36.M1		R13:R12, OR2
	|	SLT		R42, R18, R0
	|	SADDA.M2		12,OR0,AR4
		SADDA.M1		-4,OR1,AR2
	|	SMOVIL		0, R29
		SADDA.M2		-4,OR2,AR0
	|	SLT		R29, R16, R1
	.loc 1 39 0
		SMVAAGH.M1		AR14, R7:R6
	.loc 1 43 0
	[!R0]	SBR		.L18
	|	SMVAAGL.M1		AR4, R55:R54
	|	SMVAAGL.M2		AR2, R53:R52
	.loc 1 39 0
		SSTDW		R7:R6, *+AR15[2]
.LCFI1:
		SMVAAGL.M1		AR8, R7:R6
	|	SMVAAGL.M2		AR0, R57:R56
		SMVAAGH.M1		AR4, R55:R54
	|	SMVAAGH.M2		AR2, R53:R52
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAAGH.M2		AR0, R57:R56
		SNOP		1
		SSTDW		R7:R6, *+AR15[1]
	;; condjump to .L18 occurs
.LCFI2:
.LVL11:
.L20:
	.loc 1 50 0
	[!R1]	SBR		.L23
	|	SADD.M2		4,R52,R50
	|	SADD.M1		8,R52,R49
	|	SMOVIL		0, R12
	.loc 1 34 0
		SADD.M2		12,R52,R28
	|	SLTU		R50, R52, R51
	|	SMOV.M1		R50, R46
		SMOVIH		0, R12
	|	SMOV.M2		R49, R44
	|	SADD.M1		R53,R51,R47
		SLTU		R49, R52, R58
	|	SMOV.M2		R28, R42
	|	SMOV.M1		R56, R50
		SLTU		R28, R52, R2
	|	SMOV.M2		R57, R51
	|	SADD.M1		R53,R58,R45
		SADD.M2		R53,R2,R43
	|	SMOV.M1		R52, R48
	|	SMOVIL		0, R59
		SMOV.M2		R53, R49
	|	SMOV.M1		R12, R14
	;; condjump to .L23 occurs
		SMOV.M2		R12, R13
.LVL12:
.L21:
		SADD.M2		4,R48,R11
	|	SADD.M1		4,R50,R10
		SADD.M2		4,R46,R61
	|	SADD.M1		4,R44,R60
	|	SLTU		R11, R48, R27
		SADD.M2		4,R42,R3
	|	SLTU		R10, R50, R25
	|	SMOV.M1		R11, R48
		SLTU		R61, R46, R23
	|	SMOV.M2		R10, R50
	|	SMOV.M1		R61, R46
		SLTU		R60, R44, R21
	|	SADD.M2		R49,R27,R49
	|	SMOV.M1		R60, R44
		SLTU		R3, R42, R19
	|	SADD.M2		R51,R25,R51
	|	SMOV.M1		R3, R42
		SADD.M2		R47,R23,R47
	|	SADD.M1		R45,R21,R45
		SADD.M1		R43,R19,R43
	|	SMVAGA36.M2		R51:R50, AR11
		SMVAGA36.M1		R49:R48, AR14
	|	SMVAGA36.M2		R47:R46, AR8
		SMVAGA36.M1		R45:R44, AR12
	|	SMVAGA36.M2		R43:R42, AR10
	|	SLDW		*AR11, R8
	.loc 1 51 0
		SLDW		*AR14, R9
	.loc 1 52 0
		SLDW		*AR8, R58
	|	SADD.M2		1,R59,R59
	.loc 1 53 0
		SLDW		*AR12, R2
	|	SEQ		R16, R59, R0
	.loc 1 54 0
		SLDW		*AR10, R11
		SNOP		2
	.loc 1 51 0
		SFMULAS32.M2	R9, R8, R13, R13
.LVL13:
	.loc 1 52 0
		SFMULAS32.M1	R8, R58, R14, R14
.LVL14:
	.loc 1 50 0
	[!R0]	SBR		.L21
	|	SFMULAS32.M1	R8, R2, R12, R12
.LVL15:
	.loc 1 54 0
		SFMULAS32.M1	R8, R11, R17, R17
		SNOP		5
.LVL16:
	.loc 1 50 0
	;; condjump to .L21 occurs
	.loc 1 43 0
		SADD.M1		3,R29,R29
	|	SMVAGA36.M2		R55:R54, AR10
	|	SLTU		R28, R52, R44
.LVL17:
		SLT		R29, R18, R0
	|	SADD.M1		12,R54,R47
	[R0]	SBR		.L20
	|	SMOV.M2		R28, R52
	|	SSTW		R13, *-AR10[3]
	|	SADD.M1		R53,R44,R53
	|	SLTU		R47, R54, R46
	.loc 1 57 0
		SSTW		R14, *-AR10[2]
	|	SMOV.M2		R47, R54
	|	SADD.M1		R55,R46,R55
		SNOP		2
	.loc 1 58 0
		SSTW		R12, *-AR10[1]
	.loc 1 59 0
		SSTW		R17, *AR10
		SNOP		1
	.loc 1 43 0
	;; condjump to .L20 occurs
.LVL18:
.L18:
	.loc 1 61 0
		SLDDW		*+AR15[1], R7:R6
	|	SMVCGC.L		R63, BRReg
		SNOP		5
		SMVAGA36.M2		R7:R6, AR8
	|	SLDDW		*+AR15[2], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		24, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL19:
.L23:
	.loc 1 43 0
		SADD.M1		3,R29,R29
	|	SMOVIL		0, R12
	|	SMVAGA36.M2		R55:R54, AR10
.LVL20:
		SLT		R29, R18, R0
	|	SADD.M1		12,R52,R28
	[R0]	SBR		.L20
	|	SSTW		R17, *AR10
	|	SMOVIH		0, R12
	|	SADD.M2		12,R54,R47
	.loc 1 58 0
		SSTW		R12, *-AR10[1]
	|	SLTU		R28, R52, R44
	|	SMOV.M2		R28, R52
	|	SMOV.M1		R12, R14
		SADD.M2		R53,R44,R53
	|	SLTU		R47, R54, R46
	|	SMOV.M1		R47, R54
		SADD.M2		R55,R46,R55
	|	SMOV.M1		R12, R13
	.loc 1 56 0
		SSTW		R13, *-AR10[3]
	.loc 1 57 0
		SSTW		R14, *-AR10[2]
		SNOP		1
	.loc 1 43 0
	;; condjump to .L20 occurs
		SBR		.L18
		SNOP		6
	;; jump to .L18 occurs
.LFE4:
	.size	DSP_fir_gen_cn, .-DSP_fir_gen_cn
	.section	.text.getTime,"ax",@progbits
	.align	2
	.global	getTime
	.type	getTime, @function
getTime:
.LFB5:
	.loc 1 80 0
.LVL21:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI3:
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[5]
.LCFI4:
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTW		R32, *+AR15[5]
		SNOP		1
		SMOV.M2		R16, R32
		SSTDW		R7:R6, *+AR15[6]
.LCFI5:
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R31, *+AR15[4]
		SMOV.M1		R18, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL22:
.LCFI6:
	.loc 1 82 0
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
	.loc 1 80 0
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L28, R62
.LCFI7:
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L28, R62
		SMOVIH4.L		.L28, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
.LCFI8:
	.loc 1 82 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.LVL23:
.L28:
	.loc 1 83 0
		SBR		DSPF_sp_fir_gen_vc1
	|	SMOV.M2		R32, R16
	|	SMOV.M1		R31, R18
	.loc 1 82 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIL		.L29, R62
.LVL24:
	.loc 1 83 0
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH		.L29, R62
.LVL25:
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH4.L		.L29, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSPF_sp_fir_gen_vc1 occurs
		SNOP		2
.LVL26:
.L29:
	.loc 1 84 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L30, R62
		SMOVIH		.L30, R62
		SMOVIH4.L		.L30, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL27:
	.loc 1 86 0
.L30:
		SLDDW		*+AR15[3], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL28:
		SLDDW		*+AR15[5], R63:R62
		SLDW		*+AR15[3], R30
.LVL29:
		SLDW		*+AR15[4], R31
.LVL30:
		SLDW		*+AR15[5], R32
		SNOP		1
.LVL31:
		SMVAGA36.M2		R7:R6, AR8
.LVL32:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[4], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[6], R7:R6
.LVL33:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		56, R6
.LVL34:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LFE5:
	.size	getTime, .-getTime
	.section	.text.getTime1,"ax",@progbits
	.align	2
	.global	getTime1
	.type	getTime1, @function
getTime1:
.LFB6:
	.loc 1 87 0
.LVL35:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI9:
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[5]
.LCFI10:
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTW		R32, *+AR15[5]
		SNOP		1
		SMOV.M2		R16, R32
		SSTDW		R7:R6, *+AR15[6]
.LCFI11:
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R31, *+AR15[4]
		SMOV.M1		R18, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL36:
.LCFI12:
	.loc 1 89 0
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
	.loc 1 87 0
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L32, R62
.LCFI13:
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L32, R62
		SMOVIH4.L		.L32, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
.LCFI14:
	.loc 1 89 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.LVL37:
.L32:
	.loc 1 90 0
		SBR		DSPF_sp_fir_gen_vc2
	|	SMOV.M2		R32, R16
	|	SMOV.M1		R31, R18
	.loc 1 89 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIL		.L33, R62
.LVL38:
	.loc 1 90 0
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH		.L33, R62
.LVL39:
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH4.L		.L33, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSPF_sp_fir_gen_vc2 occurs, with return value
		SNOP		2
.LVL40:
.L33:
	.loc 1 91 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L34, R62
		SMOVIH		.L34, R62
		SMOVIH4.L		.L34, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL41:
	.loc 1 93 0
.L34:
		SLDDW		*+AR15[3], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL42:
		SLDDW		*+AR15[5], R63:R62
		SLDW		*+AR15[3], R30
.LVL43:
		SLDW		*+AR15[4], R31
.LVL44:
		SLDW		*+AR15[5], R32
		SNOP		1
.LVL45:
		SMVAGA36.M2		R7:R6, AR8
.LVL46:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[4], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[6], R7:R6
.LVL47:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		56, R6
.LVL48:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LFE6:
	.size	getTime1, .-getTime1
	.section	.text.getTime_cn,"ax",@progbits
	.align	2
	.global	getTime_cn
	.type	getTime_cn, @function
getTime_cn:
.LFB7:
	.loc 1 94 0
.LVL49:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI15:
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[5]
.LCFI16:
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTW		R32, *+AR15[5]
		SNOP		1
		SMOV.M2		R16, R32
		SSTDW		R7:R6, *+AR15[6]
.LCFI17:
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R31, *+AR15[4]
		SMOV.M1		R18, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL50:
.LCFI18:
	.loc 1 96 0
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
	.loc 1 94 0
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L36, R62
.LCFI19:
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L36, R62
		SMOVIH4.L		.L36, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
.LCFI20:
	.loc 1 96 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.LVL51:
.L36:
	.loc 1 97 0
		SBR		DSP_fir_gen_cn
	|	SMOV.M2		R32, R16
	|	SMOV.M1		R31, R18
	.loc 1 96 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIL		.L37, R62
.LVL52:
	.loc 1 97 0
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH		.L37, R62
.LVL53:
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH4.L		.L37, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSP_fir_gen_cn occurs
		SNOP		2
.LVL54:
.L37:
	.loc 1 98 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L38, R62
		SMOVIH		.L38, R62
		SMOVIH4.L		.L38, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL55:
	.loc 1 100 0
.L38:
		SLDDW		*+AR15[3], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL56:
		SLDDW		*+AR15[5], R63:R62
		SLDW		*+AR15[3], R30
.LVL57:
		SLDW		*+AR15[4], R31
.LVL58:
		SLDW		*+AR15[5], R32
		SNOP		1
.LVL59:
		SMVAGA36.M2		R7:R6, AR8
.LVL60:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[4], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[6], R7:R6
.LVL61:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		56, R6
.LVL62:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LFE7:
	.size	getTime_cn, .-getTime_cn
	.section	.text.random_x,"ax",@progbits
	.align	2
	.global	random_x
	.type	random_x, @function
random_x:
.LFB9:
	.loc 1 146 0
.LVL63:
		SMOVIL		-48, R6
		SMOVIL		-1, R7
	.loc 1 149 0
		SMOVIL		0, R42
	|	SADDA.M2		R7:R6,AR15,AR15
.LCFI21:
		SLT		R42, R12, R0
	|	SADD.M1		-1,R12,R12
.LVL64:
.LCFI22:
	.loc 1 146 0
		SSHFLL		1, R12, R1
	|	SSTDW		R33:R32, *+AR15[2]
.LCFI23:
		SSHFLL		2, R12, R43
	|	SADD.M2		4,R10,R32
	|	SSTDW		R35:R34, *+AR15[3]
	.loc 1 149 0
	[!R0]	SBR		.L39
	|	SLTU		R1, R12, R2
	|	SADD.M2		R43,R32,R33
	|	SMOV.M1		R14, R34
	.loc 1 146 0
		SLTU		R32, R10, R35
		SSTDW		R31:R30, *+AR15[1]
		SSTDW		R37:R36, *+AR15[4]
.LCFI24:
		SLTU		R43, R1, R3
	|	SADD.M2		R11,R35,R8
	|	SMOV.M1		R10, R30
		SSHFLL		1, R2, R9
	|	SMOV.M2		R11, R31
		SSTDW		R63:R62, *+AR15[5]
	;; condjump to .L39 occurs
.LCFI25:
	.loc 1 146 0
		SADD.M2		R9,R3,R10
	|	SMOVIL		1317011456, R37
.LVL65:
		SLTU		R33, R32, R11
	|	SADD.M2		R10,R8,R13
	.loc 1 150 0
		SMOVIL		813694976, R36
	|	SADD.M2		R13,R11,R35
		SMOVIH		1317011456, R37
		SMOVIH		813694976, R36
.LVL66:
.L41:
		SBR		rand
		SMOVIL		.L47, R62
		SMOVIH		.L47, R62
		SMOVIH4.L		.L47, R63
	;; call to rand occurs, with return value
		SNOP		3
.LVL67:
.L47:
		SFINTS32.M2		R10,R14
	|	SLTU		R32, R30, R15
	|	SMVAGA36.M1		R31:R30, AR10
	.loc 1 149 0
		SEQ		R32, R33, R0
	|	SADD.M2		R31,R15,R31
	[R0]	SEQ		R31, R35, R0
	|	SMOV.M1		R32, R30
	.loc 1 150 0
		SFSUBS32.M2		R37, R14, R17
	|	SADD.M1		4,R32,R32
		SNOP		2
		SFMULS32.M2		R17, R36, R18
		SNOP		1
	.loc 1 149 0
	[!R0]	SBR		.L41
		SNOP		1
	.loc 1 150 0
		SFMULS32.M2		R18, R34, R19
		SNOP		3
		SSTW		R19, *AR10
	;; condjump to .L41 occurs
.L39:
	.loc 1 153 0
		SLDDW		*+AR15[5], R63:R62
	|	SMOVIL		48, R6
		SLDDW		*+AR15[1], R31:R30
	|	SMOVIL		0, R7
		SLDDW		*+AR15[2], R33:R32
		SLDDW		*+AR15[3], R35:R34
.LVL68:
		SLDDW		*+AR15[4], R37:R36
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.LFE9:
	.size	random_x, .-random_x
	.section	.text.random_h,"ax",@progbits
	.align	2
	.global	random_h
	.type	random_h, @function
random_h:
.LFB10:
	.loc 1 154 0
.LVL69:
	.loc 1 156 0
		SFINTD.M2		R12,R49:R48
	|	SMOVIL		1073741824, R51
	|	SMVAGA36.M1		R11:R10, AR0
	.loc 1 157 0
		SMOVIL		0, R50
	|	SADD.M2		-1,R12,R1
	.loc 1 156 0
		SMOVIH		1073741824, R51
	.loc 1 154 0
		SMOVIL		-56, R6
	.loc 1 156 0
		SFRCPD.M2		R49:R48, R43:R42
	|	SMOVIL		-1, R7
	.loc 1 154 0
		SADDA.M1		R7:R6,AR15,AR15
.LCFI26:
	.loc 1 156 0
		SFMULD.M1		R49:R48, R43:R42, R47:R46
	|	SLT		R50, R12, R0
.LCFI27:
	.loc 1 154 0
		SSHFLL		2, R12, R44
	|	SSTW		R31, *+AR15[4]
		SSTW		R30, *+AR15[3]
.LCFI28:
		SMVAAGL.M2		AR0, R31:R30
		SNOP		1
.LCFI29:
		SMVAAGH.M1		AR0, R31:R30
	|	SSTW		R36, *+AR15[9]
.LCFI30:
	.loc 1 156 0
		SFSUBD.M1	R47:R46, R51:R50, R3:R2
	|	SSTW		R34, *+AR15[7]
	.loc 1 154 0
		SADD.M2		4,R30,R34
		SNOP		1
		SSTW		R37, *+AR15[10]
		SSTW		R33, *+AR15[6]
.LCFI31:
	.loc 1 156 0
		SFMULD.M2		R43:R42, R3:R2, R9:R8
	|	SLTU		R34, R30, R37
	.loc 1 157 0
	[!R0]	SBR		.L48
	|	SADD.M1		R31,R37,R26
	.loc 1 154 0
		SSTW		R32, *+AR15[5]
		SSTW		R35, *+AR15[8]
		SSHFAR		31, R1, R3
		SSHFLL		1, R12, R43
		SSTW		R38, *+AR15[11]
.LCFI32:
		SSTDW		R63:R62, *+AR15[6]
	;; condjump to .L48 occurs
.LCFI33:
	.loc 1 156 0
		SFMULD.M2		R49:R48, R9:R8, R11:R10
	|	SLTU		R43, R12, R13
.LVL70:
	.loc 1 158 0
		SMOVIL		805306368, R38
		SMOVIH		805306368, R38
		SNOP		3
	.loc 1 156 0
		SFSUBD.M2	R11:R10, R51:R50, R15:R14
		SNOP		4
		SFMULD.M2		R9:R8, R15:R14, R17:R16
		SNOP		1
	.loc 1 154 0
		SLTU		R12, R1, R9
		SADD.M1		R3,R9,R11
		SSHFLL		1, R11, R15
		SADD.M1		R15,R13,R12
.LVL71:
	.loc 1 156 0
		SFMULD.M2		R49:R48, R17:R16, R19:R18
	|	SSHFLL		1, R12, R45
	.loc 1 154 0
		SNOP		5
	.loc 1 156 0
		SFSUBD.M2	R19:R18, R51:R50, R21:R20
		SNOP		1
	.loc 1 154 0
		SSHFLL		1, R1, R19
		SNOP		2
	.loc 1 156 0
		SFMULD.M2		R17:R16, R21:R20, R23:R22
		SNOP		1
	.loc 1 154 0
		SLTU		R44, R43, R17
		SADD.M1		R45,R17,R45
	|	SSHFLL		2, R1, R21
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,AR0,OR0
		SNOP		1
	.loc 1 156 0
		SFADDD.M1		R23:R22, R23:R22, R25:R24
	|	SADD.M2		R21,R34,R35
		SMVAAGL.M2		OR0, R33:R32
	|	SLTU		R35, R34, R44
	.loc 1 154 0
		SLTU		R19, R1, R23
		SSHFLL		1, R23, R27
	|	SMVAAGH.M2		OR0, R33:R32
		SNOP		1
	.loc 1 156 0
		SFDPSP32.M2		R25:R24, R36
		SNOP		1
.LVL72:
	.loc 1 154 0
		SLTU		R21, R19, R25
		SADD.M2		R27,R25,R28
		SADD.M2		R28,R26,R29
		SADD.M2		R29,R44,R37
.LVL73:
.L50:
	.loc 1 158 0
		SBR		rand
		SMOVIL		.L56, R62
		SMOVIH		.L56, R62
		SMOVIH4.L		.L56, R63
	;; call to rand occurs, with return value
		SNOP		3
.LVL74:
.L56:
		SFINTS32.M2		R10,R49
	|	SLTU		R34, R30, R51
	|	SMVAGA36.M1		R31:R30, AR12
	.loc 1 157 0
		SEQ		R34, R35, R0
	|	SADD.M2		R31,R51,R31
	[R0]	SEQ		R31, R37, R0
	|	SADD.M1		-4,R32,R50
	.loc 1 158 0
		SFMULS32.M2		R49, R38, R54
	|	SLTU		R50, R32, R52
	|	SADD.M1		-1,R33,R53
		SMOV.M2		R50, R32
	|	SADD.M1		R53,R52,R33
	.loc 1 154 0
		SMVAGA36.M1		R33:R32, AR10
	|	SMOV.M2		R34, R30
		SNOP		1
	.loc 1 158 0
		SFMULS32.M2		R54, R36, R55
	|	SADD.M1		4,R34,R34
	.loc 1 157 0
	[!R0]	SBR		.L50
		SNOP		2
	.loc 1 158 0
		SSTW		R55, *AR12
	|	SFSUBS32.M2		R55, R36, R56
	.loc 1 159 0
		SNOP		2
		SSTW		R56, *AR10
	;; condjump to .L50 occurs
.LVL75:
.L48:
	.loc 1 162 0
		SLDDW		*+AR15[6], R63:R62
	|	SMOVIL		56, R6
		SLDW		*+AR15[3], R30
	|	SMOVIL		0, R7
		SLDW		*+AR15[4], R31
		SLDW		*+AR15[5], R32
		SLDW		*+AR15[6], R33
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		3
		SLDW		*+AR15[7], R34
		SLDW		*+AR15[8], R35
		SLDW		*+AR15[9], R36
		SBR		R62
	|	SLDW		*+AR15[10], R37
		SLDW		*+AR15[11], R38
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
	;; return occurs
.LFE10:
	.size	random_h, .-random_h
	.section	.const,"a",@progbits
.LC0:
	.string	"DMA end"
.LC1:
	.string	"\tNX = %-3d\t  NH = %-2d\t cn_cycle:%-4d\t  vc1_cycle:%-4d\t  vc2_cycle: %-4d\n"
.LC2:
	.string	"helloworld"
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB8:
	.loc 1 101 0
.LVL76:
		SMOVIL		-96, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI34:
		SMVAAGL.M1		AR8, R7:R6
	|	SMOVIL		1075052548, R46
.LCFI35:
.LBB5:
.LBB6:
	.loc 1 167 0
		SMOVIL		0, R47
	|	SSTDW		R63:R62, *+AR15[11]
.LCFI36:
.LBE6:
.LBE5:
	.loc 1 101 0
		SMVAAGH.M2		AR8, R7:R6
	|	SMOVIH		1075052548, R46
	|	SSTW		R36, *+AR15[19]
.LBB10:
.LBB7:
	.loc 1 167 0
		SMVAGA36.M1		R47:R46, AR10
	|	SMOVIL		1075052544, R42
		SMOVIL		1, R44
.LBE7:
.LBE10:
	.loc 1 101 0
		SSTDW		R7:R6, *+AR15[10]
		SSTW		R35, *+AR15[18]
.LBB11:
.LBB8:
	.loc 1 168 0
		SMOVIL		0, R43
		SMOVIH		1075052544, R42
.LBE8:
.LBE11:
	.loc 1 101 0
		SSTW		R34, *+AR15[17]
		SSTW		R33, *+AR15[16]
		SNOP		2
		SSTW		R32, *+AR15[15]
		SSTW		R31, *+AR15[14]
		SNOP		2
		SSTW		R30, *+AR15[13]
.LCFI37:
.LBB12:
.LBB9:
	.loc 1 167 0
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 168 0
		SNOP		2
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 169 0
		SSTW		R44, *+AR15[11]
		SNOP		2
.LVL77:
	.loc 1 170 0
		SLDW		*+AR15[11], R0
		SNOP		5
	[!R0]	SBR		.L60
		SNOP		6
	;; condjump to .L60 occurs
.L63:
	.loc 1 171 0
		SLDW		*AR10, R42
		SNOP		5
.LVL78:
		SSTW		R42, *+AR15[11]
		SNOP		2
.LVL79:
	.loc 1 170 0
		SLDW		*+AR15[11], R1
		SNOP		5
	[R1]	SBR		.L63
		SNOP		6
	;; condjump to .L63 occurs
.L60:
.LBE9:
.LBE12:
	.loc 1 105 0
		SMOVIL.L		x, R42
		SMOVIH.L		x, R42
		SMOVIH4.L		x, R43
		SMVAGA36.M2		R43:R42, AR8
	|	SMOVIL		0, R42
		SMOVIL		0, R43
		SMVAAA.M2		AR8, AR10
	|	SMOVIL.L		x+32, R44
		SMOVIH.L		x+32, R44
		SSTDW		R43:R42, *AR10++[1]
	|	SMOVIH4.L		x+32, R45
		SMOVIL.L		x+40, R46
		SMOVIH.L		x+40, R46
		SSTDW		R43:R42, *AR10
	|	SADDA.M2		16,AR8,AR10
	|	SMOVIH4.L		x+40, R47
		SMOVIL		0, R2
	.loc 1 106 0
		SMOVIL		1092616192, R14
	.loc 1 105 0
		SSTDW		R43:R42, *AR10
	|	SADDA.M2		24,AR8,AR10
	|	SMOVIL.L		x+60, R10
	.loc 1 106 0
		SMOVIH		1092616192, R14
		SMOVIH.L		x+60, R10
	.loc 1 105 0
		SSTDW		R43:R42, *AR10
	|	SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		x+48, R44
		SMOVIH.L		x+48, R44
		SMOVIH4.L		x+48, R45
		SSTDW		R43:R42, *AR10
	|	SMVAGA36.M2		R47:R46, AR10
	|	SMOVIL.L		x+56, R46
		SMOVIH.L		x+56, R46
		SMOVIH4.L		x+56, R47
	.loc 1 106 0
		SBR		random_x
	|	SSTDW		R43:R42, *AR10
	|	SMVAGA36.M2		R45:R44, AR10
	|	SMOVIH4.L		x+60, R11
		SMOVIL		.L68, R62
		SMOVIH		.L68, R62
	.loc 1 105 0
		SSTDW		R43:R42, *AR10
	|	SMVAGA36.M2		R47:R46, AR10
	|	SMOVIH4.L		.L68, R63
	.loc 1 106 0
		SMOVIL		128, R12
		SMOVIL.L		.LC1, R30
	;; call to random_x occurs
		SSTW		R2, *AR10
	|	SMOVIL		32, R33
.LVL80:
.L68:
	.loc 1 107 0
		SBR		random_h
	|	SMOVIL		16, R12
		SMOVIL		.L69, R62
		SMOVIH		.L69, R62
		SMOVIH4.L		.L69, R63
		SMOVIH4.L		h, R11
		SMOVIL.L		h, R10
	;; call to random_h occurs
		SMOVIH.L		h, R10
.LVL81:
.L69:
	.loc 1 115 0
		SBR		M7002_datatrans
	|	SMOVIL		0, R13
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L70, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L70, R62
		SMOVIH4.L		.L70, R63
		SMOVIL		572, R14
		SMOVIL		1073872896, R12
	;; call to M7002_datatrans occurs, with return value
		SMOVIH		1073872896, R12
.LVL82:
.L70:
	.loc 1 116 0
		SMOVIL		1074790400, R12
		SMOVIL.L		h, R10
		SMOVIL		0, R13
		SBR		M7002_datatrans
	|	SMOVIL		64, R14
		SMOVIL		.L71, R62
		SMOVIH		.L71, R62
		SMOVIH4.L		.L71, R63
		SMOVIH		1074790400, R12
		SMOVIH4.L		h, R11
	;; call to M7002_datatrans occurs, with return value
		SMOVIH.L		h, R10
.LVL83:
.L71:
	.loc 1 117 0
		SBR		puts
	|	SMOVIH4.L		.LC0, R11
		SMOVIL		.L72, R62
		SMOVIH		.L72, R62
		SMOVIH4.L		.L72, R63
		SMOVIL.L		.LC0, R10
		SMOVIH.L		.LC0, R10
	;; call to puts occurs, with return value
		SMOVIH.L		.LC1, R30
.LVL84:
.L72:
	.loc 1 119 0
		SBR		SetTimerPeriod
	|	SMOVIL		-1, R12
		SMOVIL		.L73, R62
		SMOVIH		.L73, R62
		SMOVIH4.L		.L73, R63
		SMOVIL		0, R10
		SMOVIH4.L		.LC1, R31
	;; call to SetTimerPeriod occurs, with return value
		SNOP		1
.LVL85:
.L73:
	.loc 1 120 0
		SBR		TimerStart
	|	SMOVIL		0, R10
		SMOVIL		.L74, R62
		SMOVIH		.L74, R62
		SMOVIH4.L		.L74, R63
	;; call to TimerStart occurs, with return value
		SNOP		3
.LVL86:
.L74:
	.loc 1 122 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L75, R62
		SMOVIH		.L75, R62
		SMOVIH4.L		.L75, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL87:
.L75:
		SBR		GetTimerCount
	|	SMOV.M2		R10, R34
	|	SMOVIL		0, R10
		SMOVIL		.L76, R62
		SMOVIH		.L76, R62
		SMOVIH4.L		.L76, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL88:
.L76:
		SSUB.M2		R10, R34, R34
.LVL89:
.L59:
	.loc 1 101 0
		SMOVIL		4, R32
.LVL90:
.L61:
.LBB13:
	.loc 1 126 0
		SMOVIL.L		r, R10
		SMOVIL		0, R12
		SBR		memset
	|	SMOVIL		512, R14
		SMOVIL		.L77, R62
		SMOVIH		.L77, R62
		SMOVIH4.L		.L77, R63
		SMOVIL		0, R15
		SMOVIH.L		r, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		r, R11
.LVL91:
.L77:
	.loc 1 127 0
		SMOVIL		0, R12
		SMOVIL.L		r1, R10
		SBR		memset
	|	SMOVIL		512, R14
		SMOVIL		.L78, R62
		SMOVIH		.L78, R62
		SMOVIH4.L		.L78, R63
		SMOVIL		0, R15
		SMOVIH.L		r1, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		r1, R11
.LVL92:
.L78:
	.loc 1 128 0
		SMOVIL		0, R15
		SMOVIL.L		r_cn, R10
		SBR		memset
	|	SMOVIL		512, R14
		SMOVIL		.L79, R62
		SMOVIH		.L79, R62
		SMOVIH4.L		.L79, R63
		SMOVIL		0, R12
		SMOVIH.L		r_cn, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		r_cn, R11
.LVL93:
.L79:
	.loc 1 130 0
		SMOVIL		0, R13
		SMOVIL.L		r, R10
		SMOVIL		1074003968, R12
		SBR		M7002_datatrans
	|	SMOVIH4.L		r, R11
		SMOVIL		.L80, R62
		SMOVIH		.L80, R62
		SMOVIH4.L		.L80, R63
		SMOVIH		1074003968, R12
		SMOVIL		512, R14
	;; call to M7002_datatrans occurs, with return value
		SMOVIH.L		r, R10
.LVL94:
.L80:
	.loc 1 131 0
		SMOVIL		0, R13
		SMOVIL.L		r1, R10
		SMOVIL		1074135040, R12
		SBR		M7002_datatrans
	|	SMOVIH4.L		r1, R11
		SMOVIL		.L81, R62
		SMOVIH		.L81, R62
		SMOVIH4.L		.L81, R63
		SMOVIH		1074135040, R12
		SMOVIL		512, R14
	;; call to M7002_datatrans occurs, with return value
		SMOVIH.L		r1, R10
.LVL95:
.L81:
	.loc 1 133 0
		SMOV.M2		R32, R16
	|	SMOVIL		1073872896, R10
	|	SMOV.M1		R33, R18
		SMOVIL		1074790400, R12
		SMOVIL		1074003968, R14
		SMOVIL		0, R11
		SMOVIH		1074790400, R12
		SBR		getTime1
	|	SMOVIL		0, R13
		SMOVIL		.L82, R62
		SMOVIH		.L82, R62
		SMOVIH4.L		.L82, R63
		SMOVIH		1074003968, R14
		SMOVIL		0, R15
	;; call to getTime1 occurs, with return value
		SMOVIH		1073872896, R10
.LVL96:
.L82:
	.loc 1 134 0
		SMOV.M2		R32, R16
	|	SMOV.M1		R10, R35
	|	SMOVIL		1074135040, R14
.LVL97:
		SMOVIL		1073872896, R10
	|	SMOV.M2		R33, R18
.LVL98:
		SMOVIL		1074790400, R12
		SMOVIL		0, R15
		SMOVIL		0, R11
		SBR		getTime
	|	SMOVIH		1074135040, R14
		SMOVIL		.L83, R62
		SMOVIH		.L83, R62
		SMOVIH4.L		.L83, R63
		SMOVIH		1074790400, R12
		SMOVIL		0, R13
	;; call to getTime occurs, with return value
		SMOVIH		1073872896, R10
.LVL99:
.L83:
	.loc 1 136 0
		SMOVIL		0, R11
		SMOVIL		1074135040, R10
		SMOVIL.L		r1, R12
		SBR		M7002_datatrans
	|	SMOVIH.L		r1, R12
		SMOVIL		.L84, R62
		SMOVIH		.L84, R62
		SMOVIH4.L		.L84, R63
		SMOVIH4.L		r1, R13
		SMOVIL		512, R14
	;; call to M7002_datatrans occurs, with return value
		SMOVIH		1074135040, R10
.LVL100:
.L84:
	.loc 1 137 0
		SMOVIL		0, R11
		SMOVIL		1074003968, R10
		SMOVIL.L		r, R12
		SBR		M7002_datatrans
	|	SMOVIH.L		r, R12
		SMOVIL		.L85, R62
		SMOVIH		.L85, R62
		SMOVIH4.L		.L85, R63
		SMOVIH4.L		r, R13
		SMOVIL		512, R14
	;; call to M7002_datatrans occurs, with return value
		SMOVIH		1074003968, R10
.LVL101:
.L85:
	.loc 1 139 0
		SMOV.M2		R32, R16
	|	SMOVIL.L		x, R10
	|	SMOV.M1		R33, R18
		SMOVIL.L		h, R12
		SMOVIL.L		r_cn, R14
		SMOVIH4.L		x, R11
		SMOVIH.L		h, R12
		SBR		getTime_cn
	|	SMOVIH4.L		h, R13
		SMOVIL		.L86, R62
		SMOVIH		.L86, R62
		SMOVIH4.L		.L86, R63
		SMOVIH.L		r_cn, R14
		SMOVIH4.L		r_cn, R15
	;; call to getTime_cn occurs, with return value
		SMOVIH.L		x, R10
.LVL102:
.L86:
	.loc 1 140 0
		SMOV.M2		R32, R16
	|	SMOV.M1		R10, R36
	|	SMOVIL.L		h, R12
.LVL103:
		SMOVIL.L		x, R10
	|	SMOV.M2		R33, R18
.LVL104:
		SMOVIL.L		r1, R14
		SMOVIH4.L		x, R11
		SMOVIH.L		h, R12
		SBR		getTime
	|	SMOVIH4.L		h, R13
		SMOVIL		.L87, R62
		SMOVIH		.L87, R62
		SMOVIH4.L		.L87, R63
		SMOVIH.L		r1, R14
		SMOVIH4.L		r1, R15
	;; call to getTime occurs, with return value
		SMOVIH.L		x, R10
.LVL105:
.L87:
	.loc 1 141 0
		SSUB.M2		R34, R36, R3
	|	SSUB.M1		R34, R10, R10
	|	SSTW		R32, *+AR15[5]
.LVL106:
		SSUB.M2		R34, R35, R8
	|	SSTDW		R31:R30, *+AR15[1]
	|	SADD.M1		4,R32,R32
.LBE13:
	.loc 1 125 0
		SNOP		2
.LBB14:
	.loc 1 141 0
		SSTW		R33, *+AR15[4]
		SBR		printf
	|	SSTW		R3, *+AR15[6]
		SMOVIL		.L88, R62
		SMOVIH		.L88, R62
		SSTW		R10, *+AR15[7]
	|	SMOVIH4.L		.L88, R63
		SSTW		R8, *+AR15[8]
	;; call to printf occurs, with return value
		SNOP		2
.LVL107:
.L88:
.LBE14:
	.loc 1 125 0
		SMOVIL		20, R47
		SEQ		R47, R32, R0
	[!R0]	SBR		.L61
		SNOP		6
	;; condjump to .L61 occurs
	.loc 1 124 0
		SADD.M2		8,R33,R33
	|	SMOVIL		136, R9
.LVL108:
		SEQ		R9, R33, R1
	[!R1]	SBR		.L59
		SNOP		6
	;; condjump to .L59 occurs
	.loc 1 144 0
		SMOVIL.L		.LC2, R42
		SMOVIH.L		.LC2, R42
		SBR		printf
	|	SMOVIH4.L		.LC2, R43
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L89, R62
		SMOVIH		.L89, R62
		SMOVIH4.L		.L89, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL109:
	.loc 1 145 0
.L89:
		SLDDW		*+AR15[11], R63:R62
		SLDDW		*+AR15[10], R7:R6
		SLDW		*+AR15[13], R30
		SLDW		*+AR15[14], R31
		SLDW		*+AR15[15], R32
		SNOP		1
.LVL110:
		SMVCGC.L		R63, BRReg
		SMVAGA36.M2		R7:R6, AR8
		SMOVIL		96, R6
		SMOVIL		0, R7
		SLDW		*+AR15[16], R33
.LVL111:
		SLDW		*+AR15[17], R34
.LVL112:
		SBR		R62
	|	SLDW		*+AR15[18], R35
.LVL113:
		SLDW		*+AR15[19], R36
	|	SADDA.M2		R7:R6,AR15,AR15
.LVL114:
		SNOP		5
	;; return occurs
.LFE8:
	.size	main, .-main
	.section	.text.setSram,"ax",@progbits
	.align	2
	.global	setSram
	.type	setSram, @function
setSram:
.LFB11:
	.loc 1 163 0
.LVL115:
	.loc 1 167 0
		SMOVIL		1075052548, R46
		SMOVIH		1075052548, R46
		SMOVIL		0, R47
		SMVAGA36.M2		R47:R46, AR10
	|	SMOVIL		1075052544, R42
		SMOVIL		1, R44
	.loc 1 168 0
		SMOVIH		1075052544, R42
	|	SSTW		R44, *AR10
		SMOVIL		0, R43
	.loc 1 163 0
		SMOVIL		-16, R6
		SMOVIL		-1, R7
	.loc 1 168 0
		SMVAGA36.M1		R43:R42, AR10
	|	SADDA.M2		R7:R6,AR15,AR15
.LCFI38:
	.loc 1 163 0
		SNOP		1
	.loc 1 168 0
		SSTW		R44, *AR10
	.loc 1 169 0
		SSTW		R44, *+AR15[3]
		SNOP		2
.LVL116:
	.loc 1 170 0
		SLDW		*+AR15[3], R0
		SNOP		5
	[!R0]	SBR		.L90
		SNOP		6
	;; condjump to .L90 occurs
.L93:
	.loc 1 171 0
		SLDW		*AR10, R42
		SNOP		5
.LVL117:
		SSTW		R42, *+AR15[3]
		SNOP		2
.LVL118:
	.loc 1 170 0
		SLDW		*+AR15[3], R1
		SNOP		5
	[R1]	SBR		.L93
		SNOP		6
	;; condjump to .L93 occurs
.L90:
	.loc 1 172 0
		SMOVIL		16, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.LFE11:
	.size	setSram, .-setSram
	.common	r_cn,512,8
	.common	r1,512,8
	.common	r,512,8
	.common	h,64,8
	.common	x,572,8
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
	.align	3
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.llong	.LFB4
	.llong	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x88
	.byte	0x4
	.align	3
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.llong	.LFB5
	.llong	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI3-.LFB5
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0xb0
	.byte	0x9
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x8e
	.byte	0x2
	.byte	0xaf
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xae
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x5
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x88
	.byte	0x8
	.align	3
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.llong	.LFB6
	.llong	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI9-.LFB6
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0xb0
	.byte	0x9
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x8e
	.byte	0x2
	.byte	0xaf
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xae
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x5
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x88
	.byte	0x8
	.align	3
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.llong	.LFB7
	.llong	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI15-.LFB7
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0xb0
	.byte	0x9
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x8e
	.byte	0x2
	.byte	0xaf
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xae
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x5
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0x88
	.byte	0x8
	.align	3
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.llong	.LFB9
	.llong	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI21-.LFB9
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xb0
	.byte	0x8
	.byte	0xb1
	.byte	0x7
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xb2
	.byte	0x6
	.byte	0xb3
	.byte	0x5
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xae
	.byte	0xa
	.byte	0xaf
	.byte	0x9
	.byte	0xb4
	.byte	0x4
	.byte	0xb5
	.byte	0x3
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.align	3
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.llong	.LFB10
	.llong	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI26-.LFB10
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xaf
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xae
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0xb4
	.byte	0x5
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xb2
	.byte	0x7
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0xb5
	.byte	0x4
	.byte	0xb1
	.byte	0x8
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0xb0
	.byte	0x9
	.byte	0xb3
	.byte	0x6
	.byte	0xb6
	.byte	0x3
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.align	3
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.llong	.LFB8
	.llong	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI34-.LFB8
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0xb4
	.byte	0x5
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0x88
	.byte	0x4
	.byte	0xb3
	.byte	0x6
	.byte	0xb2
	.byte	0x7
	.byte	0xb1
	.byte	0x8
	.byte	0xb0
	.byte	0x9
	.byte	0xaf
	.byte	0xa
	.byte	0xae
	.byte	0xb
	.align	3
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.llong	.LFB11
	.llong	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI38-.LFB11
	.byte	0xe
	.byte	0x10
	.align	3
.LEFDE16:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbc1
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../main.c"
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSPF_sp_fir_gen/test/vector_c/Debug"
	.4byte	.Ldebug_ranges0+0xd0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
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
	.byte	0x3
	.byte	0x1
	.string	"setSram"
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.4byte	0x1ab
	.byte	0x4
	.string	"cache"
	.byte	0x1
	.byte	0xa4
	.4byte	0x1ab
	.byte	0x4
	.string	"cache1"
	.byte	0x1
	.byte	0xa5
	.4byte	0x1ab
	.byte	0x4
	.string	"cache_ok"
	.byte	0x1
	.byte	0xa6
	.4byte	0x1b1
	.byte	0
	.byte	0x5
	.byte	0x8
	.4byte	0x136
	.byte	0x6
	.4byte	0x136
	.byte	0x7
	.byte	0x1
	.string	"DSP_fir_gen_cn_v1"
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x272
	.byte	0x8
	.string	"x"
	.byte	0x1
	.byte	0x12
	.4byte	0x27f
	.4byte	.LLST0
	.byte	0x8
	.string	"h"
	.byte	0x1
	.byte	0x13
	.4byte	0x285
	.4byte	.LLST1
	.byte	0x8
	.string	"r"
	.byte	0x1
	.byte	0x14
	.4byte	0x27f
	.4byte	.LLST2
	.byte	0x8
	.string	"nh"
	.byte	0x1
	.byte	0x15
	.4byte	0x136
	.4byte	.LLST3
	.byte	0x8
	.string	"nr"
	.byte	0x1
	.byte	0x16
	.4byte	0x136
	.4byte	.LLST4
	.byte	0x9
	.string	"i"
	.byte	0x1
	.byte	0x18
	.4byte	0x136
	.4byte	.LLST5
	.byte	0x9
	.string	"j"
	.byte	0x1
	.byte	0x18
	.4byte	0x136
	.4byte	.LLST6
	.byte	0x9
	.string	"k"
	.byte	0x1
	.byte	0x18
	.4byte	0x136
	.4byte	.LLST6
	.byte	0x9
	.string	"temp1"
	.byte	0x1
	.byte	0x19
	.4byte	0x272
	.4byte	.LLST8
	.byte	0x9
	.string	"temp2"
	.byte	0x1
	.byte	0x19
	.4byte	0x272
	.4byte	.LLST9
	.byte	0
	.byte	0xa
	.byte	0x1
	.4byte	0xab
	.4byte	0x27f
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0x5
	.byte	0x8
	.4byte	0x272
	.byte	0x5
	.byte	0x8
	.4byte	0xab
	.byte	0xc
	.byte	0x1
	.string	"DSP_fir_gen_cn"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST10
	.byte	0x1
	.4byte	0x354
	.byte	0x8
	.string	"x"
	.byte	0x1
	.byte	0x22
	.4byte	0x354
	.4byte	.LLST11
	.byte	0x8
	.string	"h"
	.byte	0x1
	.byte	0x23
	.4byte	0x354
	.4byte	.LLST12
	.byte	0x8
	.string	"y"
	.byte	0x1
	.byte	0x24
	.4byte	0x285
	.4byte	.LLST13
	.byte	0xd
	.string	"nh"
	.byte	0x1
	.byte	0x25
	.4byte	0x136
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0xd
	.string	"ny"
	.byte	0x1
	.byte	0x26
	.4byte	0x136
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9
	.string	"i"
	.byte	0x1
	.byte	0x28
	.4byte	0x136
	.4byte	.LLST14
	.byte	0x9
	.string	"j"
	.byte	0x1
	.byte	0x28
	.4byte	0x136
	.4byte	.LLST15
	.byte	0x9
	.string	"sum1"
	.byte	0x1
	.byte	0x29
	.4byte	0xab
	.4byte	.LLST16
	.byte	0x9
	.string	"sum2"
	.byte	0x1
	.byte	0x29
	.4byte	0xab
	.4byte	.LLST17
	.byte	0x9
	.string	"sum3"
	.byte	0x1
	.byte	0x29
	.4byte	0xab
	.4byte	.LLST18
	.byte	0x9
	.string	"sum4"
	.byte	0x1
	.byte	0x29
	.4byte	0xab
	.4byte	.LLST19
	.byte	0
	.byte	0x5
	.byte	0x8
	.4byte	0x35a
	.byte	0xe
	.4byte	0xab
	.byte	0xf
	.byte	0x1
	.string	"getTime"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.4byte	0x105
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST20
	.byte	0x1
	.4byte	0x465
	.byte	0x8
	.string	"x1"
	.byte	0x1
	.byte	0x50
	.4byte	0x27f
	.4byte	.LLST21
	.byte	0x8
	.string	"h1"
	.byte	0x1
	.byte	0x50
	.4byte	0x285
	.4byte	.LLST22
	.byte	0x8
	.string	"r1"
	.byte	0x1
	.byte	0x50
	.4byte	0x27f
	.4byte	.LLST23
	.byte	0x8
	.string	"nh"
	.byte	0x1
	.byte	0x50
	.4byte	0x136
	.4byte	.LLST24
	.byte	0x8
	.string	"nr"
	.byte	0x1
	.byte	0x50
	.4byte	0x136
	.4byte	.LLST25
	.byte	0x10
	.4byte	.LASF0
	.byte	0x1
	.byte	0x51
	.4byte	0x105
	.4byte	.LLST26
	.byte	0x9
	.string	"time2"
	.byte	0x1
	.byte	0x51
	.4byte	0x105
	.4byte	.LLST27
	.byte	0x11
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x52
	.4byte	0x136
	.byte	0x1
	.4byte	0x402
	.byte	0x12
	.byte	0
	.byte	0x13
	.llong	.LVL23
	.4byte	0x415
	.byte	0x14
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x13
	.llong	.LVL26
	.4byte	0x455
	.byte	0x14
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x2f
	.byte	0
	.byte	0x14
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0x14
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x14
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
	.byte	0x14
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0x15
	.llong	.LVL27
	.byte	0x14
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x1
	.string	"getTime1"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.4byte	0x105
	.llong	.LFB6
	.llong	.LFE6
	.4byte	.LLST28
	.byte	0x1
	.4byte	0x58f
	.byte	0x8
	.string	"x1"
	.byte	0x1
	.byte	0x57
	.4byte	0x27f
	.4byte	.LLST29
	.byte	0x8
	.string	"h1"
	.byte	0x1
	.byte	0x57
	.4byte	0x285
	.4byte	.LLST30
	.byte	0x8
	.string	"r1"
	.byte	0x1
	.byte	0x57
	.4byte	0x27f
	.4byte	.LLST31
	.byte	0x8
	.string	"nh"
	.byte	0x1
	.byte	0x57
	.4byte	0x136
	.4byte	.LLST32
	.byte	0x8
	.string	"nr"
	.byte	0x1
	.byte	0x57
	.4byte	0x136
	.4byte	.LLST33
	.byte	0x10
	.4byte	.LASF0
	.byte	0x1
	.byte	0x58
	.4byte	0x105
	.4byte	.LLST34
	.byte	0x9
	.string	"time2"
	.byte	0x1
	.byte	0x58
	.4byte	0x105
	.4byte	.LLST35
	.byte	0x11
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x52
	.4byte	0x136
	.byte	0x1
	.4byte	0x509
	.byte	0x12
	.byte	0
	.byte	0x16
	.byte	0x1
	.string	"DSPF_sp_fir_gen_vc2"
	.byte	0x1
	.byte	0x5a
	.4byte	0x136
	.byte	0x1
	.4byte	0x52c
	.byte	0x12
	.byte	0
	.byte	0x13
	.llong	.LVL37
	.4byte	0x53f
	.byte	0x14
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x13
	.llong	.LVL40
	.4byte	0x57f
	.byte	0x14
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x2f
	.byte	0
	.byte	0x14
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0x14
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x14
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
	.byte	0x14
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0x15
	.llong	.LVL41
	.byte	0x14
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x1
	.string	"getTime_cn"
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.4byte	0x105
	.llong	.LFB7
	.llong	.LFE7
	.4byte	.LLST36
	.byte	0x1
	.4byte	0x695
	.byte	0x8
	.string	"x"
	.byte	0x1
	.byte	0x5e
	.4byte	0x285
	.4byte	.LLST37
	.byte	0x8
	.string	"h"
	.byte	0x1
	.byte	0x5e
	.4byte	0x285
	.4byte	.LLST38
	.byte	0x8
	.string	"r"
	.byte	0x1
	.byte	0x5e
	.4byte	0x285
	.4byte	.LLST39
	.byte	0x8
	.string	"nh"
	.byte	0x1
	.byte	0x5e
	.4byte	0x136
	.4byte	.LLST40
	.byte	0x8
	.string	"nr"
	.byte	0x1
	.byte	0x5e
	.4byte	0x136
	.4byte	.LLST41
	.byte	0x10
	.4byte	.LASF0
	.byte	0x1
	.byte	0x5f
	.4byte	0x105
	.4byte	.LLST42
	.byte	0x9
	.string	"time2"
	.byte	0x1
	.byte	0x5f
	.4byte	0x105
	.4byte	.LLST43
	.byte	0x11
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x52
	.4byte	0x136
	.byte	0x1
	.4byte	0x632
	.byte	0x12
	.byte	0
	.byte	0x13
	.llong	.LVL51
	.4byte	0x645
	.byte	0x14
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x13
	.llong	.LVL54
	.4byte	0x685
	.byte	0x14
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x2f
	.byte	0
	.byte	0x14
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0x14
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x14
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
	.byte	0x14
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0x15
	.llong	.LVL55
	.byte	0x14
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x1
	.string	"random_x"
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.llong	.LFB9
	.llong	.LFE9
	.4byte	.LLST44
	.byte	0x1
	.4byte	0x711
	.byte	0x8
	.string	"x1"
	.byte	0x1
	.byte	0x92
	.4byte	0x285
	.4byte	.LLST45
	.byte	0x8
	.string	"n"
	.byte	0x1
	.byte	0x92
	.4byte	0x136
	.4byte	.LLST46
	.byte	0x8
	.string	"factor"
	.byte	0x1
	.byte	0x92
	.4byte	0xab
	.4byte	.LLST47
	.byte	0x18
	.string	"rand_midpoint"
	.byte	0x1
	.byte	0x93
	.4byte	0xab
	.byte	0x4
	.4byte	0x4e800000
	.byte	0x9
	.string	"i"
	.byte	0x1
	.byte	0x94
	.4byte	0x136
	.4byte	.LLST48
	.byte	0
	.byte	0x17
	.byte	0x1
	.string	"random_h"
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.llong	.LFB10
	.llong	.LFE10
	.4byte	.LLST49
	.byte	0x1
	.4byte	0x78a
	.byte	0x8
	.string	"h"
	.byte	0x1
	.byte	0x9a
	.4byte	0x285
	.4byte	.LLST50
	.byte	0x8
	.string	"n"
	.byte	0x1
	.byte	0x9a
	.4byte	0x136
	.4byte	.LLST51
	.byte	0x9
	.string	"i"
	.byte	0x1
	.byte	0x9b
	.4byte	0x136
	.4byte	.LLST52
	.byte	0x18
	.string	"frand_max"
	.byte	0x1
	.byte	0x9c
	.4byte	0xab
	.byte	0x4
	.4byte	0x4f000000
	.byte	0x9
	.string	"pair_sum"
	.byte	0x1
	.byte	0x9c
	.4byte	0xab
	.4byte	.LLST53
	.byte	0
	.byte	0x19
	.byte	0x1
	.string	"main"
	.byte	0x1
	.byte	0x65
	.llong	.LFB8
	.llong	.LFE8
	.4byte	.LLST54
	.byte	0x1
	.4byte	0xaf2
	.byte	0x9
	.string	"time"
	.byte	0x1
	.byte	0x66
	.4byte	0x105
	.4byte	.LLST55
	.byte	0x1a
	.4byte	.LASF0
	.byte	0x1
	.byte	0x66
	.4byte	0x105
	.byte	0x9
	.string	"time_cn"
	.byte	0x1
	.byte	0x66
	.4byte	0x105
	.4byte	.LLST56
	.byte	0x9
	.string	"nr"
	.byte	0x1
	.byte	0x6c
	.4byte	0x136
	.4byte	.LLST57
	.byte	0x9
	.string	"nh"
	.byte	0x1
	.byte	0x6c
	.4byte	0x136
	.4byte	.LLST58
	.byte	0x1b
	.string	"hAddr"
	.byte	0x1
	.byte	0x6d
	.4byte	0x285
	.4byte	0x40100000
	.byte	0x1b
	.string	"xAddr"
	.byte	0x1
	.byte	0x6e
	.4byte	0x27f
	.4byte	0x40020000
	.byte	0x1b
	.string	"rAddr"
	.byte	0x1
	.byte	0x6f
	.4byte	0x27f
	.4byte	0x40040000
	.byte	0x1b
	.string	"rAddr1"
	.byte	0x1
	.byte	0x70
	.4byte	0x27f
	.4byte	0x40060000
	.byte	0x16
	.byte	0x1
	.string	"M7002_datatrans"
	.byte	0x1
	.byte	0x73
	.4byte	0x136
	.byte	0x1
	.4byte	0x85a
	.byte	0x12
	.byte	0
	.byte	0x16
	.byte	0x1
	.string	"SetTimerPeriod"
	.byte	0x1
	.byte	0x77
	.4byte	0x136
	.byte	0x1
	.4byte	0x878
	.byte	0x12
	.byte	0
	.byte	0x16
	.byte	0x1
	.string	"TimerStart"
	.byte	0x1
	.byte	0x78
	.4byte	0x136
	.byte	0x1
	.4byte	0x892
	.byte	0x12
	.byte	0
	.byte	0x9
	.string	"c_time"
	.byte	0x1
	.byte	0x7a
	.4byte	0x105
	.4byte	.LLST59
	.byte	0x11
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x52
	.4byte	0x136
	.byte	0x1
	.4byte	0x8b7
	.byte	0x12
	.byte	0
	.byte	0x1c
	.4byte	0x16e
	.llong	.LBB5
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x67
	.4byte	0x8f0
	.byte	0x1d
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1e
	.4byte	0x17f
	.4byte	0x40140004
	.byte	0x1e
	.4byte	0x18c
	.4byte	0x40140000
	.byte	0x1f
	.4byte	0x19a
	.4byte	.LLST60
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.Ldebug_ranges0+0xa0
	.4byte	0xa48
	.byte	0x10
	.4byte	.LASF0
	.byte	0x1
	.byte	0x8c
	.4byte	0x105
	.4byte	.LLST61
	.byte	0x13
	.llong	.LVL91
	.4byte	0x91b
	.byte	0x14
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x13
	.llong	.LVL92
	.4byte	0x92e
	.byte	0x14
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x13
	.llong	.LVL93
	.4byte	0x941
	.byte	0x14
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x13
	.llong	.LVL94
	.4byte	0x956
	.byte	0x14
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.byte	0x13
	.llong	.LVL95
	.4byte	0x96b
	.byte	0x14
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.byte	0x13
	.llong	.LVL96
	.4byte	0x989
	.byte	0x14
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0x14
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x13
	.llong	.LVL99
	.4byte	0x9a7
	.byte	0x14
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0x14
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x13
	.llong	.LVL100
	.4byte	0x9bc
	.byte	0x14
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.byte	0x13
	.llong	.LVL101
	.4byte	0x9d1
	.byte	0x14
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.byte	0x13
	.llong	.LVL102
	.4byte	0x9ef
	.byte	0x14
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0x14
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x13
	.llong	.LVL105
	.4byte	0xa0d
	.byte	0x14
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0x14
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x15
	.llong	.LVL107
	.byte	0x14
	.byte	0x2
	.byte	0x7f
	.byte	0x20
	.byte	0x7
	.byte	0x92
	.byte	0x33
	.byte	0
	.byte	0x92
	.byte	0x32
	.byte	0
	.byte	0x1c
	.byte	0x14
	.byte	0x2
	.byte	0x7f
	.byte	0x18
	.byte	0x7
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0x92
	.byte	0x32
	.byte	0
	.byte	0x1c
	.byte	0x14
	.byte	0x2
	.byte	0x7f
	.byte	0x14
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0x7c
	.byte	0x14
	.byte	0x2
	.byte	0x7f
	.byte	0x10
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0x14
	.byte	0x2
	.byte	0x7f
	.byte	0x8
	.byte	0x3
	.byte	0x92
	.byte	0x2e
	.byte	0
	.byte	0
	.byte	0
	.byte	0x13
	.llong	.LVL80
	.4byte	0xa5c
	.byte	0x14
	.byte	0x1
	.byte	0x6c
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x13
	.llong	.LVL81
	.4byte	0xa6f
	.byte	0x14
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x13
	.llong	.LVL82
	.4byte	0xa8f
	.byte	0x14
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xa
	.2byte	0x23c
	.byte	0x14
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x13
	.llong	.LVL83
	.4byte	0xaa3
	.byte	0x14
	.byte	0x1
	.byte	0x6e
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x13
	.llong	.LVL85
	.4byte	0xabc
	.byte	0x14
	.byte	0x1
	.byte	0x6c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0x14
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x13
	.llong	.LVL86
	.4byte	0xacf
	.byte	0x14
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x13
	.llong	.LVL87
	.4byte	0xae2
	.byte	0x14
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x15
	.llong	.LVL88
	.byte	0x14
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	0x16e
	.llong	.LFB11
	.llong	.LFE11
	.4byte	.LLST62
	.byte	0x1
	.4byte	0xb2c
	.byte	0x1e
	.4byte	0x17f
	.4byte	0x40140004
	.byte	0x1e
	.4byte	0x18c
	.4byte	0x40140000
	.byte	0x1f
	.4byte	0x19a
	.4byte	.LLST63
	.byte	0
	.byte	0x22
	.4byte	0xab
	.4byte	0xb3c
	.byte	0x23
	.4byte	0x15a
	.byte	0x8e
	.byte	0
	.byte	0x24
	.string	"x"
	.byte	0x1
	.byte	0xb
	.4byte	0xb2c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	x
	.byte	0x22
	.4byte	0xab
	.4byte	0xb60
	.byte	0x23
	.4byte	0x15a
	.byte	0xf
	.byte	0
	.byte	0x24
	.string	"h"
	.byte	0x1
	.byte	0xc
	.4byte	0xb50
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	h
	.byte	0x22
	.4byte	0xab
	.4byte	0xb84
	.byte	0x23
	.4byte	0x15a
	.byte	0x7f
	.byte	0
	.byte	0x24
	.string	"r"
	.byte	0x1
	.byte	0xd
	.4byte	0xb74
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	r
	.byte	0x24
	.string	"r1"
	.byte	0x1
	.byte	0xe
	.4byte	0xb74
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	r1
	.byte	0x24
	.string	"r_cn"
	.byte	0x1
	.byte	0xf
	.4byte	0xb74
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	r_cn
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
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
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x6
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
	.byte	0xd
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
	.byte	0xe
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x49
	.byte	0x13
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
	.byte	0x10
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
	.byte	0x11
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0xe
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
	.byte	0x12
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0xa
	.byte	0x91,0x42
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x2e
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x22
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x3f
	.byte	0xc
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL4
	.llong	.LVL9
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	.LVL9
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
.LLST1:
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
	.2byte	0x2
	.byte	0x90
	.byte	0x50
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL2
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL2
	.llong	.LVL9
	.2byte	0x2
	.byte	0x90
	.byte	0x51
	.llong	.LVL9
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
.LLST3:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL3
	.llong	.LVL4
	.2byte	0x4
	.byte	0x92
	.byte	0x3b
	.byte	0x1
	.byte	0x9f
	.llong	.LVL4
	.llong	.LVL9
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	.LVL9
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL4
	.llong	.LVL9
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
	.llong	.LVL9
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL9
	.llong	.LFE3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL5
	.llong	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL5
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL7
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.byte	0x64
	.llong	0
	.llong	0
.LLST10:
	.llong	.LFB4
	.llong	.LCFI0
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI0
	.llong	.LFE4
	.2byte	0x2
	.byte	0x7f
	.byte	0x18
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL10
	.llong	.LVL11
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL11
	.llong	.LFE4
	.2byte	0x2
	.byte	0x90
	.byte	0x51
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL10
	.llong	.LVL11
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL11
	.llong	.LFE4
	.2byte	0x2
	.byte	0x90
	.byte	0x52
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL10
	.llong	.LVL11
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL11
	.llong	.LFE4
	.2byte	0x2
	.byte	0x90
	.byte	0x50
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL11
	.llong	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL16
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x4b
	.llong	.LVL19
	.llong	.LFE4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL10
	.llong	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL17
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x2d
	.llong	.LVL20
	.llong	.LFE4
	.2byte	0x2
	.byte	0x90
	.byte	0x2d
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL11
	.llong	.LVL12
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	.LVL13
	.llong	.LVL18
	.2byte	0x1
	.byte	0x6d
	.llong	.LVL19
	.llong	.LFE4
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL11
	.llong	.LVL12
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	.LVL14
	.llong	.LVL18
	.2byte	0x1
	.byte	0x6e
	.llong	.LVL19
	.llong	.LFE4
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL11
	.llong	.LVL12
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	.LVL15
	.llong	.LVL18
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL19
	.llong	.LFE4
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL11
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x21
	.llong	.LVL19
	.llong	.LFE4
	.2byte	0x2
	.byte	0x90
	.byte	0x21
	.llong	0
	.llong	0
.LLST20:
	.llong	.LFB5
	.llong	.LCFI3
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI3
	.llong	.LFE5
	.2byte	0x2
	.byte	0x7f
	.byte	0x38
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL21
	.llong	.LVL22
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL22
	.llong	.LVL33
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL33
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL21
	.llong	.LVL23-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL23-1
	.llong	.LVL34
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL34
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL21
	.llong	.LVL23-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL23-1
	.llong	.LVL32
	.2byte	0x1
	.byte	0x58
	.llong	.LVL32
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL21
	.llong	.LVL23-1
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL23-1
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	.LVL31
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL21
	.llong	.LVL23-1
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL23-1
	.llong	.LVL30
	.2byte	0x2
	.byte	0x90
	.byte	0x2f
	.llong	.LVL30
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST26:
	.llong	.LVL24
	.llong	.LVL25
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL25
	.llong	.LVL29
	.2byte	0x2
	.byte	0x90
	.byte	0x2e
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL27
	.llong	.LVL28
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST28:
	.llong	.LFB6
	.llong	.LCFI9
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI9
	.llong	.LFE6
	.2byte	0x2
	.byte	0x7f
	.byte	0x38
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL35
	.llong	.LVL36
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL36
	.llong	.LVL47
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL47
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL35
	.llong	.LVL37-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL37-1
	.llong	.LVL48
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL48
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST31:
	.llong	.LVL35
	.llong	.LVL37-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL37-1
	.llong	.LVL46
	.2byte	0x1
	.byte	0x58
	.llong	.LVL46
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST32:
	.llong	.LVL35
	.llong	.LVL37-1
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL37-1
	.llong	.LVL45
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	.LVL45
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST33:
	.llong	.LVL35
	.llong	.LVL37-1
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL37-1
	.llong	.LVL44
	.2byte	0x2
	.byte	0x90
	.byte	0x2f
	.llong	.LVL44
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST34:
	.llong	.LVL38
	.llong	.LVL39
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL39
	.llong	.LVL43
	.2byte	0x2
	.byte	0x90
	.byte	0x2e
	.llong	0
	.llong	0
.LLST35:
	.llong	.LVL41
	.llong	.LVL42
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST36:
	.llong	.LFB7
	.llong	.LCFI15
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI15
	.llong	.LFE7
	.2byte	0x2
	.byte	0x7f
	.byte	0x38
	.llong	0
	.llong	0
.LLST37:
	.llong	.LVL49
	.llong	.LVL50
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL50
	.llong	.LVL61
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL61
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST38:
	.llong	.LVL49
	.llong	.LVL51-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL51-1
	.llong	.LVL62
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL62
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST39:
	.llong	.LVL49
	.llong	.LVL51-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL51-1
	.llong	.LVL60
	.2byte	0x1
	.byte	0x58
	.llong	.LVL60
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST40:
	.llong	.LVL49
	.llong	.LVL51-1
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL51-1
	.llong	.LVL59
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	.LVL59
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST41:
	.llong	.LVL49
	.llong	.LVL51-1
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL51-1
	.llong	.LVL58
	.2byte	0x2
	.byte	0x90
	.byte	0x2f
	.llong	.LVL58
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST42:
	.llong	.LVL52
	.llong	.LVL53
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL53
	.llong	.LVL57
	.2byte	0x2
	.byte	0x90
	.byte	0x2e
	.llong	0
	.llong	0
.LLST43:
	.llong	.LVL55
	.llong	.LVL56
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST44:
	.llong	.LFB9
	.llong	.LCFI21
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI21
	.llong	.LFE9
	.2byte	0x2
	.byte	0x7f
	.byte	0x30
	.llong	0
	.llong	0
.LLST45:
	.llong	.LVL63
	.llong	.LVL65
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL65
	.llong	.LFE9
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST46:
	.llong	.LVL63
	.llong	.LVL64
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL64
	.llong	.LVL66
	.2byte	0x3
	.byte	0x8c
	.byte	0x1
	.byte	0x9f
	.llong	.LVL66
	.llong	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x6c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST47:
	.llong	.LVL63
	.llong	.LVL66
	.2byte	0x1
	.byte	0x6e
	.llong	.LVL66
	.llong	.LVL68
	.2byte	0x2
	.byte	0x90
	.byte	0x32
	.llong	.LVL68
	.llong	.LFE9
	.2byte	0x7
	.byte	0xf3
	.byte	0x4
	.byte	0xf5
	.byte	0x1e
	.byte	0xab,0x1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST48:
	.llong	.LVL63
	.llong	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST49:
	.llong	.LFB10
	.llong	.LCFI26
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI26
	.llong	.LFE10
	.2byte	0x2
	.byte	0x7f
	.byte	0x38
	.llong	0
	.llong	0
.LLST50:
	.llong	.LVL69
	.llong	.LVL70
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL70
	.llong	.LVL73
	.2byte	0x1
	.byte	0x50
	.llong	.LVL73
	.llong	.LFE10
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST51:
	.llong	.LVL69
	.llong	.LVL71
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL71
	.llong	.LVL73
	.2byte	0x3
	.byte	0x81
	.byte	0x1
	.byte	0x9f
	.llong	.LVL73
	.llong	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x6c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST52:
	.llong	.LVL72
	.llong	.LVL73
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST53:
	.llong	.LVL72
	.llong	.LVL75
	.2byte	0x2
	.byte	0x90
	.byte	0x34
	.llong	0
	.llong	0
.LLST54:
	.llong	.LFB8
	.llong	.LCFI34
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI34
	.llong	.LFE8
	.2byte	0x3
	.byte	0x7f
	.byte	0xe0,0
	.llong	0
	.llong	0
.LLST55:
	.llong	.LVL97
	.llong	.LVL98
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL98
	.llong	.LVL113
	.2byte	0x2
	.byte	0x90
	.byte	0x33
	.llong	0
	.llong	0
.LLST56:
	.llong	.LVL103
	.llong	.LVL104
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL104
	.llong	.LVL114
	.2byte	0x2
	.byte	0x90
	.byte	0x34
	.llong	0
	.llong	0
.LLST57:
	.llong	.LVL108
	.llong	.LVL111
	.2byte	0x2
	.byte	0x90
	.byte	0x31
	.llong	0
	.llong	0
.LLST58:
	.llong	.LVL89
	.llong	.LVL90
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.llong	.LVL107
	.llong	.LVL110
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	0
	.llong	0
.LLST59:
	.llong	.LVL89
	.llong	.LVL112
	.2byte	0x2
	.byte	0x90
	.byte	0x32
	.llong	0
	.llong	0
.LLST60:
	.llong	.LVL77
	.llong	.LVL78
	.2byte	0x2
	.byte	0x91
	.byte	0x4c
	.llong	.LVL79
	.llong	.LFE8
	.2byte	0x2
	.byte	0x90
	.byte	0x3a
	.llong	0
	.llong	0
.LLST61:
	.llong	.LVL105
	.llong	.LVL106
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST62:
	.llong	.LFB11
	.llong	.LCFI38
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI38
	.llong	.LFE11
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.llong	0
	.llong	0
.LLST63:
	.llong	.LVL116
	.llong	.LVL117
	.2byte	0x2
	.byte	0x91
	.byte	0x7c
	.llong	.LVL118
	.llong	.LFE11
	.2byte	0x2
	.byte	0x90
	.byte	0x3a
	.llong	0
	.llong	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xac
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.llong	.LFB4
	.llong	.LFE4-.LFB4
	.llong	.LFB5
	.llong	.LFE5-.LFB5
	.llong	.LFB6
	.llong	.LFE6-.LFB6
	.llong	.LFB7
	.llong	.LFE7-.LFB7
	.llong	.LFB9
	.llong	.LFE9-.LFB9
	.llong	.LFB10
	.llong	.LFE10-.LFB10
	.llong	.LFB8
	.llong	.LFE8-.LFB8
	.llong	.LFB11
	.llong	.LFE11-.LFB11
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LBB5
	.llong	.LBE5
	.llong	.LBB10
	.llong	.LBE10
	.llong	.LBB11
	.llong	.LBE11
	.llong	.LBB12
	.llong	.LBE12
	.llong	0
	.llong	0
	.llong	.LBB6
	.llong	.LBE6
	.llong	.LBB7
	.llong	.LBE7
	.llong	.LBB8
	.llong	.LBE8
	.llong	.LBB9
	.llong	.LBE9
	.llong	0
	.llong	0
	.llong	.LBB13
	.llong	.LBE13
	.llong	.LBB14
	.llong	.LBE14
	.llong	0
	.llong	0
	.llong	.LFB3
	.llong	.LFE3
	.llong	.LFB4
	.llong	.LFE4
	.llong	.LFB5
	.llong	.LFE5
	.llong	.LFB6
	.llong	.LFE6
	.llong	.LFB7
	.llong	.LFE7
	.llong	.LFB9
	.llong	.LFE9
	.llong	.LFB10
	.llong	.LFE10
	.llong	.LFB8
	.llong	.LFE8
	.llong	.LFB11
	.llong	.LFE11
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"",@progbits
.LASF0:
	.string	"time1"
.LASF1:
	.string	"GetTimerCount"
