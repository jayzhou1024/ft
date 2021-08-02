	.file	"main.c"
	.section	.text.get_time_cn,"ax",@progbits
	.align	2
	.global	get_time_cn
	.type	get_time_cn, @function
get_time_cn:
		SMOVIL		-48, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[4]
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTDW		R31:R30, *+AR15[1]
		SNOP		1
		SMOV.M2		R18, R31
		SSTDW		R7:R6, *+AR15[5]
		SMVAAGL.M2		OR8, R7:R6
		SNOP		1
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
		SBR		GetTimerCount
		SSTDW		R7:R6, *+AR15[3]
	|	SMOVIL		.L2, R62
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L2, R62
		SMOVIH4.L		.L2, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[2]
.L2:
		SBR		DSP_fir_r8_h16_cn
	|	SMOV.M2		R31, R16
	|	SMOV.M1		R10, R30
		SMVAAGL.M1		AR14, R13:R12
	|	SMVAAGL.M2		OR8, R11:R10
	|	SMOVIL		.L3, R62
		SMVAAGL.M1		AR8, R15:R14
	|	SMOVIH		.L3, R62
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR14, R13:R12
	|	SMOVIH4.L		.L3, R63
		SMVAAGH.M1		AR8, R15:R14
	;; call to DSP_fir_r8_h16_cn occurs
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
		SLDDW		*+AR15[2], R7:R6
	|	SSUB.M2		R30, R10, R10
		SLDDW		*+AR15[4], R63:R62
		SLDDW		*+AR15[1], R31:R30
		SNOP		3
		SMVAGA36.M2		R7:R6, AR8
		SMVCGC.L		R63, BRReg
		SLDDW		*+AR15[3], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[5], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		48, R6
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
		SMOVIL		-48, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[4]
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTDW		R31:R30, *+AR15[1]
		SNOP		1
		SMOV.M2		R18, R31
		SSTDW		R7:R6, *+AR15[5]
		SMVAAGL.M2		OR8, R7:R6
		SNOP		1
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
		SBR		GetTimerCount
		SSTDW		R7:R6, *+AR15[3]
	|	SMOVIL		.L6, R62
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L6, R62
		SMOVIH4.L		.L6, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[2]
.L6:
		SBR		DSP_fir_r8_h16_asm
	|	SMOV.M2		R31, R16
	|	SMOV.M1		R10, R30
		SMVAAGL.M1		AR14, R13:R12
	|	SMVAAGL.M2		OR8, R11:R10
	|	SMOVIL		.L7, R62
		SMVAAGL.M1		AR8, R15:R14
	|	SMOVIH		.L7, R62
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR14, R13:R12
	|	SMOVIH4.L		.L7, R63
		SMVAAGH.M1		AR8, R15:R14
	;; call to DSP_fir_r8_h16_asm occurs
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
		SLDDW		*+AR15[2], R7:R6
	|	SSUB.M2		R30, R10, R10
		SLDDW		*+AR15[4], R63:R62
		SLDDW		*+AR15[1], R31:R30
		SNOP		3
		SMVAGA36.M2		R7:R6, AR8
		SMVCGC.L		R63, BRReg
		SLDDW		*+AR15[3], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[5], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		48, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.size	get_time_vc, .-get_time_vc
	.section	.const.str1.1,"aMS",@progbits,1
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
		SMOVIL		-128, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
		SMVAAGL.M1		AR14, R7:R6
	|	SMOVIL		1075052548, R46
		SMOVIH		1075052548, R46
	|	SSTDW		R63:R62, *+AR15[14]
		SMVAAGH.M2		AR14, R7:R6
	|	SMOVIL		0, R47
	|	SSTW		R40, *+AR15[21]
		SMVAGA36.M1		R47:R46, AR10
	|	SMOVIL		1075052544, R42
		SMOVIL		1, R44
		SSTDW		R7:R6, *+AR15[15]
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R39, *+AR15[20]
		SMOVIH		1075052544, R42
		SMVAAGH.M2		OR8, R7:R6
	|	SMOVIL		0, R43
		SSTW		R38, *+AR15[19]
		SSTDW		R7:R6, *+AR15[13]
		SMVAAGL.M2		AR9, R7:R6
		SNOP		1
		SMVAAGH.M2		AR9, R7:R6
	|	SSTW		R37, *+AR15[18]
		SSTW		R36, *+AR15[17]
		SNOP		2
		SSTDW		R7:R6, *+AR15[12]
		SMVAAGL.M2		AR8, R7:R6
	|	SSTW		R35, *+AR15[16]
		SNOP		1
		SMVAAGH.M2		AR8, R7:R6
		SSTW		R34, *+AR15[15]
		SSTDW		R7:R6, *+AR15[11]
		SNOP		2
		SSTW		R33, *+AR15[14]
		SSTW		R32, *+AR15[13]
		SNOP		2
		SSTW		R31, *+AR15[12]
		SSTW		R30, *+AR15[11]
		SNOP		2
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
		SNOP		2
		SSTW		R44, *AR10
	|	SMVAGA36.M2		R43:R42, AR10
		SSTW		R44, *+AR15[9]
		SNOP		2
		SLDW		*+AR15[9], R0
		SNOP		5
	[!R0]	SBR		.L12
		SNOP		6
	;; condjump to .L12 occurs
