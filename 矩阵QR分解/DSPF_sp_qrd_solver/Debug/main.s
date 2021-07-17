	.file	"main.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.const.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s = ["
.LC1:
	.string	"%f, "
.LC2:
	.string	"]"
	.section	.text.printMatrix,"ax",@progbits
	.align	2
	.global	printMatrix
	.type	printMatrix, @function
printMatrix:
.LFB3:
	.file 1 "../main.c"
	.loc 1 11 0
	.cfi_startproc
.LVL0:
		SMOVIL		-96, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 96
		SMVAGA36.M1		R11:R10, OR11
	|	SMOVIL.L		.LC0, R42
		SSTDW		R63:R62, *+AR15[11]
		SSTDW		R31:R30, *+AR15[5]
	.cfi_offset 78, -8
	.cfi_offset 79, -4
	.cfi_offset 46, -56
	.cfi_offset 47, -52
	.loc 1 13 0
		SMOVIH.L		.LC0, R42
	|	SMVAAGL.M2		OR11, R31:R30
		SMOVIH4.L		.LC0, R43
		SSTDW		R13:R12, *+AR15[2]
	|	SMVAAGH.M2		OR11, R31:R30
		SSTDW		R43:R42, *+AR15[1]
		SNOP		2
	.loc 1 11 0
		SSTDW		R41:R40, *+AR15[10]
		SSTDW		R39:R38, *+AR15[9]
	.cfi_offset 56, -16
	.cfi_offset 57, -12
	.cfi_offset 54, -24
	.cfi_offset 55, -20
	.loc 1 13 0
		SBR		printf
	|	SMOV.M2		R14, R41
	|	SMOV.M1		R30, R38
		SMOV.M2		R31, R39
	|	SMOVIL		.L14, R62
	.loc 1 11 0
		SSTDW		R37:R36, *+AR15[8]
	|	SMOVIH		.L14, R62
	.cfi_offset 52, -32
	.cfi_offset 53, -28
		SSTDW		R33:R32, *+AR15[6]
	|	SMOVIH4.L		.L14, R63
	.cfi_offset 48, -48
	.cfi_offset 49, -44
		SMOV.M2		R16, R32
	|	SMOVIL		0, R36
		SMOVIH4.L		.LC1, R33
	.cfi_offset 50, -40
	.cfi_offset 51, -36
	.loc 1 13 0
	;; call to printf occurs, with return value
		SSTDW		R35:R34, *+AR15[7]
.LVL1:
.L14:
	.loc 1 14 0
		SMOVIL		0, R42
	|	SADD.M2		-1,R32,R43
		SLT		R42, R41, R0
	[!R0]	SBR		.L2
	|	SSHFLL		1, R43, R45
	.loc 1 11 0
		SSHFLL		2, R43, R1
		SLTU		R45, R43, R3
	|	SADD.M2		4,R1,R37
		SLTU		R1, R45, R10
		SSHFLL		1, R3, R12
		SSHFLL		1, R41, R44
	|	SADD.M2		R12,R10,R14
		SSHFAR		31, R41, R46
	;; condjump to .L2 occurs
		SLTU		R37, R1, R16
		SSHFLL		2, R41, R9
	|	SADD.M2		R14,R16,R17
		SLT		R36, R32, R18
	|	SSTW		R9, *+AR15[7]
		SLTU		R44, R41, R47
	|	SSTW		R17, *+AR15[9]
		SSHFLL		1, R46, R2
		SADD.M2		R2,R47,R8
	|	SLTU		R9, R44, R13
		SSTW		R18, *+AR15[8]
	|	SSHFLL		1, R8, R15
		SMOVIL.L		.LC1, R32
	|	SADD.M2		R15,R13,R40
.LVL2:
		SMOVIH.L		.LC1, R32
.LVL3:
.L3:
	.loc 1 15 0 discriminator 1
		SLDW		*+AR15[8], R0
	|	SADD.M2		R38,R37,R34
	|	SMOV.M1		R38, R30
	.loc 1 11 0 discriminator 1
		SLTU		R34, R37, R35
	|	SMOV.M2		R39, R31
		SNOP		4
	.loc 1 15 0 discriminator 1
	[!R0]	SBR		.L5
		SNOP		6
	;; condjump to .L5 occurs
	.loc 1 11 0
		SLDW		*+AR15[9], R11
		SNOP		5
		SADD.M2		R39,R11,R20
		SADD.M2		R20,R35,R35
.LVL4:
.L4:
	.loc 1 11 0 is_stmt 0 discriminator 2
		SMVAGA36.M2		R31:R30, AR10
	|	SADD.M1		4,R30,R21
		SLTU		R21, R30, R22
	|	SMOV.M1		R21, R30
	.loc 1 16 0 is_stmt 1 discriminator 2
		SLDW		*AR10, R24
	|	SADD.M2		R31,R22,R31
		SSTDW		R33:R32, *+AR15[1]
		SNOP		2
		SBR		printf
		SMOVIL		.L15, R62
		SFSPDP32T.M2		R24, R27:R26
	|	SMOVIH		.L15, R62
		SMOVIH4.L		.L15, R63
		SSTDW		R27:R26, *+AR15[2]
	;; call to printf occurs, with return value
		SNOP		2
.LVL5:
.L15:
	.loc 1 15 0 discriminator 2
		SEQ		R30, R34, R1
	[R1]	SEQ		R31, R35, R1
	[!R1]	SBR		.L4
		SNOP		6
	;; condjump to .L4 occurs
.L5:
	.loc 1 14 0
		SADD.M2		1,R36,R36
	|	SLDW		*+AR15[7], R25
	|	SADD.M1		R39,R40,R29
.LVL6:
		SEQ		R41, R36, R2
	[!R2]	SBR		.L3
		SNOP		3
		SADD.M2		R38,R25,R27
		SLTU		R27, R38, R28
	|	SMOV.M2		R27, R38
		SADD.M2		R29,R28,R39
	;; condjump to .L3 occurs
.LVL7:
.L2:
	.loc 1 20 0
		SMOVIL		96, R6
	|	SLDDW		*+AR15[5], R31:R30
		SMOVIL		0, R7
	|	SLDDW		*+AR15[6], R33:R32
		SLDDW		*+AR15[7], R35:R34
	|	SMOVIL.L		.LC2, R10
		SLDDW		*+AR15[8], R37:R36
	|	SMOVIH.L		.LC2, R10
		SLDDW		*+AR15[9], R39:R38
	|	SMOVIH4.L		.LC2, R11
	.loc 1 19 0
		SNOP		5
		SBR		puts
	|	SLDDW		*+AR15[10], R41:R40
	.loc 1 20 0
		SLDDW		*+AR15[11], R63:R62
	|	SADDA.M2		R7:R6,AR15,AR15
	.loc 1 19 0
	;; sibcall to puts occurs
		SNOP		5
.LVL8:
	.cfi_endproc
.LFE3:
	.size	printMatrix, .-printMatrix
	.section	.text.DSPF_sp_qrd_wrapper,"ax",@progbits
	.align	2
	.global	DSPF_sp_qrd_wrapper
	.type	DSPF_sp_qrd_wrapper, @function
DSPF_sp_qrd_wrapper:
.LFB4:
	.loc 1 43 0
	.cfi_startproc
.LVL9:
		SMOVIL		-72, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI1:
	.cfi_def_cfa_offset 72
		SMVAAGL.M1		AR14, R7:R6
	|	SMVAGA36.M2		R25:R24, OR11
		SSTDW		R63:R62, *+AR15[7]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.cfi_offset 50, -48
	.cfi_offset 51, -44
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R19:R18, OR12
	|	SSTDW		R35:R34, *+AR15[3]
		SMVAGA36.M1		R21:R20, OR13
	|	SMVAGA36.M2		R11:R10, AR14
	|	SMOVIL		0, R10
	.loc 1 44 0
		SNOP		1
.LVL10:
	.loc 1 43 0
		SSTDW		R7:R6, *+AR15[8]
	.cfi_offset 14, -8
	.cfi_offset 48, -56
	.cfi_offset 49, -52
		SMVAAGL.M1		OR8, R7:R6
	|	SMVAAGL.M2		OR13, R35:R34
	|	SSTDW		R33:R32, *+AR15[2]
		SMVAAGL.M1		OR12, R33:R32
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAAGH.M2		OR13, R35:R34
		SSTDW		R31:R30, *+AR15[1]
		SSTDW		R7:R6, *+AR15[6]
	.cfi_offset 46, -64
	.cfi_offset 47, -60
	.cfi_offset 88, -24
	.loc 1 44 0
		SBR		GetTimerCount
	|	SMVAAGL.M1		OR11, R31:R30
	|	SMVAGA36.M2		R23:R22, OR8
	.loc 1 43 0
		SMVAAGH.M1		OR12, R33:R32
	|	SMVAAGL.M2		AR8, R7:R6
	|	SMOVIL		.L17, R62
	.cfi_offset 52, -40
	.cfi_offset 53, -36
		SMVAAGH.M1		OR11, R31:R30
	|	SSTDW		R37:R36, *+AR15[4]
	|	SMOVIH		.L17, R62
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R13:R12, AR8
	|	SMOVIH4.L		.L17, R63
		SNOP		1
		SSTDW		R7:R6, *+AR15[5]
	.cfi_offset 8, -32
	.loc 1 44 0
	;; call to GetTimerCount occurs, with return value
		SMOV.M2		R14, R36
	|	SMOV.M1		R16, R37
.LVL11:
.L17:
	.loc 1 45 0
		SMVAAGL.M1		OR8, R19:R18
	|	SMVAGA36.M2		R33:R32, OR14
		SMVAGA36.M1		R35:R34, OR11
	|	SSTW		R10, *AR14
		SMVAAGH.M1		OR8, R19:R18
	|	SMVAGA36.M2		R31:R30, OR8
.LVL12:
		SBR		trival_qr
	|	SMVAAGL.M1		OR14, R15:R14
	|	SMVAAGL.M2		OR11, R17:R16
		SMVAAGL.M1		OR8, R21:R20
	|	SMOVIL		.L18, R62
		SMVAAGH.M1		OR14, R15:R14
	|	SMVAAGH.M2		OR11, R17:R16
	|	SMOVIH		.L18, R62
		SMVAAGH.M1		OR8, R21:R20
	|	SMOVIH4.L		.L18, R63
		SMOV.M2		R37, R12
		SMOV.M2		R36, R10
	;; call to trival_qr occurs, with return value
		SNOP		1
.LVL13:
.L18:
	.loc 1 46 0
		SBR		GetTimerCount
	|	SMOV.M2		R10, R31
	|	SMOVIL		0, R10
.LVL14:
		SMOVIL		.L19, R62
		SMOVIH		.L19, R62
		SMOVIH4.L		.L19, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL15:
	.loc 1 48 0
.L19:
		SLDDW		*+AR15[5], R7:R6
	.loc 1 46 0
		SSTW		R10, *AR8
	|	SMOV.M2		R31, R10
	.loc 1 48 0
		SLDDW		*+AR15[7], R63:R62
		SNOP		1
		SLDDW		*+AR15[1], R31:R30
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
	|	SLDDW		*+AR15[6], R7:R6
.LVL16:
		SNOP		1
		SLDDW		*+AR15[2], R33:R32
	|	SMVCGC.L		R63, BRReg
		SNOP		1
		SLDDW		*+AR15[3], R35:R34
		SNOP		1
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[8], R7:R6
		SNOP		1
		SLDDW		*+AR15[4], R37:R36
.LVL17:
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		72, R6
.LVL18:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.cfi_endproc
.LFE4:
	.size	DSPF_sp_qrd_wrapper, .-DSPF_sp_qrd_wrapper
	.section	.const.str1.1
.LC3:
	.string	"x"
.LC4:
	.string	"y"
	.section	.text.DSPF_sp_qrd_solver_wrapper,"ax",@progbits
	.align	2
	.global	DSPF_sp_qrd_solver_wrapper
	.type	DSPF_sp_qrd_solver_wrapper, @function
DSPF_sp_qrd_solver_wrapper:
.LFB5:
	.loc 1 51 0
	.cfi_startproc
.LVL19:
		SMOVIL		-136, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI2:
	.cfi_def_cfa_offset 136
		SMVAAGL.M1		AR14, R7:R6
	|	SMOVIL.L		v_Q, R42
	|	SMVAGA36.M2		R21:R20, OR11
		SSTDW		R63:R62, *+AR15[15]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.cfi_offset 50, -80
	.cfi_offset 51, -76
		SMVAAGH.M2		AR14, R7:R6
	|	SMOVIH.L		v_Q, R42
	|	SSTDW		R35:R34, *+AR15[7]
	.loc 1 54 0
		SMOVIH4.L		v_Q, R43
	|	SMVAAGL.M1		OR11, R35:R34
	|	SMVAGA36.M2		R23:R22, AR14
		SSHFLL		2, R14, R44
	|	SMVAGA36.M1		R43:R42, AR10
	.loc 1 51 0
		SSTDW		R7:R6, *+AR15[16]
	.cfi_offset 14, -8
		SMVAAGL.M1		OR9, R7:R6
	|	SMULIS.M2		R16,R44,R45
	|	SSTDW		R11:R10, *+AR15[3]
	|	SMOVIL.L		v_y, R46
	.loc 1 60 0
		SMOVIH.L		v_y, R46
	|	SMVAAGH.M1		OR11, R35:R34
	.loc 1 51 0
		SMVAAGH.M1		OR9, R7:R6
	|	SMVAGA36.M2		R19:R18, OR9
	|	SMOVIH4.L		v_y, R47
		SSTDW		R13:R12, *+AR15[4]
		SSTDW		R7:R6, *+AR15[14]
	.cfi_offset 89, -24
		SMVAAGL.M1		OR8, R7:R6
	|	SMVAAGL.M2		OR9, R11:R10
	.loc 1 54 0
		SNOP		1
