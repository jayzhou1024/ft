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
	|	SSTDW		R33:R32, *+AR15[2]
		SNOP		1
		SMOV.M2		R16, R33
	|	SMOV.M1		R18, R32
		SSTDW		R7:R6, *+AR15[6]
		SMVAAGL.M2		OR8, R7:R6
	|	SSTDW		R31:R30, *+AR15[1]
		SMOV.M1		R20, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
		SBR		GetTimerCount
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
		SBR		DSP_fir_sym_cn
	|	SMOV.M2		R33, R16
	|	SMOV.M1		R32, R18
		SMOV.M2		R31, R20
	|	SMOV.M1		R10, R30
	|	SMOVIL		.L3, R62
		SMVAAGL.M1		AR14, R13:R12
	|	SMVAAGL.M2		OR8, R11:R10
	|	SMOVIH		.L3, R62
		SMVAAGL.M1		AR8, R15:R14
	|	SMOVIH4.L		.L3, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR14, R13:R12
		SMVAAGH.M1		AR8, R15:R14
	;; call to DSP_fir_sym_cn occurs
		SNOP		1
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
		SLDDW		*+AR15[1], R31:R30
		SLDDW		*+AR15[2], R33:R32
		SNOP		2
		SMVAGA36.M2		R7:R6, AR8
		SMVCGC.L		R63, BRReg
		SNOP		1
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
	|	SSTDW		R33:R32, *+AR15[2]
		SNOP		1
		SMOV.M2		R16, R33
	|	SMOV.M1		R18, R32
		SSTDW		R7:R6, *+AR15[6]
		SMVAAGL.M2		OR8, R7:R6
	|	SSTDW		R31:R30, *+AR15[1]
		SMOV.M1		R20, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
		SBR		GetTimerCount
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
		SBR		DSP_fir_sym_vc
	|	SMOV.M2		R33, R16
	|	SMOV.M1		R32, R18
		SMOV.M2		R31, R20
	|	SMOV.M1		R10, R30
	|	SMOVIL		.L7, R62
		SMVAAGL.M1		AR14, R13:R12
	|	SMVAAGL.M2		OR8, R11:R10
	|	SMOVIH		.L7, R62
		SMVAAGL.M1		AR8, R15:R14
	|	SMOVIH4.L		.L7, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR14, R13:R12
		SMVAAGH.M1		AR8, R15:R14
	;; call to DSP_fir_sym_vc occurs
		SNOP		1
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
		SLDDW		*+AR15[1], R31:R30
		SLDDW		*+AR15[2], R33:R32
		SNOP		2
		SMVAGA36.M2		R7:R6, AR8
		SMVCGC.L		R63, BRReg
		SNOP		1
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
	.string	"Result Failure "
.LC1:
	.string	"Result Successful "
.LC2:
	.string	"   \tNR = %d\t  NH = %d\t cn_time:%d\t  vc_cycle:%d\t\n"
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
		SMOVIL.L		rAddr_DDR_cn, R36
	;; call to SetTimerPeriod occurs, with return value
		SMOVIL.L		.LC2, R38
.L23:
		SBR		TimerStart
	|	SMOVIL		0, R10
		SMOVIL		.L24, R62
		SMOVIH		.L24, R62
		SMOVIH4.L		.L24, R63
		SMOVIH.L		rAddr_DDR_cn, R36
		SMOVIH4.L		rAddr_DDR_cn, R37
	;; call to TimerStart occurs, with return value
		SMOVIL		8, R40
.L24:
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L25, R62
		SMOVIH		.L25, R62
		SMOVIH4.L		.L25, R63
		SMOVIH.L		.LC2, R38
		SMOVIH4.L		.LC2, R39
	;; call to GetTimerCount occurs, with return value
		SNOP		1
.L25:
		SMOVIL.L		rAddr_DDR_cn+80, R42
		SMOVIL.L		xAddr_DDR, R44
		SMOVIL.L		hAddr_DDR, R46
		SMOVIH.L		rAddr_DDR_cn+80, R42
		SMOVIH4.L		rAddr_DDR_cn+80, R43
		SMOVIH.L		xAddr_DDR, R44
	|	SMVAGA36.M2		R43:R42, OR9
		SMOVIH4.L		xAddr_DDR, R45
		SBR		GetTimerCount
	|	SMOVIH.L		hAddr_DDR, R46
	|	SMVAGA36.M2		R45:R44, AR9
		SMOVIL		.L26, R62
		SMOVIH		.L26, R62
		SMOVIH4.L		.L26, R63
		SMOVIH4.L		hAddr_DDR, R47
		SMVAGA36.M2		R47:R46, AR14
	|	SMOVIL		0, R10
	;; call to GetTimerCount occurs, with return value
		SNOP		1
