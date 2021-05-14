	.file	"main.c"
.text;
.Ltext0:
	.section	.text.mat_transpose,"ax",@progbits
	.align	2
	.global	mat_transpose
	.type	mat_transpose, @function
mat_transpose:
.LFB3:
	.file 1 "../main.c"
	.loc 1 30 0
.LVL0:
		SMOVIL		-64, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.loc 1 35 0
		SMOVIL		0, R42
	.loc 1 30 0
		SSTW		R35, *+AR15[8]
.LCFI1:
	.loc 1 35 0
		SLT		R42, R14, R0
	|	SADD.M2		-1,R14,R35
	|	SSTW		R36, *+AR15[9]
	.loc 1 30 0
		SSHFLL		1, R35, R43
	.loc 1 32 0
		SSHFLL		2, R35, R36
.LVL1:
	.loc 1 30 0
		SSTW		R34, *+AR15[7]
.LCFI2:
		SSHFLL		1, R14, R1
	|	SADD.M2		4,R10,R34
	|	SSTW		R40, *+AR15[13]
		SSHFAR		31, R14, R44
		SLTU		R43, R35, R45
		SSTW		R39, *+AR15[12]
		SSTW		R30, *+AR15[3]
.LCFI3:
		SLTU		R1, R14, R40
	|	SMOV.M2		R10, R30
		SLTU		R34, R10, R39
.LCFI4:
		SSHFLL		1, R44, R2
	|	SSTW		R38, *+AR15[11]
.LCFI5:
		SLTU		R36, R43, R8
	|	SSTW		R37, *+AR15[10]
		SSHFLL		1, R45, R10
	|	SADD.M2		R11,R39,R9
	|	SADD.M1		R2,R40,R3
.LVL2:
	.loc 1 35 0
	[!R0]	SBR		.L1
	|	SSHFLL		2, R14, R38
	|	SADD.M2		R36,R34,R37
	.loc 1 30 0
		SSTW		R31, *+AR15[4]
		SSTW		R33, *+AR15[6]
.LCFI6:
		SMOV.M2		R11, R31
	|	SADD.M1		R10,R8,R11
	|	SSHFLL		1, R3, R14
.LVL3:
		SMOV.M2		R13, R33
	|	SLTU		R37, R34, R15
	|	SADD.M1		R11,R9,R13
		SSTW		R32, *+AR15[5]
.LCFI7:
		SSTDW		R63:R62, *+AR15[7]
	;; condjump to .L1 occurs
.LCFI8:
		SMOV.M2		R12, R32
	|	SLTU		R38, R1, R12
	|	SADD.M1		R13,R15,R39
.LVL4:
	.loc 1 30 0
		SADD.M2		R14,R12,R40
.LVL5:
.L3:
.LBB2:
	.loc 1 36 0
		SBR		M7002_datatrans_index
	|	SMOVIL		1, R16
	|	SMOV.M2		R36, R18
	|	SMOV.M1		R35, R14
		SMOV.M2		R30, R10
	|	SMOV.M1		R31, R11
	|	SMOVIL		.L9, R62
	;no-op trunc di R11:R10 to pdi R11:R10
		SMOV.M2		R32, R12
	|	SMOV.M1		R33, R13
	|	SMOVIH		.L9, R62
	;no-op trunc di R13:R12 to pdi R13:R12
		SMOVIH4.L		.L9, R63
	;; call to M7002_datatrans_index occurs, with return value
		SNOP		3
.LVL6:
.L9:
		SLTU		R34, R30, R16
	|	SADD.M2		R32,R38,R18
	|	SADD.M1		R33,R40,R19
		SADD.M2		R31,R16,R31
	|	SEQ		R34, R37, R0
	|	SMOV.M1		R34, R30
.LBE2:
	.loc 1 35 0
	[R0]	SEQ		R31, R39, R0
	|	SADD.M2		4,R34,R34
	[!R0]	SBR		.L3
	|	SLTU		R18, R32, R20
	|	SMOV.M2		R18, R32
		SADD.M2		R19,R20,R33
		SNOP		5
	;; condjump to .L3 occurs
.L1:
	.loc 1 38 0
		SLDDW		*+AR15[7], R63:R62
	|	SMOVIL		64, R6
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
.LVL7:
		SLDW		*+AR15[9], R36
.LVL8:
		SLDW		*+AR15[10], R37
		SLDW		*+AR15[11], R38
		SNOP		5
		SBR		R62
	|	SLDW		*+AR15[12], R39
		SLDW		*+AR15[13], R40
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		5
	;; return occurs
.LFE3:
	.size	mat_transpose, .-mat_transpose
	.section	.const,"a",@progbits
.LC0:
	.string	"A[%d][%d] error is %f,over tolerance %f\n"
	.section	.text.check,"ax",@progbits
	.align	2
	.global	check
	.type	check, @function
check:
.LFB4:
	.loc 1 40 0
.LVL9:
	.loc 1 43 0
		SMOVIL		0, R42
		SLT		R42, R14, R0
	[!R0]	SBR		.L18
	|	SMOVIL		-48, R6
	.loc 1 40 0
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI9:
		SSHFLL		1, R14, R1
		SSTDW		R63:R62, *+AR15[5]
.LCFI10:
	.loc 1 40 0
		SSHFAR		31, R14, R43
		SLTU		R1, R14, R44
	;; condjump to .L18 occurs
		SSHFLL		1, R43, R2
		SADD.M2		R2,R44,R3
	|	SSHFLL		2, R14, R54
		SLTU		R54, R1, R8
		SSHFLL		1, R3, R9
		SADD.M2		R9,R8,R55
	|	SMOVIL		0, R53
.LVL10:
.L12:
.LBB3:
		SMVAGA36.M1		R11:R10, AR12
	|	SMVAGA36.M2		R13:R12, AR10
	|	SMOVIL		0, R48
	.loc 1 46 0
		SNOP		1
	.loc 1 45 0
		SLDW		*AR12, R46
	|	SMOV.M2		R12, R44
	|	SMOV.M1		R10, R42
		SLDW		*AR10, R15
	|	SMOV.M2		R11, R43
	.loc 1 46 0
		SNOP		5
	.loc 1 45 0
		SFSUBS32.M2		R15, R46, R17
		SNOP		2
		SFSPDP32T.M2		R17, R19:R18
		SNOP		1
		SFABSD.M2		R19:R18, R47:R46
		SNOP		1
		SFDPSP32.M2		R47:R46, R19
		SNOP		2
.LVL11:
	.loc 1 46 0
		SFCMPLS32.M2		R16, R19, R0
	[R0]	SBR		.L19
		SNOP		6
	;; condjump to .L19 occurs
		SMOV.M2		R13, R45
.LVL12:
.L13:
.LBE3:
	.loc 1 44 0
		SADD.M2		1,R48,R48
	|	SADD.M1		4,R42,R47
.LVL13:
		SEQ		R14, R48, R1
	|	SADD.M2		4,R44,R20
	[R1]	SBR		.L21
	|	SLTU		R47, R42, R52
	|	SMOV.M2		R47, R42
		SLTU		R20, R44, R50
	|	SADD.M2		R43,R52,R43
	|	SMOV.M1		R20, R44
		SADD.M1		R45,R50,R45
	|	SMVAGA36.M2		R43:R42, AR12
.LBB4:
	.loc 1 40 0
		SMVAGA36.M1		R45:R44, AR10
		SNOP		3
.LBE4:
	.loc 1 44 0
	;; condjump to .L21 occurs
.LBB5:
	.loc 1 45 0
		SLDW		*AR12, R24
		SLDW		*AR10, R25
		SNOP		5
		SFSUBS32.M2		R25, R24, R26
		SNOP		2
		SFSPDP32T.M2		R26, R29:R28
		SNOP		1
		SFABSD.M2		R29:R28, R47:R46
		SNOP		1
		SFDPSP32.M2		R47:R46, R19
		SNOP		2
.LVL14:
	.loc 1 46 0
		SFCMPGS32.M2		R19, R16, R0
	[!R0]	SBR		.L13
		SNOP		6
	;; condjump to .L13 occurs
	.loc 1 47 0
		SFSPDP32T.M1		R19, R11:R10
	|	SFSPDP32T.M2		R16, R13:R12
	|	SMOVIL.L		.LC0, R44
	|	SSTW		R53, *+AR15[4]
		SMOVIH.L		.LC0, R44
	|	SSTW		R48, *+AR15[5]
		SMOVIH4.L		.LC0, R45
		SNOP		1
		SBR		printf
	|	SSTDW		R45:R44, *+AR15[1]
		SSTDW		R11:R10, *+AR15[3]
	|	SMOVIL		.L23, R62
		SMOVIH		.L23, R62
		SMOVIH4.L		.L23, R63
		SSTDW		R13:R12, *+AR15[4]
	;; call to printf occurs, with return value
		SNOP		2