.LVL20:
	.loc 1 51 0
		SMVAAGH.M1		OR8, R7:R6
	|	SLDDW		*AR10, R13:R12
	|	SMVAGA36.M2		R27:R26, OR8
.LVL21:
	.loc 1 54 0
		SMVAAGH.M1		OR9, R11:R10
	|	SSTW		R44, *+AR15[2]
	.loc 1 51 0
		SSTDW		R7:R6, *+AR15[13]
		SMVAAGL.M2		AR9, R7:R6
		SNOP		1
	.cfi_offset 88, -32
		SMVAAGH.M1		AR9, R7:R6
	|	SMVAGA36.M2		R47:R46, AR9
	.loc 1 54 0
		SSTW		R45, *+AR15[5]
	.loc 1 51 0
		SSTDW		R7:R6, *+AR15[12]
		SMVAAGL.M2		AR8, R7:R6
		SNOP		1
	.cfi_offset 9, -40
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R25:R24, AR8
	|	SSTW		R42, *+AR15[4]
	.loc 1 54 0
		SSTW		R43, *+AR15[3]
		SNOP		2
	.loc 1 51 0
		SSTDW		R7:R6, *+AR15[11]
		SSTDW		R41:R40, *+AR15[10]
	.cfi_offset 8, -48
	.cfi_offset 56, -56
	.cfi_offset 57, -52
	.loc 1 55 0
		SMOVIL.L		v_R, R40
	.loc 1 54 0
		SBR		M7002_datatrans
	|	SMOVIH.L		v_R, R40
	.loc 1 51 0
		SSTDW		R39:R38, *+AR15[9]
	|	SMOVIL		.L21, R62
	.cfi_offset 54, -64
	.cfi_offset 55, -60
		SSTDW		R37:R36, *+AR15[8]
	|	SMOVIH		.L21, R62
	.cfi_offset 52, -72
	.cfi_offset 53, -68
		SMOV.M2		R16, R37
	|	SMOV.M1		R14, R36
	|	SMOVIH4.L		.L21, R63
	.loc 1 54 0
		SMOV.M2		R45, R14
	|	SMOVIH4.L		v_R, R41
.LVL22:
	.loc 1 51 0
		SSTDW		R33:R32, *+AR15[6]
	.cfi_offset 48, -88
	.cfi_offset 49, -84
	.cfi_offset 46, -96
	.cfi_offset 47, -92
	.loc 1 54 0
	;; call to M7002_datatrans occurs
		SSTDW		R31:R30, *+AR15[5]
.LVL23:
.L21:
	.loc 1 55 0
		SMVAGA36.M1		R35:R34, OR12
	|	SMVAGA36.M2		R41:R40, AR10
	|	SMOVIL.L		v_b, R38
	.loc 1 56 0
		SMOVIH.L		v_b, R38
	.loc 1 55 0
		SLDW		*+AR15[5], R0
	|	SBR		M7002_datatrans
	|	SMVAAGL.M2		OR12, R11:R10
	|	SMOVIH4.L		v_b, R39
		SLDDW		*AR10, R13:R12
	|	SMOVIL		.L22, R62
		SMVAAGH.M2		OR12, R11:R10
	|	SMOVIH		.L22, R62
		SMOVIH4.L		.L22, R63
	.loc 1 64 0
		SMOVIL.L		.LC3, R32
		SMOVIH.L		.LC3, R32
	.loc 1 55 0
	;; call to M7002_datatrans occurs
		SMOV.M2		R0, R14
	|	SMOVIH4.L		.LC3, R33
.LVL24:
.L22:
	.loc 1 56 0
		SLDW		*+AR15[2], R1
	|	SMVAGA36.M1		R39:R38, AR10
	|	SMVAAGL.M2		AR14, R11:R10
	|	SMOVIL.L		.LC4, R30
		SBR		M7002_datatrans
	|	SMOVIH.L		.LC4, R30
		SLDDW		*AR10, R13:R12
	|	SMVAAGH.M2		AR14, R11:R10
	|	SMOVIL		.L23, R62
		SMOVIH		.L23, R62
		SMOVIH4.L		.L23, R63
	.loc 1 65 0
		SMOVIH4.L		.LC4, R31
	.loc 1 56 0
		SMOV.M2		R1, R14
	;; call to M7002_datatrans occurs
		SNOP		1
.LVL25:
.L23:
	.loc 1 58 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L24, R62
		SMOVIH		.L24, R62
		SMOVIH4.L		.L24, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL26:
.L24:
		SLDDW		*+AR15[3], R47:R46
	|	SMOV.M2		R37, R12
	.loc 1 60 0
		SLDW		*+AR15[4], R42
		SLDW		*+AR15[3], R43
		SLDDW		*AR9, R21:R20
		SNOP		2
	.loc 1 58 0
		SMVAGA36.M2		R47:R46, AR10
		SNOP		2
		SSTW		R10, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	|	SMOVIL.L		v_x, R42
	|	SMOV.M1		R36, R10
	.loc 1 60 0
		SMOVIH.L		v_x, R42
		SMOVIH4.L		v_x, R43
		SLDDW		*AR10, R15:R14
	|	SMVAGA36.M2		R41:R40, AR10
		SNOP		1
		SLDDW		*AR10, R17:R16
	|	SMVAGA36.M2		R39:R38, AR10
		SNOP		1
		SLDDW		*AR10, R19:R18
	|	SMVAGA36.M2		R43:R42, AR10
		SBR		DSPF_sp_qrd_solver7
		SLDDW		*AR10, R23:R22
	|	SMOVIL		.L25, R62
		SMOVIH		.L25, R62
		SMOVIH4.L		.L25, R63
	;; call to DSPF_sp_qrd_solver7 occurs, with return value
		SNOP		3
.LVL27:
.L25:
	.loc 1 61 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L26, R62
		SMOVIH		.L26, R62
		SMOVIH4.L		.L26, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL28:
.L26:
		SLDDW		*+AR15[4], R43:R42
	|	SMVAAGL.M2		OR8, R13:R12
	|	SSHFLL		2, R37, R14
	.loc 1 62 0
		SNOP		1
		SMVAAGH.M2		OR8, R13:R12
		SNOP		3
	.loc 1 61 0
		SMVAGA36.M2		R43:R42, AR10
	|	SMOVIL.L		v_x, R42
	.loc 1 62 0
		SMOVIH.L		v_x, R42
		SMOVIH4.L		v_x, R43
	|	SSTW		R10, *AR10
		SMVAGA36.M2		R43:R42, AR10
		SBR		M7002_datatrans
		SLDDW		*AR10, R11:R10
	|	SMOVIL		.L27, R62
		SMOVIH		.L27, R62
		SMOVIH4.L		.L27, R63
	;; call to M7002_datatrans occurs
		SNOP		3
.LVL29:
.L27:
	.loc 1 63 0
		SLDW		*+AR15[2], R2
	|	SBR		M7002_datatrans
	|	SMVAAGL.M2		AR8, R13:R12
		SLDDW		*AR9, R11:R10
	|	SMOVIL		.L28, R62
		SMVAAGH.M2		AR8, R13:R12
	|	SMOVIH		.L28, R62
		SMOVIH4.L		.L28, R63
		SNOP		2
	;; call to M7002_datatrans occurs
		SMOV.M2		R2, R14
.LVL30:
.L28:
	.loc 1 64 0
		SBR		printMatrix
	|	SMVAGA36.M2		R33:R32, OR13
	|	SMOV.M1		R37, R16
	|	SMOVIL		1, R14
		SMVAAGL.M1		OR8, R11:R10
	|	SMOVIL		.L29, R62
		SMVAAGL.M1		OR13, R13:R12
	|	SMOVIH		.L29, R62
		SMVAAGH.M1		OR8, R11:R10
	|	SMOVIH4.L		.L29, R63
		SMVAAGH.M1		OR13, R13:R12
	;; call to printMatrix occurs
		SNOP		2
.LVL31:
.L29:
	.loc 1 65 0
		SBR		printMatrix
	|	SMVAGA36.M2		R31:R30, OR14
	|	SMOV.M1		R36, R16
	|	SMOVIL		1, R14
		SMVAAGL.M1		AR8, R11:R10
	|	SMOVIL		.L30, R62
		SMVAAGL.M1		OR14, R13:R12
	|	SMOVIH		.L30, R62
		SMVAAGH.M1		AR8, R11:R10
	|	SMOVIH4.L		.L30, R63
		SMVAAGH.M1		OR14, R13:R12
	;; call to printMatrix occurs
		SNOP		2
.LVL32:
.L30:
	.loc 1 69 0
		SMVAAGL.M1		OR9, R15:R14
	|	SMVAAGL.M2		AR14, R19:R18
		SMVAAGL.M1		AR8, R21:R20
	|	SMVAAGL.M2		OR8, R23:R22
		SMVAAGH.M1		OR9, R15:R14
	|	SMVAGA36.M2		R35:R34, OR9
.LVL33:
		SBR		trival_qr_solver
	|	SMVAAGH.M1		AR14, R19:R18
	|	SMVAAGH.M2		AR8, R21:R20
		SMVAAGH.M1		OR8, R23:R22
	|	SMVAAGL.M2		OR9, R17:R16
	|	SMOVIL		.L31, R62
		SMOVIH		.L31, R62
		SMVAAGH.M2		OR9, R17:R16
	|	SMOV.M1		R37, R12
	|	SMOVIH4.L		.L31, R63
		SMOV.M1		R36, R10
	;; call to trival_qr_solver occurs, with return value
		SNOP		2
.LVL34:
.L31:
		SMOV.M1		R10, R35
	|	SMVAAGL.M2		OR8, R11:R10
	|	SMOVIL		1, R14
.LVL35:
	.loc 1 70 0
		SBR		printMatrix
	|	SMOV.M1		R37, R16
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAGA36.M2		R33:R32, OR8
	|	SMOVIL		.L32, R62
.LVL36:
		SMOVIH		.L32, R62
		SMVAAGL.M2		OR8, R13:R12
	|	SMOVIH4.L		.L32, R63
		SNOP		1
		SMVAAGH.M2		OR8, R13:R12
	;; call to printMatrix occurs
		SNOP		1
.LVL37:
.L32:
	.loc 1 71 0
		SBR		printMatrix
	|	SMVAGA36.M2		R31:R30, OR11
	|	SMOV.M1		R36, R16
	|	SMOVIL		1, R14
		SMVAAGL.M1		AR8, R11:R10
	|	SMOVIL		.L33, R62
		SMVAAGL.M1		OR11, R13:R12
	|	SMOVIH		.L33, R62
		SMVAAGH.M1		AR8, R11:R10
	|	SMOVIH4.L		.L33, R63
		SMVAAGH.M1		OR11, R13:R12
	;; call to printMatrix occurs
		SNOP		2
.LVL38:
	.loc 1 74 0
.L33:
		SLDDW		*+AR15[11], R7:R6
	|	SMOV.M2		R35, R10
		SLDDW		*+AR15[15], R63:R62
		SLDDW		*+AR15[5], R31:R30
		SLDDW		*+AR15[6], R33:R32
		SLDDW		*+AR15[7], R35:R34
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
.LVL39:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[12], R7:R6
		SLDDW		*+AR15[8], R37:R36
.LVL40:
		SLDDW		*+AR15[9], R39:R38
		SLDDW		*+AR15[10], R41:R40
		SNOP		2
		SMVAGA36.M2		R7:R6, AR9
		SNOP		2
		SLDDW		*+AR15[13], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[14], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR9
	|	SLDDW		*+AR15[16], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		136, R6
.LVL41:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.cfi_endproc
.LFE5:
	.size	DSPF_sp_qrd_solver_wrapper, .-DSPF_sp_qrd_solver_wrapper
	.section	.text.DSPF_sp_qrd_inverse_wrapper,"ax",@progbits
	.align	2
	.global	DSPF_sp_qrd_inverse_wrapper
	.type	DSPF_sp_qrd_inverse_wrapper, @function
DSPF_sp_qrd_inverse_wrapper:
.LFB6:
	.loc 1 76 0
	.cfi_startproc
.LVL42:
		SMOVIL		-64, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI3:
	.cfi_def_cfa_offset 64
		SMVAAGL.M1		AR14, R7:R6
	|	SMVAGA36.M2		R19:R18, OR12
		SSTDW		R63:R62, *+AR15[6]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.cfi_offset 48, -48
	.cfi_offset 49, -44
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R23:R22, OR11
	|	SSTDW		R33:R32, *+AR15[2]
		SMVAAGL.M1		OR12, R33:R32
	|	SMVAGA36.M2		R11:R10, AR14
	|	SMOVIL		0, R10
	.loc 1 77 0
		SNOP		1
