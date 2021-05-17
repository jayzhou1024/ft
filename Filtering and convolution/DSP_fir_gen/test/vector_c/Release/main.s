	.file	"main.c"
	.section	.text.get_time_cn,"ax",@progbits
	.align	2
	.global	get_time_cn
	.type	get_time_cn, @function
get_time_cn:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[5]
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTW		R32, *+AR15[5]
		SNOP		1
		SMOV.M2		R16, R32
		SSTDW		R7:R6, *+AR15[6]
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R31, *+AR15[4]
		SMOV.M1		R18, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L2, R62
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L2, R62
		SMOVIH4.L		.L2, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.L2:
		SBR		DSP_fir_gen_cn
	|	SMOV.M2		R32, R16
	|	SMOV.M1		R31, R18
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIL		.L3, R62
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH		.L3, R62
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH4.L		.L3, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSP_fir_gen_cn occurs
		SNOP		2
.L3:
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L4, R62
		SMOVIH		.L4, R62
		SMOVIH4.L		.L4, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.L4:
		SLDDW		*+AR15[3], R7:R6
	|	SSUB.M2		R30, R10, R10
		SLDDW		*+AR15[5], R63:R62
		SLDW		*+AR15[3], R30
		SLDW		*+AR15[4], R31
		SLDW		*+AR15[5], R32
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[4], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
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
	.size	get_time_cn, .-get_time_cn
	.section	.text.get_time_vc,"ax",@progbits
	.align	2
	.global	get_time_vc
	.type	get_time_vc, @function
get_time_vc:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[5]
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTW		R32, *+AR15[5]
		SNOP		1
		SMOV.M2		R16, R32
		SSTDW		R7:R6, *+AR15[6]
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R31, *+AR15[4]
		SMOV.M1		R18, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L6, R62
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L6, R62
		SMOVIH4.L		.L6, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.L6:
		SBR		DSP_fir_gen_vc4
	|	SMOV.M2		R32, R16
	|	SMOV.M1		R31, R18
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIL		.L7, R62
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH		.L7, R62
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH4.L		.L7, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSP_fir_gen_vc4 occurs, with return value
		SNOP		2
.L7:
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L8, R62
		SMOVIH		.L8, R62
		SMOVIH4.L		.L8, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.L8:
		SLDDW		*+AR15[3], R7:R6
	|	SSUB.M2		R30, R10, R10
		SLDDW		*+AR15[5], R63:R62
		SLDW		*+AR15[3], R30
		SLDW		*+AR15[4], R31
		SLDW		*+AR15[5], R32
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[4], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
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
	.size	get_time_vc, .-get_time_vc
	.section	.const,"a",@progbits
.LC0:
	.string	"Result Failure (r_i)  "
.LC1:
	.string	"Result Successful (r_i)  "
.LC2:
	.string	"\tNR = %d\t  NH = %d\t cn_time:%d\t  vc_cycle:%d\t\n"
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
		SMOVIL		-160, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
		SMVAAGL.M1		AR14, R7:R6
	|	SMOVIL		1075052548, R46
		SMOVIH		1075052548, R46
	|	SSTDW		R63:R62, *+AR15[18]
		SMVAAGH.M2		AR14, R7:R6
	|	SMOVIL		0, R47
	|	SSTDW		R41:R40, *+AR15[13]
		SMVAGA36.M1		R47:R46, AR10
	|	SMOVIL		1075052544, R42
		SMOVIL		1, R44
		SSTDW		R7:R6, *+AR15[19]
		SMVAAGL.M2		OR9, R7:R6
	|	SSTDW		R39:R38, *+AR15[12]
		SMOVIH		1075052544, R42
		SMVAAGH.M2		OR9, R7:R6
	|	SMOVIL		0, R43
		SSTDW		R37:R36, *+AR15[11]
		SSTDW		R7:R6, *+AR15[17]
		SMVAAGL.M2		OR8, R7:R6
		SNOP		1
		SMVAAGH.M2		OR8, R7:R6
	|	SSTDW		R35:R34, *+AR15[10]
		SSTDW		R33:R32, *+AR15[9]
		SNOP		2
		SSTDW		R7:R6, *+AR15[16]
		SMVAAGL.M2		AR9, R7:R6
	|	SSTDW		R31:R30, *+AR15[8]
		SNOP		1
		SMVAAGH.M2		AR9, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[15]
		SMVAAGL.M2		AR8, R7:R6
		SNOP		1
		SMVAAGH.M2		AR8, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[14]
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
		SNOP		2
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
		SSTW		R44, *+AR15[15]
		SNOP		2
		SLDW		*+AR15[15], R0
		SNOP		5
	[!R0]	SBR		.L12
		SNOP		6
	;; condjump to .L12 occurs