.LVL15:
.L23:
	.loc 1 48 0
		SMOVIL		-1, R10
.L11:
.LBE5:
	.loc 1 53 0
		SLDDW		*+AR15[5], R63:R62
	|	SMOVIL		48, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		3
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.LVL16:
.L21:
	.loc 1 43 0
		SADD.M2		1,R53,R53
	|	SADD.M1		R10,R54,R21
.LVL17:
		SEQ		R48, R53, R2
	|	SADD.M2		R12,R54,R22
	|	SADD.M1		R11,R55,R11
	[!R2]	SBR		.L12
	|	SLTU		R22, R12, R45
	|	SMOV.M2		R22, R12
	|	SADD.M1		R13,R55,R13
		SADD.M2		R13,R45,R13
	|	SLTU		R21, R10, R23
	|	SMOV.M1		R21, R10
		SADD.M2		R11,R23,R11
		SNOP		4
	;; condjump to .L12 occurs
.LVL18:
.L18:
	.loc 1 53 0
		SLDDW		*+AR15[5], R63:R62
	|	SMOVIL		48, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
	|	SMOVIL		0, R10
	.loc 1 52 0
		SNOP		3
	.loc 1 53 0
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.LVL19:
.L19:
.LBB6:
	.loc 1 47 0
		SFSPDP32T.M1		R19, R11:R10
	|	SFSPDP32T.M2		R16, R13:R12
	|	SMOVIL.L		.LC0, R44
	|	SSTW		R53, *+AR15[4]
	.loc 1 46 0
		SMOVIL		0, R48
	.loc 1 47 0
		SMOVIH.L		.LC0, R44
		SMOVIH4.L		.LC0, R45
	|	SSTW		R48, *+AR15[5]
		SBR		printf
	|	SSTDW		R45:R44, *+AR15[1]
		SMOVIL		.L24, R62
		SMOVIH		.L24, R62
		SSTDW		R11:R10, *+AR15[3]
	|	SMOVIH4.L		.L24, R63
		SSTDW		R13:R12, *+AR15[4]
	;; call to printf occurs, with return value
		SNOP		2
.LVL20:
.L24:
		SBR		.L11
	|	SMOVIL		-1, R10
	.loc 1 48 0
		SNOP		6
	;; jump to .L11 occurs
.LBE6:
.LFE4:
	.size	check, .-check
	.section	.text.mul,"ax",@progbits
	.align	2
	.global	mul
	.type	mul, @function
mul:
.LFB5:
	.loc 1 55 0
.LVL21:
	.loc 1 55 0
		SMVAGA36.M1		R11:R10, OR0
	|	SMOVIL		0, R42
		SMVAGA36.M1		R13:R12, OR1
	|	SLT		R42, R14, R0
		SADDA.M1		-4,OR0,AR2
	|[!R0]	SBR		.L25
	|	SSHFLL		1, R14, R44
		SADDA.M2		-4,OR1,AR0
	|	SSHFAR		31, R14, R46
		SLTU		R44, R14, R45
		SMVAAGL.M1		AR2, R43:R42
	|	SSHFLL		2, R14, R12
.LVL22:
		SMVAAGL.M1		AR0, R49:R48
	|	SLTU		R12, R44, R2
		SMVAAGH.M1		AR2, R43:R42
	|	SMOVIL		0, R10
.LVL23:
	[R0]	SMVAAGH.M1		AR0, R49:R48
	;; condjump to .L25 occurs
		SMOV.M2		R43, R13
	|	SSHFLL		1, R46, R43
		SADD.M2		R43,R45,R1
	|	SMOV.M1		R42, R11
		SSHFLL		1, R1, R3
	|	SMOV.M2		R42, R18
	|	SMOV.M1		R13, R17
		SADD.M2		R3,R2,R15
.LVL24:
.L27:
		SADD.M2		1,R10,R16
	|	SMOV.M1		R18, R59
	|	SMOVIL		0, R8
		SMOV.M2		R48, R46
	|	SMOV.M1		R49, R47
		SMOV.M2		R17, R60
.LVL25:
.L32:
		SLT		R10, R8, R0
	|	SADD.M2		1,R8,R61
	[!R0]	SBR		.L30
		SNOP		6
	;; condjump to .L30 occurs
		SMOVIL		0, R53
	|	SMOV.M2		R16, R58
	|	SMOV.M1		R59, R44
.LVL26:
		SMOV.M2		R11, R42
	|	SMOVIH		0, R53
	|	SMOV.M1		R60, R45
		SMOV.M2		R13, R43
	|	SMOVIL		0, R50
.LVL27:
.L28:
		SADD.M2		4,R42,R52
	|	SADD.M1		4,R44,R51
		SLTU		R52, R42, R57
	|	SMOV.M2		R52, R42
	|	SADD.M1		1,R50,R50
		SLTU		R51, R44, R55
	|	SADD.M2		R43,R57,R43
	|	SMOV.M1		R51, R44
		SADD.M1		R45,R55,R45
	|	SMVAGA36.M2		R43:R42, AR12
	|	SLT		R50, R58, R1
		SMVAGA36.M1		R45:R44, AR10
	.loc 1 62 0
		SLDW		*AR12, R9
		SLDW		*AR10, R19
		SNOP		4
	.loc 1 61 0
	[R1]	SBR		.L28
	.loc 1 62 0
		SFMULAS32.M2	R9, R19, R53, R53
		SNOP		5
.LVL28:
	.loc 1 61 0
	;; condjump to .L28 occurs
	.loc 1 59 0
		SEQ		R14, R61, R2
	|	SADD.M2		4,R46,R20
	|	SADD.M1		R12,R59,R23
	[!R2]	SBR		.L32
	|	SMOV.M2		R61, R8
	|	SLTU		R20, R46, R22
	|	SMOV.M1		R20, R46
		SADD.M2		R47,R22,R47
	|	SLTU		R23, R59, R24
	|	SMOV.M1		R23, R59
	.loc 1 55 0
		SMVAGA36.M2		R47:R46, AR10
	|	SADD.M1		R15,R60,R25
		SADD.M1		R25,R24,R60
	.loc 1 64 0
		SSTW		R53, *AR10
		SNOP		2
.LVL29:
	.loc 1 59 0
	;; condjump to .L32 occurs
.LVL30:
	.loc 1 58 0
		SEQ		R14, R16, R0
	|	SADD.M2		R48,R12,R26
	|	SADD.M1		R12,R11,R27
	[!R0]	SBR		.L27
	|	SMOV.M2		R16, R10
	|	SLTU		R26, R48, R28
	|	SMOV.M1		R26, R48
		SLTU		R27, R11, R47
	|	SMOV.M2		R27, R11
	|	SADD.M1		R49,R15,R29
		SADD.M2		R29,R28,R49
	|	SADD.M1		R15,R13,R13
		SADD.M2		R13,R47,R13
		SNOP		3
	;; condjump to .L27 occurs
.LVL31:
.L25:
		SBR		R62
		SNOP		6
	;; return occurs
.L30:
		SBR		.L28
	|	SMOV.M2		R61, R58
	|	SMOV.M1		R59, R44
	|	SMOVIL		0, R50
.LVL32:
	.loc 1 55 0
		SMOV.M2		R11, R42
	|	SMOV.M1		R60, R45
	|	SMOVIL		0, R53
		SMOVIH		0, R53
	|	SMOV.M2		R13, R43
		SNOP		4
	;; jump to .L28 occurs
.LFE5:
	.size	mul, .-mul
	.section	.const,"a",@progbits
.LC1:
	.string	"Hello World!"
.LC2:
	.string	"order=%d begin!\n"
.LC3:
	.string	"check end!no problem"
.LC4:
	.string	"natual c use %ld cycle\n"
.LC5:
	.string	"vector c use %ld cycle\n"
.LC6:
	.string	"check A with A_cal begin!"
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB6:
	.loc 1 69 0
