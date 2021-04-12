	.file	"main.c"
.text;
.Ltext0:
	.section	.text.DSPF_sp_fir_gen_vc1,"ax",@progbits
	.align	2
	.global	DSPF_sp_fir_gen_vc1
	.type	DSPF_sp_fir_gen_vc1, @function
DSPF_sp_fir_gen_vc1:
.LFB3:
	.file 1 "../main.c"
	.loc 1 23 0
.LVL0:
	.loc 1 23 0
		SMVAGA36.M1		R15:R14, AR6
	|	SMOVIL		15, R42
	.loc 1 25 0
		SNOP		1
		SMVCGC.L		R42, VLR
.LVL1:
	.loc 1 29 0
		SMOVIL		0, R0
		SNOP		1
	.loc 1 17 0
		SMVAGA36.M1		R13:R12, OR0
	|	SLT		R0, R16, R1
	|	SADD.M2		-1,R16,R2
	.loc 1 29 0
	[!R1]	SBR		.L5
	|	SADD.M2		-1,R18,R43
	|	SSHFLL		1, R2, R3
	.loc 1 17 0
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
.LVL2:
		SSHFLL		1, R9, R14
	|[R1]	SMVAAGH.M2		AR0, R47:R46
	;; condjump to .L5 occurs
.LVL3:
		SMOVIL		0, R44
	|	SADD.M1		R14,R12,R15
		SLTU		R52, R8, R16
	|	SADD.M2		R15,R13,R17
.LVL4:
		SLT		R44, R18, R1
		SLTU		R54, R53, R55
		SSHFLR		28, R52, R18
	|	SADD.M2		R17,R55,R19
.LVL5:
		SSHFLL		4, R16, R51
		SOR		R51, R18, R20
		SSHFLL		4, R52, R21
.LVL6:
.L4:
		SADD.M2		4,R46,R22
	|[!R1]	SBR		.L6
	|	SMVAGA36.M1		R11:R10, AR4
	|	SMOVIL		0, R28
		SLTU		R22, R46, R24
	|	SMOV.M2		R22, R46
		SADD.M2		R47,R24,R47
	|	SMOVIL		0, R43
		SMVAGA36.M2		R47:R46, AR10
		SNOP		1
	.loc 1 30 0
	[R1]	SLDW		*AR10, R25
		SNOP		5
	.loc 1 31 0
	;; condjump to .L6 occurs
	.loc 1 30 0
		SVBCAST.M2 		 R25,VR5
		SNOP		3
.LVL7:
.L3:
	.loc 1 17 0
		SMOV.M2		R28, R44
	|	SMOV.M1		R43, R45
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,AR6,AR0
	|	SADDA.M2		R45:R44,AR4,AR2
		SNOP		2
	.loc 1 34 0
		VLDW.LS 		*AR0,VR3
	|	VLDW.LS 		*AR2,VR4
	|	SADD.M2		16,R28,R26
		SLTU		R26, R28, R50
	|	SMOV.M2		R26, R28
		SADD.M2		R43,R50,R43
	|	SEQ		R26, R21, R0
	.loc 1 31 0
	[R0]	SEQ		R43, R20, R0
		SNOP		4
	.loc 1 34 0
		VFMULAS32.M3	VR4,VR5,VR3,VR3
	|[!R0]	SBR		.L3
	.loc 1 31 0
		SNOP		5
	.loc 1 34 0
		VSTW.LS 		VR3,*AR0
	;; condjump to .L3 occurs
.LVL8:
.L6:
		SLTU		R53, R10, R29
	|	SMOV.M2		R53, R10
	.loc 1 29 0
		SEQ		R53, R54, R2
	|	SADD.M2		R11,R29,R11
	|	SADD.M1		4,R53,R53
	[R2]	SEQ		R11, R19, R2
	[R2]	SBR		.L5
	[!R2]	SBR		.L4
		SNOP		6
	;; condjump to .L5 occurs
	;; jump to .L4 occurs
.L5:
	.loc 1 37 0
		SMOVIL		65535, R10
		SMOVIH		65535, R10
		SMVCGC.L		R10, VLR
		SNOP		2
		SBR		R62
		SNOP		6
	;; return occurs
.LFE3:
	.size	DSPF_sp_fir_gen_vc1, .-DSPF_sp_fir_gen_vc1
	.section	.text.DSPF_fir_gen_cn,"ax",@progbits
	.align	2
	.global	DSPF_fir_gen_cn
	.type	DSPF_fir_gen_cn, @function
DSPF_fir_gen_cn:
.LFB4:
	.loc 1 45 0
.LVL9:
	.loc 1 48 0
		SMOVIL		0, R42
	|	SMVAGA36.M1		R11:R10, OR0
	|	SADD.M2		-1,R18,R44
		SLT		R42, R18, R0
	|	SADD.M2		-1,R16,R43
		SLT		R42, R16, R1
	|[!R0]	SBR		.L17
	|	SADDA.M2		-4,OR0,AR0
	|	SADD.M1		4,R14,R56
	.loc 1 40 0
		SSHFLL		1, R44, R49
	|	SADD.M1		4,R12,R2
		SSHFLL		1, R43, R45
		SSHFLL		2, R44, R50
	|	SMVAAGL.M2		AR0, R47:R46
		SSHFLL		2, R43, R48
	|	SADD.M1		R50,R56,R57
		SLTU		R49, R44, R3
	|	SADD.M1		R48,R2,R54
	|	SMVAAGH.M2		AR0, R47:R46
		SLTU		R45, R43, R8
	;; condjump to .L17 occurs
		SLTU		R56, R14, R53
		SLTU		R50, R49, R9
	|	SADD.M2		R15,R53,R10
.LVL10:
	.loc 1 51 0
	[!R1]	SBR		.L28
	|	SSHFLL		1, R3, R11
	.loc 1 40 0
		SLTU		R2, R12, R16
	|	SADD.M2		R11,R9,R17
.LVL11:
		SLTU		R48, R45, R18
	|	SADD.M2		R13,R16,R19
	|	SADD.M1		R17,R10,R20
.LVL12:
		SSHFLL		1, R8, R21
		SADD.M2		R21,R18,R22
	|	SLTU		R57, R56, R58
		SADD.M2		R20,R58,R26
	|	SLTU		R54, R2, R23
	|	SADD.M1		R22,R19,R24
		SADD.M2		R24,R23,R55
	;; condjump to .L28 occurs
.LVL13:
.L22:
	.loc 1 51 0
		SMOVIL		0, R25
	|	SMOV.M2		R12, R42
	|	SMOV.M1		R13, R43
		SMOV.M2		R46, R44
	|	SMOV.M1		R47, R45
	|	SMOVIH		0, R25
.LVL14:
.L20:
		SADD.M1		4,R44,R27
	|	SMVAGA36.M2		R43:R42, AR12
		SLTU		R27, R44, R29
	|	SMOV.M1		R27, R44
		SADD.M2		R45,R29,R45
	|	SLDW		*AR12, R2
	|	SADD.M1		4,R42,R59
	.loc 1 40 0
		SMVAGA36.M2		R45:R44, AR10
	|	SLTU		R59, R42, R60
	|	SMOV.M1		R59, R42
		SADD.M1		R43,R60,R43
	|	SEQ		R59, R54, R0
	.loc 1 52 0
		SLDW		*AR10, R49
	|[R0]	SEQ		R43, R55, R0
	.loc 1 51 0
		SNOP		4
	[!R0]	SBR		.L20
	.loc 1 52 0
		SFMULAS32.M2	R49, R2, R25, R25
		SNOP		5
.LVL15:
	.loc 1 51 0
	;; condjump to .L20 occurs
	.loc 1 40 0
		SMVAGA36.M2		R15:R14, AR10
	|	SLTU		R56, R14, R44
	|	SMOV.M1		R56, R14
		SADD.M1		R15,R44,R15
	|	SEQ		R14, R57, R0
	.loc 1 48 0
	[R0]	SEQ		R15, R26, R0
	|	SADD.M2		4,R46,R56
	|	SSTW		R25, *AR10
	[R0]	SBR		.L17
	|	SLTU		R56, R46, R42
	|	SMOV.M2		R56, R46
		SADD.M2		R47,R42,R47
		SNOP		5
	;; condjump to .L17 occurs
.LVL16:
.L29:
	.loc 1 51 0
	[R1]	SBR		.L22
	|	SADD.M2		4,R14,R56
		SNOP		6
.LVL17:
	;; condjump to .L22 occurs