.L15:
		SLDW		*AR10, R42
		SNOP		5
		SSTW		R42, *+AR15[9]
		SNOP		2
		SLDW		*+AR15[9], R1
		SNOP		5
	[R1]	SBR		.L15
		SNOP		6
	;; condjump to .L15 occurs
.L12:
		SBR		SetTimerPeriod
	|	SMOVIL		-1, R12
		SMOVIL		.L21, R62
		SMOVIH		.L21, R62
		SMOVIH4.L		.L21, R63
		SMOVIL		0, R10
		SMOVIL.L		.LC2, R32
	;; call to SetTimerPeriod occurs, with return value
		SMOVIL.L		.LC1, R36
.L21:
		SMOVIL.L		xAddr_DDR, R42
		SMOVIL.L		hAddr_DDR, R46
		SMOVIH.L		xAddr_DDR, R42
		SMOVIH4.L		xAddr_DDR, R43
		SBR		TimerStart
	|	SMOVIH.L		hAddr_DDR, R46
	|	SMVAGA36.M2		R43:R42, AR9
		SMOVIL		.L22, R62
		SMOVIH		.L22, R62
		SMOVIH4.L		.L22, R63
		SMOVIH4.L		hAddr_DDR, R47
		SMVAGA36.M2		R47:R46, AR14
	|	SMOVIL		0, R10
	;; call to TimerStart occurs, with return value
		SMOVIL.L		.LC0, R34
.L22:
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L23, R62
		SMOVIH		.L23, R62
		SMOVIH4.L		.L23, R63
		SMOVIL		8, R30
		SMOVIL		0, R31
	;; call to GetTimerCount occurs, with return value
		SMOVIL		4, R38
.L23:
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L24, R62
		SMOVIH		.L24, R62
		SMOVIH4.L		.L24, R63
		SMOVIH.L		.LC2, R32
		SMOVIH4.L		.LC2, R33
	;; call to GetTimerCount occurs, with return value
		SMOVIH.L		.LC1, R36
.L24:
		SMOVIH4.L		.LC1, R37
		SMOVIH.L		.LC0, R34
		SMOVIH4.L		.LC0, R35
.L11:
		SADD.M2		30,R38,R43
	|	SADD.M1		15,R38,R39
		SSHFAR		4, R43, R2
		SSHFAR		31, R43, R3
		SBR		vmalloc
	|	SSHFLL		5, R2, R40
		SMOV.M2		R40, R10
	|	SMOVIL		.L25, R62
		SMOVIH		.L25, R62
		SMOVIH4.L		.L25, R63
		SSHFLR		27, R2, R8
		SSHFLL		5, R3, R11
	;; call to vmalloc occurs, with return value
		SOR		R11, R8, R11
.L25:
		SSHFAR		4, R39, R9
	|	SMVAGA36.M2		R11:R10, AR8
		SSHFLL		1, R9, R10
		SSHFAR		31, R10, R12
		SBR		vmalloc
	|	SSHFLL		6, R9, R39
		SMOVIL		.L26, R62
		SMOVIH		.L26, R62
		SMOVIH4.L		.L26, R63
		SSHFLR		27, R10, R13
	|	SMOV.M2		R39, R10
		SSHFLL		5, R12, R14
	;; call to vmalloc occurs, with return value
		SOR		R14, R13, R11
.L26:
		SMOVIL		0, R12
	|	SMVAGA36.M2		R11:R10, OR8
		SMOVIL.L		rAddr_DDR_cn, R10
		SBR		memset
	|	SMOVIL		320, R14
		SMOVIL		.L27, R62
		SMOVIH		.L27, R62
		SMOVIH4.L		.L27, R63
		SMOVIL		0, R15
		SMOVIH.L		rAddr_DDR_cn, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		rAddr_DDR_cn, R11
.L27:
		SMOVIL		0, R15
		SMOVIL.L		rAddr_DDR_vc, R10
		SBR		memset
	|	SMOVIL		2048, R14
		SMOVIL		.L28, R62
		SMOVIH		.L28, R62
		SMOVIH4.L		.L28, R63
		SMOVIL		0, R12
		SMOVIH.L		rAddr_DDR_vc, R10
	;; call to memset occurs, with return value
		SMOVIH4.L		rAddr_DDR_vc, R11