.LVL33:
		SMOVIL		-152, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI11:
		SMVAAGL.M1		AR14, R7:R6
	|	SMOVIL		1075052548, R46
.LCFI12:
	.loc 1 82 0
		SMOVIH		1075052548, R46
	|	SSTDW		R63:R62, *+AR15[17]
.LCFI13:
	.loc 1 69 0
		SMVAAGH.M2		AR14, R7:R6
	|	SMOVIL		0, R47
	|	SSTDW		R41:R40, *+AR15[12]
	.loc 1 82 0
		SMVAGA36.M1		R47:R46, AR10
	|	SMOVIL		1075052544, R42
		SMOVIL		1, R44
	.loc 1 69 0
		SSTDW		R7:R6, *+AR15[18]
.LCFI14:
		SMVAAGL.M2		OR9, R7:R6
	|	SSTDW		R39:R38, *+AR15[11]
	.loc 1 83 0
		SMOVIH		1075052544, R42
	.loc 1 69 0
		SMVAAGH.M2		OR9, R7:R6
	|	SMOVIL		0, R43
		SSTDW		R37:R36, *+AR15[10]
		SSTDW		R7:R6, *+AR15[16]
		SMVAAGL.M2		OR8, R7:R6
		SNOP		1
.LCFI15:
		SMVAAGH.M2		OR8, R7:R6
	|	SSTDW		R35:R34, *+AR15[9]
		SSTDW		R33:R32, *+AR15[8]
		SNOP		2
		SSTDW		R7:R6, *+AR15[15]
.LCFI16:
		SMVAAGL.M2		AR9, R7:R6
	|	SSTDW		R31:R30, *+AR15[7]
		SNOP		1
		SMVAAGH.M2		AR9, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[14]
		SMVAAGL.M2		AR8, R7:R6
		SNOP		1
		SMVAAGH.M2		AR8, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[13]
.LCFI17:
	.loc 1 82 0
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 83 0
		SNOP		2
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 84 0
		SSTW		R44, *+AR15[13]
		SNOP		2
.LVL34:
	.loc 1 85 0
		SLDW		*+AR15[13], R0
		SNOP		5
	[!R0]	SBR		.L39
		SNOP		6
	;; condjump to .L39 occurs
.L58:
	.loc 1 86 0
		SLDW		*AR10, R42
		SNOP		5
.LVL35:
		SSTW		R42, *+AR15[13]
		SNOP		2
.LVL36:
	.loc 1 85 0
		SLDW		*+AR15[13], R1
		SNOP		5
	[R1]	SBR		.L58
		SNOP		6
	;; condjump to .L58 occurs
.L39:
	.loc 1 88 0
		SBR		puts
	|	SMOVIH4.L		.LC1, R11
		SMOVIL		.L72, R62
		SMOVIH		.L72, R62
		SMOVIH4.L		.L72, R63
		SMOVIL.L		.LC1, R10
		SMOVIH.L		.LC1, R10
	;; call to puts occurs, with return value
		SMOVIL.L		.LC4, R40
.LVL37:
.L72:
		SMOVIL.L		.LC2, R42
		SMOVIL.L		M, R44
		SMOVIH.L		M, R44
		SMOVIH4.L		M, R45
	.loc 1 95 0
		SBR		SetTimerPeriod
	|	SMOVIH.L		.LC2, R42
	|	SMVAGA36.M2		R45:R44, AR8
		SMOVIL		.L73, R62
		SMOVIH		.L73, R62
		SMOVIH4.L		.L73, R63
		SMOVIH4.L		.LC2, R43
		SMVAGA36.M2		R43:R42, OR9
	|	SMOVIL		-1, R12
	;; call to SetTimerPeriod occurs, with return value
		SMOVIL		0, R10
.LVL38:
.L73:
		SMOVIH4.L		A, R47
		SMOVIL.L		A, R46
		SMOVIL.L		L_cn, R42
		SMOVIH.L		A, R46
	.loc 1 97 0
		SBR		TimerStart
	|	SMOVIH.L		L_cn, R42
	|	SMVAGA36.M2		R47:R46, AR9
		SMOVIL		.L74, R62
		SMOVIH		.L74, R62
		SMOVIH4.L		.L74, R63
		SMOVIH4.L		L_cn, R43
		SMVAGA36.M2		R43:R42, AR14
	|	SMOVIL		0, R10
	;; call to TimerStart occurs, with return value
		SMOVIL.L		L_am, R30
.LVL39:
.L74:
		SMOVIL.L		t_am, R44
		SMOVIH.L		t_am, R44
		SMOVIH4.L		t_am, R45
		SMOVIL.L		.LC5, R32
	|	SMVAGA36.M2		R45:R44, OR8
.LBB7:
	.loc 1 105 0
		SMOVIL		805306368, R34
.LBE7:
	.loc 1 97 0
		SMOVIL		-4, R35
		SMOVIL		4, R36
		SMOVIH.L		.LC4, R40
		SMOVIH4.L		.LC4, R41
		SMOVIH.L		L_am, R30
		SMOVIH4.L		L_am, R31
		SMOVIH.L		.LC5, R32
		SMOVIH4.L		.LC5, R33
.LBB12:
	.loc 1 105 0
		SMOVIH		805306368, R34
.LVL40:
.L38:
	.loc 1 101 0
		SMVAAGL.M2		OR9, R47:R46
	|	SBR		printf
	|	SSTW		R36, *+AR15[4]
	|	SMOVIL		0, R37
.LBE12:
	.loc 1 69 0
		SMOVIL		.L75, R62
.LBB13:
	.loc 1 101 0
		SMVAAGH.M2		OR9, R47:R46
	|	SMOVIH		.L75, R62
		SMOVIH4.L		.L75, R63
		SSTDW		R47:R46, *+AR15[1]
	|	SMOVIL		0, R38
	;; call to printf occurs, with return value
		SNOP		2
.LVL41:
.L75:
.L40:
.LBE13:
	.loc 1 97 0
		SMOVIL		0, R39
.LVL42:
.L41:
.LBB14:
	.loc 1 105 0
		SBR		rand
		SMOVIL		.L76, R62
		SMOVIH		.L76, R62
		SMOVIH4.L		.L76, R63
	;; call to rand occurs, with return value
		SNOP		3
.LVL43:
.L76:
	.loc 1 69 0
		SADD.M2		R37,R39,R2
	|	SADD.M1		1,R39,R39
.LVL44:
	.loc 1 105 0
		SSHFLL		1, R2, R45
	|	SFINTS32.M2		R10,R10
		SSHFAR		31, R2, R48
	.loc 1 104 0
		SLT		R39, R36, R0
	.loc 1 105 0
		SLTU		R45, R2, R49
	|	SFMULS32.M2		R10, R34, R47
		SSHFLL		1, R48, R3
	.loc 1 104 0
	[R0]	SBR		.L41
	|	SSHFLL		2, R2, R42
	|	SADD.M2		R3,R49,R8
	.loc 1 105 0
		SLTU		R42, R45, R9
		SSHFLL		1, R8, R43
		SADD.M2		R43,R9,R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,AR8,AR10
		SNOP		1
		SSTW		R47, *AR10
	;; condjump to .L41 occurs
	.loc 1 103 0
		SADD.M2		1,R38,R38
	|	SADD.M1		R36,R37,R37
.LVL45:
		SLT		R38, R36, R1
	[R1]	SBR		.L40
		SNOP		6
	;; condjump to .L40 occurs
.LBE14:
	.loc 1 69 0
		SMOVIL		0, R58
		SMOVIL		0, R60
.LVL46:
.L42:
		SMOVIL		0, R57
		SMOVIL		0, R59
.LVL47:
.L46:
	.loc 1 103 0
		SMOVIL		0, R52
		SMOVIH		0, R52
		SMOVIL		0, R11