.LVL43:
	.loc 1 76 0
		SSTDW		R7:R6, *+AR15[7]
	.cfi_offset 14, -8
	.cfi_offset 46, -56
	.cfi_offset 47, -52
		SMVAAGL.M2		OR8, R7:R6
	|	SSTDW		R31:R30, *+AR15[1]
		SMVAAGL.M1		OR11, R31:R30
	|	SMVAAGH.M2		OR12, R33:R32
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R21:R20, OR8
	.cfi_offset 50, -40
	.cfi_offset 51, -36
		SMVAAGH.M1		OR11, R31:R30
	|	SSTDW		R35:R34, *+AR15[3]
	.cfi_offset 88, -24
	.loc 1 77 0
		SBR		GetTimerCount
	|	SSTDW		R7:R6, *+AR15[5]
	.loc 1 76 0
		SMOV.M2		R14, R34
	|	SMOV.M1		R16, R35
	|	SMOVIL		.L35, R62
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L35, R62
		SMOVIH4.L		.L35, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R13:R12, AR8
		SNOP		1
	.cfi_offset 8, -32
	.loc 1 77 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[4]
.LVL44:
.L35:
	.loc 1 78 0
		SBR		trival_inverse
	|	SMVAGA36.M1		R31:R30, OR14
	|	SMVAGA36.M2		R33:R32, OR13
	|	SSTW		R10, *AR14
		SMVAAGL.M1		OR8, R17:R16
	|	SMOVIL		.L36, R62
		SMVAAGL.M1		OR13, R15:R14
	|	SMVAAGL.M2		OR14, R19:R18
	|	SMOVIH		.L36, R62
		SMVAAGH.M1		OR8, R17:R16
	|	SMOVIH4.L		.L36, R63
		SMVAAGH.M1		OR13, R15:R14
	|	SMVAAGH.M2		OR14, R19:R18
		SNOP		1
	;; call to trival_inverse occurs, with return value
		SMOV.M2		R35, R12
	|	SMOV.M1		R34, R10
.LVL45:
.L36:
	.loc 1 79 0
		SBR		GetTimerCount
	|	SMOV.M2		R10, R31
	|	SMOVIL		0, R10
.LVL46:
		SMOVIL		.L37, R62
		SMOVIH		.L37, R62
		SMOVIH4.L		.L37, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL47:
	.loc 1 81 0
.L37:
		SLDDW		*+AR15[4], R7:R6
	.loc 1 79 0
		SSTW		R10, *AR8
	|	SMOV.M2		R31, R10
	.loc 1 81 0
		SLDDW		*+AR15[6], R63:R62
		SNOP		1
		SLDDW		*+AR15[1], R31:R30
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
	|	SLDDW		*+AR15[5], R7:R6
.LVL48:
		SNOP		1
		SLDDW		*+AR15[2], R33:R32
	|	SMVCGC.L		R63, BRReg
		SNOP		1
		SLDDW		*+AR15[3], R35:R34
		SNOP		1
.LVL49:
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[7], R7:R6
.LVL50:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		64, R6
.LVL51:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.cfi_endproc
.LFE6:
	.size	DSPF_sp_qrd_inverse_wrapper, .-DSPF_sp_qrd_inverse_wrapper
	.section	.const.str1.1
.LC5:
	.string	"DSPF_dp_qrd\tIter#: %d\t"
.LC6:
	.string	"QR decomposition failed!"
.LC7:
	.string	"natural decomposition fails error=%e\n"
.LC8:
	.string	"solver failed!"
.LC9:
	.string	"natural A*x is not equal to b! error=%e\n"
.LC10:
	.string	"natural inv(A)*A is not equal to identity!  error=%e\n"
.LC11:
	.string	"Successful"
.LC12:
	.string	"\torder=%2dx%2d, \tqr: %d, \tsolver: %d, \tinverse: %d, \n"
.LC13:
	.string	"vector Result Failure\n"
	.section	.text.testQr,"ax",@progbits
	.align	2
	.global	testQr
	.type	testQr, @function
testQr:
.LFB8:
	.loc 1 110 0
	.cfi_startproc
.LVL52:
		SMOVIL		-184, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI4:
	.cfi_def_cfa_offset 184
		SMVAAGL.M1		AR14, R7:R6
	|	SMOVIL.L		b, R42
	.cfi_offset 48, -80
	.cfi_offset 49, -76
		SMOVIL.L		x-4, R44
	|	SSTDW		R33:R32, *+AR15[13]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SMVAAGH.M2		AR14, R7:R6
	|	SMOVIH.L		b, R42
	|	SSTDW		R63:R62, *+AR15[21]
		SMOVIH4.L		b, R43
		SMOVIH.L		x-4, R44
		SSTDW		R7:R6, *+AR15[22]
	.cfi_offset 14, -8
		SMVAAGL.M2		OR8, R7:R6
	|	SMOVIH4.L		x-4, R45
	|	SSTDW		R43:R42, *+AR15[7]
		SMOVIL.L		.LC5, R42
		SMVAAGH.M2		OR8, R7:R6
	|	SMOVIH.L		.LC5, R42
		SSTDW		R45:R44, *+AR15[10]
	|	SMOVIL.L		A, R44
		SSTDW		R7:R6, *+AR15[20]
	.cfi_offset 88, -24
		SMVAAGL.M2		AR9, R7:R6
	|	SMOVIH4.L		.LC5, R43
		SMOVIH.L		A, R44
	|	SMVAGA36.M1		R43:R42, OR8
	.cfi_offset 56, -48
	.cfi_offset 57, -44
		SMVAAGH.M1		AR9, R7:R6
	|	SMOVIH4.L		A, R45
	|	SSTDW		R41:R40, *+AR15[17]
	.cfi_offset 54, -56
	.cfi_offset 55, -52
		SMVAGA36.M1		R45:R44, AR9
	|	SMOVIL.L		Q, R42
	|	SSTDW		R39:R38, *+AR15[16]
		SMOVIL.L		R, R44
	.loc 1 186 0
		SMOVIL		973082626, R32
	.loc 1 110 0
		SSTDW		R7:R6, *+AR15[19]
	.cfi_offset 9, -32
	.cfi_offset 46, -88
	.cfi_offset 47, -84
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH.L		Q, R42
	|	SSTDW		R31:R30, *+AR15[12]
		SMOVIH4.L		Q, R43
		SMVAAGH.M1		AR8, R7:R6
	|	SMOVIH.L		R, R44
	|	SMVAGA36.M2		R43:R42, AR8
	.cfi_offset 52, -64
	.cfi_offset 53, -60
		SMOVIH4.L		R, R45
	|	SSTDW		R37:R36, *+AR15[15]
		SSTDW		R7:R6, *+AR15[18]
	.cfi_offset 8, -40
	.loc 1 186 0
		SMOVIH		973082626, R32
	|	SMVAGA36.M2		R45:R44, AR14
		SMOVIL.L		b-4, R36
	.loc 1 110 0
		SSTDW		R35:R34, *+AR15[14]
	.cfi_offset 50, -72
	.cfi_offset 51, -68
		SMOVIH.L		b-4, R36
	|	SMOV.M2		R32, R35
		SMOVIH4.L		b-4, R37
	.loc 1 122 0
		SMOVIL		1, R33
	.loc 1 133 0
		SMOVIL		3, R34
.LVL53:
.L78:
	.loc 1 134 0
		SBR		printf
	|	SSTW		R34, *+AR15[4]
	|	SMVAAGL.M2		OR8, R43:R42
	|	SMOV.M1		R36, R30
	|	SMOVIL		0, R38
		SMOV.M1		R37, R31
	|	SMOVIL		.L116, R62
		SMVAAGH.M2		OR8, R43:R42
	|	SMOVIH		.L116, R62
		SMOVIH4.L		.L116, R63
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		128, R39
	.loc 1 168 0
		SMOVIL		16384, R40
	.loc 1 134 0
	;; call to printf occurs, with return value
		SNOP		1
.LVL54:
.L116:
	.loc 1 135 0
		SMOVIL		4, R43
		SEQ		R43, R34, R0
	[R0]	SBR		.L40
	|	SMOVIL		0, R10
	.loc 1 181 0
		SNOP		6
	.loc 1 135 0
	;; condjump to .L40 occurs
	.loc 1 167 0
		SBR		srand
		SMOVIL		.L117, R62
		SMOVIH		.L117, R62
		SMOVIH4.L		.L117, R63
	;; call to srand occurs
		SNOP		3
.LVL55:
.L117:
.L41:
	.loc 1 133 0 discriminator 1
		SMOVIL		0, R41
.LVL56:
.L42:
	.loc 1 172 0 discriminator 2
		SBR		rand
		SMOVIL		.L118, R62
		SMOVIH		.L118, R62
		SMOVIH4.L		.L118, R63
	;; call to rand occurs, with return value
		SNOP		3
.LVL57:
.L118:
	.loc 1 110 0 discriminator 2
		SADD.M2		R38,R41,R44
	|	SADD.M1		1,R41,R41
.LVL58:
	.loc 1 172 0 discriminator 2
		SSHFLL		1, R44, R45
	|	SFINTS32.M2		R10,R10
		SSHFAR		31, R44, R47
	.loc 1 170 0 discriminator 2
		SEQ		R39, R41, R0
	.loc 1 172 0 discriminator 2
		SLTU		R45, R44, R48
	|	SFMULS32.M2		R10, R32, R46
		SSHFLL		1, R47, R1
	.loc 1 170 0 discriminator 2
	[!R0]	SBR		.L42
	|	SSHFLL		2, R44, R42
	|	SADD.M2		R1,R48,R2
	.loc 1 172 0 discriminator 2
		SLTU		R42, R45, R3
		SSHFLL		1, R2, R8
		SADD.M2		R8,R3,R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,AR9,AR10
		SNOP		1
		SSTW		R46, *AR10
	;; condjump to .L42 occurs
	.loc 1 174 0
		SBR		rand
	|	SADD.M2		R41,R38,R38
		SMOVIL		.L119, R62
		SMOVIH		.L119, R62
		SMOVIH4.L		.L119, R63
	;; call to rand occurs, with return value
		SNOP		3
.LVL59:
.L119:
	.loc 1 168 0
		SEQ		R40, R38, R1
	|	SFINTS32.M2		R10,R9
	|	SADD.M1		4,R30,R11
	[!R1]	SBR		.L41
	|	SLTU		R11, R30, R12
	|	SMOV.M2		R11, R30
		SADD.M1		R31,R12,R31
	.loc 1 174 0
		SFMULS32.M2		R9, R35, R14
	|	SMVAGA36.M1		R31:R30, AR10
	.loc 1 110 0
		SNOP		3
	.loc 1 174 0
		SSTW		R14, *AR10
	;; condjump to .L41 occurs
	.loc 1 197 0
		SADD.LS		AR15,88,OR11
	|	SMOVIL		128, R39
.LVL60:
		SADD.LS		AR15,92,OR12
	|	SMOVIL.L		A, R18
	|	SMOV.M2		R39, R14
	|	SMOV.M1		R39, R16
		SMVAAGL.M2		OR11, R11:R10
	|	SMOVIL.L		Q, R20
		SMVAAGL.M1		OR12, R13:R12
	|	SMOVIL.L		R, R22
		SMVAAGH.M1		OR11, R11:R10
	|	SMOVIL.L		u, R24
		SMVAAGH.M1		OR12, R13:R12
	|	SMOVIL		-1, R30
		SMOVIH.L		A, R18
		SMOVIH4.L		A, R19
		SMOVIH.L		Q, R20
		SMOVIH4.L		Q, R21
		SBR		DSPF_sp_qrd_wrapper
	|	SMOVIH.L		R, R22
		SMOVIL		.L120, R62
		SMOVIH		.L120, R62
		SMOVIH4.L		.L120, R63
		SMOVIH4.L		R, R23
		SMOVIH.L		u, R24
	;; call to DSPF_sp_qrd_wrapper occurs, with return value
		SMOVIH4.L		u, R25
.LVL61:
.L120:
	.loc 1 199 0
		SEQ		R30, R10, R49
	|	SLDW		*+AR15[22], R50
		SMOV.M2		R49, R1
	|	SLDW		*+AR15[23], R38
	[R1]	SBR		.L105
		SNOP		4
	.loc 1 198 0
		SSTW		R50, *+AR15[19]
		SNOP		1
.LVL62:
	.loc 1 199 0
	;; condjump to .L105 occurs
.LVL63:
.L46:
	.loc 1 217 0 discriminator 1
		SMOVIL		1092616192, R41
.LVL64:
	.loc 1 220 0 discriminator 1
		SMOVIL.L		.LC7, R30
	.loc 1 110 0 discriminator 1
		SMOVIL		0, R28
		SMOVIL		0, R58
	.loc 1 217 0 discriminator 1
		SMOVIH		1092616192, R41
	.loc 1 220 0 discriminator 1
		SMOVIH.L		.LC7, R30
		SMOVIH4.L		.LC7, R31
.LVL65:
.L47:
	.loc 1 110 0 discriminator 1
		SMOVIL		0, R56
	|	SADD.M2		R39,R28,R55
.LVL66:
.L53:
		SMOVIL		0, R60
	|	SMOV.M2		R56, R59
	|	SMOV.M1		R28, R40
		SMOVIH		0, R60
.LVL67:
.L48:
	.loc 1 214 0 discriminator 2
		SSHFLL		1, R40, R61
		SSHFLL		1, R59, R10
		SSHFAR		31, R40, R52
		SSHFAR		31, R59, R51
		SLTU		R61, R40, R54
		SLTU		R10, R59, R53
		SSHFLL		1, R52, R42
		SSHFLL		1, R51, R43
	|	SADD.M2		R42,R54,R48
		SSHFLL		2, R40, R44
	|	SADD.M2		R43,R53,R46
	|	SADD.M1		1,R40,R40
		SSHFLL		2, R59, R42
	|	SADD.M2		R39,R59,R59
		SLTU		R44, R61, R3
		SLTU		R42, R10, R47
		SSHFLL		1, R48, R45
		SSHFLL		1, R46, R8
	|	SADD.M2		R45,R3,R45
		SADD.M1		R8,R47,R43
	;no-op trunc di R45:R44 to pdi R45:R44
	|	SADDA.M2		R45:R44,AR8,AR12
	|	SEQ		R55, R40, R2
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M1		R43:R42,AR14,AR10
		SLDW		*AR12, R44
		SLDW		*AR10, R9
		SNOP		4
	.loc 1 212 0 discriminator 2
	[!R2]	SBR		.L48
	.loc 1 214 0 discriminator 2
		SFMULAS32.M2	R44, R9, R60, R60
		SNOP		5