.L28:
	.loc 1 40 0
		SMVAGA36.M2		R15:R14, AR10
	|	SLTU		R56, R14, R44
	|	SMOV.M1		R56, R14
		SADD.M1		R15,R44,R15
	|	SEQ		R14, R57, R0
	.loc 1 48 0
	[R0]	SEQ		R15, R26, R0
	|	SADD.M2		4,R46,R56
	[!R0]	SBR		.L29
	|	SMOVIL		0, R25
		SLTU		R56, R46, R42
	|	SMOV.M2		R56, R46
		SADD.M2		R47,R42,R47
	|	SMOVIH		0, R25
	.loc 1 53 0
		SSTW		R25, *AR10
		SNOP		3
	.loc 1 48 0
	;; condjump to .L29 occurs
.LVL18:
.L17:
		SBR		R62
		SNOP		6
	;; return occurs
.LFE4:
	.size	DSPF_fir_gen_cn, .-DSPF_fir_gen_cn
	.section	.text.getTime,"ax",@progbits
	.align	2
	.global	getTime
	.type	getTime, @function
getTime:
.LFB5:
	.loc 1 68 0
.LVL19:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[5]
.LCFI1:
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTW		R32, *+AR15[5]
		SNOP		1
		SMOV.M2		R16, R32
		SSTDW		R7:R6, *+AR15[6]
.LCFI2:
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R31, *+AR15[4]
		SMOV.M1		R18, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL20:
.LCFI3:
	.loc 1 70 0
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
	.loc 1 68 0
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L32, R62
.LCFI4:
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L32, R62
		SMOVIH4.L		.L32, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
.LCFI5:
	.loc 1 70 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.LVL21:
.L32:
	.loc 1 71 0
		SBR		DSPF_sp_fir_gen_vc1
	|	SMOV.M2		R32, R16
	|	SMOV.M1		R31, R18
	.loc 1 70 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIL		.L33, R62
.LVL22:
	.loc 1 71 0
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH		.L33, R62
.LVL23:
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH4.L		.L33, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSPF_sp_fir_gen_vc1 occurs
		SNOP		2
.LVL24:
.L33:
	.loc 1 72 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L34, R62
		SMOVIH		.L34, R62
		SMOVIH4.L		.L34, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL25:
	.loc 1 74 0
.L34:
		SLDDW		*+AR15[3], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL26:
		SLDDW		*+AR15[5], R63:R62
		SLDW		*+AR15[3], R30
.LVL27:
		SLDW		*+AR15[4], R31
.LVL28:
		SLDW		*+AR15[5], R32
		SNOP		1
.LVL29:
		SMVAGA36.M2		R7:R6, AR8
.LVL30:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[4], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[6], R7:R6
.LVL31:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		56, R6
.LVL32:
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
	.loc 1 75 0
.LVL33:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI6:
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[5]
.LCFI7:
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTW		R32, *+AR15[5]
		SNOP		1
		SMOV.M2		R16, R32
		SSTDW		R7:R6, *+AR15[6]
.LCFI8:
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R31, *+AR15[4]
		SMOV.M1		R18, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL34:
.LCFI9:
	.loc 1 77 0
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
	.loc 1 75 0
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L36, R62
.LCFI10:
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L36, R62
		SMOVIH4.L		.L36, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
.LCFI11:
	.loc 1 77 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.LVL35:
.L36:
	.loc 1 78 0
		SBR		asm_dspf_sp_fir_gen
	|	SMOV.M2		R32, R16
	|	SMOV.M1		R31, R18
	.loc 1 77 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIL		.L37, R62
.LVL36:
	.loc 1 78 0
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH		.L37, R62
.LVL37:
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH4.L		.L37, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to asm_dspf_sp_fir_gen occurs
		SNOP		2
.LVL38:
.L37:
	.loc 1 79 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L38, R62
		SMOVIH		.L38, R62
		SMOVIH4.L		.L38, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL39:
	.loc 1 81 0
.L38:
		SLDDW		*+AR15[3], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL40:
		SLDDW		*+AR15[5], R63:R62
		SLDW		*+AR15[3], R30
.LVL41:
		SLDW		*+AR15[4], R31
.LVL42:
		SLDW		*+AR15[5], R32
		SNOP		1
.LVL43:
		SMVAGA36.M2		R7:R6, AR8
.LVL44:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[4], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[6], R7:R6
.LVL45:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		56, R6
.LVL46:
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
	.loc 1 82 0
.LVL47:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI12:
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[5]
.LCFI13:
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTW		R32, *+AR15[5]
		SNOP		1
		SMOV.M2		R16, R32
		SSTDW		R7:R6, *+AR15[6]
.LCFI14:
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R31, *+AR15[4]
		SMOV.M1		R18, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL48:
.LCFI15:
	.loc 1 84 0
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
	.loc 1 82 0
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L40, R62
.LCFI16:
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L40, R62
		SMOVIH4.L		.L40, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
.LCFI17:
	.loc 1 84 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.LVL49:
.L40:
	.loc 1 85 0
		SBR		DSPF_fir_gen_cn
	|	SMOV.M2		R32, R16
	|	SMOV.M1		R31, R18
	.loc 1 84 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIL		.L41, R62
.LVL50:
	.loc 1 85 0
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH		.L41, R62
.LVL51:
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH4.L		.L41, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSPF_fir_gen_cn occurs
		SNOP		2
.LVL52:
.L41:
	.loc 1 86 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L42, R62
		SMOVIH		.L42, R62
		SMOVIH4.L		.L42, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL53:
	.loc 1 88 0
.L42:
		SLDDW		*+AR15[3], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL54:
		SLDDW		*+AR15[5], R63:R62
		SLDW		*+AR15[3], R30
.LVL55:
		SLDW		*+AR15[4], R31
.LVL56:
		SLDW		*+AR15[5], R32
		SNOP		1
.LVL57:
		SMVAGA36.M2		R7:R6, AR8
.LVL58:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[4], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[6], R7:R6
.LVL59:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		56, R6
.LVL60:
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
	.loc 1 134 0
.LVL61:
		SMOVIL		-48, R6
		SMOVIL		-1, R7
	.loc 1 137 0
		SMOVIL		0, R42
	|	SADDA.M2		R7:R6,AR15,AR15
.LCFI18:
		SLT		R42, R12, R0
	|	SADD.M1		-1,R12,R12
.LVL62:
.LCFI19:
	.loc 1 134 0
		SSHFLL		1, R12, R1
	|	SSTDW		R33:R32, *+AR15[2]
.LCFI20:
		SSHFLL		2, R12, R43
	|	SADD.M2		4,R10,R32
	|	SSTDW		R35:R34, *+AR15[3]
	.loc 1 137 0
	[!R0]	SBR		.L43
	|	SLTU		R1, R12, R2
	|	SADD.M2		R43,R32,R33
	|	SMOV.M1		R14, R34
	.loc 1 134 0
		SLTU		R32, R10, R35
		SSTDW		R31:R30, *+AR15[1]
		SSTDW		R37:R36, *+AR15[4]
.LCFI21:
		SLTU		R43, R1, R3
	|	SADD.M2		R11,R35,R8
	|	SMOV.M1		R10, R30
		SSHFLL		1, R2, R9
	|	SMOV.M2		R11, R31
		SSTDW		R63:R62, *+AR15[5]
	;; condjump to .L43 occurs
.LCFI22:
	.loc 1 134 0
		SADD.M2		R9,R3,R10
	|	SMOVIL		1317011456, R37
.LVL63:
		SLTU		R33, R32, R11
	|	SADD.M2		R10,R8,R13
	.loc 1 138 0
		SMOVIL		813694976, R36
	|	SADD.M2		R13,R11,R35
		SMOVIH		1317011456, R37
		SMOVIH		813694976, R36
.LVL64:
.L45:
		SBR		rand
		SMOVIL		.L51, R62
		SMOVIH		.L51, R62
		SMOVIH4.L		.L51, R63
	;; call to rand occurs, with return value
		SNOP		3
.LVL65:
.L51:
		SFINTS32.M2		R10,R14
	|	SLTU		R32, R30, R15
	|	SMVAGA36.M1		R31:R30, AR10
	.loc 1 137 0
		SEQ		R32, R33, R0
	|	SADD.M2		R31,R15,R31
	[R0]	SEQ		R31, R35, R0
	|	SMOV.M1		R32, R30
	.loc 1 138 0
		SFSUBS32.M2		R37, R14, R17
	|	SADD.M1		4,R32,R32
		SNOP		2
		SFMULS32.M2		R17, R36, R18
		SNOP		1
	.loc 1 137 0
	[!R0]	SBR		.L45
		SNOP		1
	.loc 1 138 0
		SFMULS32.M2		R18, R34, R19
		SNOP		3
		SSTW		R19, *AR10
	;; condjump to .L45 occurs