.LVL48:
.L43:
.LBB15:
	.loc 1 69 0
		SADD.M2		R11,R58,R12
	|	SADD.M1		R57,R11,R13
	.loc 1 113 0
		SSHFLL		1, R12, R51
	|	SADD.M2		1,R11,R11
		SSHFLL		1, R13, R50
		SSHFAR		31, R12, R53
		SSHFAR		31, R13, R54
		SLTU		R51, R12, R56
		SSHFLL		1, R53, R14
		SLTU		R50, R13, R55
	|	SADD.M2		R14,R56,R15
		SSHFLL		1, R54, R16
		SSHFLL		2, R12, R44
	|	SADD.M2		R16,R55,R17
		SSHFLL		2, R13, R42
		SLTU		R44, R51, R18
		SLTU		R42, R50, R19
		SSHFLL		1, R15, R20
		SSHFLL		1, R17, R21
	|	SADD.M2		R20,R18,R45
		SADD.M1		R21,R19,R43
	;no-op trunc di R45:R44 to pdi R45:R44
	|	SADDA.M2		R45:R44,AR8,AR12
	|	SLT		R11, R36, R2
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M1		R43:R42,AR8,AR10
		SLDW		*AR12, R22
		SLDW		*AR10, R23
		SNOP		4
	.loc 1 112 0
	[R2]	SBR		.L43
	.loc 1 113 0
		SFMULAS32.M2	R22, R23, R52, R52
		SNOP		5
.LVL49:
	.loc 1 112 0
	;; condjump to .L43 occurs
	.loc 1 69 0
		SADD.M2		R59,R58,R24
	|	SADD.M1		1,R59,R59
.LVL50:
	.loc 1 115 0
		SSHFLL		1, R24, R25
	|	SADD.M2		R36,R57,R57
		SSHFAR		31, R24, R26
	.loc 1 110 0
		SLT		R59, R36, R0
	.loc 1 115 0
		SLTU		R25, R24, R27
		SSHFLL		1, R26, R28
	.loc 1 110 0
	[R0]	SBR		.L46
	|	SSHFLL		2, R24, R42
	|	SADD.M2		R28,R27,R29
	.loc 1 115 0
		SLTU		R42, R25, R61
		SSHFLL		1, R29, R44
		SADD.M2		R44,R61,R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,AR9,AR10
		SNOP		1
		SSTW		R52, *AR10
	;; condjump to .L46 occurs
	.loc 1 109 0
		SADD.M2		1,R60,R60
	|	SADD.M1		R36,R58,R58
.LVL51:
		SLT		R60, R36, R1
	[R1]	SBR		.L42
		SNOP		6
	;; condjump to .L42 occurs
	.loc 1 127 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
	|	SADD.M2		1,R36,R37
	|	SMOV.M1		R35, R38
.LBB8:
	.loc 1 69 0
		SMOVIL		.L77, R62
		SMOVIH		.L77, R62
		SMOVIH4.L		.L77, R63
.LBE8:
	.loc 1 127 0
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL52:
.L77:
		SSTW		R10, *+AR15[11]
	|	SMOVIL		0, R61
	|	SMOV.M2		R36, R51
.LVL53:
.LBB9:
	.loc 1 69 0
		SMOVIL		0, R53
		SMOVIL		0, R52
	.loc 1 129 0
		SMOVIL		0, R55
	.loc 1 69 0
		SMOVIH		0, R61
.LVL54:
.L47:
	.loc 1 136 0
		SSHFLL		1, R53, R46
		SSHFAR		31, R53, R42
		SLTU		R46, R53, R10
		SSHFLL		1, R42, R39
		SADD.M2		R39,R10,R39
	|	SSHFLL		2, R53, R42
		SLTU		R42, R46, R49
		SSHFLL		1, R39, R47
		SADD.M2		R47,R49,R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,AR9,AR10
		SNOP		1
		SLDW		*AR10, R3
		SSTW		R55, *+AR15[9]
		SSTW		R46, *+AR15[6]
		SNOP		1
		SBR		sqrt
		SMOVIL		.L78, R62
		SFSUBS32.M2		R61, R3, R48
	|	SSTW		R52, *+AR15[8]
	|	SMOVIH		.L78, R62
		SSTW		R51, *+AR15[7]
	|	SMOVIH4.L		.L78, R63
		SNOP		1
		SFSPDP32T.M2		R48, R11:R10
	;; call to sqrt occurs, with return value
		SSTW		R53, *+AR15[10]
.LVL55:
.L78:
	.loc 1 139 0
		SLDW		*+AR15[9], R45
	|	SSHFLL		1, R39, R9
	|	SFDPSP32.M2		R11:R10, R10
	.loc 1 136 0
		SNOP		1
		SLDW		*+AR15[10], R53
		SLDW		*+AR15[6], R50
	.loc 1 139 0
		SLDW		*+AR15[8], R1
		SNOP		1
		SADD.M2		1,R45,R52
	|	SLDW		*+AR15[7], R51
.LVL56:
		SLT		R52, R36, R2
	[R2]	SBR		.L68
	|	SSHFLL		2, R53, R42
.LBE9:
	.loc 1 147 0
	[!R2]	SBR		GetTimerCount
	|	SLTU		R42, R50, R8
.LBB10:
	.loc 1 136 0
		SADD.M2		R9,R8,R43
	|[!R2]	SMOVIL		.L79, R62
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,AR14,AR10
	|[!R2]	SMOVIH		.L79, R62
	[!R2]	SMOVIH4.L		.L79, R63
		SSTW		R10, *AR10
		SNOP		1
	.loc 1 139 0
	;; condjump to .L68 occurs
.LBE10:
	.loc 1 147 0
	;; call to GetTimerCount occurs, with return value
		SMOVIL		0, R10
.LVL57:
.L79:
	.loc 1 148 0
		SLDW		*+AR15[11], R43
	.loc 1 149 0
		SSTDW		R41:R40, *+AR15[1]
		SNOP		1
		SBR		printf
		SMOVIL		.L80, R62
		SMOVIH		.L80, R62
	.loc 1 148 0
		SSUB.M2		R43, R10, R38
	|	SMOVIH4.L		.L80, R63
.LVL58:
	.loc 1 149 0
		SSTW		R38, *+AR15[4]
	;; call to printf occurs, with return value
		SNOP		2
.LVL59:
.L80:
	.loc 1 151 0
		SMVAGA36.M2		R31:R30, AR10
	|	SMOVIL.L		A, R10
		SMOVIL		65536, R14
		SBR		M7002_datatrans
	|	SLDDW		*AR10, R13:R12
	|	SMOVIH4.L		A, R11
		SMOVIL		.L81, R62
		SMOVIH		.L81, R62
		SMOVIH4.L		.L81, R63
		SMOVIH		65536, R14
		SMOVIL		0, R15
	;; call to M7002_datatrans occurs, with return value
		SMOVIH.L		A, R10
.LVL60:
.L81:
	.loc 1 153 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L82, R62
		SMOVIH		.L82, R62
		SMOVIH4.L		.L82, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL61:
.L82:
	.loc 1 155 0
		SMVAAA.M2		OR8, AR10
	|	SMOV.M1		R10, R39
.LVL62:
		SMOV.M1		R36, R10
.LVL63:
		SLDDW		*AR10, R15:R14
	|	SMVAGA36.M2		R31:R30, AR10
		SBR		DSPF_sp_cholesky
		SLDDW		*AR10, R13:R12
	|	SMOVIL		.L83, R62
		SMOVIH		.L83, R62
		SMOVIH4.L		.L83, R63
	;; call to DSPF_sp_cholesky occurs
		SNOP		3
.LVL64:
.L83:
	.loc 1 157 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L84, R62
		SMOVIH		.L84, R62
		SMOVIH4.L		.L84, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL65:
.L84:
	.loc 1 159 0
		SBR		printf
	|	SSUB.M2		R39, R10, R57
	|	SSTDW		R33:R32, *+AR15[1]
.LVL66:
		SSTW		R57, *+AR15[4]
	|	SMOVIL		.L85, R62
		SMOVIH		.L85, R62
		SMOVIH4.L		.L85, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL67:
.L85:
	.loc 1 161 0
		SMVAGA36.M2		R31:R30, AR10
	|	SMOVIL.L		L, R12
	|	SMOV.M1		R36, R14
		SBR		mat_transpose
	|	SMOVIH.L		L, R12
		SLDDW		*AR10, R11:R10
	|	SMOVIL		.L86, R62
		SMOVIH		.L86, R62
		SMOVIH4.L		.L86, R63
		SMOVIH4.L		L, R13
	;; call to mat_transpose occurs
		SNOP		2
.LVL68:
.L86:
	.loc 1 173 0
		SBR		puts
	|	SMOVIH4.L		.LC6, R11
		SMOVIL		.L87, R62
		SMOVIH		.L87, R62
		SMOVIH4.L		.L87, R63
		SMOVIL.L		.LC6, R10
		SMOVIH.L		.LC6, R10
	;; call to puts occurs, with return value
		SNOP		1