.L26:
.L11:
		SSHFLL		1, R40, R2
	|	SADD.M2		14,R40,R3
		SSTW		R2, *+AR15[12]
	|	SMOVIL		8, R41
		SSTW		R3, *+AR15[13]
	|	SMOVIL		0, R30
		SMOVIL		0, R31
.L15:
		SLDW		*+AR15[13], R47
		SNOP		5
		SADD.M2		R41,R47,R8
		SSHFAR		4, R8, R43
		SSHFAR		31, R8, R9
		SSHFLR		27, R43, R10
		SBR		vmalloc
	|	SSHFLL		5, R9, R11
		SMOVIL		.L27, R62
		SMOVIH		.L27, R62
		SMOVIH4.L		.L27, R63
		SSHFLL		5, R43, R13
		SOR		R11, R10, R12
	|	SSTW		R13, *+AR15[9]
	|	SMOV.M2		R13, R10
	;; call to vmalloc occurs, with return value
		SMOV.M2		R12, R11
	|	SSTW		R12, *+AR15[8]
.L27:
		SBR		vmalloc
	|	SMOV.M2		R10, R14
	|	SMOVIL		0, R11
		SMOV.M2		R14, R32
	|	SMOVIL		.L28, R62
		SMOVIH		.L28, R62
		SMOVIH4.L		.L28, R63
		SSHFAR		31, R14, R33
		SMOVIL		64, R10
	|	SMVAGA36.M2		R33:R32, AR8
	;; call to vmalloc occurs, with return value
		SNOP		1
.L28:
		SMVAGA36.M2		R37:R36, AR10
	|	SMOVIL.L		rAddr_DDR_cn+8, R46
	|	SMOV.M1		R10, R16
		SMOVIH.L		rAddr_DDR_cn+8, R46
	|	SMOV.M1		R16, R34
		SMOVIH4.L		rAddr_DDR_cn+8, R47
	|	SSTDW		R31:R30, *AR10
		SMOVIL.L		rAddr_DDR_cn+16, R44
	|	SMVAGA36.M2		R47:R46, AR10
		SMOVIH.L		rAddr_DDR_cn+16, R44
		SMOVIH4.L		rAddr_DDR_cn+16, R45
	|	SSTDW		R31:R30, *AR10
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		rAddr_DDR_cn+24, R44
		SMOVIH.L		rAddr_DDR_cn+24, R44
		SMOVIH4.L		rAddr_DDR_cn+24, R45
	|	SSTDW		R31:R30, *AR10
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		rAddr_DDR_cn+32, R44
		SMOVIH.L		rAddr_DDR_cn+32, R44
		SMOVIH4.L		rAddr_DDR_cn+32, R45
	|	SSTDW		R31:R30, *AR10
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		rAddr_DDR_cn+40, R44
		SMOVIH.L		rAddr_DDR_cn+40, R44
		SMOVIH4.L		rAddr_DDR_cn+40, R45
	|	SSTDW		R31:R30, *AR10
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		rAddr_DDR_cn+48, R44
		SMOVIH.L		rAddr_DDR_cn+48, R44
		SMOVIH4.L		rAddr_DDR_cn+48, R45
	|	SSTDW		R31:R30, *AR10
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		rAddr_DDR_cn+56, R44
		SMOVIH.L		rAddr_DDR_cn+56, R44
		SMOVIH4.L		rAddr_DDR_cn+56, R45
	|	SSTDW		R31:R30, *AR10
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		rAddr_DDR_cn+64, R44
		SMOVIH.L		rAddr_DDR_cn+64, R44
		SMOVIH4.L		rAddr_DDR_cn+64, R45
	|	SSTDW		R31:R30, *AR10
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		rAddr_DDR_cn+72, R44
		SMOVIH.L		rAddr_DDR_cn+72, R44
		SMOVIH4.L		rAddr_DDR_cn+72, R45
	|	SSTDW		R31:R30, *AR10
		SMVAGA36.M2		R45:R44, AR10
	|	SMOVIL.L		rAddr_DDR_cn+88, R44
		SMOVIH4.L		rAddr_DDR_cn+88, R45
		SSTDW		R31:R30, *AR10
	|	SMVAAA.M2		OR9, AR10
	|	SMOVIH.L		rAddr_DDR_cn+88, R44
		SMOVIL.L		rAddr_DDR_vc, R10
		SSHFAR		31, R16, R35
		SSTDW		R31:R30, *AR10
	|	SMVAGA36.M1		R45:R44, AR10
	|	SMOVIL		256, R14
	|	SMVAGA36.M2		R35:R34, OR8
		SBR		memset
	|	SMOVIL		0, R15
		SMOVIL		.L29, R62
		SSTDW		R31:R30, *AR10
	|	SMOVIH		.L29, R62
		SMOVIH4.L		.L29, R63
		SMOVIL		0, R12
		SMOVIH.L		rAddr_DDR_vc, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		rAddr_DDR_vc, R11