.L28:
		SBR		M7002_datatrans
	|	SLDDW		*AR9, R11:R10
	|	SMOV.M1		R40, R14
	|	SMVAAGL.M2		AR8, R13:R12
		SMOVIL		.L29, R62
		SMVAAGH.M2		AR8, R13:R12
	|	SMOVIH		.L29, R62
		SMOVIH4.L		.L29, R63
	;; call to M7002_datatrans occurs
		SNOP		3
.L29:
		SBR		M7002_datatrans
	|	SMOV.M1		R39, R14
	|	SMOVIH4.L		rAddr_DDR_vc+32, R11
	|	SMVAAGL.M2		OR8, R13:R12
		SMOVIL		.L30, R62
		SMVAAGH.M2		OR8, R13:R12
	|	SMOVIH		.L30, R62
		SMOVIH4.L		.L30, R63
		SMOVIL.L		rAddr_DDR_vc+32, R10
		SMOVIH.L		rAddr_DDR_vc+32, R10
	;; call to M7002_datatrans occurs
		SNOP		1
.L30:
		SBR		M7002_datatrans
	|	SLDDW		*AR14, R11:R10
	|	SMOVIL		0, R13
		SMOVIL		.L31, R62
		SMOVIH		.L31, R62
		SMOVIH4.L		.L31, R63
		SMOVIL		64, R14
		SMOVIL		1074790400, R12
	;; call to M7002_datatrans occurs
		SMOVIH		1074790400, R12
.L31:
		SBR		get_time_cn
	|	SLDDW		*AR9, R11:R10
	|	SMOV.M2		R38, R18
	|	SMOVIH4.L		rAddr_DDR_cn+32, R15
		SLDDW		*AR14, R13:R12
	|	SMOVIL		.L32, R62
		SMOVIH		.L32, R62
		SMOVIH4.L		.L32, R63
		SMOVIL		16, R16
		SMOVIL.L		rAddr_DDR_cn+32, R14
	;; call to get_time_cn occurs, with return value
		SMOVIH.L		rAddr_DDR_cn+32, R14
.L32:
		SBR		get_time_vc
	|	SMOV.M2		R38, R18
	|	SMOVIL		16, R16
	|	SMOV.M1		R10, R40
		SMVAAGL.M1		OR8, R15:R14
	|	SMVAAGL.M2		AR8, R11:R10
	|	SMOVIL		.L33, R62
		SMOVIH		.L33, R62
		SMVAAGH.M1		OR8, R15:R14
	|	SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH4.L		.L33, R63
		SMOVIL		0, R13
		SMOVIL		1074790400, R12
	;; call to get_time_vc occurs, with return value
		SMOVIH		1074790400, R12
.L33:
		SBR		M7002_datatrans
	|	SSHFLL		1, R38, R14
	|	SMOV.M1		R10, R39
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L34, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L34, R62
		SMOVIH4.L		.L34, R63
		SMOVIH4.L		rAddr_DDR_vc+32, R13
		SMOVIL.L		rAddr_DDR_vc+32, R12
	;; call to M7002_datatrans occurs
		SMOVIH.L		rAddr_DDR_vc+32, R12
.L34:
		SMOVIL.L		rAddr_DDR_cn+32, R12
	|	SMOV.M2		R30, R14
	|	SMOV.M1		R31, R15
		SMOVIL.L		rAddr_DDR_vc+32, R10
		SBR		memcmp
	|	SMOVIH.L		rAddr_DDR_cn+32, R12
		SMOVIL		.L35, R62
		SMOVIH		.L35, R62
		SMOVIH4.L		.L35, R63
		SMOVIH4.L		rAddr_DDR_cn+32, R13
		SMOVIH.L		rAddr_DDR_vc+32, R10
	;; call to memcmp occurs, with return value
		SMOVIH4.L		rAddr_DDR_vc+32, R11
.L35:
		SMOV.M2		R10, R0
	[!R0]	SBR		.L13
		SNOP		6
	;; condjump to .L13 occurs
		SBR		printf
	|	SSTDW		R35:R34, *+AR15[1]
		SMOVIL		.L36, R62
		SMOVIH		.L36, R62
		SMOVIH4.L		.L36, R63
	;; call to printf occurs, with return value
		SNOP		3
.L36:
		SMOVIL		16, R15
	|	SSTW		R38, *+AR15[4]
	|	SADD.M2		4,R38,R38
		SSTW		R15, *+AR15[5]
		SNOP		2
		SBR		printf
	|	SSTDW		R33:R32, *+AR15[1]
		SSTW		R40, *+AR15[6]
	|	SMOVIL		.L37, R62
		SMOVIH		.L37, R62
		SMOVIH4.L		.L37, R63
		SSTW		R39, *+AR15[7]
	;; call to printf occurs, with return value
		SNOP		2
.L37:
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L38, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L38, R62
		SMOVIH4.L		.L38, R63
	;; call to vfree occurs
		SNOP		3