.LVL69:
.L87:
	.loc 1 175 0
		SMOVIL.L		L, R10
	|	SMOV.M2		R36, R14
		SMOVIL.L		A_cal, R12
		SBR		mul
	|	SMOVIH.L		L, R10
		SMOVIL		.L88, R62
		SMOVIH		.L88, R62
		SMOVIH4.L		.L88, R63
		SMOVIH4.L		L, R11
		SMOVIH.L		A_cal, R12
	;; call to mul occurs
		SMOVIH4.L		A_cal, R13
.LVL70:
.L88:
	.loc 1 176 0
		SMOV.M2		R36, R14
	|	SMOVIL.L		A, R10
		SMOVIL.L		A_cal, R12
		SMOVIL		1036831949, R16
		SMOVIH4.L		A, R11
		SBR		check
	|	SMOVIH.L		A, R10
		SMOVIL		.L89, R62
		SMOVIH		.L89, R62
		SMOVIH4.L		.L89, R63
		SMOVIH.L		A_cal, R12
		SMOVIH4.L		A_cal, R13
	;; call to check occurs, with return value
		SMOVIH		1036831949, R16
.LVL71:
.L89:
	.loc 1 178 0
		SMOV.M2		R10, R0
	[!R0]	SBR		.L69
		SNOP		6
	;; condjump to .L69 occurs
.LVL72:
.L54:
.LBE15:
	.loc 1 99 0
		SMOVIL		129, R36
	|	SADD.M2		-1,R35,R35
		SEQ		R36, R37, R1
	|	SMOV.M2		R37, R36
	[R1]	SBR		.L70
	[!R1]	SBR		.L38
		SNOP		6
	;; condjump to .L70 occurs
.LVL73:
	;; jump to .L38 occurs
.LVL74:
.L68:
.LBB16:
.LBB11:
	.loc 1 69 0
		SSUB.M2		R36, R51, R59
	|	SMOV.M1		R51, R49
		SADD.M2		R59,R38,R58
	|	SMOV.M1		R52, R46
		SMOV.M2		R39, R61
.LVL75:
.L50:
	.loc 1 141 0
	[!R1]	SBR		.L56
	|	SMOVIL		0, R12
	|	SADD.M2		R1,R49,R13
	|	SMOV.M1		R49, R54
	.loc 1 69 0
		SMOVIH		0, R12
		SNOP		5
	.loc 1 141 0
	;; condjump to .L56 occurs
.LVL76:
.L51:
	.loc 1 142 0
		SSHFLL		1, R54, R14
	|	SADD.M2		R58,R54,R56
		SSHFAR		31, R54, R55
		SLTU		R14, R54, R11
		SSHFLL		1, R55, R15
		SADD.M2		R15,R11,R16
	|	SSHFLL		1, R56, R19
		SSHFLL		2, R54, R44
	|	SADD.M2		1,R54,R54
		SSHFAR		31, R56, R20
		SLTU		R44, R14, R17
		SLTU		R19, R56, R21
		SSHFLL		1, R16, R18
		SSHFLL		1, R20, R22
	|	SADD.M2		R18,R17,R45
		SADD.M1		R22,R21,R23
	|	SSHFLL		2, R56, R42
	;no-op trunc di R45:R44 to pdi R45:R44
	|	SADDA.M2		R45:R44,AR14,AR10
		SLTU		R42, R19, R24
	|	SADD.M1		R58,R54,R56
		SSHFLL		1, R23, R26
	|	SLDW		*AR10, R25
		SADD.M2		R26,R24,R43
	|	SSHFLL		1, R54, R14
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,AR14,AR10
	|	SSHFAR		31, R54, R55
	.loc 1 141 0
		SEQ		R13, R54, R2
	.loc 1 142 0
		SLDW		*AR10, R27
	|	SLTU		R14, R54, R11
		SSHFLL		1, R55, R15
		SSHFLL		2, R54, R44
	|	SADD.M2		R15,R11,R16
	|	SADD.M1		1,R54,R54
		SSHFLL		1, R56, R19
		SSHFAR		31, R56, R20
	.loc 1 141 0
	[R2]	SBR		.L52
	|	SLTU		R44, R14, R17
	.loc 1 142 0
		SFMULAS32.M2	R25, R27, R12, R12
	|	SSHFLL		1, R16, R18
.LVL77:
		SLTU		R19, R56, R21
	|	SADD.M1		R18,R17,R45
		SSHFLL		1, R20, R22
	;no-op trunc di R45:R44 to pdi R45:R44
	|	SADDA.M1		R45:R44,AR14,AR10
		SSHFLL		2, R56, R42
	|	SADD.M2		R22,R21,R23
		SLTU		R42, R19, R24
		SSHFLL		1, R23, R26
	;; condjump to .L52 occurs
		SADD.M2		R26,R24,R43
	|	SLDW		*AR10, R25
	|	SEQ		R13, R54, R2
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,AR14,AR10
		SNOP		1
		SLDW		*AR10, R27
		SNOP		4
	.loc 1 141 0
	[!R2]	SBR		.L51
	.loc 1 142 0
		SFMULAS32.M2	R25, R27, R12, R12
		SNOP		5
.LVL78:
	.loc 1 141 0
	;; condjump to .L51 occurs
		SBR		.L52
		SNOP		6
	;; jump to .L52 occurs
.LVL79:
.L56:
		SMOVIL		0, R12
	|	SMOV.M2		R49, R13
		SMOVIH		0, R12
.LVL80:
.L52:
	.loc 1 144 0
		SFRCPS32.M2		R10, R28
	|	SMOVIL		1073741824, R48
	|	SADD.M1		1,R46,R46
.LVL81:
		SFMULS32.M2		R10, R28, R47
	|	SMOVIH		1073741824, R48
	|	SADD.M1		R36,R49,R49
		SSHFLL		1, R13, R29
	|	SADD.M1		R35,R58,R58
		SSHFAR		31, R13, R44
		SLTU		R29, R13, R42
		SFSUBS32.M2		R47, R48, R8
	|	SSHFLL		1, R44, R60
		SADD.M2		R60,R42,R3
	|	SSHFLL		2, R13, R44
		SLTU		R44, R29, R9
	|	SMOV.M1		R44, R42
		SFMULS32.M2		R28, R8, R39
	|	SSHFLL		1, R3, R45
		SADD.M1		R45,R9,R45
	|	SMOVIL		1073741824, R13
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,AR9,AR10
	|	SMOVIH		1073741824, R13
	.loc 1 139 0
		SEQ		R36, R46, R0
	.loc 1 144 0
		SFMULS32.M2		R10, R39, R10
	|	SLDW		*AR10, R59
	|	SSHFLL		1, R3, R43
		SADD.M1		R43,R9,R43
	|	SMOVIL		0, R55
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SFSUBS32.M2		R10, R13, R54
		SNOP		1
		SFSUBS32.M1		R12, R59, R12
		SFMULS32.M1		R39, R54, R14
		SNOP		1
	.loc 1 139 0
	[!R0]	SBR		.L55
		SNOP		1
	.loc 1 144 0
		SFMULS32.M2		R12, R14, R56
		SNOP		3
		SSTW		R56, *AR10
	;; condjump to .L55 occurs
	.loc 1 139 0
		SMOVIL		0, R61
		SMOVIH		0, R61
.L48:
	.loc 1 69 0
		SADD.M2		R51,R55,R11
	|	SADD.M1		1,R55,R55
	.loc 1 134 0
		SSHFLL		1, R11, R15
		SSHFAR		31, R11, R16
		SLTU		R15, R11, R50
		SSHFLL		1, R16, R17
		SSHFLL		2, R11, R42
	|	SADD.M2		R17,R50,R18
		SLTU		R42, R15, R19
		SSHFLL		1, R18, R20
		SADD.M2		R20,R19,R43
	|	SEQ		R52, R55, R2
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,AR14,AR10
		SNOP		1
		SLDW		*AR10, R21
		SNOP		4
	.loc 1 133 0
	[!R2]	SBR		.L48
	.loc 1 134 0
		SFMULAS32.M2	R21, R21, R61, R61
		SNOP		5
.LVL82:
	.loc 1 133 0
	;; condjump to .L48 occurs
		SBR		.L47
	|	SADD.M2		1,R1,R52
	|	SADD.M1		R37,R53,R53
		SADD.M2		R36,R51,R51
	|	SADD.M1		R35,R38,R38
		SNOP		5
	;; jump to .L47 occurs