.LVL68:
	.loc 1 212 0 discriminator 2
	;; condjump to .L48 occurs
	.loc 1 110 0
		SADD.M2		R28,R56,R11
	|	SADD.M1		1,R56,R56
	.loc 1 216 0
		SSHFLL		1, R11, R12
		SSHFAR		31, R11, R13
		SLTU		R12, R11, R14
		SSHFLL		1, R13, R15
		SSHFLL		2, R11, R42
	|	SADD.M2		R15,R14,R16
		SLTU		R42, R12, R17
		SSHFLL		1, R16, R18
		SADD.M2		R18,R17,R43
	|	SEQ		R39, R56, R1
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,AR9,AR10
		SNOP		1
		SLDW		*AR10, R20
		SNOP		5
		SFSUBS32.M2		R60, R20, R22
		SNOP		2
		SFSPDP32T.M2		R22, R27:R26
		SNOP		1
		SFABSD.M2		R27:R26, R43:R42
		SNOP		1
		SFDPSP32.M2		R43:R42, R24
		SNOP		2
.LVL69:
	.loc 1 217 0
		SFCMPGS32.M2		R24, R41, R0
	[R0]	SBR		.L106
		SNOP		6
	;; condjump to .L106 occurs
	.loc 1 209 0
	[!R1]	SBR		.L53
		SNOP		6
	;; condjump to .L53 occurs
	.loc 1 207 0
		SADD.M2		1,R58,R58
.LVL70:
		SEQ		R39, R58, R2
	[R2]	SBR		.L107
		SNOP		6
	;; condjump to .L107 occurs
.LVL71:
.L82:
		SBR		.L53
	|	SMOV.M2		R40, R28
	|	SMOVIL		0, R56
.LVL72:
		SADD.M2		R39,R28,R55
		SNOP		5
	;; jump to .L53 occurs
.LVL73:
.L40:
	.loc 1 181 0
		SBR		srand
	|	SMOV.M2		R36, R30
	|	SMOV.M1		R37, R31
	|	SMOVIL		0, R38
		SMOVIL		.L121, R62
		SMOVIH		.L121, R62
		SMOVIH4.L		.L121, R63
	.loc 1 184 0
		SMOVIL		51, R39
	.loc 1 182 0
		SMOVIL		2601, R40
	.loc 1 181 0
	;; call to srand occurs
		SNOP		1
.LVL74:
.L121:
.L44:
	.loc 1 167 0 discriminator 1
		SMOVIL		0, R41
.LVL75:
.L45:
	.loc 1 186 0 discriminator 2
		SBR		rand
		SMOVIL		.L122, R62
		SMOVIH		.L122, R62
		SMOVIH4.L		.L122, R63
	;; call to rand occurs, with return value
		SNOP		3
.LVL76:
.L122:
	.loc 1 110 0 discriminator 2
		SADD.M2		R38,R41,R15
	|	SADD.M1		1,R41,R41
.LVL77:
	.loc 1 186 0 discriminator 2
		SSHFLL		1, R15, R17
	|	SFINTS32.M2		R10,R16
		SSHFAR		31, R15, R18
	.loc 1 184 0 discriminator 2
		SEQ		R39, R41, R2
	.loc 1 186 0 discriminator 2
		SLTU		R17, R15, R19
	|	SFMULS32.M2		R16, R32, R20
		SSHFLL		1, R18, R21
	.loc 1 184 0 discriminator 2
	[!R2]	SBR		.L45
	|	SSHFLL		2, R15, R42
	|	SADD.M2		R21,R19,R22
	.loc 1 186 0 discriminator 2
		SLTU		R42, R17, R23
		SSHFLL		1, R22, R24
		SADD.M2		R24,R23,R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,AR9,AR10
		SNOP		1
		SSTW		R20, *AR10
	;; condjump to .L45 occurs
	.loc 1 188 0
		SBR		rand
	|	SADD.M2		R41,R38,R38
		SMOVIL		.L123, R62
		SMOVIH		.L123, R62
		SMOVIH4.L		.L123, R63
	;; call to rand occurs, with return value
		SNOP		3
.LVL78:
.L123:
	.loc 1 182 0
		SEQ		R40, R38, R0
	|	SFINTS32.M2		R10,R25
	|	SADD.M1		4,R30,R26
	[!R0]	SBR		.L44
	|	SLTU		R26, R30, R27
	|	SMOV.M2		R26, R30
		SADD.M1		R31,R27,R31
	.loc 1 188 0
		SFMULS32.M2		R25, R35, R29
	|	SMVAGA36.M1		R31:R30, AR10
	.loc 1 110 0
		SNOP		3
	.loc 1 188 0
		SSTW		R29, *AR10
	;; condjump to .L44 occurs
	.loc 1 197 0
		SADD.LS		AR15,88,OR11
	|	SMOVIL		51, R39
.LVL79:
		SADD.LS		AR15,92,OR12
	|	SMOVIL.L		A, R18
	|	SMOV.M2		R39, R14
	|	SMOV.M1		R39, R16
		SMVAAGL.M2		OR11, R11:R10
	|	SMOVIL.L		Q, R20
		SMVAAGL.M1		OR12, R13:R12
	|	SMOVIL.L		R, R22
		SMVAAGH.M1		OR11, R11:R10
	|	SMOVIL.L		u, R24
		SMVAAGH.M1		OR12, R13:R12
	|	SMOVIL		-1, R30
		SMOVIH4.L		A, R19
		SMOVIH4.L		Q, R21
		SMOVIH4.L		R, R23
		SMOVIH4.L		u, R25
		SBR		DSPF_sp_qrd_wrapper
	|	SMOVIH.L		A, R18
		SMOVIL		.L124, R62
		SMOVIH		.L124, R62
		SMOVIH4.L		.L124, R63
		SMOVIH.L		Q, R20
		SMOVIH.L		R, R22
	;; call to DSPF_sp_qrd_wrapper occurs, with return value
		SMOVIH.L		u, R24
.LVL80:
.L124:
	.loc 1 199 0
		SEQ		R30, R10, R49
	|	SLDW		*+AR15[22], R50
		SMOV.M2		R49, R1
	|	SLDW		*+AR15[23], R38
	[!R1]	SBR		.L46
		SNOP		4
	.loc 1 198 0
		SSTW		R50, *+AR15[19]
		SNOP		1
.LVL81:
	.loc 1 199 0
	;; condjump to .L46 occurs
		SBR		.L105
		SNOP		6
	;; jump to .L105 occurs
.LVL82:
.L106:
	.loc 1 220 0
		SBR		printf
	|	SFSPDP32T.M2		R24, R29:R28
	|	SSTDW		R31:R30, *+AR15[1]
	|	SMOVIL		0, R33
		SSTW		R58, *+AR15[10]
	|	SMOVIL		.L125, R62
		SMOVIH		.L125, R62
		SMOVIH4.L		.L125, R63
		SSTDW		R29:R28, *+AR15[2]
	;; call to printf occurs, with return value
		SNOP		2
.LVL83:
.L125:
	.loc 1 221 0
		SLDW		*+AR15[10], R58
		SNOP		5
.LVL84:
	.loc 1 207 0
		SADD.M2		1,R58,R58
.LVL85:
		SEQ		R39, R58, R2
	[!R2]	SBR		.L82
		SNOP		6
	;; condjump to .L82 occurs
.L107:
	.loc 1 240 0
		SMOVIL		1065353216, R40
	.loc 1 246 0
		SMOVIL		1092616192, R61
	.loc 1 110 0
		SMOVIL		0, R10
		SMOVIL		0, R60
		SMOVIL		0, R59
	.loc 1 240 0
		SMOVIH		1065353216, R40
	.loc 1 246 0
		SMOVIH		1092616192, R61
.LVL86:
.L52:
	.loc 1 110 0 discriminator 1
		SMOV.M2		R10, R27
	|	SMOVIL		0, R29
	|	SADD.M1		R39,R60,R57
.LVL87:
.L60:
		SMOVIL		0, R56
	|	SMOV.M2		R60, R30
		SMOVIH		0, R56
.LVL88:
.L54:
	.loc 1 110 0 is_stmt 0 discriminator 2
		SADD.M2		R30,R27,R51
	|	SSHFLL		1, R30, R50
	.loc 1 236 0 is_stmt 1 discriminator 2
		SSHFAR		31, R30, R54
		SSHFLL		1, R51, R49
		SSHFAR		31, R51, R52
		SLTU		R50, R30, R55
		SLTU		R49, R51, R42
		SSHFLL		1, R52, R43
		SSHFLL		1, R54, R53
	|	SADD.M2		R43,R42,R46
		SSHFLL		2, R30, R44
	|	SADD.M2		R53,R55,R48
	|	SADD.M1		1,R30,R30
		SSHFLL		2, R51, R42
		SLTU		R44, R50, R3
		SLTU		R42, R49, R47
		SSHFLL		1, R48, R45
		SSHFLL		1, R46, R8
	|	SADD.M2		R45,R3,R45
		SADD.M1		R8,R47,R43
	;no-op trunc di R45:R44 to pdi R45:R44
	|	SADDA.M2		R45:R44,AR8,AR12
	|	SEQ		R57, R30, R0
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M1		R43:R42,AR8,AR10
		SLDW		*AR12, R44
		SLDW		*AR10, R9
		SNOP		4
	.loc 1 234 0 discriminator 2
	[!R0]	SBR		.L54
	.loc 1 236 0 discriminator 2
		SFMULAS32.M2	R44, R9, R56, R56
		SNOP		5
.LVL89:
	.loc 1 234 0 discriminator 2
	;; condjump to .L54 occurs
	.loc 1 238 0
		SEQ		R29, R59, R1
	[R1]	SBR		.L108
		SNOP		6
	;; condjump to .L108 occurs
	.loc 1 244 0
		SFSPDP32T.M2		R56, R13:R12
		SNOP		1
		SFABSD.M2		R13:R12, R43:R42
		SNOP		1
		SFDPSP32.M2		R43:R42, R11
		SNOP		2
.LVL90:
.L56:
	.loc 1 246 0
		SFCMPGS32.M2		R11, R61, R2
	[!R2]	SBR		.L57
		SNOP		6
	;; condjump to .L57 occurs
	.loc 1 248 0
		SMOVIL		0, R33
.LVL91:
.L57:
	.loc 1 231 0
		SADD.M2		1,R29,R29
	|	SADD.M1		R39,R27,R27
.LVL92:
		SEQ		R39, R29, R0
	[!R0]	SBR		.L60
		SNOP		6
	;; condjump to .L60 occurs
	.loc 1 229 0
		SADD.M2		1,R59,R59
	|	SMOV.M1		R57, R60
.LVL93:
		SEQ		R39, R59, R1
	|	SSUB.M2		R39, R10, R10
	[!R1]	SBR		.L52
		SNOP		6
	;; condjump to .L52 occurs
.LVL94:
	.loc 1 261 0
		SMOVIL		1065353216, R16
	|	SADD.M2		1,R39,R15
	.loc 1 110 0
		SMOVIL		0, R28
		SMOVIL		1, R0
		SMOVIL		0, R18
	.loc 1 261 0
		SMOVIH		1065353216, R16
.LVL95:
.L59:
		SSHFLL		1, R28, R17
	|	SADD.M2		1,R18,R18
.LVL96:
		SSHFAR		31, R28, R20
		SLTU		R17, R28, R22
		SSHFLL		1, R20, R26
		SSHFLL		2, R28, R42
	|	SADD.M2		R26,R22,R24
	|	SADD.M1		R15,R28,R28
.LVL97:
		SLTU		R42, R17, R58
		SSHFLL		1, R24, R27
		SADD.M2		R27,R58,R43
	|	SEQ		R39, R18, R1
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M2		R43:R42,AR14,AR10
		SNOP		1
		SLDW		*AR10, R29
		SNOP		5
		SFSPDP32T.M2		R29, R57:R56
		SNOP		1
		SFABSD.M2		R57:R56, R43:R42
		SNOP		1
		SFDPSP32.M2		R43:R42, R57
		SNOP		2
		SFCMPLS32.M2		R57, R16, R2
	[R2]	SBR		.L109
		SNOP		6
	;; condjump to .L109 occurs
	.loc 1 259 0
	[!R1]	SBR		.L59
		SNOP		6
	;; condjump to .L59 occurs
.L113:
	.loc 1 275 0
	[!R0]	SBR		.L62
	|	SADD.LS		AR15,88,OR13
	|	SMOVIL.L		Q, R18
	|	SMOV.M2		R39, R14
	|	SMOV.M1		R39, R16
.LVL98:
	.loc 1 277 0
		SADD.LS		AR15,92,OR14
	|	SMOVIL.L		R, R20
		SMVAAGL.M2		OR13, R11:R10
	|	SMOVIL.L		b, R22
		SMVAAGL.M1		OR14, R13:R12
	|	SMOVIL.L		y, R24
		SMVAAGH.M1		OR13, R11:R10
	|	SMOVIL.L		x, R26
		SMVAAGH.M1		OR14, R13:R12
	|	SMOVIH4.L		Q, R19
		SMOVIH4.L		R, R21
	;; condjump to .L62 occurs