.L43:
	.loc 1 141 0
		SLDDW		*+AR15[5], R63:R62
	|	SMOVIL		48, R6
		SLDDW		*+AR15[1], R31:R30
	|	SMOVIL		0, R7
		SLDDW		*+AR15[2], R33:R32
		SLDDW		*+AR15[3], R35:R34
.LVL66:
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
	.loc 1 142 0
.LVL67:
	.loc 1 144 0
		SFINTD.M2		R12,R49:R48
	|	SMOVIL		1073741824, R51
	|	SMVAGA36.M1		R11:R10, AR0
	.loc 1 145 0
		SMOVIL		0, R50
	|	SADD.M2		-1,R12,R1
	.loc 1 144 0
		SMOVIH		1073741824, R51
	.loc 1 142 0
		SMOVIL		-56, R6
	.loc 1 144 0
		SFRCPD.M2		R49:R48, R43:R42
	|	SMOVIL		-1, R7
	.loc 1 142 0
		SADDA.M1		R7:R6,AR15,AR15
.LCFI23:
	.loc 1 144 0
		SFMULD.M1		R49:R48, R43:R42, R47:R46
	|	SLT		R50, R12, R0
.LCFI24:
	.loc 1 142 0
		SSHFLL		2, R12, R44
	|	SSTW		R31, *+AR15[4]
		SSTW		R30, *+AR15[3]
.LCFI25:
		SMVAAGL.M2		AR0, R31:R30
		SNOP		1
.LCFI26:
		SMVAAGH.M1		AR0, R31:R30
	|	SSTW		R36, *+AR15[9]
.LCFI27:
	.loc 1 144 0
		SFSUBD.M1	R47:R46, R51:R50, R3:R2
	|	SSTW		R34, *+AR15[7]
	.loc 1 142 0
		SADD.M2		4,R30,R34
		SNOP		1
		SSTW		R37, *+AR15[10]
		SSTW		R33, *+AR15[6]
.LCFI28:
	.loc 1 144 0
		SFMULD.M2		R43:R42, R3:R2, R9:R8
	|	SLTU		R34, R30, R37
	.loc 1 145 0
	[!R0]	SBR		.L52
	|	SADD.M1		R31,R37,R26
	.loc 1 142 0
		SSTW		R32, *+AR15[5]
		SSTW		R35, *+AR15[8]
		SSHFAR		31, R1, R3
		SSHFLL		1, R12, R43
		SSTW		R38, *+AR15[11]
.LCFI29:
		SSTDW		R63:R62, *+AR15[6]
	;; condjump to .L52 occurs
.LCFI30:
	.loc 1 144 0
		SFMULD.M2		R49:R48, R9:R8, R11:R10
	|	SLTU		R43, R12, R13
.LVL68:
	.loc 1 146 0
		SMOVIL		805306368, R38
		SMOVIH		805306368, R38
		SNOP		3
	.loc 1 144 0
		SFSUBD.M2	R11:R10, R51:R50, R15:R14
		SNOP		4
		SFMULD.M2		R9:R8, R15:R14, R17:R16
		SNOP		1
	.loc 1 142 0
		SLTU		R12, R1, R9
		SADD.M1		R3,R9,R11
		SSHFLL		1, R11, R15
		SADD.M1		R15,R13,R12
.LVL69:
	.loc 1 144 0
		SFMULD.M2		R49:R48, R17:R16, R19:R18
	|	SSHFLL		1, R12, R45
	.loc 1 142 0
		SNOP		5
	.loc 1 144 0
		SFSUBD.M2	R19:R18, R51:R50, R21:R20
		SNOP		1
	.loc 1 142 0
		SSHFLL		1, R1, R19
		SNOP		2
	.loc 1 144 0
		SFMULD.M2		R17:R16, R21:R20, R23:R22
		SNOP		1
	.loc 1 142 0
		SLTU		R44, R43, R17
		SADD.M1		R45,R17,R45
	|	SSHFLL		2, R1, R21
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,AR0,OR0
		SNOP		1
	.loc 1 144 0
		SFADDD.M1		R23:R22, R23:R22, R25:R24
	|	SADD.M2		R21,R34,R35
		SMVAAGL.M2		OR0, R33:R32
	|	SLTU		R35, R34, R44
	.loc 1 142 0
		SLTU		R19, R1, R23
		SSHFLL		1, R23, R27
	|	SMVAAGH.M2		OR0, R33:R32
		SNOP		1
	.loc 1 144 0
		SFDPSP32.M2		R25:R24, R36
		SNOP		1
.LVL70:
	.loc 1 142 0
		SLTU		R21, R19, R25
		SADD.M2		R27,R25,R28
		SADD.M2		R28,R26,R29
		SADD.M2		R29,R44,R37
.LVL71:
.L54:
	.loc 1 146 0
		SBR		rand
		SMOVIL		.L60, R62
		SMOVIH		.L60, R62
		SMOVIH4.L		.L60, R63
	;; call to rand occurs, with return value
		SNOP		3
.LVL72:
.L60:
		SFINTS32.M2		R10,R49
	|	SLTU		R34, R30, R51
	|	SMVAGA36.M1		R31:R30, AR12
	.loc 1 145 0
		SEQ		R34, R35, R0
	|	SADD.M2		R31,R51,R31
	[R0]	SEQ		R31, R37, R0
	|	SADD.M1		-4,R32,R50
	.loc 1 146 0
		SFMULS32.M2		R49, R38, R54
	|	SLTU		R50, R32, R52
	|	SADD.M1		-1,R33,R53
		SMOV.M2		R50, R32
	|	SADD.M1		R53,R52,R33
	.loc 1 142 0
		SMVAGA36.M1		R33:R32, AR10
	|	SMOV.M2		R34, R30
		SNOP		1
	.loc 1 146 0
		SFMULS32.M2		R54, R36, R55
	|	SADD.M1		4,R34,R34
	.loc 1 145 0
	[!R0]	SBR		.L54
		SNOP		2
	.loc 1 146 0
		SSTW		R55, *AR12
	|	SFSUBS32.M2		R55, R36, R56
	.loc 1 147 0
		SNOP		2
		SSTW		R56, *AR10
	;; condjump to .L54 occurs
.LVL73:
.L52:
	.loc 1 150 0
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
	.string	"\tNX = %-3d\t  NH = %-2d\t cn_cycle:%-4d\t  \317\362\301\277C cycle:%-4d\t  \273\343\261\340 cycle: %-4d\n"
.LC1:
	.string	"helloworld"
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB8:
	.loc 1 89 0
.LVL74:
		SMOVIL		-96, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI31:
		SMVAAGL.M1		AR8, R7:R6
	|	SMOVIL		1075052548, R46
.LCFI32:
.LBB5:
.LBB6:
	.loc 1 155 0
		SMOVIL		0, R47
	|	SSTDW		R63:R62, *+AR15[11]
.LCFI33:
.LBE6:
.LBE5:
	.loc 1 89 0
		SMVAAGH.M2		AR8, R7:R6
	|	SMOVIH		1075052548, R46
	|	SSTW		R36, *+AR15[19]
.LBB10:
.LBB7:
	.loc 1 155 0
		SMVAGA36.M1		R47:R46, AR10
	|	SMOVIL		1075052544, R42
		SMOVIL		1, R44
.LBE7:
.LBE10:
	.loc 1 89 0
		SSTDW		R7:R6, *+AR15[10]
		SSTW		R35, *+AR15[18]
.LBB11:
.LBB8:
	.loc 1 156 0
		SMOVIL		0, R43
		SMOVIH		1075052544, R42
.LBE8:
.LBE11:
	.loc 1 89 0
		SSTW		R34, *+AR15[17]
		SSTW		R33, *+AR15[16]
		SNOP		2
		SSTW		R32, *+AR15[15]
		SSTW		R31, *+AR15[14]
		SNOP		2
		SSTW		R30, *+AR15[13]
.LCFI34:
.LBB12:
.LBB9:
	.loc 1 155 0
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 156 0
		SNOP		2
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 157 0
		SSTW		R44, *+AR15[11]
		SNOP		2
.LVL75:
	.loc 1 158 0
		SLDW		*+AR15[11], R0
		SNOP		5
	[!R0]	SBR		.L64
		SNOP		6
	;; condjump to .L64 occurs
.L67:
	.loc 1 159 0
		SLDW		*AR10, R42
		SNOP		5