.L38:
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L39, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L39, R62
		SMOVIH4.L		.L39, R63
	;; call to vfree occurs
		SNOP		3
.L39:
		SMOVIL		132, R19
	|	SADD.M2		8,R30,R16
		SEQ		R19, R38, R1
	[!R1]	SBR		.L11
	|	SLTU		R16, R30, R18
	|	SMOV.M2		R16, R30
		SADD.M2		R31,R18,R31
		SNOP		5
	;; condjump to .L11 occurs
.L19:
		SLDDW		*+AR15[11], R7:R6
		SLDDW		*+AR15[14], R63:R62
		SLDW		*+AR15[11], R30
		SLDW		*+AR15[12], R31
		SLDW		*+AR15[13], R32
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[12], R7:R6
		SLDW		*+AR15[14], R33
		SLDW		*+AR15[15], R34
		SLDW		*+AR15[16], R35
		SLDW		*+AR15[17], R36
		SNOP		1
		SMVAGA36.M2		R7:R6, AR9
		SNOP		3
		SLDDW		*+AR15[13], R7:R6
		SLDW		*+AR15[18], R37
		SLDW		*+AR15[19], R38
		SLDW		*+AR15[20], R39
		SLDW		*+AR15[21], R40
		SNOP		1
		SMVAGA36.M2		R7:R6, OR8
		SNOP		3
		SLDDW		*+AR15[15], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		128, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.L13:
		SBR		printf
	|	SSTDW		R37:R36, *+AR15[1]
		SMOVIL		.L40, R62
		SMOVIH		.L40, R62
		SMOVIH4.L		.L40, R63
	;; call to printf occurs, with return value
		SNOP		3
.L40:
		SMOVIL		16, R15
	|	SSTW		R38, *+AR15[4]
	|	SADD.M2		4,R38,R38
		SSTW		R15, *+AR15[5]
		SNOP		2
		SBR		printf
	|	SSTDW		R33:R32, *+AR15[1]
		SSTW		R40, *+AR15[6]
	|	SMOVIL		.L41, R62
		SMOVIH		.L41, R62
		SMOVIH4.L		.L41, R63
		SSTW		R39, *+AR15[7]
	;; call to printf occurs, with return value
		SNOP		2
.L41:
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L42, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L42, R62
		SMOVIH4.L		.L42, R63
	;; call to vfree occurs
		SNOP		3
.L42:
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L43, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L43, R62
		SMOVIH4.L		.L43, R63
	;; call to vfree occurs
		SNOP		3
.L43:
		SMOVIL		132, R19
	|	SADD.M2		8,R30,R16
		SEQ		R19, R38, R1
	[!R1]	SBR		.L11
	|	SLTU		R16, R30, R18
	|	SMOV.M2		R16, R30
		SADD.M2		R31,R18,R31
		SNOP		5
	;; condjump to .L11 occurs
		SBR		.L19
		SNOP		6
	;; jump to .L19 occurs
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
	.common	rAddr_DDR_vc,2048,8
	.common	rAddr_DDR_cn,320,8
	.global	h
	.section	.const,"a",@progbits
	.align	3
	.type	h, @object
	.size	h, 128
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
	.short	13286
	.short	1452
	.short	-7696
	.global	x
	.align	3
	.type	x, @object
	.size	x, 384
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
	.short	7954
	.short	23033
	.short	5028
	.short	5849
	.short	9958
	.short	-20448
	.short	14842
	.short	-27380
	.short	-10281
	.short	-26431
	.short	29792
	.short	22438
	.short	-23476
	.short	16972
	.short	-24680
	.short	11465
	.short	3937
	.short	-16432
	.short	-173
	.short	27361
	.short	-20435
	.short	22253
	.short	12250
	.short	-30108
	.short	-29295
	.short	30947
	.short	17119
	.short	-25555
	.short	-8072
	.short	-29136
	.short	2024
	.short	-27978
	.short	8677
	.short	-27725
	.short	-114
	.short	3822
	.short	29853
	.short	-17954
	.short	-10999
	.short	-14891
	.short	15812
	.short	1488
	.short	-199
	.short	1439
	.short	7250
	.short	14062
	.short	22710
	.short	-30820
	.short	-5210
	.short	-16159
	.short	16647
	.short	7049
	.short	8228
	.short	18289
	.short	16271
	.short	17048
	.short	8991
	.short	27716
	.short	-31149
	.short	22746
	.short	-5894
	.short	14305
	.short	27434
	.short	25671
	.short	-31795
	.short	2060
	.short	17006
	.short	7964
	.short	-8341
	.short	25810
	.short	-30260
	.short	19396
	.short	26400
	.short	25184
	.short	-4797
	.short	1036
	.short	-16132
	.short	12287
	.short	5364
	.short	204
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