.LVL83:
.L55:
		SMOVIL.L		L_cn, R44
		SSHFLL		2, R53, R42
		SMOVIH.L		L_cn, R44
		SMOVIH4.L		L_cn, R45
		SLTU		R42, R50, R22
	|	SMVAGA36.M2		R45:R44, OR11
		SSHFLL		1, R61, R23
		SADD.M2		R23,R22,R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,OR11,AR10
		SBR		.L50
		SLDW		*AR10, R10
		SNOP		5
	;; jump to .L50 occurs
.LVL84:
.L70:
.LBE11:
.LBE16:
	.loc 1 197 0
		SLDDW		*+AR15[13], R7:R6
		SLDDW		*+AR15[17], R63:R62
		SLDDW		*+AR15[7], R31:R30
		SLDDW		*+AR15[8], R33:R32
		SLDDW		*+AR15[9], R35:R34
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[14], R7:R6
		SLDDW		*+AR15[10], R37:R36
.LVL85:
		SLDDW		*+AR15[11], R39:R38
.LVL86:
		SLDDW		*+AR15[12], R41:R40
		SNOP		2
		SMVAGA36.M2		R7:R6, AR9
		SNOP		2
		SLDDW		*+AR15[15], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[16], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR9
	|	SLDDW		*+AR15[18], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		152, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL87:
.L69:
.LBB17:
	.loc 1 179 0
		SBR		puts
	|	SMOVIH4.L		.LC3, R11
		SMOVIL		.L90, R62
		SMOVIH		.L90, R62
		SMOVIH4.L		.L90, R63
		SMOVIL.L		.LC3, R10
		SMOVIH.L		.LC3, R10
	;; call to puts occurs, with return value
		SNOP		1
.LVL88:
.L90:
		SBR		.L54
		SNOP		6
	;; jump to .L54 occurs
.LBE17:
.LFE6:
	.size	main, .-main
	.common	L_cn,65536,8
	.common	L_t,65536,8
	.common	L,65536,8
	.common	A_cal_t,65536,8
	.common	A_cal,65536,8
	.common	A,65536,8
	.common	M,65536,8
	.global	t_am
	.section	.neardata,"aw",@progbits
	.align	3
	.type	t_am, @object
	.size	t_am, 8
t_am:
	.llong	1073872896
	.global	L_am
	.align	3
	.type	L_am, @object
	.size	L_am, 8
L_am:
	.llong	1073807360
	.global	L_am_t
	.align	3
	.type	L_am_t, @object
	.size	L_am_t, 8
L_am_t:
	.llong	1073741824
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
	.byte	0x40
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xb3
	.byte	0x8
	.byte	0xb4
	.byte	0x7
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xb2
	.byte	0x9
	.byte	0xb8
	.byte	0x3
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xb7
	.byte	0x4
	.byte	0xae
	.byte	0xd
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xb6
	.byte	0x5
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xb5
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xaf
	.byte	0xc
	.byte	0xb1
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xb0
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.align	3
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.llong	.LFB4
	.llong	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI9-.LFB4
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x5
	.byte	0x4e
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.align	3
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.llong	.LFB5
	.llong	.LFE5-.LFB5
	.align	3
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.llong	.LFB6
	.llong	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI11-.LFB6
	.byte	0xe
	.byte	0x98,0x1
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xb8
	.byte	0xe
	.byte	0xb9
	.byte	0xd
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x8e
	.byte	0x2
	.byte	0xb6
	.byte	0x10
	.byte	0xb7
	.byte	0xf
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xb4
	.byte	0x12
	.byte	0xb5
	.byte	0x11
	.byte	0x5
	.byte	0x59
	.byte	0x6
	.byte	0xb2
	.byte	0x14
	.byte	0xb3
	.byte	0x13
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xb0
	.byte	0x16
	.byte	0xb1
	.byte	0x15
	.byte	0x5
	.byte	0x58
	.byte	0x8
	.byte	0xae
	.byte	0x18
	.byte	0xaf
	.byte	0x17
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x89
	.byte	0xa
	.byte	0x88
	.byte	0xc
	.align	3