.LVL76:
		SSTW		R42, *+AR15[11]
		SNOP		2
.LVL77:
	.loc 1 158 0
		SLDW		*+AR15[11], R1
		SNOP		5
	[R1]	SBR		.L67
		SNOP		6
	;; condjump to .L67 occurs
.L64:
.LBE9:
.LBE12:
	.loc 1 93 0
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
	.loc 1 94 0
		SMOVIL		1092616192, R14
	.loc 1 93 0
		SSTDW		R43:R42, *AR10
	|	SADDA.M2		24,AR8,AR10
	|	SMOVIL.L		x+60, R10
	.loc 1 94 0
		SMOVIH		1092616192, R14
		SMOVIH.L		x+60, R10
	.loc 1 93 0
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
	.loc 1 94 0
		SBR		random_x
	|	SSTDW		R43:R42, *AR10
	|	SMVAGA36.M2		R45:R44, AR10
	|	SMOVIH4.L		x+60, R11
		SMOVIL		.L72, R62
		SMOVIH		.L72, R62
	.loc 1 93 0
		SSTDW		R43:R42, *AR10
	|	SMVAGA36.M2		R47:R46, AR10
	|	SMOVIH4.L		.L72, R63
	.loc 1 94 0
		SMOVIL		128, R12
		SMOVIL.L		.LC0, R30
	;; call to random_x occurs
		SSTW		R2, *AR10
	|	SMOVIL		32, R33
.LVL78:
.L72:
	.loc 1 95 0
		SBR		random_h
	|	SMOVIL		16, R12
		SMOVIL		.L73, R62
		SMOVIH		.L73, R62
		SMOVIH4.L		.L73, R63
		SMOVIH4.L		h, R11
		SMOVIL.L		h, R10
	;; call to random_h occurs
		SMOVIH.L		h, R10
.LVL79:
.L73:
	.loc 1 103 0
		SBR		M7002_datatrans
	|	SMOVIL		0, R13
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L74, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L74, R62
		SMOVIH4.L		.L74, R63
		SMOVIL		572, R14
		SMOVIL		1073872896, R12
	;; call to M7002_datatrans occurs, with return value
		SMOVIH		1073872896, R12
.LVL80:
.L74:
	.loc 1 104 0
		SMOVIL		1074790400, R12
		SMOVIL.L		h, R10
		SMOVIL		0, R13
		SBR		M7002_datatrans
	|	SMOVIH4.L		h, R11
		SMOVIL		.L75, R62
		SMOVIH		.L75, R62
		SMOVIH4.L		.L75, R63
		SMOVIL		64, R14
		SMOVIH		1074790400, R12
	;; call to M7002_datatrans occurs, with return value
		SMOVIH.L		h, R10
.LVL81:
.L75:
	.loc 1 106 0
		SBR		SetTimerPeriod
	|	SMOVIL		-1, R12
		SMOVIL		.L76, R62
		SMOVIH		.L76, R62
		SMOVIH4.L		.L76, R63
		SMOVIL		0, R10
		SMOVIH.L		.LC0, R30
	;; call to SetTimerPeriod occurs, with return value
		SMOVIH4.L		.LC0, R31
.LVL82:
.L76:
	.loc 1 107 0
		SBR		TimerStart
	|	SMOVIL		0, R10
		SMOVIL		.L77, R62
		SMOVIH		.L77, R62
		SMOVIH4.L		.L77, R63
	;; call to TimerStart occurs, with return value
		SNOP		3
.LVL83:
.L77:
	.loc 1 109 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L78, R62
		SMOVIH		.L78, R62
		SMOVIH4.L		.L78, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL84:
.L78:
		SBR		GetTimerCount
	|	SMOV.M2		R10, R34
	|	SMOVIL		0, R10
		SMOVIL		.L79, R62
		SMOVIH		.L79, R62
		SMOVIH4.L		.L79, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL85:
.L79:
		SSUB.M2		R10, R34, R34
.LVL86:
.L63:
	.loc 1 89 0
		SMOVIL		4, R32
.LVL87:
.L65:
.LBB13:
	.loc 1 113 0
		SMOVIL.L		r, R10
		SMOVIL		0, R12
		SBR		memset
	|	SMOVIL		512, R14
		SMOVIL		.L80, R62
		SMOVIH		.L80, R62
		SMOVIH4.L		.L80, R63
		SMOVIL		0, R15
		SMOVIH.L		r, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		r, R11
.LVL88:
.L80:
	.loc 1 114 0
		SMOVIL		0, R12
		SMOVIL.L		r1, R10
		SBR		memset
	|	SMOVIL		512, R14
		SMOVIL		.L81, R62
		SMOVIH		.L81, R62
		SMOVIH4.L		.L81, R63
		SMOVIL		0, R15
		SMOVIH.L		r1, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		r1, R11
.LVL89:
.L81:
	.loc 1 115 0
		SMOVIL		0, R15
		SMOVIL.L		r_cn, R10
		SBR		memset
	|	SMOVIL		512, R14
		SMOVIL		.L82, R62
		SMOVIH		.L82, R62
		SMOVIH4.L		.L82, R63
		SMOVIL		0, R12
		SMOVIH.L		r_cn, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		r_cn, R11
.LVL90:
.L82:
	.loc 1 117 0
		SMOVIL		0, R13
		SMOVIL.L		r, R10
		SMOVIL		1074003968, R12
		SBR		M7002_datatrans
	|	SMOVIH4.L		r, R11
		SMOVIL		.L83, R62
		SMOVIH		.L83, R62
		SMOVIH4.L		.L83, R63
		SMOVIH		1074003968, R12
		SMOVIL		512, R14
	;; call to M7002_datatrans occurs, with return value
		SMOVIH.L		r, R10
.LVL91:
.L83:
	.loc 1 118 0
		SMOVIL		0, R13
		SMOVIL.L		r1, R10
		SMOVIL		1074135040, R12
		SBR		M7002_datatrans
	|	SMOVIH4.L		r1, R11
		SMOVIL		.L84, R62
		SMOVIH		.L84, R62
		SMOVIH4.L		.L84, R63
		SMOVIH		1074135040, R12
		SMOVIL		512, R14
	;; call to M7002_datatrans occurs, with return value
		SMOVIH.L		r1, R10
.LVL92:
.L84:
	.loc 1 120 0
		SMOV.M2		R32, R16
	|	SMOVIL		1073872896, R10
	|	SMOV.M1		R33, R18
		SMOVIL		1074790400, R12
		SMOVIL		1074135040, R14
		SMOVIL		0, R11
		SMOVIH		1074790400, R12
		SBR		getTime
	|	SMOVIL		0, R13
		SMOVIL		.L85, R62
		SMOVIH		.L85, R62
		SMOVIH4.L		.L85, R63
		SMOVIH		1074135040, R14
		SMOVIL		0, R15
	;; call to getTime occurs, with return value
		SMOVIH		1073872896, R10
.LVL93:
.L85:
	.loc 1 121 0
		SMOV.M2		R32, R16
	|	SMOVIL		1074003968, R14
	|	SMOV.M1		R33, R18
		SMOVIL		1073872896, R10
		SMOVIL		1074790400, R12
		SMOVIL		0, R15
		SMOVIH		1074003968, R14
		SBR		getTime1
	|	SMOVIL		0, R11
		SMOVIL		.L86, R62
		SMOVIH		.L86, R62
		SMOVIH4.L		.L86, R63
		SMOVIH		1074790400, R12
		SMOVIL		0, R13
	;; call to getTime1 occurs, with return value
		SMOVIH		1073872896, R10
.LVL94:
.L86:
	.loc 1 124 0
		SMOVIL		0, R11
	|	SMOV.M2		R10, R35
.LVL95:
		SMOVIL.L		r1, R12
		SMOVIL		1074135040, R10
.LVL96:
		SBR		M7002_datatrans
	|	SMOVIH.L		r1, R12
		SMOVIL		.L87, R62
		SMOVIH		.L87, R62
		SMOVIH4.L		.L87, R63
		SMOVIH4.L		r1, R13
		SMOVIL		512, R14
	;; call to M7002_datatrans occurs, with return value
		SMOVIH		1074135040, R10
.LVL97:
.L87:
	.loc 1 125 0
		SMOVIL		0, R11
		SMOVIL		1074003968, R10
		SMOVIL.L		r, R12
		SBR		M7002_datatrans
	|	SMOVIH.L		r, R12
		SMOVIL		.L88, R62
		SMOVIH		.L88, R62
		SMOVIH4.L		.L88, R63
		SMOVIH4.L		r, R13
		SMOVIL		512, R14
	;; call to M7002_datatrans occurs, with return value
		SMOVIH		1074003968, R10