.L29:
		SLDW		*+AR15[8], R17
	|	SMVAAGL.M2		AR8, R13:R12
		SLDW		*+AR15[9], R15
	|	SBR		M7002_datatrans
		SLDDW		*AR9, R11:R10
	|	SMVAAGH.M2		AR8, R13:R12
	|	SMOVIL		.L30, R62
		SMOVIH		.L30, R62
		SMOVIH4.L		.L30, R63
		SNOP		2
	;; call to M7002_datatrans occurs, with return value
		SMOV.M2		R15, R14
	|	SMOV.M1		R17, R15
.L30:
		SMVAAGL.M2		OR8, R13:R12
	|	SMOVIL.L		rAddr_DDR_vc+32, R10
		SBR		M7002_datatrans
	|	SMOVIL		0, R15
		SMVAAGH.M2		OR8, R13:R12
	|	SMOVIL		.L31, R62
		SMOVIH		.L31, R62
		SMOVIH4.L		.L31, R63
		SMOVIL		64, R14
		SMOVIH4.L		rAddr_DDR_vc+32, R11
	;; call to M7002_datatrans occurs, with return value
		SMOVIH.L		rAddr_DDR_vc+32, R10
.L31:
		SBR		M7002_datatrans
	|	SLDDW		*AR14, R11:R10
	|	SMOVIL		0, R13
		SMOVIL		.L32, R62
		SMOVIH		.L32, R62
		SMOVIH4.L		.L32, R63
		SMOVIL		32, R14
		SMOVIL		1074790400, R12
	;; call to M7002_datatrans occurs, with return value
		SMOVIH		1074790400, R12
.L32:
		SBR		get_time_cn
	|	SLDDW		*AR9, R11:R10
	|	SMOV.M2		R41, R16
	|	SMOV.M1		R40, R18
	|	SMOVIH4.L		rAddr_DDR_cn+32, R15
		SLDDW		*AR14, R13:R12
	|	SMOVIL		.L33, R62
		SMOVIH		.L33, R62
		SMOVIH4.L		.L33, R63
		SMOVIL		0, R20
		SMOVIL.L		rAddr_DDR_cn+32, R14
	;; call to get_time_cn occurs, with return value
		SMOVIH.L		rAddr_DDR_cn+32, R14
.L33:
		SBR		get_time_vc
	|	SSTW		R10, *+AR15[10]
	|	SMOV.M2		R41, R16
	|	SMOV.M1		R40, R18
	|	SMOVIL		0, R20
		SMVAAGL.M1		AR8, R11:R10
	|	SMVAAGL.M2		OR8, R15:R14
	|	SMOVIL		.L34, R62
		SMOVIH		.L34, R62
		SMVAAGH.M1		AR8, R11:R10
	|	SMVAAGH.M2		OR8, R15:R14
	|	SMOVIH4.L		.L34, R63
		SMOVIL		0, R13
		SMOVIL		1074790400, R12
	;; call to get_time_vc occurs, with return value
		SMOVIH		1074790400, R12
.L34:
		SBR		M7002_datatrans
	|	SLDW		*+AR15[12], R14
	|	SMOVIH4.L		rAddr_DDR_vc+32, R13
		SSTW		R10, *+AR15[11]
	|	SMVAAGL.M2		OR8, R11:R10
	|	SMOVIL		.L35, R62
		SMOVIH		.L35, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH4.L		.L35, R63
		SMOVIL.L		rAddr_DDR_vc+32, R12
		SMOVIH.L		rAddr_DDR_vc+32, R12
	;; call to M7002_datatrans occurs, with return value
		SNOP		1
.L35:
		SMOVIL.L		rAddr_DDR_cn, R12
		SMOVIL.L		rAddr_DDR_vc, R10
		SMOVIH.L		rAddr_DDR_cn, R12
		SMOVIH4.L		rAddr_DDR_cn, R13
		SBR		memcmp
	|	SMOVIL		96, R14
		SMOVIL		.L36, R62
		SMOVIH		.L36, R62
		SMOVIH4.L		.L36, R63
		SMOVIL		0, R15
		SMOVIH.L		rAddr_DDR_vc, R10
	;; call to memcmp occurs, with return value
		SMOVIH4.L		rAddr_DDR_vc, R11
.L36:
		SMOV.M2		R10, R0
	[!R0]	SBR		.L13
		SNOP		6
	;; condjump to .L13 occurs
		SMOVIL.L		.LC0, R42
		SMOVIH.L		.LC0, R42
		SBR		printf
	|	SMOVIH4.L		.LC0, R43
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L37, R62
		SMOVIH		.L37, R62
		SMOVIH4.L		.L37, R63
	;; call to printf occurs, with return value
		SNOP		3