.L17:
		SLDW		*AR10, R42
		SNOP		5
		SSTW		R42, *+AR15[15]
		SNOP		2
		SLDW		*+AR15[15], R1
		SNOP		5
	[R1]	SBR		.L17
		SNOP		6
	;; condjump to .L17 occurs
.L12:
		SBR		SetTimerPeriod
	|	SMOVIL		-1, R12
		SMOVIL		.L23, R62
		SMOVIH		.L23, R62
		SMOVIH4.L		.L23, R63
		SMOVIL		0, R10
		SMOVIL.L		hAddr_DDR, R36
	;; call to SetTimerPeriod occurs, with return value
		SMOVIL		8, R34
.L23:
		SMOVIL.L		xAddr_DDR, R42
		SBR		TimerStart
	|	SMOVIH.L		xAddr_DDR, R42
		SMOVIL		.L24, R62
		SMOVIH		.L24, R62
		SMOVIH4.L		.L24, R63
		SMOVIH4.L		xAddr_DDR, R43
		SMVAGA36.M2		R43:R42, OR9
	|	SMOVIL		0, R10
	;; call to TimerStart occurs, with return value
		SMOVIL		0, R35
.L24:
		SMOVIL.L		time_cn, R44
		SMOVIL.L		time_vc, R46
		SMOVIH.L		time_cn, R44
		SMOVIH4.L		time_cn, R45
		SBR		GetTimerCount
	|	SMOVIH.L		time_vc, R46
	|	SMVAGA36.M2		R45:R44, AR9
		SMOVIL		.L25, R62
		SMOVIH		.L25, R62
		SMOVIH4.L		.L25, R63
		SMOVIH4.L		time_vc, R47
		SMVAGA36.M2		R47:R46, AR14
	|	SMOVIL		0, R10
	;; call to GetTimerCount occurs, with return value
		SMOVIL		4, R39
.L25:
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L26, R62
		SMOVIH		.L26, R62
		SMOVIH4.L		.L26, R63
		SMOVIH.L		hAddr_DDR, R36
		SMOVIH4.L		hAddr_DDR, R37
	;; call to GetTimerCount occurs, with return value
		SNOP		1
.L26:
.L11:
		SADD.M2		15,R39,R2
	|	SADD.M1		14,R39,R3
	|	SMOVIL		4, R38
		SSHFAR		4, R2, R8
	|	SSTW		R3, *+AR15[13]
		SSHFAR		31, R2, R9
		SSHFLR		27, R8, R45
		SSHFLL		5, R9, R12
		SSHFLL		2, R8, R43
		SOR		R12, R45, R13
		SSHFLL		5, R8, R14
	|	SSTW		R13, *+AR15[11]
		SSHFAR		31, R43, R40
	|	SSTW		R14, *+AR15[12]
		SSHFLR		27, R43, R10
		SSHFLL		5, R40, R11
		SOR		R11, R10, R40
		SSHFLL		7, R8, R41
.L15:
		SLDW		*+AR15[13], R47
		SNOP		5
		SADD.M2		R38,R47,R15
		SSHFAR		4, R15, R16
		SADD.M2		1,R16,R17
		SSHFAR		31, R17, R18
		SSHFLL		5, R18, R20
		SBR		vmalloc
	|	SSHFLR		27, R17, R19
		SMOVIL		.L27, R62
		SMOVIH		.L27, R62
		SMOVIH4.L		.L27, R63
		SOR		R20, R19, R21
		SSHFLL		5, R17, R22
	|	SMOV.M2		R21, R11
	|	SSTW		R21, *+AR15[9]
	;; call to vmalloc occurs, with return value
		SMOV.M2		R22, R10
	|	SSTW		R22, *+AR15[10]
.L27:
		SBR		vmalloc
	|	SMOV.M2		R10, R23
	|	SMOV.M1		R40, R11
		SMOV.M2		R23, R30
	|	SMOV.M1		R41, R10
	|	SMOVIL		.L28, R62
		SMOVIH		.L28, R62
		SMOVIH4.L		.L28, R63
		SSHFAR		31, R23, R31
		SMVAGA36.M2		R31:R30, AR8
	;; call to vmalloc occurs, with return value
		SNOP		1
.L28:
		SMOV.M2		R10, R24
	|	SMOVIL.L		rAddr_DDR_cn, R10
		SMOV.M2		R24, R32
	|	SSHFAR		31, R24, R33
		SMOVIL		0, R12
	|	SMVAGA36.M2		R33:R32, OR8
		SBR		memset
	|	SMOVIL		192, R14
		SMOVIL		.L29, R62
		SMOVIH		.L29, R62
		SMOVIH4.L		.L29, R63
		SMOVIL		0, R15
		SMOVIH.L		rAddr_DDR_cn, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		rAddr_DDR_cn, R11