.LVL98:
.L88:
	.loc 1 127 0
		SMOV.M2		R32, R16
	|	SMOVIL.L		x, R10
	|	SMOV.M1		R33, R18
		SMOVIL.L		h, R12
		SMOVIL.L		r_cn, R14
		SMOVIH4.L		x, R11
		SMOVIH.L		h, R12
		SBR		getTime_cn
	|	SMOVIH4.L		h, R13
		SMOVIL		.L89, R62
		SMOVIH		.L89, R62
		SMOVIH4.L		.L89, R63
		SMOVIH.L		r_cn, R14
		SMOVIH4.L		r_cn, R15
	;; call to getTime_cn occurs, with return value
		SMOVIH.L		x, R10
.LVL99:
.L89:
	.loc 1 128 0
		SMOV.M2		R32, R16
	|	SMOV.M1		R10, R36
	|	SMOVIL.L		h, R12
.LVL100:
		SMOVIL.L		x, R10
	|	SMOV.M2		R33, R18
.LVL101:
		SMOVIL.L		r1, R14
		SMOVIH4.L		x, R11
		SMOVIH.L		h, R12
		SBR		getTime
	|	SMOVIH4.L		h, R13
		SMOVIL		.L90, R62
		SMOVIH		.L90, R62
		SMOVIH4.L		.L90, R63
		SMOVIH.L		r1, R14
		SMOVIH4.L		r1, R15
	;; call to getTime occurs, with return value
		SMOVIH.L		x, R10
.LVL102:
.L90:
	.loc 1 129 0
		SSUB.M2		R34, R36, R3
	|	SSUB.M1		R34, R10, R10
	|	SSTW		R32, *+AR15[5]
.LVL103:
		SSUB.M2		R34, R35, R8
	|	SSTDW		R31:R30, *+AR15[1]
	|	SADD.M1		4,R32,R32
.LBE13:
	.loc 1 112 0
		SNOP		2
.LBB14:
	.loc 1 129 0
		SSTW		R33, *+AR15[4]
		SBR		printf
	|	SSTW		R3, *+AR15[6]
		SMOVIL		.L91, R62
		SMOVIH		.L91, R62
		SSTW		R10, *+AR15[7]
	|	SMOVIH4.L		.L91, R63
		SSTW		R8, *+AR15[8]
	;; call to printf occurs, with return value
		SNOP		2
.LVL104:
.L91:
.LBE14:
	.loc 1 112 0
		SMOVIL		20, R47
		SEQ		R47, R32, R0
	[!R0]	SBR		.L65
		SNOP		6
	;; condjump to .L65 occurs
	.loc 1 111 0
		SADD.M2		8,R33,R33
	|	SMOVIL		136, R9
.LVL105:
		SEQ		R9, R33, R1
	[!R1]	SBR		.L63
		SNOP		6
	;; condjump to .L63 occurs
	.loc 1 132 0
		SMOVIL.L		.LC1, R42
		SMOVIH.L		.LC1, R42
		SBR		printf
	|	SMOVIH4.L		.LC1, R43
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L92, R62
		SMOVIH		.L92, R62
		SMOVIH4.L		.L92, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL106:
	.loc 1 133 0
.L92:
		SLDDW		*+AR15[11], R63:R62
		SLDDW		*+AR15[10], R7:R6
		SLDW		*+AR15[13], R30
		SLDW		*+AR15[14], R31
		SLDW		*+AR15[15], R32
		SNOP		1
.LVL107:
		SMVCGC.L		R63, BRReg
		SMVAGA36.M2		R7:R6, AR8
		SMOVIL		96, R6
		SMOVIL		0, R7
		SLDW		*+AR15[16], R33
.LVL108:
		SLDW		*+AR15[17], R34
.LVL109:
		SBR		R62
	|	SLDW		*+AR15[18], R35
.LVL110:
		SLDW		*+AR15[19], R36
	|	SADDA.M2		R7:R6,AR15,AR15
.LVL111:
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
	.loc 1 151 0
.LVL112:
	.loc 1 155 0
		SMOVIL		1075052548, R46
		SMOVIH		1075052548, R46
		SMOVIL		0, R47
		SMVAGA36.M2		R47:R46, AR10
	|	SMOVIL		1075052544, R42
		SMOVIL		1, R44
	.loc 1 156 0
		SMOVIH		1075052544, R42
	|	SSTW		R44, *AR10
		SMOVIL		0, R43
	.loc 1 151 0
		SMOVIL		-16, R6
		SMOVIL		-1, R7
	.loc 1 156 0
		SMVAGA36.M1		R43:R42, AR10
	|	SADDA.M2		R7:R6,AR15,AR15
.LCFI35:
	.loc 1 151 0
		SNOP		1
	.loc 1 156 0
		SSTW		R44, *AR10
	.loc 1 157 0
		SSTW		R44, *+AR15[3]
		SNOP		2
.LVL113:
	.loc 1 158 0
		SLDW		*+AR15[3], R0
		SNOP		5
	[!R0]	SBR		.L93
		SNOP		6
	;; condjump to .L93 occurs
.L96:
	.loc 1 159 0
		SLDW		*AR10, R42
		SNOP		5
.LVL114:
		SSTW		R42, *+AR15[3]
		SNOP		2
.LVL115:
	.loc 1 158 0
		SLDW		*+AR15[3], R1
		SNOP		5
	[R1]	SBR		.L96
		SNOP		6
	;; condjump to .L96 occurs
.L93:
	.loc 1 160 0
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
	.align	3
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.llong	.LFB5
	.llong	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0xb0
	.byte	0x9
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x8e
	.byte	0x2
	.byte	0xaf
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xae
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x5
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
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
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0xb0
	.byte	0x9
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x8e
	.byte	0x2
	.byte	0xaf
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xae
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x5
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
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
	.4byte	.LCFI12-.LFB7
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0xb0
	.byte	0x9
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x8e
	.byte	0x2
	.byte	0xaf
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xae
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x5
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
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
	.4byte	.LCFI18-.LFB9
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xb0
	.byte	0x8
	.byte	0xb1
	.byte	0x7
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xb2
	.byte	0x6
	.byte	0xb3
	.byte	0x5
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xae
	.byte	0xa
	.byte	0xaf
	.byte	0x9
	.byte	0xb4
	.byte	0x4
	.byte	0xb5
	.byte	0x3
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
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
	.4byte	.LCFI23-.LFB10
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xaf
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xae
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xb4
	.byte	0x5
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xb2
	.byte	0x7
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xb5
	.byte	0x4
	.byte	0xb1
	.byte	0x8
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0xb0
	.byte	0x9
	.byte	0xb3
	.byte	0x6
	.byte	0xb6
	.byte	0x3
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
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
	.4byte	.LCFI31-.LFB8
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0xb4
	.byte	0x5
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
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
	.4byte	.LCFI35-.LFB11
	.byte	0xe
	.byte	0x10
	.align	3