.LEFDE6:
.text;
.Letext0:
	.file 2 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x785
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../main.c"
	.string	"/cygdrive/e/FT-M700/project/t/Debug"
	.4byte	.Ldebug_ranges0+0x120
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
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
	.string	"mat_transpose"
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x22d
	.byte	0x4
	.string	"M_am"
	.byte	0x1
	.byte	0x1e
	.4byte	0x23a
	.4byte	.LLST1
	.byte	0x4
	.string	"M"
	.byte	0x1
	.byte	0x1e
	.4byte	0x240
	.4byte	.LLST2
	.byte	0x5
	.4byte	.LASF0
	.byte	0x1
	.byte	0x1e
	.4byte	0xf4
	.4byte	.LLST3
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x1f
	.4byte	0xf4
	.4byte	.LLST4
	.byte	0x6
	.string	"increment_src"
	.byte	0x1
	.byte	0x20
	.4byte	0xf4
	.4byte	.LLST5
	.byte	0x7
	.string	"increment_dest"
	.byte	0x1
	.byte	0x21
	.4byte	0xf4
	.byte	0
	.byte	0x6
	.string	"increment"
	.byte	0x1
	.byte	0x22
	.4byte	0xf4
	.4byte	.LLST5
	.byte	0x8
	.llong	.LBB2
	.llong	.LBE2
	.byte	0x9
	.byte	0x1
	.string	"M7002_datatrans_index"
	.byte	0x1
	.byte	0x24
	.4byte	0xf4
	.byte	0x1
	.4byte	0x20c
	.byte	0xa
	.byte	0
	.byte	0xb
	.llong	.LVL6
	.byte	0xc
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x34
	.byte	0
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
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x1
	.4byte	0x5f
	.4byte	0x23a
	.byte	0xe
	.byte	0xf
	.byte	0
	.byte	0xf
	.byte	0x8
	.4byte	0x22d
	.byte	0xf
	.byte	0x8
	.4byte	0x5f
	.byte	0x10
	.byte	0x1
	.string	"check"
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.4byte	0xf4
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST7
	.byte	0x1
	.4byte	0x333
	.byte	0x4
	.string	"expected"
	.byte	0x1
	.byte	0x28
	.4byte	0x240
	.4byte	.LLST8
	.byte	0x4
	.string	"actual"
	.byte	0x1
	.byte	0x28
	.4byte	0x240
	.4byte	.LLST9
	.byte	0x5
	.4byte	.LASF0
	.byte	0x1
	.byte	0x28
	.4byte	0xf4
	.4byte	.LLST10
	.byte	0x5
	.4byte	.LASF1
	.byte	0x1
	.byte	0x28
	.4byte	0x5f
	.4byte	.LLST11
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x29
	.4byte	0xf4
	.4byte	.LLST12
	.byte	0x6
	.string	"j"
	.byte	0x1
	.byte	0x29
	.4byte	0xf4
	.4byte	.LLST13
	.byte	0x6
	.string	"error"
	.byte	0x1
	.byte	0x2a
	.4byte	0x5f
	.4byte	.LLST14
	.byte	0x11
	.4byte	.Ldebug_ranges0+0
	.byte	0x12
	.byte	0x1
	.string	"fabs"
	.byte	0x2
	.byte	0
	.byte	0x1
	.4byte	0x68
	.byte	0x1
	.4byte	0x2fb
	.byte	0x13
	.4byte	0x68
	.byte	0
	.byte	0x14
	.llong	.LVL15
	.4byte	0x315
	.byte	0xc
	.byte	0x2
	.byte	0x7f
	.byte	0x20
	.byte	0x7
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0x20
	.byte	0x5f
	.byte	0xf7
	.byte	0x68
	.byte	0
	.byte	0xb
	.llong	.LVL20
	.byte	0xc
	.byte	0x2
	.byte	0x7f
	.byte	0x20
	.byte	0x7
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0x20
	.byte	0x5f
	.byte	0xf7
	.byte	0x68
	.byte	0xc
	.byte	0x2
	.byte	0x7f
	.byte	0x14
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x1
	.string	"mul"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.llong	.LFB5
	.llong	.LFE5
	.byte	0x2
	.byte	0x7f
	.byte	0
	.byte	0x1
	.4byte	0x3b6
	.byte	0x4
	.string	"m"
	.byte	0x1
	.byte	0x37
	.4byte	0x240
	.4byte	.LLST15
	.byte	0x4
	.string	"m_cal"
	.byte	0x1
	.byte	0x37
	.4byte	0x240
	.4byte	.LLST16
	.byte	0x16
	.4byte	.LASF0
	.byte	0x1
	.byte	0x37
	.4byte	0xf4
	.byte	0x1
	.byte	0x6e
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x38
	.4byte	0xf4
	.4byte	.LLST17
	.byte	0x6
	.string	"j"
	.byte	0x1
	.byte	0x38
	.4byte	0xf4
	.4byte	.LLST18
	.byte	0x6
	.string	"k"
	.byte	0x1
	.byte	0x38
	.4byte	0xf4
	.4byte	.LLST19
	.byte	0x6
	.string	"sum"
	.byte	0x1
	.byte	0x39
	.4byte	0x5f
	.4byte	.LLST20
	.byte	0
	.byte	0x17
	.byte	0x1
	.string	"main"
	.byte	0x1
	.byte	0x45
	.llong	.LFB6
	.llong	.LFE6
	.4byte	.LLST21
	.byte	0x1
	.4byte	0x68a
	.byte	0x18
	.string	"temp"
	.byte	0x1
	.byte	0x49
	.4byte	0x22d
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x4a
	.4byte	0xf4
	.4byte	.LLST22
	.byte	0x6
	.string	"j"
	.byte	0x1
	.byte	0x4a
	.4byte	0xf4
	.4byte	.LLST23
	.byte	0x6
	.string	"k"
	.byte	0x1
	.byte	0x4a
	.4byte	0xf4
	.4byte	.LLST24
	.byte	0x6
	.string	"sum"
	.byte	0x1
	.byte	0x4b
	.4byte	0x5f
	.4byte	.LLST25
	.byte	0x19
	.4byte	.LASF0
	.byte	0x1
	.byte	0x4c
	.4byte	0xf4
	.4byte	.LLST26
	.byte	0x6
	.string	"time1"
	.byte	0x1
	.byte	0x4d
	.4byte	0xc3
	.4byte	.LLST27
	.byte	0x6
	.string	"time2"
	.byte	0x1
	.byte	0x4d
	.4byte	0xc3
	.4byte	.LLST28
	.byte	0x6
	.string	"cholesky_t_cn"
	.byte	0x1
	.byte	0x4d
	.4byte	0xc3
	.4byte	.LLST29
	.byte	0x6
	.string	"cholesky_t"
	.byte	0x1
	.byte	0x4d
	.4byte	0xc3
	.4byte	.LLST30
	.byte	0x1a
	.string	"cache"
	.byte	0x1
	.byte	0x4f
	.4byte	0x68a
	.4byte	0x40140004
	.byte	0x1a
	.string	"cache1"
	.byte	0x1
	.byte	0x50
	.4byte	0x68a
	.4byte	0x40140000
	.byte	0x6
	.string	"cache_ok"
	.byte	0x1
	.byte	0x51
	.4byte	0x690
	.4byte	.LLST31
	.byte	0x9
	.byte	0x1
	.string	"SetTimerPeriod"
	.byte	0x1
	.byte	0x5f
	.4byte	0xf4
	.byte	0x1
	.4byte	0x4cf
	.byte	0xa
	.byte	0
	.byte	0x9
	.byte	0x1
	.string	"TimerStart"
	.byte	0x1
	.byte	0x61
	.4byte	0xf4
	.byte	0x1
	.4byte	0x4e9
	.byte	0xa
	.byte	0
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0x661
	.byte	0x9
	.byte	0x1
	.string	"GetTimerCount"
	.byte	0x1
	.byte	0x7f
	.4byte	0xf4
	.byte	0x1
	.4byte	0x50f
	.byte	0xa
	.byte	0
	.byte	0x9
	.byte	0x1
	.string	"M7002_datatrans"
	.byte	0x1
	.byte	0x97
	.4byte	0xf4
	.byte	0x1
	.4byte	0x52e
	.byte	0xa
	.byte	0
	.byte	0x19
	.4byte	.LASF1
	.byte	0x1
	.byte	0xab
	.4byte	0x5f
	.4byte	.LLST32
	.byte	0x6
	.string	"error_flag"
	.byte	0x1
	.byte	0xac
	.4byte	0xf4
	.4byte	.LLST33
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0xd0
	.4byte	0x572
	.byte	0x1c
	.byte	0x1
	.string	"sqrt"
	.byte	0x2
	.byte	0
	.byte	0x1
	.4byte	0x68
	.byte	0x1
	.byte	0x13
	.4byte	0x68
	.byte	0
	.byte	0
	.byte	0x14
	.llong	.LVL41
	.4byte	0x590
	.byte	0xc
	.byte	0x2
	.byte	0x7f
	.byte	0x10
	.byte	0x3
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0xc
	.byte	0x2
	.byte	0x7f
	.byte	0x8
	.byte	0x3
	.byte	0x92
	.byte	0x59
	.byte	0
	.byte	0
	.byte	0x14
	.llong	.LVL52
	.4byte	0x5a3
	.byte	0xc
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x14
	.llong	.LVL57
	.4byte	0x5b6
	.byte	0xc
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x14
	.llong	.LVL59
	.4byte	0x5d4
	.byte	0xc
	.byte	0x2
	.byte	0x7f
	.byte	0x10
	.byte	0x3
	.byte	0x92
	.byte	0x36
	.byte	0
	.byte	0xc
	.byte	0x2
	.byte	0x7f
	.byte	0x8
	.byte	0x3
	.byte	0x92
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0x14
	.llong	.LVL61
	.4byte	0x5e7
	.byte	0xc
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x14
	.llong	.LVL64
	.4byte	0x5fc
	.byte	0xc
	.byte	0x1
	.byte	0x6a
	.byte	0x3
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0x14
	.llong	.LVL65
	.4byte	0x60f
	.byte	0xc
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x14
	.llong	.LVL67
	.4byte	0x625
	.byte	0xc
	.byte	0x2
	.byte	0x7f
	.byte	0x8
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x14
	.llong	.LVL68
	.4byte	0x63a
	.byte	0xc
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0x14
	.llong	.LVL70
	.4byte	0x64f
	.byte	0xc
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0xb
	.llong	.LVL71
	.byte	0xc
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.byte	0x14
	.llong	.LVL38
	.4byte	0x67a
	.byte	0xc
	.byte	0x1
	.byte	0x6c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0xc
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xb
	.llong	.LVL39
	.byte	0xc
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x8
	.4byte	0xf4
	.byte	0x1d
	.4byte	0xf4
	.byte	0x1e
	.string	"L_am_t"
	.byte	0x1
	.byte	0x10
	.4byte	0x23a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	L_am_t
	.byte	0x1e
	.string	"L_am"
	.byte	0x1
	.byte	0x11
	.4byte	0x23a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	L_am
	.byte	0x1e
	.string	"t_am"
	.byte	0x1
	.byte	0x12
	.4byte	0x23a
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	t_am
	.byte	0x1f
	.4byte	0x5f
	.4byte	0x6ed
	.byte	0x20
	.4byte	0x118
	.2byte	0x3fff
	.byte	0
	.byte	0x1e
	.string	"M"
	.byte	0x1
	.byte	0x15
	.4byte	0x6dc
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	M
	.byte	0x1e
	.string	"A"
	.byte	0x1
	.byte	0x16
	.4byte	0x6dc
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	A
	.byte	0x1e
	.string	"A_cal"
	.byte	0x1
	.byte	0x17
	.4byte	0x6dc
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	A_cal
	.byte	0x1e
	.string	"A_cal_t"
	.byte	0x1
	.byte	0x18
	.4byte	0x6dc
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	A_cal_t
	.byte	0x1e
	.string	"L"
	.byte	0x1
	.byte	0x19
	.4byte	0x6dc
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	L
	.byte	0x1e
	.string	"L_t"
	.byte	0x1
	.byte	0x1a
	.4byte	0x6dc
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	L_t
	.byte	0x1e
	.string	"L_cn"
	.byte	0x1
	.byte	0x1b
	.4byte	0x6dc
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	L_cn
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
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
	.byte	0xe
	.byte	0x21
	.byte	0
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x3c
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x16
	.byte	0x5
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
	.byte	0xa
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
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0x1
	.byte	0x13
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
	.byte	0x27
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
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
	.byte	0xc0,0
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL2
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL2
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
	.llong	.LVL4
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL4
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x1
	.byte	0x6e
	.llong	.LVL3
	.llong	.LVL7
	.2byte	0x4
	.byte	0x92
	.byte	0x33
	.byte	0x1
	.byte	0x9f
	.llong	.LVL7
	.llong	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x6e
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
	.llong	.LVL1
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.byte	0x34
	.llong	.LVL8
	.llong	.LFE3
	.2byte	0x8
	.byte	0xf3
	.byte	0x1
	.byte	0x6e
	.byte	0x31
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LFB4
	.llong	.LCFI9
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI9
	.llong	.LFE4
	.2byte	0x2
	.byte	0x7f
	.byte	0x30
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
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL9
	.llong	.LVL10
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL10
	.llong	.LFE4
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL9
	.llong	.LVL15-1
	.2byte	0x1
	.byte	0x6e
	.llong	.LVL15-1
	.llong	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x6e
	.byte	0x9f
	.llong	.LVL16
	.llong	.LVL20-1
	.2byte	0x1
	.byte	0x6e
	.llong	.LVL20-1
	.llong	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x6e
	.byte	0x9f
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL9
	.llong	.LVL15-1
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL15-1
	.llong	.LVL16
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0x20
	.byte	0x5f
	.byte	0x9f
	.llong	.LVL16
	.llong	.LVL20-1
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL20-1
	.llong	.LFE4
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0x20
	.byte	0x5f
	.byte	0x9f
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL9
	.llong	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL17
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x45
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL10
	.llong	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x2
	.byte	0x90
	.byte	0x40
	.llong	.LVL16
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x40
	.llong	.LVL19
	.llong	.LFE4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL11
	.llong	.LVL15-1
	.2byte	0x2
	.byte	0x90
	.byte	0x23
	.llong	.LVL16
	.llong	.LVL18
	.2byte	0x2
	.byte	0x90
	.byte	0x23
	.llong	.LVL19
	.llong	.LVL20-1
	.2byte	0x2
	.byte	0x90
	.byte	0x23
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL21
	.llong	.LVL23
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL23
	.llong	.LFE5
	.2byte	0x2
	.byte	0x90
	.byte	0x50
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL21
	.llong	.LVL22
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL22
	.llong	.LFE5
	.2byte	0x2
	.byte	0x90
	.byte	0x51
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL21
	.llong	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL30
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL24
	.llong	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL29
	.llong	.LVL31
	.2byte	0x1
	.byte	0x68
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL26
	.llong	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL28
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.byte	0x42
	.llong	.LVL32
	.llong	.LFE5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL21
	.llong	.LVL24
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	.LVL26
	.llong	.LVL27
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	.LVL28
	.llong	.LVL31
	.2byte	0x2
	.byte	0x90
	.byte	0x45
	.llong	.LVL32
	.llong	.LFE5
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	0
	.llong	0