.L29:
		SMOVIL		1024, R14
		SMOVIL.L		rAddr_DDR_vc, R10
		SBR		memset
	|	SMOVIL		0, R15
		SMOVIL		.L30, R62
		SMOVIH		.L30, R62
		SMOVIH4.L		.L30, R63
		SMOVIL		0, R12
		SMOVIH.L		rAddr_DDR_vc, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		rAddr_DDR_vc, R11
.L30:
		SLDW		*+AR15[10], R25
	|	SMVAAA.M1		OR9, AR10
	|	SMVAAGL.M2		AR8, R13:R12
		SLDW		*+AR15[9], R26
	|	SBR		M7002_datatrans
		SLDDW		*AR10, R11:R10
	|	SMVAAGH.M2		AR8, R13:R12
	|	SMOVIL		.L31, R62
		SMOVIH		.L31, R62
		SMOVIH4.L		.L31, R63
		SNOP		1
		SMOV.M2		R25, R14
	;; call to M7002_datatrans occurs, with return value
		SMOV.M2		R26, R15
.L31:
		SBR		M7002_datatrans
	|	SMOV.M2		R40, R15
	|	SMOV.M1		R41, R14
	|	SMOVIH4.L		rAddr_DDR_vc+32, R11
		SMVAAGL.M2		OR8, R13:R12
	|	SMOVIL		.L32, R62
		SMOVIH		.L32, R62
		SMVAAGH.M2		OR8, R13:R12
	|	SMOVIH4.L		.L32, R63
		SMOVIL.L		rAddr_DDR_vc+32, R10
		SMOVIH.L		rAddr_DDR_vc+32, R10
	;; call to M7002_datatrans occurs, with return value
		SNOP		1
.L32:
		SMVAGA36.M2		R37:R36, AR10
	|	SMOVIL		1074790400, R12
		SBR		M7002_datatrans
	|	SMOVIH		1074790400, R12
		SLDDW		*AR10, R11:R10
	|	SMOVIL		.L33, R62
		SMOVIH		.L33, R62
		SMOVIH4.L		.L33, R63
		SMOVIL		0, R13
		SMOVIL		32, R14
	;; call to M7002_datatrans occurs, with return value
		SNOP		1
.L33:
		SMVAAA.M2		OR9, AR10
	|	SMOVIL.L		rAddr_DDR_cn+32, R14
	|	SMOV.M1		R38, R16
		SMOV.M1		R39, R18
	|	SMOVIH.L		rAddr_DDR_cn+32, R14
		SLDDW		*AR10, R11:R10
	|	SMVAGA36.M2		R37:R36, AR10
	|	SMOVIH4.L		rAddr_DDR_cn+32, R15
		SBR		get_time_cn
		SLDDW		*AR10, R13:R12
	|	SMOVIL		.L34, R62
		SMOVIH		.L34, R62
		SMOVIH4.L		.L34, R63
	;; call to get_time_cn occurs, with return value
		SNOP		3
.L34:
		SBR		get_time_vc
	|	SSTW		R10, *AR9
	|	SMOV.M2		R38, R16
	|	SMOV.M1		R39, R18
	|	SMOVIL		0, R13
		SMVAAGL.M1		OR8, R15:R14
	|	SMVAAGL.M2		AR8, R11:R10
	|	SMOVIL		.L35, R62
		SMOVIH		.L35, R62
		SMVAAGH.M1		OR8, R15:R14
	|	SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH4.L		.L35, R63
		SMOVIL		1074790400, R12
		SMOVIH		1074790400, R12
	;; call to get_time_vc occurs, with return value
		SNOP		1
.L35:
		SBR		M7002_datatrans
	|	SLDW		*+AR15[12], R14
	|	SMOVIH4.L		rAddr_DDR_vc+32, R13
		SLDW		*+AR15[11], R15
	|	SMOVIL		.L36, R62
		SSTW		R10, *AR14
	|	SMVAAGL.M2		OR8, R11:R10
	|	SMOVIH		.L36, R62
		SMOVIH4.L		.L36, R63
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIL.L		rAddr_DDR_vc+32, R12
		SMOVIH.L		rAddr_DDR_vc+32, R12
	;; call to M7002_datatrans occurs, with return value
		SNOP		1