.LEFDE16:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb4f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../main.c"
	.string	"/cygdrive/e/project/asm_test/Debug"
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
	.byte	0x97
	.byte	0x1
	.4byte	0x15e
	.byte	0x4
	.string	"cache"
	.byte	0x1
	.byte	0x98
	.4byte	0x15e
	.byte	0x4
	.string	"cache1"
	.byte	0x1
	.byte	0x99
	.4byte	0x15e
	.byte	0x4
	.string	"cache_ok"
	.byte	0x1
	.byte	0x9a
	.4byte	0x164
	.byte	0
	.byte	0x5
	.byte	0x8
	.4byte	0xe9
	.byte	0x6
	.4byte	0xe9
	.byte	0x7
	.byte	0x1
	.string	"DSPF_sp_fir_gen_vc1"
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x239
	.byte	0x8
	.string	"x"
	.byte	0x1
	.byte	0x12
	.4byte	0x246
	.4byte	.LLST0
	.byte	0x8
	.string	"h"
	.byte	0x1
	.byte	0x13
	.4byte	0x24c
	.4byte	.LLST1
	.byte	0x8
	.string	"r"
	.byte	0x1
	.byte	0x14
	.4byte	0x246
	.4byte	.LLST2
	.byte	0x8
	.string	"nh"
	.byte	0x1
	.byte	0x15
	.4byte	0xe9
	.4byte	.LLST3
	.byte	0x8
	.string	"nr"
	.byte	0x1
	.byte	0x16
	.4byte	0xe9
	.4byte	.LLST4
	.byte	0x9
	.string	"i"
	.byte	0x1
	.byte	0x18
	.4byte	0xe9
	.4byte	.LLST5
	.byte	0x4
	.string	"j"
	.byte	0x1
	.byte	0x18
	.4byte	0xe9
	.byte	0x4
	.string	"k"
	.byte	0x1
	.byte	0x18
	.4byte	0xe9
	.byte	0x9
	.string	"tempr"
	.byte	0x1
	.byte	0x1a
	.4byte	0x262
	.4byte	.LLST6
	.byte	0x9
	.string	"temp1"
	.byte	0x1
	.byte	0x1b
	.4byte	0x239
	.4byte	.LLST7
	.byte	0x4
	.string	"temp2"
	.byte	0x1
	.byte	0x1b
	.4byte	0x239
	.byte	0x4
	.string	"temp3"
	.byte	0x1
	.byte	0x1c
	.4byte	0x246
	.byte	0
	.byte	0xa
	.byte	0x1
	.4byte	0x5e
	.4byte	0x246
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0x5
	.byte	0x8
	.4byte	0x239
	.byte	0x5
	.byte	0x8
	.4byte	0x5e
	.byte	0xc
	.4byte	0x5e
	.4byte	0x262
	.byte	0xd
	.4byte	0x10d
	.byte	0x3
	.byte	0
	.byte	0x5
	.byte	0x8
	.4byte	0x252
	.byte	0x7
	.byte	0x1
	.string	"DSPF_fir_gen_cn"
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.llong	.LFB4
	.llong	.LFE4
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x305
	.byte	0x8
	.string	"x"
	.byte	0x1
	.byte	0x28
	.4byte	0x305
	.4byte	.LLST8
	.byte	0xe
	.string	"h"
	.byte	0x1
	.byte	0x29
	.4byte	0x305
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.byte	0x8
	.string	"y"
	.byte	0x1
	.byte	0x2a
	.4byte	0x24c
	.4byte	.LLST9
	.byte	0x8
	.string	"nh"
	.byte	0x1
	.byte	0x2b
	.4byte	0xe9
	.4byte	.LLST10
	.byte	0x8
	.string	"ny"
	.byte	0x1
	.byte	0x2c
	.4byte	0xe9
	.4byte	.LLST11
	.byte	0x9
	.string	"i"
	.byte	0x1
	.byte	0x2e
	.4byte	0xe9
	.4byte	.LLST12
	.byte	0x9
	.string	"j"
	.byte	0x1
	.byte	0x2e
	.4byte	0xe9
	.4byte	.LLST13
	.byte	0x9
	.string	"sum"
	.byte	0x1
	.byte	0x2f
	.4byte	0x5e
	.4byte	.LLST14
	.byte	0
	.byte	0x5
	.byte	0x8
	.4byte	0x30b
	.byte	0xf
	.4byte	0x5e
	.byte	0x10
	.byte	0x1
	.string	"getTime"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0xb8
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST15
	.byte	0x1
	.4byte	0x416
	.byte	0x8
	.string	"x1"
	.byte	0x1
	.byte	0x44
	.4byte	0x246
	.4byte	.LLST16
	.byte	0x8
	.string	"h1"
	.byte	0x1
	.byte	0x44
	.4byte	0x24c
	.4byte	.LLST17
	.byte	0x8
	.string	"r1"
	.byte	0x1
	.byte	0x44
	.4byte	0x246
	.4byte	.LLST18
	.byte	0x8
	.string	"nh"
	.byte	0x1
	.byte	0x44
	.4byte	0xe9
	.4byte	.LLST19
	.byte	0x8
	.string	"nr"
	.byte	0x1
	.byte	0x44
	.4byte	0xe9
	.4byte	.LLST20
	.byte	0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x45
	.4byte	0xb8
	.4byte	.LLST21
	.byte	0x9
	.string	"time2"
	.byte	0x1
	.byte	0x45
	.4byte	0xb8
	.4byte	.LLST22
	.byte	0x12
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x46
	.4byte	0xe9
	.byte	0x1
	.4byte	0x3b3
	.byte	0x13
	.byte	0
	.byte	0x14
	.llong	.LVL21
	.4byte	0x3c6
	.byte	0x15
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x14
	.llong	.LVL24
	.4byte	0x406
	.byte	0x15
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x2f
	.byte	0
	.byte	0x15
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x16
	.llong	.LVL25
	.byte	0x15
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x1
	.string	"getTime1"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.4byte	0xb8
	.llong	.LFB6
	.llong	.LFE6
	.4byte	.LLST23
	.byte	0x1
	.4byte	0x51d
	.byte	0x8
	.string	"x1"
	.byte	0x1
	.byte	0x4b
	.4byte	0x246
	.4byte	.LLST24
	.byte	0x8
	.string	"h1"
	.byte	0x1
	.byte	0x4b
	.4byte	0x24c
	.4byte	.LLST25
	.byte	0x8
	.string	"r1"
	.byte	0x1
	.byte	0x4b
	.4byte	0x246
	.4byte	.LLST26
	.byte	0x8
	.string	"nh"
	.byte	0x1
	.byte	0x4b
	.4byte	0xe9
	.4byte	.LLST27
	.byte	0x8
	.string	"nr"
	.byte	0x1
	.byte	0x4b
	.4byte	0xe9
	.4byte	.LLST28
	.byte	0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x4c
	.4byte	0xb8
	.4byte	.LLST29
	.byte	0x9
	.string	"time2"
	.byte	0x1
	.byte	0x4c
	.4byte	0xb8
	.4byte	.LLST30
	.byte	0x12
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x46
	.4byte	0xe9
	.byte	0x1
	.4byte	0x4ba
	.byte	0x13
	.byte	0
	.byte	0x14
	.llong	.LVL35
	.4byte	0x4cd
	.byte	0x15
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x14
	.llong	.LVL38
	.4byte	0x50d
	.byte	0x15
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x2f
	.byte	0
	.byte	0x15
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x16
	.llong	.LVL39
	.byte	0x15
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x1
	.string	"getTime_cn"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.4byte	0xb8
	.llong	.LFB7
	.llong	.LFE7
	.4byte	.LLST31
	.byte	0x1
	.4byte	0x623
	.byte	0x8
	.string	"x"
	.byte	0x1
	.byte	0x52
	.4byte	0x24c
	.4byte	.LLST32
	.byte	0x8
	.string	"h"
	.byte	0x1
	.byte	0x52
	.4byte	0x24c
	.4byte	.LLST33
	.byte	0x8
	.string	"r"
	.byte	0x1
	.byte	0x52
	.4byte	0x24c
	.4byte	.LLST34
	.byte	0x8
	.string	"nh"
	.byte	0x1
	.byte	0x52
	.4byte	0xe9
	.4byte	.LLST35
	.byte	0x8
	.string	"nr"
	.byte	0x1
	.byte	0x52
	.4byte	0xe9
	.4byte	.LLST36
	.byte	0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x53
	.4byte	0xb8
	.4byte	.LLST37
	.byte	0x9
	.string	"time2"
	.byte	0x1
	.byte	0x53
	.4byte	0xb8
	.4byte	.LLST38
	.byte	0x12
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x46
	.4byte	0xe9
	.byte	0x1
	.4byte	0x5c0
	.byte	0x13
	.byte	0
	.byte	0x14
	.llong	.LVL49
	.4byte	0x5d3
	.byte	0x15
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x14
	.llong	.LVL52
	.4byte	0x613
	.byte	0x15
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x2f
	.byte	0
	.byte	0x15
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x16
	.llong	.LVL53
	.byte	0x15
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
	.byte	0x86
	.byte	0x1
	.llong	.LFB9
	.llong	.LFE9
	.4byte	.LLST39
	.byte	0x1
	.4byte	0x69f
	.byte	0x8
	.string	"x1"
	.byte	0x1
	.byte	0x86
	.4byte	0x24c
	.4byte	.LLST40
	.byte	0x8
	.string	"n"
	.byte	0x1
	.byte	0x86
	.4byte	0xe9
	.4byte	.LLST41
	.byte	0x8
	.string	"factor"
	.byte	0x1
	.byte	0x86
	.4byte	0x5e
	.4byte	.LLST42
	.byte	0x18
	.string	"rand_midpoint"
	.byte	0x1
	.byte	0x87
	.4byte	0x5e
	.byte	0x4
	.4byte	0x4e800000
	.byte	0x9
	.string	"i"
	.byte	0x1
	.byte	0x88
	.4byte	0xe9
	.4byte	.LLST43
	.byte	0
	.byte	0x17
	.byte	0x1
	.string	"random_h"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.llong	.LFB10
	.llong	.LFE10
	.4byte	.LLST44
	.byte	0x1
	.4byte	0x718
	.byte	0x8
	.string	"h"
	.byte	0x1
	.byte	0x8e
	.4byte	0x24c
	.4byte	.LLST45
	.byte	0x8
	.string	"n"
	.byte	0x1
	.byte	0x8e
	.4byte	0xe9
	.4byte	.LLST46
	.byte	0x9
	.string	"i"
	.byte	0x1
	.byte	0x8f
	.4byte	0xe9
	.4byte	.LLST47
	.byte	0x18
	.string	"frand_max"
	.byte	0x1
	.byte	0x90
	.4byte	0x5e
	.byte	0x4
	.4byte	0x4f000000
	.byte	0x9
	.string	"pair_sum"
	.byte	0x1
	.byte	0x90
	.4byte	0x5e
	.4byte	.LLST48
	.byte	0
	.byte	0x19
	.byte	0x1
	.string	"main"
	.byte	0x1
	.byte	0x59
	.llong	.LFB8
	.llong	.LFE8
	.4byte	.LLST49
	.byte	0x1
	.4byte	0xa80
	.byte	0x9
	.string	"time"
	.byte	0x1
	.byte	0x5a
	.4byte	0xb8
	.4byte	.LLST50
	.byte	0x1a
	.4byte	.LASF0
	.byte	0x1
	.byte	0x5a
	.4byte	0xb8
	.byte	0x9
	.string	"time_cn"
	.byte	0x1
	.byte	0x5a
	.4byte	0xb8
	.4byte	.LLST51
	.byte	0x9
	.string	"nr"
	.byte	0x1
	.byte	0x60
	.4byte	0xe9
	.4byte	.LLST52
	.byte	0x9
	.string	"nh"
	.byte	0x1
	.byte	0x60
	.4byte	0xe9
	.4byte	.LLST53
	.byte	0x1b
	.string	"hAddr"
	.byte	0x1
	.byte	0x61
	.4byte	0x24c
	.4byte	0x40100000
	.byte	0x1b
	.string	"xAddr"
	.byte	0x1
	.byte	0x62
	.4byte	0x246
	.4byte	0x40020000
	.byte	0x1b
	.string	"rAddr"
	.byte	0x1
	.byte	0x63
	.4byte	0x246
	.4byte	0x40040000
	.byte	0x1b
	.string	"rAddr1"
	.byte	0x1
	.byte	0x64
	.4byte	0x246
	.4byte	0x40060000
	.byte	0x1c
	.byte	0x1
	.string	"M7002_datatrans"
	.byte	0x1
	.byte	0x67
	.4byte	0xe9
	.byte	0x1
	.4byte	0x7e8
	.byte	0x13
	.byte	0
	.byte	0x1c
	.byte	0x1
	.string	"SetTimerPeriod"
	.byte	0x1
	.byte	0x6a
	.4byte	0xe9
	.byte	0x1
	.4byte	0x806
	.byte	0x13
	.byte	0
	.byte	0x1c
	.byte	0x1
	.string	"TimerStart"
	.byte	0x1
	.byte	0x6b
	.4byte	0xe9
	.byte	0x1
	.4byte	0x820
	.byte	0x13
	.byte	0
	.byte	0x9
	.string	"c_time"
	.byte	0x1
	.byte	0x6d
	.4byte	0xb8
	.4byte	.LLST54
	.byte	0x12
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x46
	.4byte	0xe9
	.byte	0x1
	.4byte	0x845
	.byte	0x13
	.byte	0
	.byte	0x1d
	.4byte	0x121
	.llong	.LBB5
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x5b
	.4byte	0x87e
	.byte	0x1e
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1f
	.4byte	0x132
	.4byte	0x40140004
	.byte	0x1f
	.4byte	0x13f
	.4byte	0x40140000
	.byte	0x20
	.4byte	0x14d
	.4byte	.LLST55
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.Ldebug_ranges0+0xa0
	.4byte	0x9d6
	.byte	0x11
	.4byte	.LASF0
	.byte	0x1
	.byte	0x80
	.4byte	0xb8
	.4byte	.LLST56
	.byte	0x14
	.llong	.LVL88
	.4byte	0x8a9
	.byte	0x15
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x14
	.llong	.LVL89
	.4byte	0x8bc
	.byte	0x15
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x14
	.llong	.LVL90
	.4byte	0x8cf
	.byte	0x15
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x14
	.llong	.LVL91
	.4byte	0x8e4
	.byte	0x15
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.byte	0x14
	.llong	.LVL92
	.4byte	0x8f9
	.byte	0x15
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.byte	0x14
	.llong	.LVL93
	.4byte	0x917
	.byte	0x15
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0x15
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x14
	.llong	.LVL94
	.4byte	0x935
	.byte	0x15
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0x15
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x14
	.llong	.LVL97
	.4byte	0x94a
	.byte	0x15
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.byte	0x14
	.llong	.LVL98
	.4byte	0x95f
	.byte	0x15
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.byte	0x14
	.llong	.LVL99
	.4byte	0x97d
	.byte	0x15
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0x15
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x14
	.llong	.LVL102
	.4byte	0x99b
	.byte	0x15
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0x15
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x16
	.llong	.LVL104
	.byte	0x15
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
	.byte	0x15
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
	.byte	0x15
	.byte	0x2
	.byte	0x7f
	.byte	0x14
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0x7c
	.byte	0x15
	.byte	0x2
	.byte	0x7f
	.byte	0x10
	.byte	0x3
	.byte	0x92
	.byte	0x31
	.byte	0
	.byte	0x15
	.byte	0x2
	.byte	0x7f
	.byte	0x8
	.byte	0x3
	.byte	0x92
	.byte	0x2e
	.byte	0
	.byte	0
	.byte	0
	.byte	0x14
	.llong	.LVL78
	.4byte	0x9ea
	.byte	0x15
	.byte	0x1
	.byte	0x6c
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x14
	.llong	.LVL79
	.4byte	0x9fd
	.byte	0x15
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x14
	.llong	.LVL80
	.4byte	0xa1d
	.byte	0x15
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xa
	.2byte	0x23c
	.byte	0x15
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
	.byte	0x14
	.llong	.LVL81
	.4byte	0xa31
	.byte	0x15
	.byte	0x1
	.byte	0x6e
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x14
	.llong	.LVL82
	.4byte	0xa4a
	.byte	0x15
	.byte	0x1
	.byte	0x6c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0x15
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x14
	.llong	.LVL83
	.4byte	0xa5d
	.byte	0x15
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x14
	.llong	.LVL84
	.4byte	0xa70
	.byte	0x15
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x16
	.llong	.LVL85
	.byte	0x15
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	0x121
	.llong	.LFB11
	.llong	.LFE11
	.4byte	.LLST57
	.byte	0x1
	.4byte	0xaba
	.byte	0x1f
	.4byte	0x132
	.4byte	0x40140004
	.byte	0x1f
	.4byte	0x13f
	.4byte	0x40140000
	.byte	0x20
	.4byte	0x14d
	.4byte	.LLST58
	.byte	0
	.byte	0xc
	.4byte	0x5e
	.4byte	0xaca
	.byte	0xd
	.4byte	0x10d
	.byte	0x8e
	.byte	0
	.byte	0x23
	.string	"x"
	.byte	0x1
	.byte	0xb
	.4byte	0xaba
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	x
	.byte	0xc
	.4byte	0x5e
	.4byte	0xaee
	.byte	0xd
	.4byte	0x10d
	.byte	0xf
	.byte	0
	.byte	0x23
	.string	"h"
	.byte	0x1
	.byte	0xc
	.4byte	0xade
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	h
	.byte	0xc
	.4byte	0x5e
	.4byte	0xb12
	.byte	0xd
	.4byte	0x10d
	.byte	0x7f
	.byte	0
	.byte	0x23
	.string	"r"
	.byte	0x1
	.byte	0xd
	.4byte	0xb02
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	r
	.byte	0x23
	.string	"r1"
	.byte	0x1
	.byte	0xe
	.4byte	0xb02
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	r1
	.byte	0x23
	.string	"r_cn"
	.byte	0x1
	.byte	0xf
	.4byte	0xb02
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0xa
	.byte	0x91,0x42
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
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
	.byte	0x1d
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
	.byte	0x1e
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
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
	.llong	.LVL6
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL6
	.llong	.LFE3
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
	.llong	.LFE3
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
	.llong	.LFE3
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
	.llong	.LVL6
	.2byte	0x3
	.byte	0x82
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
.LLST4:
	.llong	.LVL0
	.llong	.LVL5
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL5
	.llong	.LVL6
	.2byte	0x4
	.byte	0x92
	.byte	0x3b
	.byte	0x1
	.byte	0x9f
	.llong	.LVL6
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
	.llong	.LVL1
	.llong	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
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
	.llong	.LFE3
	.2byte	0x1
	.byte	0x56
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL7
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.byte	0x65
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL9
	.llong	.LVL10
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL10
	.llong	.LFE4
	.2byte	0x2
	.byte	0x90
	.byte	0x50
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL9
	.llong	.LVL13
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL13
	.llong	.LFE4
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL9
	.llong	.LVL11
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL11
	.llong	.LVL13
	.2byte	0x4
	.byte	0x92
	.byte	0x3b
	.byte	0x1
	.byte	0x9f
	.llong	.LVL13
	.llong	.LFE4
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL9
	.llong	.LVL12
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL12
	.llong	.LVL13
	.2byte	0x4
	.byte	0x92
	.byte	0x3c
	.byte	0x1
	.byte	0x9f
	.llong	.LVL13
	.llong	.LFE4
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL13
	.llong	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL17
	.llong	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL9
	.llong	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL13
	.llong	.LVL14
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	.LVL15
	.llong	.LVL16
	.2byte	0x2
	.byte	0x90
	.byte	0x29
	.llong	.LVL17
	.llong	.LVL18
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	0
	.llong	0