.LLST21:
	.llong	.LFB6
	.llong	.LCFI11
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI11
	.llong	.LFE6
	.2byte	0x3
	.byte	0x7f
	.byte	0x98,0x1
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL45
	.llong	.LVL46
	.2byte	0x2
	.byte	0x90
	.byte	0x36
	.llong	.LVL51
	.llong	.LVL52-1
	.2byte	0x2
	.byte	0x90
	.byte	0x4c
	.llong	.LVL56
	.llong	.LVL57-1
	.2byte	0x2
	.byte	0x90
	.byte	0x44
	.llong	.LVL74
	.llong	.LVL75
	.2byte	0x2
	.byte	0x90
	.byte	0x44
	.llong	.LVL75
	.llong	.LVL84
	.2byte	0x2
	.byte	0x90
	.byte	0x3e
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL41
	.llong	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL44
	.llong	.LVL46
	.2byte	0x2
	.byte	0x90
	.byte	0x37
	.llong	.LVL46
	.llong	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL50
	.llong	.LVL52-1
	.2byte	0x2
	.byte	0x90
	.byte	0x4b
	.llong	.LVL53
	.llong	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL47
	.llong	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL49
	.llong	.LVL52-1
	.2byte	0x1
	.byte	0x6b
	.llong	.LVL53
	.llong	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL75
	.llong	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL79
	.llong	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL82
	.llong	.LVL83
	.2byte	0x2
	.byte	0x90
	.byte	0x47
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL33
	.llong	.LVL40
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	.LVL47
	.llong	.LVL48
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	.LVL49
	.llong	.LVL52-1
	.2byte	0x2
	.byte	0x90
	.byte	0x44
	.llong	.LVL53
	.llong	.LVL54
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	.LVL75
	.llong	.LVL76
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	.LVL77
	.llong	.LVL79
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL79
	.llong	.LVL80
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	.LVL82
	.llong	.LVL83
	.2byte	0x2
	.byte	0x90
	.byte	0x4d
	.llong	0
	.llong	0
.LLST26:
	.llong	.LVL39
	.llong	.LVL40
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.llong	.LVL72
	.llong	.LVL73
	.2byte	0x2
	.byte	0x90
	.byte	0x35
	.llong	.LVL73
	.llong	.LVL74
	.2byte	0x2
	.byte	0x90
	.byte	0x34
	.llong	.LVL84
	.llong	.LVL85
	.2byte	0x2
	.byte	0x90
	.byte	0x34
	.llong	.LVL85
	.llong	.LVL87
	.2byte	0x2
	.byte	0x90
	.byte	0x35
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL53
	.llong	.LVL54
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL54
	.llong	.LVL62
	.2byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.llong	.LVL62
	.llong	.LVL63
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL63
	.llong	.LVL74
	.2byte	0x2
	.byte	0x90
	.byte	0x37
	.llong	.LVL74
	.llong	.LVL84
	.2byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.llong	.LVL84
	.llong	.LFE6
	.2byte	0x2
	.byte	0x90
	.byte	0x37
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL57
	.llong	.LVL59-1
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL65
	.llong	.LVL67-1
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL57
	.llong	.LVL58
	.2byte	0x9
	.byte	0x8a
	.byte	0
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0x94
	.byte	0x4
	.byte	0x1c
	.byte	0x9f
	.llong	.LVL58
	.llong	.LVL74
	.2byte	0x2
	.byte	0x90
	.byte	0x36
	.llong	.LVL84
	.llong	.LVL86
	.2byte	0x2
	.byte	0x90
	.byte	0x36
	.llong	.LVL87
	.llong	.LFE6
	.2byte	0x2
	.byte	0x90
	.byte	0x36
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL65
	.llong	.LVL66
	.2byte	0x7
	.byte	0x8a
	.byte	0
	.byte	0x92
	.byte	0x37
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.llong	.LVL66
	.llong	.LVL67-1
	.2byte	0x2
	.byte	0x90
	.byte	0x49
	.llong	0
	.llong	0
.LLST31:
	.llong	.LVL34
	.llong	.LVL35
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.llong	.LVL36
	.llong	.LFE6
	.2byte	0x2
	.byte	0x90
	.byte	0x3a
	.llong	0
	.llong	0
.LLST32:
	.llong	.LVL68
	.llong	.LVL74
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0x3dcccccd
	.llong	.LVL84
	.llong	.LFE6
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0x3dcccccd
	.llong	0
	.llong	0
.LLST33:
	.llong	.LVL68
	.llong	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL71
	.llong	.LVL72
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL87
	.llong	.LVL88-1
	.2byte	0x1
	.byte	0x60
	.llong	0
	.llong	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
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
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LBB3
	.llong	.LBE3
	.llong	.LBB4
	.llong	.LBE4
	.llong	.LBB5
	.llong	.LBE5
	.llong	.LBB6
	.llong	.LBE6
	.llong	0
	.llong	0
	.llong	.LBB7
	.llong	.LBE7
	.llong	.LBB12
	.llong	.LBE12
	.llong	.LBB13
	.llong	.LBE13
	.llong	.LBB14
	.llong	.LBE14
	.llong	.LBB15
	.llong	.LBE15
	.llong	.LBB16
	.llong	.LBE16
	.llong	.LBB17
	.llong	.LBE17
	.llong	0
	.llong	0
	.llong	.LBB8
	.llong	.LBE8
	.llong	.LBB9
	.llong	.LBE9
	.llong	.LBB10
	.llong	.LBE10
	.llong	.LBB11
	.llong	.LBE11
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
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"",@progbits
.LASF1:
	.string	"tolerance"
.LASF0:
	.string	"order"