.LVL99:
		SMOVIH4.L		b, R23
		SMOVIH4.L		y, R25
		SMOVIH.L		Q, R18
		SMOVIH.L		R, R20
		SBR		DSPF_sp_qrd_solver_wrapper
	|	SMOVIH.L		b, R22
		SMOVIL		.L126, R62
		SMOVIH		.L126, R62
		SMOVIH4.L		.L126, R63
		SMOVIH.L		y, R24
		SMOVIH.L		x, R26
	;; call to DSPF_sp_qrd_solver_wrapper occurs, with return value
		SMOVIH4.L		x, R27
.LVL100:
.L126:
	.loc 1 280 0
		SMOVIL		-1, R19
	|	SLDW		*+AR15[22], R23
		SEQ		R19, R10, R21
	|	SLDW		*+AR15[23], R25
		SMOV.M2		R21, R1
	[!R1]	SBR		.L63
		SNOP		3
	.loc 1 278 0
		SSUB.M2		R23, R25, R30
		SSTW		R30, *+AR15[17]
		SNOP		1
.LVL101:
	.loc 1 280 0
	;; condjump to .L63 occurs
	.loc 1 282 0
		SBR		puts
	|	SMOVIH4.L		.LC8, R11
		SMOVIL		.L127, R62
		SMOVIH		.L127, R62
		SMOVIH4.L		.L127, R63
		SMOVIL.L		.LC8, R10
.LVL102:
		SMOVIH.L		.LC8, R10
	;; call to puts occurs, with return value
		SNOP		1
.LVL103:
.L127:
.L63:
	.loc 1 110 0
		SLDW		*+AR15[14], R54
	|	SADD.M2		-1,R39,R40
	|	SMOVIL		1109393408, R12
	|	SMOV.M1		R36, R46
		SLDW		*+AR15[15], R42
	|	SSHFLL		1, R40, R61
	|	SMOV.M2		R37, R47
		SSHFLL		2, R40, R51
		SLTU		R61, R40, R50
		SLTU		R51, R61, R49
		SSHFLL		1, R50, R52
		SADD.M2		R54,R51,R9
	|	SADD.M1		R52,R49,R55
	|	SMOVIL		0, R16
		SLTU		R9, R51, R53
	|	SADD.M2		R42,R55,R48
		SADD.M2		R48,R53,R11
	|	SMOVIH		1109393408, R12
.LVL104:
.L64:
		SLDDW		*+AR15[10], R43:R42
	|	SMOVIL		0, R8
	|	SADD.M2		R39,R16,R3
	.loc 1 110 0 is_stmt 0 discriminator 1
		SMOVIH		0, R8
		SNOP		4
.LVL105:
.L65:
	.loc 1 293 0 is_stmt 1 discriminator 2
		SSHFLL		1, R16, R13
	|	SMOV.M2		R43, R59
	|	SADD.M1		4,R42,R14
		SSHFAR		31, R16, R43
		SLTU		R13, R16, R60
		SSHFLL		1, R43, R10
		SSHFLL		2, R16, R44
	|	SADD.M2		R10,R60,R15
	|	SADD.M1		1,R16,R16
		SLTU		R44, R13, R17
		SLTU		R14, R42, R18
	|	SMOV.M2		R14, R42
		SSHFLL		1, R15, R45
	|	SADD.M2		R59,R18,R43
		SADD.M1		R45,R17,R45
	|	SMVAGA36.M2		R43:R42, AR10
	|	SEQ		R3, R16, R2
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,AR9,AR12
		SLDW		*AR10, R20
		SLDW		*AR12, R44
		SNOP		4
	.loc 1 291 0 discriminator 2
	[!R2]	SBR		.L65
	.loc 1 293 0 discriminator 2
		SFMULAS32.M2	R44, R20, R8, R8
		SNOP		5
.LVL106:
	.loc 1 291 0 discriminator 2
	;; condjump to .L65 occurs
		SADD.M2		4,R46,R22
		SLTU		R22, R46, R24
	|	SMOV.M2		R22, R46
		SADD.M2		R47,R24,R47
	|	SEQ		R22, R9, R1
	.loc 1 110 0
		SMVAGA36.M2		R47:R46, AR10
	|[R1]	SEQ		R47, R11, R1
	.loc 1 288 0
		SNOP		1
	.loc 1 295 0
		SLDW		*AR10, R28
		SNOP		5
		SFSUBS32.M2		R8, R28, R58
		SNOP		2
		SFSPDP32T.M2		R58, R57:R56
		SNOP		1
		SFABSD.M2		R57:R56, R43:R42
		SNOP		1
		SFDPSP32.M2		R43:R42, R27
		SNOP		2
.LVL107:
	.loc 1 296 0
		SFCMPGS32.M2		R27, R12, R0
	[R0]	SBR		.L110
		SNOP		6
	;; condjump to .L110 occurs
	.loc 1 288 0
	[!R1]	SBR		.L64
		SNOP		6
	;; condjump to .L64 occurs
.LVL108:
.L68:
	.loc 1 309 0
		SADD.LS		AR15,88,OR11
	|	SMOVIL.L		Q, R18
	|	SMOV.M2		R39, R14
	|	SMOV.M1		R39, R16
		SADD.LS		AR15,92,OR12
	|	SMOVIL.L		R, R20
		SMVAAGL.M2		OR11, R11:R10
	|	SMOVIL.L		inv_A, R22
		SMVAAGL.M1		OR12, R13:R12
	|	SMOVIH4.L		Q, R19
		SMVAAGH.M1		OR11, R11:R10
	|	SMOVIH4.L		R, R21
		SBR		DSPF_sp_qrd_inverse_wrapper
	|	SMVAAGH.M1		OR12, R13:R12
	|	SMOVIH4.L		inv_A, R23
		SMOVIL		.L128, R62
		SMOVIH		.L128, R62
		SMOVIH4.L		.L128, R63
		SMOVIH.L		Q, R18
		SMOVIH.L		R, R20
	;; call to DSPF_sp_qrd_inverse_wrapper occurs, with return value
		SMOVIH.L		inv_A, R22
.LVL109:
.L128:
	.loc 1 310 0
		SLDW		*+AR15[22], R47
	|	SMOVIL.L		inv_A, R30
.LVL110:
		SLDW		*+AR15[23], R57
	|	SMOVIL		1065353216, R19
	.loc 1 328 0
		SMOVIL		1109393408, R21
	.loc 1 331 0
		SMOVIL.L		.LC10, R40
	.loc 1 315 0
		SMOVIL		0, R29
		SMOVIH.L		inv_A, R30
		SMOVIH4.L		inv_A, R31
	.loc 1 310 0
		SSUB.M2		R47, R57, R25
	|	SMOVIH		1065353216, R19
		SSTW		R25, *+AR15[18]
	|	SMOVIH		1109393408, R21
	.loc 1 110 0
		SMOVIL		0, R23
	.loc 1 331 0
		SMOVIH.L		.LC10, R40
		SMOVIH4.L		.LC10, R41
.LVL111:
.L79:
	.loc 1 110 0 discriminator 1
		SMOVIL		0, R61
	|	SADD.M2		R39,R23,R48
.LVL112:
.L75:
		SMOVIL		0, R51
	|	SMOV.M2		R61, R3
	|	SMOV.M1		R23, R8
		SMOVIH		0, R51
.LVL113:
.L69:
	.loc 1 322 0 discriminator 2
		SSHFLL		1, R8, R50
	|	SMVAGA36.M2		R31:R30, OR13
		SSHFLL		1, R3, R49
		SSHFAR		31, R8, R53
		SSHFAR		31, R3, R52
		SLTU		R50, R8, R55
		SLTU		R49, R3, R54
		SSHFLL		1, R53, R42
		SSHFLL		1, R52, R9
	|	SADD.M2		R42,R55,R12
		SSHFLL		2, R8, R44
	|	SADD.M2		R9,R54,R11
	|	SADD.M1		1,R8,R8
		SSHFLL		2, R3, R42
	|	SADD.M2		R39,R3,R3
		SLTU		R44, R50, R13
		SLTU		R42, R49, R14
		SSHFLL		1, R12, R59
		SSHFLL		1, R11, R43
	|	SADD.M2		R59,R13,R45
		SADD.M1		R43,R14,R43
	;no-op trunc di R45:R44 to pdi R45:R44
	|	SADDA.M2		R45:R44,OR13,AR12
	|	SEQ		R8, R48, R2
	;no-op trunc di R43:R42 to pdi R43:R42
		SADDA.M1		R43:R42,AR9,AR10
		SLDW		*AR12, R60
		SLDW		*AR10, R10
		SNOP		4
	.loc 1 320 0 discriminator 2
	[!R2]	SBR		.L69
	.loc 1 322 0 discriminator 2
		SFMULAS32.M2	R60, R10, R51, R51
		SNOP		5
.LVL114:
	.loc 1 320 0 discriminator 2
	;; condjump to .L69 occurs
	.loc 1 324 0
		SEQ		R61, R29, R0
	[R0]	SBR		.L111
		SNOP		6
	;; condjump to .L111 occurs
	.loc 1 327 0
		SFSPDP32T.M2		R51, R17:R16
		SNOP		1
		SFABSD.M2		R17:R16, R43:R42
		SNOP		1
		SFDPSP32.M2		R43:R42, R15
		SNOP		2
.LVL115:
	.loc 1 328 0
		SFCMPGS32.M2		R15, R21, R1
	[R1]	SBR		.L112
		SNOP		6
	;; condjump to .L112 occurs
.L102:
	.loc 1 317 0
		SADD.M2		1,R61,R61
.LVL116:
		SEQ		R39, R61, R2
	[!R2]	SBR		.L75
		SNOP		6
	;; condjump to .L75 occurs
	.loc 1 315 0
		SADD.M2		1,R29,R29
	|	SMOV.M1		R48, R23
.LVL117:
		SEQ		R39, R29, R0
	[!R0]	SBR		.L79
		SNOP		6
	;; condjump to .L79 occurs
.LVL118:
.L62:
	.loc 1 338 0
		SMOV.M2		R33, R1
	[!R1]	SBR		.L76
		SNOP		6
	;; condjump to .L76 occurs
.LVL119:
	.loc 1 340 0
		SMOVIL.L		.LC11, R42
	|	SADD.M2		1,R34,R34
		SMOVIH.L		.LC11, R42
		SBR		printf
	|	SMOVIH4.L		.LC11, R43
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L129, R62
		SMOVIH		.L129, R62
		SMOVIH4.L		.L129, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL120:
.L129:
	.loc 1 198 0
		SLDW		*+AR15[19], R31
	|	SMOVIL.L		.LC12, R42
	.loc 1 341 0
		SLDW		*+AR15[17], R30
	|	SMOVIH.L		.LC12, R42
		SLDW		*+AR15[18], R40
	|	SMOVIH4.L		.LC12, R43
		SNOP		3
	.loc 1 198 0
		SSUB.M2		R31, R38, R41
		SNOP		1
	.loc 1 341 0
		SSTW		R39, *+AR15[4]
		SSTDW		R43:R42, *+AR15[1]
		SNOP		2
		SSTW		R39, *+AR15[5]
		SBR		printf
	|	SSTW		R41, *+AR15[6]
		SMOVIL		.L130, R62
		SMOVIH		.L130, R62
		SSTW		R30, *+AR15[7]
	|	SMOVIH4.L		.L130, R63
		SSTW		R40, *+AR15[8]
	;; call to printf occurs, with return value
		SNOP		2
.LVL121:
.L130:
	.loc 1 133 0
		SMOVIL		5, R45
		SEQ		R45, R34, R2
	[!R2]	SBR		.L78
		SNOP		6
	;; condjump to .L78 occurs
.L114:
	.loc 1 349 0
		SLDDW		*+AR15[18], R7:R6
		SLDDW		*+AR15[21], R63:R62
		SLDDW		*+AR15[12], R31:R30
		SLDDW		*+AR15[13], R33:R32
		SLDDW		*+AR15[14], R35:R34
		SNOP		1
.LVL122:
		SMVAGA36.M2		R7:R6, AR8
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[19], R7:R6
		SLDDW		*+AR15[15], R37:R36
		SLDDW		*+AR15[16], R39:R38
		SLDDW		*+AR15[17], R41:R40
		SNOP		2
		SMVAGA36.M2		R7:R6, AR9
		SNOP		2
		SLDDW		*+AR15[20], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[22], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		184, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL123:
.L109:
	.loc 1 259 0
	[!R1]	SBR		.L59
	|	SMOVIL		0, R0
	.loc 1 263 0
		SNOP		6
.LVL124:
	.loc 1 259 0
	;; condjump to .L59 occurs
		SBR		.L113
		SNOP		6
	;; jump to .L113 occurs
.LVL125:
.L108:
	.loc 1 240 0
		SFSUBS32.M2		R40, R56, R13
		SNOP		2
		SBR		.L56
	|	SFSPDP32T.M2		R13, R15:R14
		SNOP		1
		SFABSD.M2		R15:R14, R43:R42
		SNOP		1
		SFDPSP32.M2		R43:R42, R11
		SNOP		2
.LVL126:
	;; jump to .L56 occurs