.LLST15:
	.llong	.LFB5
	.llong	.LCFI0
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI0
	.llong	.LFE5
	.2byte	0x2
	.byte	0x7f
	.byte	0x38
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL19
	.llong	.LVL20
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL20
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL31
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL19
	.llong	.LVL21-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL21-1
	.llong	.LVL32
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL32
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL19
	.llong	.LVL21-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL21-1
	.llong	.LVL30
	.2byte	0x1
	.byte	0x58
	.llong	.LVL30
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL19
	.llong	.LVL21-1
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL21-1
	.llong	.LVL29
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	.LVL29
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL19
	.llong	.LVL21-1
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL21-1
	.llong	.LVL28
	.2byte	0x2
	.byte	0x90
	.byte	0x2f
	.llong	.LVL28
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL22
	.llong	.LVL23
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL23
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.byte	0x2e
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL25
	.llong	.LVL26
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST23:
	.llong	.LFB6
	.llong	.LCFI6
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI6
	.llong	.LFE6
	.2byte	0x2
	.byte	0x7f
	.byte	0x38
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL33
	.llong	.LVL34
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL34
	.llong	.LVL45
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL45
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL33
	.llong	.LVL35-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL35-1
	.llong	.LVL46
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL46
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST26:
	.llong	.LVL33
	.llong	.LVL35-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL35-1
	.llong	.LVL44
	.2byte	0x1
	.byte	0x58
	.llong	.LVL44
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL33
	.llong	.LVL35-1
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL35-1
	.llong	.LVL43
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	.LVL43
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL33
	.llong	.LVL35-1
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL35-1
	.llong	.LVL42
	.2byte	0x2
	.byte	0x90
	.byte	0x2f
	.llong	.LVL42
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL36
	.llong	.LVL37
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL37
	.llong	.LVL41
	.2byte	0x2
	.byte	0x90
	.byte	0x2e
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL39
	.llong	.LVL40
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST31:
	.llong	.LFB7
	.llong	.LCFI12
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI12
	.llong	.LFE7
	.2byte	0x2
	.byte	0x7f
	.byte	0x38
	.llong	0
	.llong	0