.L37:
		SLDW		*+AR15[10], R45
		SLDW		*+AR15[11], R46
		SSTW		R41, *+AR15[5]
	|	SADD.M2		4,R41,R41
		SNOP		4
		SSTW		R45, *+AR15[6]
		SBR		printf
	|	SSTW		R46, *+AR15[7]
		SMOVIL		.L38, R62
		SMOVIH		.L38, R62
		SSTDW		R39:R38, *+AR15[1]
	|	SMOVIH4.L		.L38, R63
		SSTW		R40, *+AR15[4]
	;; call to printf occurs, with return value
		SNOP		2
.L38:
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L39, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L39, R62
		SMOVIH4.L		.L39, R63
	;; call to vfree occurs, with return value
		SNOP		3
.L39:
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L40, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L40, R62
		SMOVIH4.L		.L40, R63
	;; call to vfree occurs, with return value
		SNOP		3
.L40:
		SMOVIL		20, R18
		SEQ		R18, R41, R1
	[!R1]	SBR		.L15
		SNOP		6
	;; condjump to .L15 occurs
.L21:
		SADD.M2		4,R40,R40
		SEQ		R18, R40, R2
	[!R2]	SBR		.L11
		SNOP		6
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
	|	SMOVIL		.L41, R62
		SMOVIH		.L41, R62
		SMOVIH4.L		.L41, R63
	;; call to printf occurs, with return value
		SNOP		3
.L41:
		SLDW		*+AR15[10], R45
		SLDW		*+AR15[11], R46
		SSTW		R41, *+AR15[5]
	|	SADD.M2		4,R41,R41
		SNOP		4
		SSTW		R45, *+AR15[6]
		SBR		printf
	|	SSTW		R46, *+AR15[7]
		SMOVIL		.L42, R62
		SMOVIH		.L42, R62
		SSTDW		R39:R38, *+AR15[1]
	|	SMOVIH4.L		.L42, R63
		SSTW		R40, *+AR15[4]
	;; call to printf occurs, with return value
		SNOP		2
.L42:
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L43, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L43, R62
		SMOVIH4.L		.L43, R63
	;; call to vfree occurs, with return value
		SNOP		3
.L43:
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L44, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L44, R62
		SMOVIH4.L		.L44, R63
	;; call to vfree occurs, with return value
		SNOP		3
.L44:
		SMOVIL		20, R18
		SEQ		R18, R41, R1
	[!R1]	SBR		.L15
		SNOP		6
	;; condjump to .L15 occurs
		SBR		.L21
		SNOP		6
	;; jump to .L21 occurs
	.size	main, .-main
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
	.common	rAddr_DDR_vc,256,8
	.common	rAddr_DDR_cn,96,8
	.global	h
	.section	.const,"a",@progbits
	.align	3
	.type	h, @object
	.size	h, 96
h:
	.short	684
	.short	-1
	.short	16235
	.short	15637
	.short	-34
	.short	-5
	.short	3
	.short	-27
	.short	-22
	.short	50
	.short	9233
	.short	-940
	.short	114
	.short	-150
	.short	-27
	.short	-6
	.short	-9273
	.short	-8
	.short	2
	.short	0
	.short	16332
	.short	-5974
	.short	414
	.short	9
	.short	-218
	.short	5
	.short	35
	.short	9
	.short	-5594
	.short	2032
	.short	-3123
	.short	27
	.short	-3973
	.short	123
	.short	1
	.short	882
	.short	-2
	.short	-10
	.short	22
	.short	-46
	.short	6239
	.short	255
	.short	-1361
	.short	-9506
	.short	-8531
	.short	-12627
	.short	-21574
	.short	32767
	.global	x
	.align	3
	.type	x, @object
	.size	x, 100
x:
	.short	-108
	.short	10
	.short	9071
	.short	-443
	.short	-1615
	.short	227
	.short	31
	.short	-10780
	.short	1006
	.short	-1550
	.short	26
	.short	-4
	.short	-42
	.short	-3
	.short	0
	.short	0
	.short	-1
	.short	-6101
	.short	-21555
	.short	-17186
	.short	-12817
	.short	-8454
	.short	-4181
	.short	-1359
	.short	-21742
	.short	-20189
	.short	4660
	.short	9029
	.short	13398
	.short	17767
	.short	22136
	.short	26505
	.short	30874
	.short	-30293
	.short	-25924
	.short	-21555
	.short	-21030
	.short	-4098
	.short	-17206
	.short	-8531
	.short	32759
	.short	32767
	.short	-566
	.short	18467
	.short	9575
	.short	20202
	.short	-32768
	.short	31438
	.short	10814
	.short	16534