.LVL127:
.L76:
	.loc 1 345 0
		SMOVIL.L		.LC13, R42
	|	SSTW		R39, *+AR15[4]
	|	SADD.M2		1,R34,R34
		SMOVIH.L		.LC13, R42
	|	SSTW		R39, *+AR15[5]
		SBR		printf
	|	SMOVIH4.L		.LC13, R43
		SMOVIL		.L131, R62
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIH		.L131, R62
		SMOVIH4.L		.L131, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL128:
.L131:
	.loc 1 133 0
		SMOVIL		5, R45
		SEQ		R45, R34, R2
	[!R2]	SBR		.L78
		SNOP		6
	;; condjump to .L78 occurs
		SBR		.L114
		SNOP		6
	;; jump to .L114 occurs
.LVL129:
.L111:
	.loc 1 325 0
		SFSUBS32.M2		R19, R51, R17
		SNOP		2
		SFSPDP32T.M2		R17, R45:R44
		SNOP		1
		SFABSD.M2		R45:R44, R43:R42
		SNOP		1
		SFDPSP32.M2		R43:R42, R15
		SNOP		2
.LVL130:
	.loc 1 328 0
		SFCMPGS32.M2		R15, R21, R1
	[!R1]	SBR		.L102
		SNOP		6
	;; condjump to .L102 occurs
.L112:
.LVL131:
	.loc 1 331 0
		SFSPDP32T.M2		R15, R23:R22
	|	SSTDW		R41:R40, *+AR15[1]
	|	SMOVIL		0, R33
		SSTW		R48, *+AR15[13]
		SNOP		1
		SBR		printf
		SSTDW		R23:R22, *+AR15[2]
	|	SMOVIL		.L132, R62
		SSTW		R29, *+AR15[10]
	|	SMOVIH		.L132, R62
		SMOVIH4.L		.L132, R63
		SNOP		1
		SSTW		R21, *+AR15[11]
		SSTW		R19, *+AR15[12]
	;; call to printf occurs, with return value
		SNOP		2
.LVL132:
.L132:
	.loc 1 332 0
		SLDW		*+AR15[10], R29
		SLDW		*+AR15[13], R48
		SLDW		*+AR15[11], R21
		SLDW		*+AR15[12], R19
		SNOP		2
.LVL133:
	.loc 1 315 0
		SADD.M2		1,R29,R29
.LVL134:
		SEQ		R39, R29, R0
	|	SMOV.M2		R48, R23
	[!R0]	SBR		.L79
		SNOP		6
	;; condjump to .L79 occurs
		SBR		.L62
		SNOP		6
	;; jump to .L62 occurs
.LVL135:
.L110:
	.loc 1 299 0
		SFSPDP32T.M2		R27, R47:R46
	|	SMOVIL.L		.LC9, R44
		SMOVIH.L		.LC9, R44
		SBR		printf
	|	SMOVIH4.L		.LC9, R45
	|	SSTDW		R47:R46, *+AR15[2]
		SSTDW		R45:R44, *+AR15[1]
	|	SMOVIL		.L133, R62
		SMOVIH		.L133, R62
		SMOVIH4.L		.L133, R63
	.loc 1 298 0
		SMOVIL		0, R33
	.loc 1 299 0
	;; call to printf occurs, with return value
		SNOP		2
.LVL136:
.L133:
	.loc 1 300 0
		SBR		.L68
		SNOP		6
	;; jump to .L68 occurs
.LVL137:
.L105:
	.loc 1 201 0
		SBR		puts
	|	SMOVIH4.L		.LC6, R11
		SMOVIL		.L134, R62
		SMOVIH		.L134, R62
		SMOVIH4.L		.L134, R63
		SMOVIL.L		.LC6, R10
.LVL138:
		SMOVIH.L		.LC6, R10
	;; call to puts occurs, with return value
		SMOVIL		1092616192, R41
.LVL139:
.L134:
		SBR		.L47
	|	SMOVIL		0, R28
	.loc 1 110 0
		SMOVIL		0, R58
	.loc 1 217 0
		SMOVIH		1092616192, R41
	.loc 1 220 0
		SMOVIH4.L		.LC7, R31
		SMOVIL.L		.LC7, R30
		SMOVIH.L		.LC7, R30
		SNOP		1
	;; jump to .L47 occurs
	.cfi_endproc
.LFE8:
	.size	testQr, .-testQr
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB7:
	.loc 1 85 0
	.cfi_startproc
.LVL140:
		SMOVIL		-24, R6
		SMOVIL		-1, R7
	.loc 1 89 0
		SMOVIL		1075052548, R46
	|	SADDA.M2		R7:R6,AR15,AR15
.LCFI5:
	.cfi_def_cfa_offset 24
		SMOVIH		1075052548, R46
	.cfi_offset 78, -8
	.cfi_offset 79, -4
		SMOVIL		0, R47
	|	SSTDW		R63:R62, *+AR15[2]
	.loc 1 89 0
		SMVAGA36.M2		R47:R46, AR10
	|	SMOVIL		1075052544, R42
		SMOVIL		1, R44
	.loc 1 90 0
		SMOVIH		1075052544, R42
	|	SSTW		R44, *AR10
		SMOVIL		0, R43
		SMVAGA36.M2		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 91 0
		SSTW		R44, *+AR15[3]
		SNOP		2
.LVL141:
	.loc 1 92 0
		SLDW		*+AR15[3], R0
		SNOP		5
	[!R0]	SBR		.L137
		SNOP		6
	;; condjump to .L137 occurs
.L138:
	.loc 1 93 0
		SLDW		*AR10, R42
		SNOP		5
.LVL142:
		SSTW		R42, *+AR15[3]
		SNOP		2
.LVL143:
	.loc 1 92 0
		SLDW		*+AR15[3], R1
		SNOP		5
	[R1]	SBR		.L138
		SNOP		6
	;; condjump to .L138 occurs
.L137:
	.loc 1 95 0
		SBR		SetTimerPeriod
	|	SMOVIL		-1, R12
		SMOVIL		.L143, R62
		SMOVIH		.L143, R62
		SMOVIH4.L		.L143, R63
		SMOVIL		0, R10
	;; call to SetTimerPeriod occurs
		SNOP		2
.LVL144:
.L143:
	.loc 1 96 0
		SBR		TimerStart
	|	SMOVIL		0, R10
		SMOVIL		.L144, R62
		SMOVIH		.L144, R62
		SMOVIH4.L		.L144, R63
	;; call to TimerStart occurs
		SNOP		3
.LVL145:
.L144:
	.loc 1 98 0
		SMOVIL.L		v_A, R44
		SMOVIH.L		v_A, R44
		SMOVIH4.L		v_A, R45
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL		1073741824, R42
	.loc 1 99 0
		SMOVIL.L		v_Q, R46
	.loc 1 98 0
		SMOVIH		1073741824, R42
		SMOVIL		0, R43
	.loc 1 99 0
		SMOVIH.L		v_Q, R46
	|	SSTDW		R43:R42, *AR10
		SMOVIH4.L		v_Q, R47
		SMVAGA36.M2		R47:R46, AR10
	|	SMOVIL		1073813760, R42
	.loc 1 100 0
		SMOVIL.L		v_R, R44
	.loc 1 99 0
		SMOVIH		1073813760, R42
		SMOVIL		0, R43
	.loc 1 100 0
		SMOVIH.L		v_R, R44
	|	SSTDW		R43:R42, *AR10
		SMOVIH4.L		v_R, R45
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL		1073885696, R42
	.loc 1 101 0
		SMOVIL.L		v_u, R46
	.loc 1 100 0
		SMOVIH		1073885696, R42
		SMOVIL		0, R43
	.loc 1 101 0
		SMOVIH.L		v_u, R46
	|	SSTDW		R43:R42, *AR10
		SMOVIH4.L		v_u, R47
		SMVAGA36.M2		R47:R46, AR10
	|	SMOVIL		1073957632, R42
	.loc 1 102 0
		SMOVIL.L		v_b, R44
	.loc 1 101 0
		SMOVIH		1073957632, R42
		SMOVIL		0, R43
	.loc 1 102 0
		SMOVIH.L		v_b, R44
	|	SSTDW		R43:R42, *AR10
		SMOVIH4.L		v_b, R45
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL		1073964544, R42
	.loc 1 103 0
		SMOVIL.L		v_y, R46
		SMOVIH.L		v_y, R46
		SMOVIH4.L		v_y, R47
	.loc 1 102 0
		SMOVIH		1073964544, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *AR10
	|	SMOVIL.L		v_x, R44
	|	SMVAGA36.M2		R47:R46, AR10
	.loc 1 103 0
		SMOVIL		1073971456, R42
	.loc 1 104 0
		SMOVIH.L		v_x, R44
		SMOVIH4.L		v_x, R45
	.loc 1 103 0
		SMOVIH		1073971456, R42
		SMOVIL		0, R43
	.loc 1 106 0
		SBR		testQr
	|	SSTDW		R43:R42, *AR10
	|	SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL		0, R43
	.loc 1 104 0
		SMOVIL		.L145, R62
		SMOVIH		.L145, R62
		SMOVIH4.L		.L145, R63
		SMOVIL		1073978368, R42
		SMOVIH		1073978368, R42
	.loc 1 106 0
	;; call to testQr occurs
		SSTDW		R43:R42, *AR10
.LVL146:
	.loc 1 108 0