.L36:
		SMOVIL.L		rAddr_DDR_cn+32, R12
	|	SMOV.M2		R34, R14
	|	SMOV.M1		R35, R15
		SMOVIL.L		rAddr_DDR_vc+32, R10
		SBR		memcmp
	|	SMOVIH.L		rAddr_DDR_cn+32, R12
		SMOVIL		.L37, R62
		SMOVIH		.L37, R62
		SMOVIH4.L		.L37, R63
		SMOVIH4.L		rAddr_DDR_cn+32, R13
		SMOVIH.L		rAddr_DDR_vc+32, R10
	;; call to memcmp occurs, with return value
		SMOVIH4.L		rAddr_DDR_vc+32, R11
.L37:
		SMOV.M2		R10, R0
	[!R0]	SBR		.L13
		SNOP		6
	;; condjump to .L13 occurs
		SMOVIL.L		.LC0, R42
		SMOVIH.L		.LC0, R42
		SBR		printf
	|	SMOVIH4.L		.LC0, R43
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L38, R62
		SMOVIH		.L38, R62
		SMOVIH4.L		.L38, R63
	;; call to printf occurs, with return value
		SNOP		3
.L38:
		SLDW		*AR9, R27
	|	SMOVIL.L		.LC2, R46
		SLDW		*AR14, R28
	|	SMOVIH.L		.LC2, R46
		SMOVIH4.L		.LC2, R47
	|	SSTW		R38, *+AR15[5]
	|	SADD.M2		4,R38,R38
		SNOP		4
		SSTDW		R47:R46, *+AR15[1]
		SBR		printf
	|	SSTW		R27, *+AR15[6]
		SMOVIL		.L39, R62
		SMOVIH		.L39, R62
		SSTW		R28, *+AR15[7]
	|	SMOVIH4.L		.L39, R63
		SSTW		R39, *+AR15[4]
	;; call to printf occurs, with return value
		SNOP		2
.L39:
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L40, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L40, R62
		SMOVIH4.L		.L40, R63
	;; call to vfree occurs, with return value
		SNOP		3
.L40:
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L41, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L41, R62
		SMOVIH4.L		.L41, R63
	;; call to vfree occurs, with return value
		SNOP		3
.L41:
		SMOVIL		20, R29
		SEQ		R29, R38, R1
	[!R1]	SBR		.L15
		SNOP		6
	;; condjump to .L15 occurs
.L21:
		SADD.M2		4,R39,R39
	|	SMOVIL		68, R33
	|	SADD.M1		8,R34,R30
		SEQ		R33, R39, R2
	[!R2]	SBR		.L11
	|	SLTU		R30, R34, R31
	|	SMOV.M2		R30, R34
		SADD.M2		R35,R31,R35
		SNOP		5
	;; condjump to .L11 occurs
		SLDDW		*+AR15[14], R7:R6
		SLDDW		*+AR15[18], R63:R62
		SLDDW		*+AR15[8], R31:R30
		SLDDW		*+AR15[9], R33:R32
		SLDDW		*+AR15[10], R35:R34
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[15], R7:R6
		SLDDW		*+AR15[11], R37:R36
		SLDDW		*+AR15[12], R39:R38
		SLDDW		*+AR15[13], R41:R40
		SNOP		2
		SMVAGA36.M2		R7:R6, AR9
		SNOP		2
		SLDDW		*+AR15[16], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[17], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR9
	|	SLDDW		*+AR15[19], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		160, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.L13:
		SMOVIL.L		.LC1, R44
		SMOVIH.L		.LC1, R44
		SBR		printf
	|	SMOVIH4.L		.LC1, R45
		SSTDW		R45:R44, *+AR15[1]
	|	SMOVIL		.L42, R62
		SMOVIH		.L42, R62
		SMOVIH4.L		.L42, R63
	;; call to printf occurs, with return value
		SNOP		3
.L42:
		SLDW		*AR9, R27
	|	SMOVIL.L		.LC2, R46
		SLDW		*AR14, R28
	|	SMOVIH.L		.LC2, R46
		SMOVIH4.L		.LC2, R47
	|	SSTW		R38, *+AR15[5]
	|	SADD.M2		4,R38,R38
		SNOP		4
		SSTDW		R47:R46, *+AR15[1]
		SBR		printf
	|	SSTW		R27, *+AR15[6]
		SMOVIL		.L43, R62
		SMOVIH		.L43, R62
		SSTW		R28, *+AR15[7]
	|	SMOVIH4.L		.L43, R63
		SSTW		R39, *+AR15[4]
	;; call to printf occurs, with return value
		SNOP		2
.L43:
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L44, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L44, R62
		SMOVIH4.L		.L44, R63
	;; call to vfree occurs, with return value
		SNOP		3