.LLST32:
	.llong	.LVL47
	.llong	.LVL48
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL48
	.llong	.LVL59
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL59
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST33:
	.llong	.LVL47
	.llong	.LVL49-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL49-1
	.llong	.LVL60
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL60
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST34:
	.llong	.LVL47
	.llong	.LVL49-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL49-1
	.llong	.LVL58
	.2byte	0x1
	.byte	0x58
	.llong	.LVL58
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST35:
	.llong	.LVL47
	.llong	.LVL49-1
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL49-1
	.llong	.LVL57
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	.LVL57
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST36:
	.llong	.LVL47
	.llong	.LVL49-1
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL49-1
	.llong	.LVL56
	.2byte	0x2
	.byte	0x90
	.byte	0x2f
	.llong	.LVL56
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST37:
	.llong	.LVL50
	.llong	.LVL51
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL51
	.llong	.LVL55
	.2byte	0x2
	.byte	0x90
	.byte	0x2e
	.llong	0
	.llong	0
.LLST38:
	.llong	.LVL53
	.llong	.LVL54
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST39:
	.llong	.LFB9
	.llong	.LCFI18
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI18
	.llong	.LFE9
	.2byte	0x2
	.byte	0x7f
	.byte	0x30
	.llong	0
	.llong	0
.LLST40:
	.llong	.LVL61
	.llong	.LVL63
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL63
	.llong	.LFE9
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST41:
	.llong	.LVL61
	.llong	.LVL62
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL62
	.llong	.LVL64
	.2byte	0x3
	.byte	0x8c
	.byte	0x1
	.byte	0x9f
	.llong	.LVL64
	.llong	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x6c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST42:
	.llong	.LVL61
	.llong	.LVL64
	.2byte	0x1
	.byte	0x6e
	.llong	.LVL64
	.llong	.LVL66
	.2byte	0x2
	.byte	0x90
	.byte	0x32
	.llong	.LVL66
	.llong	.LFE9
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0x1e
	.byte	0x5e
	.byte	0x9f
	.llong	0
	.llong	0
.LLST43:
	.llong	.LVL61
	.llong	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST44:
	.llong	.LFB10
	.llong	.LCFI23
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI23
	.llong	.LFE10
	.2byte	0x2
	.byte	0x7f
	.byte	0x38
	.llong	0
	.llong	0
.LLST45:
	.llong	.LVL67
	.llong	.LVL68
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL68
	.llong	.LVL71
	.2byte	0x1
	.byte	0x50
	.llong	.LVL71
	.llong	.LFE10
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST46:
	.llong	.LVL67
	.llong	.LVL69
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL69
	.llong	.LVL71
	.2byte	0x3
	.byte	0x81
	.byte	0x1
	.byte	0x9f
	.llong	.LVL71
	.llong	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x6c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST47:
	.llong	.LVL70
	.llong	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST48:
	.llong	.LVL70
	.llong	.LVL73
	.2byte	0x2
	.byte	0x90
	.byte	0x34
	.llong	0
	.llong	0
.LLST49:
	.llong	.LFB8
	.llong	.LCFI31
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI31
	.llong	.LFE8
	.2byte	0x3
	.byte	0x7f
	.byte	0xe0,0
	.llong	0
	.llong	0
.LLST50:
	.llong	.LVL95
	.llong	.LVL96
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL96
	.llong	.LVL110
	.2byte	0x2
	.byte	0x90
	.byte	0x33
	.llong	0
	.llong	0
.LLST51:
	.llong	.LVL100
	.llong	.LVL101
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL101
	.llong	.LVL111
	.2byte	0x2
	.byte	0x90
	.byte	0x34
	.llong	0
	.llong	0
.LLST52:
	.llong	.LVL105
	.llong	.LVL108
	.2byte	0x2
	.byte	0x90
	.byte	0x31
	.llong	0
	.llong	0
.LLST53:
	.llong	.LVL86
	.llong	.LVL87
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.llong	.LVL104
	.llong	.LVL107
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	0
	.llong	0
.LLST54:
	.llong	.LVL86
	.llong	.LVL109
	.2byte	0x2
	.byte	0x90
	.byte	0x32
	.llong	0
	.llong	0
.LLST55:
	.llong	.LVL75
	.llong	.LVL76
	.2byte	0x2
	.byte	0x91
	.byte	0x4c
	.llong	.LVL77
	.llong	.LFE8
	.2byte	0x2
	.byte	0x90
	.byte	0x3a
	.llong	0
	.llong	0
.LLST56:
	.llong	.LVL102
	.llong	.LVL103
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST57:
	.llong	.LFB11
	.llong	.LCFI35
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI35
	.llong	.LFE11
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.llong	0
	.llong	0
.LLST58:
	.llong	.LVL113
	.llong	.LVL114
	.2byte	0x2
	.byte	0x91
	.byte	0x7c
	.llong	.LVL115
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