.L145:
		SLDDW		*+AR15[2], R63:R62
	|	SMOVIL		24, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		3
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.common	x,512,8
	.common	y,512,8
	.common	b,512,8
	.common	u,512,8
	.common	inv_A,65536,8
	.common	R,65536,8
	.common	Q,65536,8
	.common	A,65536,8
	.common	v_x,8,8
	.common	v_y,8,8
	.common	v_b,8,8
	.common	v_u,8,8
	.common	v_R,8,8
	.common	v_Q,8,8
	.common	v_A,8,8
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xaf5
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x1
	.4byte	.LASF46
	.4byte	.LASF47
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.4byte	0x13b
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0xb
	.4byte	0x13b
	.4byte	.LLST1
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0xb
	.4byte	0x141
	.4byte	.LLST2
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x1
	.byte	0xb
	.4byte	0x70
	.4byte	.LLST3
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x1
	.byte	0xb
	.4byte	0x70
	.4byte	.LLST4
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0xc
	.4byte	0x70
	.4byte	.LLST5
	.uleb128 0x6
	.string	"j"
	.byte	0x1
	.byte	0xc
	.4byte	0x70
	.4byte	.LLST6
	.uleb128 0x7
	.llong	.LVL1
	.4byte	0x128
	.uleb128 0x8
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x4
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL5
	.uleb128 0x8
	.byte	0x2
	.byte	0x7f
	.sleb128 8
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.4byte	0x38
	.uleb128 0xa
	.byte	0x8
	.4byte	0x147
	.uleb128 0xb
	.4byte	0x8c
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.4byte	0x70
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST7
	.byte	0x1
	.4byte	0x267
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2b
	.4byte	0x267
	.4byte	.LLST8
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2b
	.4byte	0x267
	.4byte	.LLST9
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2b
	.4byte	0x26d
	.4byte	.LLST10
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2b
	.4byte	0x26d
	.4byte	.LLST11
	.uleb128 0xd
	.string	"A"
	.byte	0x1
	.byte	0x2b
	.4byte	0x13b
	.4byte	.LLST12
	.uleb128 0xd
	.string	"Q"
	.byte	0x1
	.byte	0x2b
	.4byte	0x13b
	.4byte	.LLST13
	.uleb128 0xd
	.string	"R"
	.byte	0x1
	.byte	0x2b
	.4byte	0x13b
	.4byte	.LLST14
	.uleb128 0xd
	.string	"u"
	.byte	0x1
	.byte	0x2b
	.4byte	0x13b
	.4byte	.LLST15
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2d
	.4byte	0x70
	.byte	0x2
	.byte	0x90
	.uleb128 0x2f
	.uleb128 0x7
	.llong	.LVL11
	.4byte	0x203
	.uleb128 0x8
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.llong	.LVL13
	.4byte	0x257
	.uleb128 0x8
	.byte	0x8
	.byte	0x90
	.uleb128 0x24
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x25
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x2e
	.sleb128 0
	.uleb128 0x8
	.byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.byte	0x5
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x26
	.sleb128 0
	.uleb128 0x8
	.byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x32
	.sleb128 0
	.uleb128 0x8
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6c
	.byte	0x3
	.byte	0x92
	.uleb128 0x35
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6a
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL15
	.uleb128 0x8
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.4byte	0x54
	.uleb128 0xb
	.4byte	0x70
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF24
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.4byte	0x70
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST16
	.byte	0x1
	.4byte	0x524
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x1
	.byte	0x32
	.4byte	0x267
	.4byte	.LLST17
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x1
	.byte	0x32
	.4byte	0x267
	.4byte	.LLST18
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x1
	.byte	0x32
	.4byte	0x26d
	.4byte	.LLST19
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x1
	.byte	0x32
	.4byte	0x26d
	.4byte	.LLST20
	.uleb128 0xd
	.string	"Q"
	.byte	0x1
	.byte	0x32
	.4byte	0x13b
	.4byte	.LLST21
	.uleb128 0xd
	.string	"R"
	.byte	0x1
	.byte	0x32
	.4byte	0x13b
	.4byte	.LLST22
	.uleb128 0xd
	.string	"b"
	.byte	0x1
	.byte	0x32
	.4byte	0x13b
	.4byte	.LLST23
	.uleb128 0xd
	.string	"y"
	.byte	0x1
	.byte	0x32
	.4byte	0x13b
	.4byte	.LLST24
	.uleb128 0xd
	.string	"x"
	.byte	0x1
	.byte	0x32
	.4byte	0x13b
	.4byte	.LLST25
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x34
	.4byte	0x70
	.byte	0x2
	.byte	0x90
	.uleb128 0x33
	.uleb128 0x7
	.llong	.LVL23
	.4byte	0x34a
	.uleb128 0x8
	.byte	0x1
	.byte	0x6e
	.byte	0x9
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x92
	.uleb128 0x35
	.sleb128 0
	.byte	0x1e
	.uleb128 0x8
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x59
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.llong	.LVL24
	.4byte	0x364
	.uleb128 0x8
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x32
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.llong	.LVL25
	.4byte	0x37d
	.uleb128 0x8
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.llong	.LVL26
	.4byte	0x390
	.uleb128 0x8
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.llong	.LVL27
	.4byte	0x3ac
	.uleb128 0x8
	.byte	0x1
	.byte	0x6c
	.byte	0x3
	.byte	0x92
	.uleb128 0x35
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6a
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.llong	.LVL28
	.4byte	0x3bf
	.uleb128 0x8
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.llong	.LVL29
	.4byte	0x3e2
	.uleb128 0x8
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.byte	0x92
	.uleb128 0x35
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.uleb128 0x8
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x58
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.llong	.LVL30
	.4byte	0x3fb
	.uleb128 0x8
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.llong	.LVL31
	.4byte	0x42e
	.uleb128 0x8
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x35
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x31
	.uleb128 0x8
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.uleb128 0x8
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x58
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.llong	.LVL32
	.4byte	0x460
	.uleb128 0x8
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x31
	.uleb128 0x8
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x2e
	.sleb128 0
	.uleb128 0x8
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.llong	.LVL34
	.4byte	0x4c0
	.uleb128 0x8
	.byte	0x8
	.byte	0x90
	.uleb128 0x26
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x58
	.sleb128 0
	.uleb128 0x8
	.byte	0x8
	.byte	0x90
	.uleb128 0x24
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x25
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x8
	.byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x8
	.byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x32
	.sleb128 0
	.uleb128 0x8
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x5
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x22
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6c
	.byte	0x3
	.byte	0x92
	.uleb128 0x35
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6a
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.llong	.LVL37
	.4byte	0x4f5
	.uleb128 0x8
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x35
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x31
	.uleb128 0x8
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.uleb128 0x8
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x5
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x2a
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL38
	.uleb128 0x8
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x31
	.uleb128 0x8
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x2e
	.sleb128 0
	.uleb128 0x8
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF25
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0x70
	.llong	.LFB6
	.llong	.LFE6
	.4byte	.LLST26
	.byte	0x1
	.4byte	0x624
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x1
	.byte	0x4c
	.4byte	0x267
	.4byte	.LLST27
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x1
	.byte	0x4c
	.4byte	0x267
	.4byte	.LLST28
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x1
	.byte	0x4c
	.4byte	0x26d
	.4byte	.LLST29
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4c
	.4byte	0x26d
	.4byte	.LLST30
	.uleb128 0xd
	.string	"Q"
	.byte	0x1
	.byte	0x4c
	.4byte	0x13b
	.4byte	.LLST31
	.uleb128 0xd
	.string	"R"
	.byte	0x1
	.byte	0x4c
	.4byte	0x13b
	.4byte	.LLST32
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x1
	.byte	0x4c
	.4byte	0x13b
	.4byte	.LLST33
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4e
	.4byte	0x70
	.byte	0x2
	.byte	0x90
	.uleb128 0x2f
	.uleb128 0x7
	.llong	.LVL44
	.4byte	0x5d0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.llong	.LVL45
	.4byte	0x614
	.uleb128 0x8
	.byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x2e
	.sleb128 0
	.uleb128 0x8
	.byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x58
	.sleb128 0
	.uleb128 0x8
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6c
	.byte	0x3
	.byte	0x92
	.uleb128 0x33
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6a
	.byte	0x3
	.byte	0x92
	.uleb128 0x32
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL47
	.uleb128 0x8
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0x6e
	.llong	.LFB8
	.llong	.LFE8
	.4byte	.LLST34
	.byte	0x1
	.4byte	0x906
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x6f
	.4byte	0x70
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x6f
	.4byte	0x70
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x70
	.4byte	0x70
	.4byte	.LLST35
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0x71
	.4byte	0x70
	.4byte	.LLST36
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x72
	.4byte	0x70
	.4byte	.LLST37
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x74
	.4byte	0x70
	.4byte	.LLST38
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x74
	.4byte	0x70
	.4byte	.LLST39
	.uleb128 0x6
	.string	"sum"
	.byte	0x1
	.byte	0x75
	.4byte	0x38
	.4byte	.LLST40
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x75
	.4byte	0x38
	.4byte	.LLST41
	.uleb128 0x6
	.string	"row"
	.byte	0x1
	.byte	0x76
	.4byte	0x70
	.4byte	.LLST42
	.uleb128 0x6
	.string	"col"
	.byte	0x1
	.byte	0x76
	.4byte	0x70
	.4byte	.LLST43
	.uleb128 0x6
	.string	"k"
	.byte	0x1
	.byte	0x76
	.4byte	0x70
	.4byte	.LLST44
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0x76
	.4byte	0x70
	.4byte	.LLST45
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x76
	.4byte	0x70
	.4byte	.LLST46
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0x78
	.4byte	0x38
	.4byte	.LLST47
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x1
	.byte	0x7c
	.4byte	0x38
	.byte	0x4
	.4byte	0x3f800000
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0x7d
	.4byte	0x38
	.byte	0x4
	.4byte	0x41200000
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x1
	.byte	0x7e
	.4byte	0x38
	.byte	0x4
	.4byte	0x42200000
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.byte	0x7f
	.4byte	0x38
	.byte	0x4
	.4byte	0x42200000
	.uleb128 0x10
	.4byte	.LASF20
	.byte	0x1
	.byte	0x82
	.4byte	0x70
	.4byte	.LLST48
	.uleb128 0x10
	.4byte	.LASF21
	.byte	0x1
	.byte	0x83
	.4byte	0x70
	.4byte	.LLST48
	.uleb128 0x7
	.llong	.LVL54
	.4byte	0x7a0
	.uleb128 0x8
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x3
	.byte	0x92
	.uleb128 0x32
	.sleb128 0
	.uleb128 0x8
	.byte	0x2
	.byte	0x7f
	.sleb128 8
	.byte	0x3
	.byte	0x92
	.uleb128 0x58
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.llong	.LVL55
	.4byte	0x7b5
	.uleb128 0x8
	.byte	0x1
	.byte	0x6a
	.byte	0x3
	.byte	0x92
	.uleb128 0x36
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.llong	.LVL61
	.4byte	0x7ea
	.uleb128 0x8
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x37
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0x92
	.uleb128 0x37
	.sleb128 0
	.uleb128 0x8
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x8
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x7
	.llong	.LVL80
	.4byte	0x81f
	.uleb128 0x8
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x37
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0x92
	.uleb128 0x37
	.sleb128 0
	.uleb128 0x8
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x8
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x7
	.llong	.LVL83
	.4byte	0x835
	.uleb128 0x8
	.byte	0x2
	.byte	0x7f
	.sleb128 8
	.byte	0x3
	.byte	0x92
	.uleb128 0x2e
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.llong	.LVL100
	.4byte	0x86a
	.uleb128 0x8
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x37
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0x92
	.uleb128 0x37
	.sleb128 0
	.uleb128 0x8
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x8
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x7
	.llong	.LVL109
	.4byte	0x89f
	.uleb128 0x8
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x37
	.sleb128 0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0x92
	.uleb128 0x37
	.sleb128 0
	.uleb128 0x8
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x8
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x7
	.llong	.LVL121
	.4byte	0x8d5
	.uleb128 0x8
	.byte	0x2
	.byte	0x7f
	.sleb128 32
	.byte	0x3
	.byte	0x92
	.uleb128 0x38
	.sleb128 0
	.uleb128 0x8
	.byte	0x2
	.byte	0x7f
	.sleb128 28
	.byte	0x3
	.byte	0x92
	.uleb128 0x2e
	.sleb128 0
	.uleb128 0x8
	.byte	0x2
	.byte	0x7f
	.sleb128 24
	.byte	0x3
	.byte	0x92
	.uleb128 0x39
	.sleb128 0
	.uleb128 0x8
	.byte	0x2
	.byte	0x7f
	.sleb128 20
	.byte	0x3
	.byte	0x92
	.uleb128 0x37
	.sleb128 0
	.uleb128 0x8
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x3
	.byte	0x92
	.uleb128 0x37
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.llong	.LVL128
	.4byte	0x8f3
	.uleb128 0x8
	.byte	0x2
	.byte	0x7f
	.sleb128 20
	.byte	0x3
	.byte	0x92
	.uleb128 0x37
	.sleb128 0
	.uleb128 0x8
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x3
	.byte	0x92
	.uleb128 0x37
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL132
	.uleb128 0x8
	.byte	0x2
	.byte	0x7f
	.sleb128 8
	.byte	0x3
	.byte	0x92
	.uleb128 0x38
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF41
	.byte	0x1
	.byte	0x54
	.llong	.LFB7
	.llong	.LFE7
	.4byte	.LLST50
	.byte	0x1
	.4byte	0x97d
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x1
	.byte	0x56
	.4byte	0x97d
	.4byte	0x40140004
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x57
	.4byte	0x97d
	.4byte	0x40140000
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0x58
	.4byte	0x983
	.4byte	.LLST51
	.uleb128 0x7
	.llong	.LVL144
	.4byte	0x96d
	.uleb128 0x8
	.byte	0x1
	.byte	0x6c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x8
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL145
	.uleb128 0x8
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.4byte	0x70
	.uleb128 0x13
	.4byte	0x70
	.uleb128 0x14
	.byte	0x1
	.4byte	0x38
	.4byte	0x995
	.uleb128 0x15
	.byte	0xf
	.byte	0
	.uleb128 0x16
	.string	"v_A"
	.byte	0x1
	.byte	0x19
	.4byte	0x9ab
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	v_A
	.uleb128 0xa
	.byte	0x8
	.4byte	0x988
	.uleb128 0x16
	.string	"v_Q"
	.byte	0x1
	.byte	0x1a
	.4byte	0x9ab
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	v_Q
	.uleb128 0x16
	.string	"v_R"
	.byte	0x1
	.byte	0x1b
	.4byte	0x9ab
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	v_R
	.uleb128 0x16
	.string	"v_u"
	.byte	0x1
	.byte	0x1c
	.4byte	0x9ab
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	v_u
	.uleb128 0x16
	.string	"v_b"
	.byte	0x1
	.byte	0x1d
	.4byte	0x9ab
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	v_b
	.uleb128 0x16
	.string	"v_y"
	.byte	0x1
	.byte	0x1e
	.4byte	0x9ab
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	v_y
	.uleb128 0x16
	.string	"v_x"
	.byte	0x1
	.byte	0x1f
	.4byte	0x9ab
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	v_x
	.uleb128 0x17
	.4byte	0x38
	.4byte	0xa46
	.uleb128 0x18
	.4byte	0x85
	.2byte	0x3fff
	.byte	0
	.uleb128 0x16
	.string	"A"
	.byte	0x1
	.byte	0x20
	.4byte	0xa35
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	A
	.uleb128 0x16
	.string	"Q"
	.byte	0x1
	.byte	0x21
	.4byte	0xa35
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	Q
	.uleb128 0x16
	.string	"R"
	.byte	0x1
	.byte	0x22
	.4byte	0xa35
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	R
	.uleb128 0x19
	.4byte	.LASF26
	.byte	0x1
	.byte	0x23
	.4byte	0xa35
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	inv_A
	.uleb128 0x17
	.4byte	0x38
	.4byte	0xaa8
	.uleb128 0x1a
	.4byte	0x85
	.byte	0x7f
	.byte	0
	.uleb128 0x16
	.string	"u"
	.byte	0x1
	.byte	0x24
	.4byte	0xa98
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	u
	.uleb128 0x16
	.string	"b"
	.byte	0x1
	.byte	0x25
	.4byte	0xa98
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	b
	.uleb128 0x16
	.string	"y"
	.byte	0x1
	.byte	0x26
	.4byte	0xa98
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	y
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.byte	0x27
	.4byte	0xa98
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	x
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.sleb128 96
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL1-1
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL1-1
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST2:
	.llong	.LVL0
	.llong	.LVL1-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL1-1
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL1-1
	.2byte	0x1
	.byte	0x6e
	.llong	.LVL1-1
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL1-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL1-1
	.llong	.LVL2
	.2byte	0x2
	.byte	0x90
	.uleb128 0x30
	.llong	.LVL2
	.llong	.LVL3
	.2byte	0x4
	.byte	0x92
	.uleb128 0x3b
	.sleb128 1
	.byte	0x9f
	.llong	.LVL3
	.llong	.LFE3
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL1
	.llong	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL3
	.llong	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LFB4
	.llong	.LCFI1
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI1
	.llong	.LFE4
	.2byte	0x3
	.byte	0x7f
	.sleb128 72
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL9
	.llong	.LVL10
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL10
	.llong	.LVL18
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL18
	.llong	.LFE4
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL9
	.llong	.LVL11-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL11-1
	.llong	.LVL16
	.2byte	0x1
	.byte	0x58
	.llong	.LVL16
	.llong	.LFE4
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL9
	.llong	.LVL11-1
	.2byte	0x1
	.byte	0x6e
	.llong	.LVL11-1
	.llong	.LVL17
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.llong	.LVL17
	.llong	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6e
	.byte	0x9f
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL9
	.llong	.LVL11-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL11-1
	.llong	.LFE4
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL9
	.llong	.LVL11-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL11-1
	.llong	.LFE4
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x22
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL9
	.llong	.LVL11-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x24
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x25
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL11-1
	.llong	.LFE4
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x24
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL9
	.llong	.LVL11-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x26
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL11-1
	.llong	.LVL12
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL12
	.llong	.LFE4
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x26
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL9
	.llong	.LVL11-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x28
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL11-1
	.llong	.LFE4
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x28
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST16:
	.llong	.LFB5
	.llong	.LCFI2
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI2
	.llong	.LFE5
	.2byte	0x3
	.byte	0x7f
	.sleb128 136
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL19
	.llong	.LVL20
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL20
	.llong	.LFE5
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL19
	.llong	.LVL21
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL21
	.llong	.LFE5
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL19
	.llong	.LVL22
	.2byte	0x1
	.byte	0x6e
	.llong	.LVL22
	.llong	.LVL40
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.llong	.LVL40
	.llong	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6e
	.byte	0x9f
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL19
	.llong	.LVL23-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL23-1
	.llong	.LFE5
	.2byte	0x2
	.byte	0x90
	.uleb128 0x35
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL19
	.llong	.LVL23-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL23-1
	.llong	.LVL33
	.2byte	0x2
	.byte	0x90
	.uleb128 0x59
	.llong	.LVL33
	.llong	.LFE5
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x22
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL19
	.llong	.LVL23-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x24
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x25
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL23-1
	.llong	.LFE5
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x24
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL19
	.llong	.LVL23-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x26
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL23-1
	.llong	.LVL41
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL41
	.llong	.LFE5
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x26
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL19
	.llong	.LVL23-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x28
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL23-1
	.llong	.LVL39
	.2byte	0x1
	.byte	0x58
	.llong	.LVL39
	.llong	.LFE5
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x28
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL19
	.llong	.LVL23-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x2a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL23-1
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL36
	.llong	.LFE5
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x2a
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST26:
	.llong	.LFB6
	.llong	.LCFI3
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI3
	.llong	.LFE6
	.2byte	0x3
	.byte	0x7f
	.sleb128 64
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL42
	.llong	.LVL43
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL43
	.llong	.LVL51
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL51
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL42
	.llong	.LVL44-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL44-1
	.llong	.LVL48
	.2byte	0x1
	.byte	0x58
	.llong	.LVL48
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL42
	.llong	.LVL44-1
	.2byte	0x1
	.byte	0x6e
	.llong	.LVL44-1
	.llong	.LVL49
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	.LVL49
	.llong	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6e
	.byte	0x9f
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL42
	.llong	.LVL44-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL44-1
	.llong	.LFE6
	.2byte	0x2
	.byte	0x90
	.uleb128 0x33
	.llong	0
	.llong	0