.L44:
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L45, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L45, R62
		SMOVIH4.L		.L45, R63
	;; call to vfree occurs, with return value
		SNOP		3
.L45:
		SMOVIL		20, R29
		SEQ		R29, R38, R1
	[!R1]	SBR		.L15
		SNOP		6
	;; condjump to .L15 occurs
		SBR		.L21
		SNOP		6
	;; jump to .L21 occurs
	.size	main, .-main
	.common	time_vc,4,4
	.common	time_cn,4,4
	.global	ptr_r_vc
	.section	.rodata,"a",@progbits
	.align	3
	.type	ptr_r_vc, @object
	.size	ptr_r_vc, 8
ptr_r_vc:
	.llong	rAddr_DDR_vc+32
	.global	ptr_r_cn
	.align	3
	.type	ptr_r_cn, @object
	.size	ptr_r_cn, 8
ptr_r_cn:
	.llong	rAddr_DDR_cn+32
	.global	hAddr_DDR
	.section	.neardata,"aw",@progbits
	.align	3
	.type	hAddr_DDR, @object
	.size	hAddr_DDR, 8
hAddr_DDR:
	.llong	h+32
	.global	xAddr_DDR
	.align	3
	.type	xAddr_DDR, @object
	.size	xAddr_DDR, 8
xAddr_DDR:
	.llong	x+32
	.common	rAddr_DDR_vc,1024,8
	.common	rAddr_DDR_cn,192,8
	.global	h
	.section	.const,"a",@progbits
	.align	3
	.type	h, @object
	.size	h, 96
h:
	.short	-25126
	.short	20121
	.short	21164
	.short	-12847
	.short	-19698
	.short	13566
	.short	-9904
	.short	20780
	.short	-31972
	.short	23024
	.short	-16695
	.short	-31934
	.short	-32587
	.short	-21617
	.short	-6789
	.short	-3896
	.short	-7
	.short	42
	.short	-6
	.short	39
	.short	-22
	.short	30
	.short	71
	.short	91
	.short	100
	.short	-23
	.short	-31
	.short	57
	.short	-21
	.short	-99
	.short	-9
	.short	-22
	.short	-99
	.short	-9
	.short	-22
	.short	21067
	.short	-29109
	.short	23662
	.short	19602
	.short	24832
	.short	20179
	.short	29252
	.short	-21908
	.short	-4808
	.short	-28552
	.short	28379
	.short	12932
	.short	-13989
	.global	x
	.align	3
	.type	x, @object
	.size	x, 224
x:
	.short	812
	.short	-21581
	.short	-27293
	.short	2500
	.short	21030
	.short	27269
	.short	28382
	.short	5219
	.short	-5514
	.short	30140
	.short	29703
	.short	5643
	.short	-3606
	.short	-16258
	.short	24429
	.short	-22139
	.short	17726
	.short	-12829
	.short	11707
	.short	30663
	.short	-22457
	.short	-19165
	.short	4279
	.short	-4415
	.short	-6802
	.short	31911
	.short	18964
	.short	29085
	.short	15969
	.short	6232
	.short	-3404
	.short	15764
	.short	-12984
	.short	-5298
	.short	7018
	.short	31261
	.short	3419
	.short	7468
	.short	21976
	.short	-21593
	.short	20528
	.short	-23741
	.short	384
	.short	1435
	.short	19863
	.short	18915
	.short	26788
	.short	-13865
	.short	-31397
	.short	-22574
	.short	7429
	.short	14949
	.short	-18228
	.short	15723
	.short	-27875
	.short	19097
	.short	7508
	.short	-20660
	.short	25333
	.short	-30119
	.short	-27386
	.short	23846
	.short	15386
	.short	-31037
	.short	-25747
	.short	17026
	.short	-32
	.short	7136
	.short	6783
	.short	25115
	.short	-7302
	.short	-9550
	.short	-4859
	.short	-20059
	.short	13321
	.short	8766
	.short	14422
	.short	-16761
	.short	-24777
	.short	-4140
	.short	24246
	.short	-2427
	.short	31342
	.short	5200
	.short	-16845
	.short	-4922
	.short	856
	.short	-9847
	.short	-2976
	.short	26418
	.short	6565
	.short	-18785
	.short	-7751
	.short	-26199
	.short	22470
	.short	7792
	.short	-460
	.short	-8077
	.short	-13729
	.short	17194
	.short	-13766
	.short	-3599
	.short	-32751
	.short	15627
	.short	15627
	.short	11111
	.short	-31687
	.short	18645
	.short	-8163
	.short	2778
	.short	20226
	.short	-27103