.LLST31:
	.llong	.LVL42
	.llong	.LVL44-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x22
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x23
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL44-1
	.llong	.LFE6
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x22
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST32:
	.llong	.LVL42
	.llong	.LVL44-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x24
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x25
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL44-1
	.llong	.LVL50
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL50
	.llong	.LFE6
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x24
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST33:
	.llong	.LVL42
	.llong	.LVL44-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x26
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL44-1
	.llong	.LFE6
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x26
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST34:
	.llong	.LFB8
	.llong	.LCFI4
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI4
	.llong	.LFE8
	.2byte	0x3
	.byte	0x7f
	.sleb128 184
	.llong	0
	.llong	0
.LLST35:
	.llong	.LVL62
	.llong	.LVL63
	.2byte	0x8
	.byte	0x92
	.uleb128 0x36
	.sleb128 0
	.byte	0x92
	.uleb128 0x42
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.llong	.LVL81
	.llong	.LVL82
	.2byte	0x8
	.byte	0x92
	.uleb128 0x36
	.sleb128 0
	.byte	0x92
	.uleb128 0x42
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST36:
	.llong	.LVL101
	.llong	.LVL110
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	.LVL110
	.llong	.LVL123
	.2byte	0x3
	.byte	0x91
	.sleb128 -116
	.llong	.LVL127
	.llong	.LVL135
	.2byte	0x3
	.byte	0x91
	.sleb128 -116
	.llong	.LVL135
	.llong	.LVL137
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	0
	.llong	0
.LLST37:
	.llong	.LVL111
	.llong	.LVL123
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.llong	.LVL127
	.llong	.LVL135
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.llong	0
	.llong	0
.LLST38:
	.llong	.LVL52
	.llong	.LVL53
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.llong	.LVL121
	.llong	.LVL122
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	.LVL128
	.llong	.LVL129
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	0
	.llong	0
.LLST39:
	.llong	.LVL52
	.llong	.LVL53
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.llong	.LVL63
	.llong	.LVL73
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	.LVL82
	.llong	.LVL84
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL84
	.llong	.LVL119
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	.LVL119
	.llong	.LVL120-1
	.2byte	0x1
	.byte	0x61
	.llong	.LVL120-1
	.llong	.LVL127
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	.LVL127
	.llong	.LVL128-1
	.2byte	0x1
	.byte	0x61
	.llong	.LVL128-1
	.llong	.LVL131
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	.LVL131
	.llong	.LVL133
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL133
	.llong	.LVL135
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	.LVL135
	.llong	.LVL137
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL139
	.llong	.LFE8
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	0
	.llong	0
.LLST40:
	.llong	.LVL66
	.llong	.LVL67
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL68
	.llong	.LVL71
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.llong	.LVL82
	.llong	.LVL83-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.llong	.LVL87
	.llong	.LVL88
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL89
	.llong	.LVL95
	.2byte	0x2
	.byte	0x90
	.uleb128 0x48
	.llong	.LVL104
	.llong	.LVL105
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL106
	.llong	.LVL108
	.2byte	0x1
	.byte	0x68
	.llong	.LVL112
	.llong	.LVL113
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL114
	.llong	.LVL118
	.2byte	0x2
	.byte	0x90
	.uleb128 0x43
	.llong	.LVL125
	.llong	.LVL127
	.2byte	0x2
	.byte	0x90
	.uleb128 0x48
	.llong	.LVL129
	.llong	.LVL132-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x43
	.llong	.LVL135
	.llong	.LVL136-1
	.2byte	0x1
	.byte	0x68
	.llong	0
	.llong	0
.LLST41:
	.llong	.LVL69
	.llong	.LVL71
	.2byte	0x2
	.byte	0x90
	.uleb128 0x28
	.llong	.LVL82
	.llong	.LVL83-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x28
	.llong	.LVL90
	.llong	.LVL100-1
	.2byte	0x1
	.byte	0x6b
	.llong	.LVL107
	.llong	.LVL108
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.llong	.LVL115
	.llong	.LVL118
	.2byte	0x1
	.byte	0x6f
	.llong	.LVL123
	.llong	.LVL125
	.2byte	0x1
	.byte	0x6b
	.llong	.LVL126
	.llong	.LVL127
	.2byte	0x1
	.byte	0x6b
	.llong	.LVL130
	.llong	.LVL132-1
	.2byte	0x1
	.byte	0x6f
	.llong	.LVL135
	.llong	.LVL136-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.llong	0
	.llong	0
.LLST42:
	.llong	.LVL63
	.llong	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL70
	.llong	.LVL73
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4a
	.llong	.LVL85
	.llong	.LVL86
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4a
	.llong	.LVL93
	.llong	.LVL94
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4b
	.llong	.LVL94
	.llong	.LVL95
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL96
	.llong	.LVL98
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL103
	.llong	.LVL104
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL117
	.llong	.LVL118
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.llong	.LVL123
	.llong	.LVL125
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL134
	.llong	.LVL135
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.llong	.LVL139
	.llong	.LFE8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST43:
	.llong	.LVL55
	.llong	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL58
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.llong	.LVL65
	.llong	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL69
	.llong	.LVL71
	.2byte	0x2
	.byte	0x90
	.uleb128 0x48
	.llong	.LVL72
	.llong	.LVL73
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL74
	.llong	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL77
	.llong	.LVL82
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.llong	.LVL82
	.llong	.LVL83-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x48
	.llong	.LVL86
	.llong	.LVL87
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL92
	.llong	.LVL95
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.llong	.LVL104
	.llong	.LVL105
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL111
	.llong	.LVL112
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL116
	.llong	.LVL118
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.llong	.LVL137
	.llong	.LVL139
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.llong	0
	.llong	0
.LLST44:
	.llong	.LVL66
	.llong	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL87
	.llong	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL112
	.llong	.LVL113
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST45:
	.llong	.LVL61
	.llong	.LVL65
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL80
	.llong	.LVL82
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL100
	.llong	.LVL102
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL137
	.llong	.LVL138
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST46:
	.llong	.LVL52
	.llong	.LVL53
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.llong	.LVL94
	.llong	.LVL95
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.llong	.LVL95
	.llong	.LVL100-1
	.2byte	0x1
	.byte	0x60
	.llong	.LVL123
	.llong	.LVL125
	.2byte	0x1
	.byte	0x60
	.llong	0
	.llong	0
.LLST47:
	.llong	.LVL95
	.llong	.LVL97
	.2byte	0x1c
	.byte	0x92
	.uleb128 0x2c
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0xf9
	.uleb128 0x31
	.byte	0x3
	.llong	R
	.byte	0x22
	.byte	0xf6
	.byte	0x4
	.uleb128 0x38
	.byte	0x19
	.byte	0x9f
	.llong	0
	.llong	0
.LLST48:
	.llong	.LVL54
	.llong	.LVL60
	.2byte	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.llong	.LVL60
	.llong	.LVL73
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.llong	.LVL73
	.llong	.LVL79
	.2byte	0x3
	.byte	0x8
	.byte	0x33
	.byte	0x9f
	.llong	.LVL79
	.llong	.LVL99
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.llong	.LVL99
	.llong	.LVL100-1
	.2byte	0x1
	.byte	0x6e
	.llong	.LVL100-1
	.llong	.LVL121
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.llong	.LVL123
	.llong	.LVL128
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.llong	.LVL129
	.llong	.LFE8
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.llong	0
	.llong	0
.LLST50:
	.llong	.LFB7
	.llong	.LCFI5
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI5
	.llong	.LFE7
	.2byte	0x2
	.byte	0x7f
	.sleb128 24
	.llong	0
	.llong	0
.LLST51:
	.llong	.LVL141
	.llong	.LVL142
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.llong	.LVL143
	.llong	.LFE7
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.llong	0
	.llong	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
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
	.llong	.LFB8
	.llong	.LFE8-.LFB8
	.llong	.LFB7
	.llong	.LFE7-.LFB7
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LFB3
	.llong	.LFE3
	.llong	.LFB4
	.llong	.LFE4
	.llong	.LFB5
	.llong	.LFE5
	.llong	.LFB6
	.llong	.LFE6
	.llong	.LFB8
	.llong	.LFE8
	.llong	.LFB7
	.llong	.LFE7
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"t_stop"
.LASF23:
	.string	"DSPF_sp_qrd_wrapper"
.LASF46:
	.string	"../main.c"
.LASF2:
	.string	"long long unsigned int"
.LASF24:
	.string	"DSPF_sp_qrd_solver_wrapper"
.LASF32:
	.string	"test"
.LASF9:
	.string	"long long int"
.LASF7:
	.string	"signed char"
.LASF25:
	.string	"DSPF_sp_qrd_inverse_wrapper"
.LASF43:
	.string	"cache1"
.LASF27:
	.string	"printMatrix"
.LASF10:
	.string	"long int"
.LASF30:
	.string	"QRD_t_slover"
.LASF13:
	.string	"double"
.LASF14:
	.string	"matrix"
.LASF36:
	.string	"temp"
.LASF0:
	.string	"__unknown__"
.LASF5:
	.string	"unsigned int"
.LASF47:
	.string	"/cygdrive/c/Users/LinGuanguo/source/\346\235\234\344\272\232\345\250\237\350\200\201\345\270\210\351\241\271\347\233\256/DSPF_sp_qrd_solver/Debug"
.LASF15:
	.string	"name"
.LASF29:
	.string	"QRD_t"
.LASF38:
	.string	"tolerance_decomp"
.LASF4:
	.string	"short unsigned int"
.LASF40:
	.string	"tolerance_inverse"
.LASF18:
	.string	"t_start"
.LASF11:
	.string	"sizetype"
.LASF44:
	.string	"cache_ok"
.LASF37:
	.string	"tolerance_invertible"
.LASF45:
	.string	"GNU C 4.7.0"
.LASF1:
	.string	"float"
.LASF34:
	.string	"error"
.LASF26:
	.string	"inv_A"
.LASF3:
	.string	"unsigned char"
.LASF8:
	.string	"short int"
.LASF39:
	.string	"tolerance_solver"
.LASF20:
	.string	"Nrows"
.LASF35:
	.string	"invertible"
.LASF6:
	.string	"long unsigned int"
.LASF12:
	.string	"char"
.LASF31:
	.string	"QRD_t_inverse"
.LASF28:
	.string	"testQr"
.LASF17:
	.string	"colN"
.LASF22:
	.string	"status"
.LASF21:
	.string	"Ncols"
.LASF33:
	.string	"pass"
.LASF41:
	.string	"main"
.LASF16:
	.string	"rowN"
.LASF42:
	.string	"cache"
