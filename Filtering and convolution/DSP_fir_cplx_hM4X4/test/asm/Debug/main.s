	.file	"main.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.get_time_cn,"ax",@progbits
	.align	2
	.global	get_time_cn
	.type	get_time_cn, @function
get_time_cn:
.LFB4:
	.file 1 "../main.c"
	.loc 1 152 0
	.cfi_startproc
.LVL0:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 56
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[5]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.cfi_offset 48, -36
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTW		R32, *+AR15[5]
		SNOP		1
		SMOV.M2		R16, R32
		SSTDW		R7:R6, *+AR15[6]
	.cfi_offset 14, -8
	.cfi_offset 47, -40
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R31, *+AR15[4]
		SMOV.M1		R18, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL1:
	.cfi_offset 46, -44
	.loc 1 154 0
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
	.loc 1 152 0
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L2, R62
	.cfi_offset 88, -24
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L2, R62
		SMOVIH4.L		.L2, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
	.cfi_offset 8, -32
	.loc 1 154 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.LVL2:
.L2:
	.loc 1 155 0
		SBR		DSP_fir_cplx_hM4X4_cn
	|	SMOV.M2		R32, R16
	|	SMOV.M1		R31, R18
	.loc 1 154 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIL		.L3, R62
.LVL3:
	.loc 1 155 0
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH		.L3, R62
.LVL4:
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH4.L		.L3, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSP_fir_cplx_hM4X4_cn occurs
		SNOP		2
.LVL5:
.L3:
	.loc 1 156 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L4, R62
		SMOVIH		.L4, R62
		SMOVIH4.L		.L4, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL6:
	.loc 1 158 0
.L4:
		SLDDW		*+AR15[3], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL7:
		SLDDW		*+AR15[5], R63:R62
		SLDW		*+AR15[3], R30
.LVL8:
		SLDW		*+AR15[4], R31
.LVL9:
		SLDW		*+AR15[5], R32
		SNOP		1
.LVL10:
		SMVAGA36.M2		R7:R6, AR8
.LVL11:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[4], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[6], R7:R6
.LVL12:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		56, R6
.LVL13:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.cfi_endproc
.LFE4:
	.size	get_time_cn, .-get_time_cn
	.section	.text.get_time_vc,"ax",@progbits
	.align	2
	.global	get_time_vc
	.type	get_time_vc, @function
get_time_vc:
.LFB5:
	.loc 1 165 0
	.cfi_startproc
.LVL14:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI1:
	.cfi_def_cfa_offset 56
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[5]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.cfi_offset 48, -36
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTW		R32, *+AR15[5]
		SNOP		1
		SMOV.M2		R16, R32
		SSTDW		R7:R6, *+AR15[6]
	.cfi_offset 14, -8
	.cfi_offset 47, -40
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R31, *+AR15[4]
		SMOV.M1		R18, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL15:
	.cfi_offset 46, -44
	.loc 1 167 0
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
	.loc 1 165 0
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L6, R62
	.cfi_offset 88, -24
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L6, R62
		SMOVIH4.L		.L6, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
	.cfi_offset 8, -32
	.loc 1 167 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.LVL16:
.L6:
	.loc 1 168 0
		SBR		DSP_fir_cplx_hM4X4_asm
	|	SMOV.M2		R32, R16
	|	SMOV.M1		R31, R18
	.loc 1 167 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIL		.L7, R62
.LVL17:
	.loc 1 168 0
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH		.L7, R62
.LVL18:
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH4.L		.L7, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSP_fir_cplx_hM4X4_asm occurs, with return value
		SNOP		2
.LVL19:
.L7:
	.loc 1 169 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L8, R62
		SMOVIH		.L8, R62
		SMOVIH4.L		.L8, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL20:
	.loc 1 171 0
.L8:
		SLDDW		*+AR15[3], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL21:
		SLDDW		*+AR15[5], R63:R62
		SLDW		*+AR15[3], R30
.LVL22:
		SLDW		*+AR15[4], R31
.LVL23:
		SLDW		*+AR15[5], R32
		SNOP		1
.LVL24:
		SMVAGA36.M2		R7:R6, AR8
.LVL25:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[4], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[6], R7:R6
.LVL26:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		56, R6
.LVL27:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.cfi_endproc
.LFE5:
	.size	get_time_vc, .-get_time_vc
	.section	.const.str1.1,"aMS",@progbits,1
.LC0:
	.string	"k: %d\n"
.LC1:
	.string	"Result Failure (r_i)"
.LC2:
	.string	"Result Successful (r_i)"
.LC3:
	.string	"\tNR = %d\t  NH = %d\t cn_time:%d\t  vc_cycle:%d\t\n"
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB3:
	.loc 1 65 0
	.cfi_startproc
.LVL28:
		SMOVIL		-1024, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI2:
	.cfi_def_cfa_offset 1024
		SMVAAGL.M1		AR14, R7:R6
	|	SMOVIL		1075052548, R46
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.loc 1 70 0
		SMOVIL		1075052544, R42
	|	SSTDW		R63:R62, *+AR15[126]
	.cfi_offset 56, -56
	.cfi_offset 57, -52
	.loc 1 65 0
		SMVAAGH.M2		AR14, R7:R6
	|	SMOVIH		1075052548, R46
	|	SSTDW		R41:R40, *+AR15[121]
	.loc 1 69 0
		SMOVIL		0, R47
	.loc 1 70 0
		SMOVIL		0, R43
	|	SMVAGA36.M2		R47:R46, AR12
	|	SADD.LS		AR15,124,AR10
		SMOVIH		1075052544, R42
	.loc 1 65 0
		SSTDW		R7:R6, *+AR15[127]
	.cfi_offset 14, -8
	.cfi_offset 54, -64
	.cfi_offset 55, -60
		SMVAAGL.M2		OR9, R7:R6
	|	SSTDW		R39:R38, *+AR15[120]
	.loc 1 69 0
		SMOVIL		1, R44
	|	SMVAGA36.M1		R43:R42, AR11
	.loc 1 65 0
		SMVAAGH.M1		OR9, R7:R6
		SSTDW		R37:R36, *+AR15[119]
		SSTDW		R7:R6, *+AR15[125]
		SMVAAGL.M2		OR8, R7:R6
		SNOP		1
	.cfi_offset 52, -72
	.cfi_offset 53, -68
	.cfi_offset 89, -24
	.cfi_offset 50, -80
	.cfi_offset 51, -76
		SMVAAGH.M2		OR8, R7:R6
	|	SSTDW		R35:R34, *+AR15[118]
		SSTDW		R33:R32, *+AR15[117]
		SNOP		2
		SSTDW		R7:R6, *+AR15[124]
	.cfi_offset 48, -88
	.cfi_offset 49, -84
	.cfi_offset 88, -32
	.cfi_offset 46, -96
	.cfi_offset 47, -92
		SMVAAGL.M2		AR9, R7:R6
	|	SSTDW		R31:R30, *+AR15[116]
		SNOP		1
		SMVAAGH.M2		AR9, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[123]
		SMVAAGL.M2		AR8, R7:R6
		SNOP		1
		SMVAAGH.M2		AR8, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[122]
	.cfi_offset 9, -40
	.cfi_offset 8, -48
	.loc 1 69 0
		SSTW		R44, *AR12
	|	SMVAGA36.M2		R43:R42, AR12
	.loc 1 73 0
		SNOP		2
	.loc 1 70 0
		SSTW		R44, *AR11
	.loc 1 71 0
		SSTW		R44, *AR10
		SNOP		2
.LVL29:
	.loc 1 72 0
		SLDW		*AR10, R0
		SNOP		5
	[!R0]	SBR		.L12
		SNOP		6
	;; condjump to .L12 occurs
.L21:
	.loc 1 73 0
		SLDW		*AR12, R42
		SNOP		5
.LVL30:
		SSTW		R42, *AR10
		SNOP		2
.LVL31:
	.loc 1 72 0
		SLDW		*AR10, R1
		SNOP		5
	[R1]	SBR		.L21
		SNOP		6
	;; condjump to .L21 occurs
.L12:
		SMOVIL.L		xAddr_DDR+80, R42
	.loc 1 79 0
		SBR		SetTimerPeriod
	|	SMOVIH.L		xAddr_DDR+80, R42
		SMOVIL		.L31, R62
		SMOVIH		.L31, R62
		SMOVIH4.L		.L31, R63
		SMOVIH4.L		xAddr_DDR+80, R43
		SSTDW		R43:R42, *+AR15[13]
	|	SMOVIL		-1, R12
	;; call to SetTimerPeriod occurs, with return value
		SMOVIL		0, R10
.LVL32:
.L31:
		SMOVIH4.L		.LC3, R45
		SMOVIL.L		.LC3, R44
	.loc 1 80 0
		SBR		TimerStart
	|	SMOVIH.L		.LC3, R44
		SMVAGA36.M2		R45:R44, AR14
	|	SMOVIL		.L32, R62
		SMOVIH		.L32, R62
		SMOVIH4.L		.L32, R63
	.loc 1 88 0
		SMOVIL		8, R43
		SSTW		R43, *+AR15[14]
	|	SMOVIL		0, R10
	.loc 1 80 0
	;; call to TimerStart occurs, with return value
		SMOVIL		16, R39
.LVL33:
.L32:
	.loc 1 83 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L33, R62
		SMOVIH		.L33, R62
		SMOVIH4.L		.L33, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL34:
.L33:
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L34, R62
		SMOVIH		.L34, R62
		SMOVIH4.L		.L34, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL35:
.L34:
		SMOVIL		128, R46
		SMOVIL		0, R47
		SMOVIL		528, R42
	|	SADDA.M2		R47:R46,AR15,OR11
		SMOVIL		0, R43
		SADDA.M1		R43:R42,AR15,OR9
	|	SADDA.M2		-2,OR11,OR8
		SNOP		1
		SADDA.M1		-2,OR9,OR12
	|	SMVAAGL.M2		OR8, R9:R8
		SNOP		1
		SMVAAGL.M1		OR12, R3:R2
	|	SMVAAGH.M2		OR8, R9:R8
		SNOP		1
		SMVAAGH.M2		OR12, R3:R2
	|	SSTDW		R9:R8, *+AR15[12]
		SNOP		2
		SSTDW		R3:R2, *+AR15[14]
.LVL36:
.L11:
	.loc 1 65 0 discriminator 1
		SLDW		*+AR15[14], R3
	|	SADD.M2		21,R39,R45
	|	SMOVIL.L		.LC2, R44
		SLDDW		*+AR15[14], R47:R46
	|	SMOVIH.L		.LC2, R44
		SLDDW		*+AR15[13], R19:R18
	|	SMOVIL.L		.LC0, R34
.LBB2:
	.loc 1 124 0 discriminator 1
		SMOVIH.L		.LC0, R34
		SMOVIH4.L		.LC0, R35
		SNOP		1
.LBE2:
	.loc 1 65 0 discriminator 1
		SADD.M2		15,R3,R9
	|	SSHFLL		2, R3, R10
		SSHFAR		4, R9, R11
		SSHFLL		2, R11, R12
	|	SSTDW		R47:R46, *+AR15[11]
		SSHFAR		31, R12, R13
	|	SSTDW		R19:R18, *+AR15[5]
		SSHFLR		26, R12, R14
		SSHFLL		6, R13, R15
		SSHFLL		8, R11, R47
	|	SSTW		R45, *+AR15[15]
		SOR		R15, R14, R16
	|	SSTW		R47, *+AR15[21]
		SSHFLL		7, R11, R17
		SMOVIL		4, R19
.LBB3:
	.loc 1 133 0 discriminator 1
		SMOVIL.L		.LC1, R46
	|	SSTW		R10, *+AR15[19]
	.loc 1 136 0 discriminator 1
		SMOVIH4.L		.LC2, R45
	|	SSTW		R16, *+AR15[18]
	.loc 1 133 0 discriminator 1
		SMOVIH.L		.LC1, R46
	|	SMVAGA36.M2		R45:R44, AR9
		SMOVIH4.L		.LC1, R47
		SSTW		R17, *+AR15[20]
	|	SMVAGA36.M2		R47:R46, OR9
.LBE3:
	.loc 1 65 0 discriminator 1
		SSTW		R19, *+AR15[13]
.LVL37:
.L17:
.LBB4:
	.loc 1 91 0
		SLDW		*+AR15[15], R20
	|	SMOVIL		0, R38
		SLDDW		*+AR15[12], R33:R32
	|	SMOVIL		0, R41
	.loc 1 120 0
		SNOP		4
	.loc 1 91 0
		SSHFAR		4, R20, R21
		SADD.M2		1,R21,R22
.LVL38:
	.loc 1 94 0
		SSHFAR		31, R22, R23
		SBR		vmalloc
	|	SSHFLL		6, R22, R45
		SMOV.M2		R45, R10
	|	SSTW		R45, *+AR15[9]
	|	SMOVIL		.L35, R62
		SMOVIH		.L35, R62
		SMOVIH4.L		.L35, R63
		SSHFLR		26, R22, R24
		SSHFLL		6, R23, R25
	;; call to vmalloc occurs, with return value
		SOR		R25, R24, R11
.LVL39:
.L35:
	.loc 1 96 0
		SBR		vmalloc
	|	SMVAGA36.M2		R11:R10, AR8
	|	SLDW		*+AR15[21], R10
.LVL40:
		SLDW		*+AR15[18], R11
	|	SMOVIL		.L36, R62
		SMOVIH		.L36, R62
		SMOVIH4.L		.L36, R63
	;; call to vmalloc occurs, with return value
		SNOP		3
.LVL41:
.L36:
	.loc 1 100 0
		SMOVIL		128, R46
	|	SMVAGA36.M2		R11:R10, OR8
.LVL42:
		SMOVIL		0, R47
	|	SBR		memset
		SADDA.M2		R47:R46,AR15,OR13
	|	SMOVIL		.L37, R62
		SMOVIH		.L37, R62
		SMVAAGL.M2		OR13, R11:R10
	|	SMOVIH4.L		.L37, R63
.LVL43:
		SMOVIL		0, R12
		SMVAAGH.M2		OR13, R11:R10
	|	SMOVIL		400, R14
	;; call to memset occurs, with return value
		SMOVIL		0, R15
.LVL44:
.L37:
	.loc 1 101 0
		SMOVIL		528, R42
		SMOVIL		0, R43
	|	SBR		memset
		SADDA.M2		R43:R42,AR15,OR14
	|	SMOVIL		.L38, R62
		SMOVIH		.L38, R62
		SMVAAGL.M2		OR14, R11:R10
	|	SMOVIH4.L		.L38, R63
		SMOVIL		0, R15
		SMVAAGH.M2		OR14, R11:R10
	|	SMOVIL		400, R14
	;; call to memset occurs, with return value
		SMOVIL		0, R12
.LVL45:
.L38:
	.loc 1 107 0
		SLDW		*+AR15[9], R26
	|	SMVAAGL.M2		AR8, R13:R12
		SLDDW		*+AR15[5], R11:R10
	|	SBR		M7002_datatrans
		SLDDW		*+AR15[11], R31:R30
	|	SMVAAGH.M2		AR8, R13:R12
	|	SMOVIL		.L39, R62
		SMOVIH		.L39, R62
		SMOVIH4.L		.L39, R63
		SNOP		1
		SMOV.M2		R26, R14
		SNOP		1
	;; call to M7002_datatrans occurs
	;no-op trunc di R11:R10 to pdi R11:R10
.LVL46:
.L39:
	.loc 1 108 0
		SMOVIL		528, R42
	|	SLDW		*+AR15[20], R14
	|	SMVAAGL.M2		OR8, R13:R12
		SMOVIL		0, R43
	|	SBR		M7002_datatrans
		SADDA.M1		R43:R42,AR15,OR11
	|	SMVAAGH.M2		OR8, R13:R12
	|	SMOVIL		.L40, R62
		SMOVIH		.L40, R62
		SMVAAGL.M2		OR11, R11:R10
	|	SMOVIH4.L		.L40, R63
		SNOP		1
		SMVAAGH.M2		OR11, R11:R10
	;; call to M7002_datatrans occurs
		SNOP		1
.LVL47:
.L40:
	.loc 1 109 0
		SMOVIL		0, R13
		SMOVIL.L		hAddr_DDR, R10
		SMOVIL		1074790400, R12
		SBR		M7002_datatrans
	|	SMOVIH.L		hAddr_DDR, R10
		SMOVIL		.L41, R62
		SMOVIH		.L41, R62
		SMOVIH4.L		.L41, R63
		SMOVIH4.L		hAddr_DDR, R11
		SMOVIH		1074790400, R12
	;; call to M7002_datatrans occurs
		SMOVIL		96, R14
.LVL48:
.L41:
	.loc 1 115 0
		SMOVIL		128, R42
	|	SLDW		*+AR15[13], R16
		SMOVIL		0, R43
	|	SLDW		*+AR15[14], R18
		SADDA.M2		R43:R42,AR15,OR12
	|	SMOVIL.L		hAddr_DDR, R12
		SMOVIL.L		xAddr_DDR+92, R10
		SBR		get_time_cn
	|	SMVAAGL.M2		OR12, R15:R14
	|	SMOVIH.L		hAddr_DDR, R12
		SMOVIL		.L42, R62
		SMVAAGH.M2		OR12, R15:R14
	|	SMOVIH		.L42, R62
		SMOVIH4.L		.L42, R63
		SMOVIH4.L		hAddr_DDR, R13
		SMOVIH4.L		xAddr_DDR+92, R11
	;; call to get_time_cn occurs, with return value
		SMOVIH.L		xAddr_DDR+92, R10
.LVL49:
.L42:
		SSTW		R10, *+AR15[16]
	|	SMVAAGL.M1		OR8, R15:R14
	|	SMVAAGL.M2		AR8, R11:R10
	|	SMOVIL		1074790400, R12
.LVL50:
	.loc 1 116 0
		SLDW		*+AR15[13], R16
	|	SMOVIH		1074790400, R12
		SBR		get_time_vc
	|	SMVAAGH.M1		OR8, R15:R14
	|	SMVAAGH.M2		AR8, R11:R10
	|	SMOVIL		0, R13
		SLDW		*+AR15[14], R18
	|	SMOVIL		.L43, R62
		SMOVIH		.L43, R62
		SMOVIH4.L		.L43, R63
	;; call to get_time_vc occurs, with return value
		SNOP		3
.LVL51:
.L43:
	.loc 1 118 0
		SMOVIL		528, R42
	|	SSTW		R10, *+AR15[17]
	|	SMVAAGL.M2		OR8, R11:R10
.LVL52:
		SMOVIL		0, R43
	|	SBR		M7002_datatrans
	|	SLDW		*+AR15[19], R14
		SADDA.M1		R43:R42,AR15,OR13
	|	SMVAAGH.M2		OR8, R11:R10
	|	SMOVIL		.L44, R62
		SMOVIH		.L44, R62
		SMVAAGL.M2		OR13, R13:R12
	|	SMOVIH4.L		.L44, R63
		SNOP		1
		SMVAAGH.M2		OR13, R13:R12
	;; call to M7002_datatrans occurs
		SNOP		1
.LVL53:
.L44:
.L14:
		SADD.M2		2,R32,R46
	|	SADD.M1		2,R30,R27
		SLTU		R46, R32, R49
	|	SMOV.M2		R46, R32
		SLTU		R27, R30, R47
	|	SADD.M2		R33,R49,R33
	|	SMOV.M1		R27, R30
		SADD.M1		R31,R47,R31
	|	SMVAGA36.M2		R33:R32, AR12
	.loc 1 65 0
		SMVAGA36.M1		R31:R30, AR10
	.loc 1 122 0
		SLDH		*AR12, R29
		SLDH		*AR10, R36
		SNOP		5
		SSUB.M2		R36, R29, R36
	.loc 1 123 0
		SSHFLL		16, R36, R37
	|	SMOV.M2		R36, R40
.LVL54:
		SSHFAR		16, R37, R37
		SMOV.M2		R37, R0
	[R0]	SBR		.L27
		SNOP		6
	;; condjump to .L27 occurs
.L13:
	.loc 1 121 0
		SADD.M2		1,R38,R38
	|	SSHFLL		16, R41, R41
		SEQ		R39, R38, R2
	[!R2]	SBR		.L14
	|	SSHFLL		16, R40, R51
		SSHFAR		16, R41, R52
		SSHFAR		16, R51, R53
		SMAX		R52, R53, R41
		SNOP		3
.LVL55:
	;; condjump to .L14 occurs
.LVL56:
.L28:
	.loc 1 131 0
		SSHFLL		16, R41, R30
	|	SMVAAGL.M2		OR9, R57:R56
		SSHFAR		16, R30, R31
		SMOVIL		1, R32
	|	SMVAAGH.M2		OR9, R57:R56
		SLT		R32, R31, R0
	[!R0]	SBR		.L15
		SNOP		6
	;; condjump to .L15 occurs
	.loc 1 133 0
		SBR		printf
	|	SSTDW		R57:R56, *+AR15[1]
		SMOVIL		.L45, R62
		SMOVIH		.L45, R62
		SMOVIH4.L		.L45, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL57:
.L45:
	.loc 1 138 0
		SMVAAGL.M2		AR14, R61:R60
	|	SLDW		*+AR15[13], R33
		SLDW		*+AR15[14], R59
		SMVAAGH.M2		AR14, R61:R60
	|	SLDW		*+AR15[17], R44
		SLDW		*+AR15[15], R57
		SNOP		2
.LBE4:
	.loc 1 89 0
		SADD.M2		4,R33,R55
		SNOP		2
.LBB5:
	.loc 1 138 0
		SSTDW		R61:R60, *+AR15[1]
	|	SADD.M2		8,R57,R58
		SLDW		*+AR15[16], R61
		SNOP		1
		SSTW		R59, *+AR15[4]
		SNOP		3
		SSTW		R61, *+AR15[6]
		SSTW		R44, *+AR15[7]
		SBR		printf
		SMOVIL		.L46, R62
		SSTW		R33, *+AR15[5]
	|	SMOVIH		.L46, R62
.LBE5:
	.loc 1 89 0
		SSTW		R55, *+AR15[13]
	|	SMOVIH4.L		.L46, R63
		SNOP		2
.LBB6:
	.loc 1 138 0
	;; call to printf occurs, with return value
		SSTW		R58, *+AR15[15]
.LVL58:
.L46:
	.loc 1 140 0
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L47, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L47, R62
		SMOVIH4.L		.L47, R63
	;; call to vfree occurs
		SNOP		3
.LVL59:
.L47:
	.loc 1 141 0
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L48, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L48, R62
		SMOVIH4.L		.L48, R63
	;; call to vfree occurs
		SNOP		3
.LVL60:
.L48:
.LBE6:
	.loc 1 89 0
		SLDW		*+AR15[13], R9
	|	SMOVIL		28, R10
		SLDW		*+AR15[10], R42
		SLDW		*+AR15[11], R43
		SLDW		*+AR15[10], R11
		SNOP		2
		SEQ		R10, R9, R1
	[!R1]	SBR		.L17
	|	SADD.M2		-16,R42,R8
		SADD.M2		-1,R43,R3
		SSTW		R8, *+AR15[10]
	|	SLTU		R8, R11, R12
		SADD.M2		R3,R12,R13
		SNOP		1
		SSTW		R13, *+AR15[11]
		SNOP		1
	;; condjump to .L17 occurs
.LVL61:
.L29:
	.loc 1 88 0
		SLDW		*+AR15[14], R34
	|	SMOVIL		104, R15
	|	SADD.M2		8,R39,R39
		SNOP		5
		SADD.M2		4,R34,R14
		SSTW		R14, *+AR15[14]
		SNOP		2
.LVL62:
		SLDW		*+AR15[14], R16
		SNOP		5
		SEQ		R15, R16, R2
	[!R2]	SBR		.L11
		SNOP		6
	;; condjump to .L11 occurs
	.loc 1 144 0
		SLDDW		*+AR15[122], R7:R6
		SLDDW		*+AR15[126], R63:R62
		SLDDW		*+AR15[116], R31:R30
		SLDDW		*+AR15[117], R33:R32
		SLDDW		*+AR15[118], R35:R34
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
.LVL63:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[123], R7:R6
		SLDDW		*+AR15[119], R37:R36
		SLDDW		*+AR15[120], R39:R38
.LVL64:
		SLDDW		*+AR15[121], R41:R40
		SNOP		2
.LVL65:
		SMVAGA36.M2		R7:R6, AR9
		SNOP		2
		SLDDW		*+AR15[124], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[125], R7:R6
.LVL66:
		SNOP		5
		SMVAGA36.M2		R7:R6, OR9
	|	SLDDW		*+AR15[127], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		1024, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL67:
.L27:
.LBB7:
	.loc 1 124 0
		SBR		printf
	|	SSTW		R38, *+AR15[4]
		SSTDW		R35:R34, *+AR15[1]
	|	SMOVIL		.L49, R62
		SMOVIH		.L49, R62
		SMOVIH4.L		.L49, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL68:
.L49:
	.loc 1 126 0
		SMOVIL		0, R50
		SLT		R37, R50, R1
	[!R1]	SBR		.L13
		SNOP		6
	;; condjump to .L13 occurs
	.loc 1 121 0
		SADD.M2		1,R38,R38
	|	SNEG		R36, R40
.LVL69:
		SEQ		R39, R38, R2
	[!R2]	SBR		.L14
	|	SSHFLL		16, R41, R41
		SSHFLL		16, R40, R51
		SSHFAR		16, R41, R52
		SSHFAR		16, R51, R53
		SMAX		R52, R53, R41
		SNOP		2
.LVL70:
	;; condjump to .L14 occurs
		SBR		.L28
		SNOP		6
	;; jump to .L28 occurs
.L15:
	.loc 1 136 0
		SBR		printf
	|	SMVAAGL.M2		AR9, R55:R54
		SMOVIL		.L50, R62
		SMVAAGH.M2		AR9, R55:R54
	|	SMOVIH		.L50, R62
		SMOVIH4.L		.L50, R63
		SSTDW		R55:R54, *+AR15[1]
	;; call to printf occurs, with return value
		SNOP		2
.LVL71:
.L50:
	.loc 1 138 0
		SMVAAGL.M2		AR14, R61:R60
	|	SLDW		*+AR15[13], R33
		SLDW		*+AR15[14], R59
		SMVAAGH.M2		AR14, R61:R60
	|	SLDW		*+AR15[17], R44
		SLDW		*+AR15[15], R57
		SNOP		2
.LBE7:
	.loc 1 89 0
		SADD.M2		4,R33,R55
		SNOP		2
.LBB8:
	.loc 1 138 0
		SSTDW		R61:R60, *+AR15[1]
	|	SADD.M2		8,R57,R58
		SLDW		*+AR15[16], R61
		SNOP		1
		SSTW		R59, *+AR15[4]
		SNOP		3
		SSTW		R61, *+AR15[6]
		SSTW		R44, *+AR15[7]
		SBR		printf
		SMOVIL		.L51, R62
		SSTW		R33, *+AR15[5]
	|	SMOVIH		.L51, R62
.LBE8:
	.loc 1 89 0
		SSTW		R55, *+AR15[13]
	|	SMOVIH4.L		.L51, R63
		SNOP		2
.LBB9:
	.loc 1 138 0
	;; call to printf occurs, with return value
		SSTW		R58, *+AR15[15]
.LVL72:
.L51:
	.loc 1 140 0
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L52, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L52, R62
		SMOVIH4.L		.L52, R63
	;; call to vfree occurs
		SNOP		3
.LVL73:
.L52:
	.loc 1 141 0
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L53, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L53, R62
		SMOVIH4.L		.L53, R63
	;; call to vfree occurs
		SNOP		3
.LVL74:
.L53:
.LBE9:
	.loc 1 89 0
		SLDW		*+AR15[13], R9
	|	SMOVIL		28, R10
		SLDW		*+AR15[10], R42
		SLDW		*+AR15[11], R43
		SLDW		*+AR15[10], R11
		SNOP		2
		SEQ		R10, R9, R1
	[!R1]	SBR		.L17
	|	SADD.M2		-16,R42,R8
		SADD.M2		-1,R43,R3
		SSTW		R8, *+AR15[10]
	|	SLTU		R8, R11, R12
		SADD.M2		R3,R12,R13
		SNOP		1
		SSTW		R13, *+AR15[11]
		SNOP		1
	;; condjump to .L17 occurs
		SBR		.L29
		SNOP		6
	;; jump to .L29 occurs
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.global	hAddr_DDR
	.section	.const,"a",@progbits
	.align	3
	.type	hAddr_DDR, @object
	.size	hAddr_DDR, 96
hAddr_DDR:
	.short	1440
	.short	3287
	.short	2105
	.short	2651
	.short	2841
	.short	2403
	.short	1564
	.short	3651
	.short	456
	.short	1375
	.short	811
	.short	2877
	.short	3654
	.short	1612
	.short	1010
	.short	641
	.short	2460
	.short	2067
	.short	3243
	.short	3587
	.short	3733
	.short	2223
	.short	2452
	.short	632
	.short	2268
	.short	705
	.short	2574
	.short	1591
	.short	2307
	.short	753
	.short	3894
	.short	2967
	.short	1460
	.short	2435
	.short	1536
	.short	1845
	.short	1995
	.short	3252
	.short	1237
	.short	2318
	.short	635
	.short	3263
	.short	3404
	.short	3237
	.short	3386
	.short	3541
	.short	3831
	.short	2150
	.global	xAddr_DDR
	.align	3
	.type	xAddr_DDR, @object
	.size	xAddr_DDR, 512
xAddr_DDR:
	.short	23050
	.short	-12933
	.short	-31849
	.short	-23108
	.short	-20074
	.short	-27076
	.short	25032
	.short	-7110
	.short	7307
	.short	22002
	.short	12985
	.short	-19491
	.short	-7064
	.short	25806
	.short	16169
	.short	10261
	.short	-26165
	.short	-32450
	.short	-13641
	.short	-8143
	.short	-5804
	.short	-29966
	.short	-26301
	.short	10112
	.short	-29247
	.short	11288
	.short	-24342
	.short	25457
	.short	-28621
	.short	12063
	.short	-3219
	.short	-18062
	.short	23366
	.short	-26569
	.short	24585
	.short	29524
	.short	31931
	.short	-13490
	.short	19807
	.short	-28444
	.short	10161
	.short	-13325
	.short	-11059
	.short	-13741
	.short	-11353
	.short	-8874
	.short	-4238
	.short	-31122
	.short	25467
	.short	27877
	.short	2125
	.short	14949
	.short	-13683
	.short	17872
	.short	-30115
	.short	-19898
	.short	795
	.short	-17276
	.short	-19455
	.short	-25150
	.short	-19835
	.short	-7565
	.short	27801
	.short	-6618
	.short	15754
	.short	24137
	.short	1858
	.short	-9501
	.short	29832
	.short	24055
	.short	14013
	.short	-23450
	.short	-16801
	.short	-29269
	.short	26183
	.short	-12417
	.short	-30067
	.short	-16395
	.short	16001
	.short	-31107
	.short	7378
	.short	4355
	.short	-2103
	.short	-29937
	.short	-20851
	.short	932
	.short	8894
	.short	31939
	.short	29596
	.short	-25336
	.short	-13857
	.short	-19798
	.short	5471
	.short	11581
	.short	-32596
	.short	-10447
	.short	-27052
	.short	627
	.short	-27262
	.short	23657
	.short	-17349
	.short	-18089
	.short	13889
	.short	10559
	.short	13619
	.short	-27430
	.short	7785
	.short	-6749
	.short	-11174
	.short	-14293
	.short	-30888
	.short	-1341
	.short	32464
	.short	16024
	.short	20012
	.short	15376
	.short	-8493
	.short	272
	.short	13926
	.short	-11912
	.short	-27005
	.short	-10525
	.short	14884
	.short	8937
	.short	-865
	.short	-12929
	.short	15845
	.short	8499
	.short	28133
	.short	-10765
	.short	-31063
	.short	-30715
	.short	-31083
	.short	21679
	.short	-7763
	.short	23534
	.short	-31378
	.short	-32159
	.short	82
	.short	-24419
	.short	-13394
	.short	-24840
	.short	501
	.short	21217
	.short	-7467
	.short	-14172
	.short	22007
	.short	-18264
	.short	4385
	.short	26643
	.short	-6794
	.short	-17181
	.short	4370
	.short	-19788
	.short	16496
	.short	19519
	.short	21511
	.short	-1641
	.short	-27834
	.short	-11412
	.short	-8226
	.short	17034
	.short	-19305
	.short	32345
	.short	20823
	.short	28093
	.short	8416
	.short	9205
	.short	3440
	.short	13502
	.short	-31615
	.short	29775
	.short	-11223
	.short	19644
	.short	-15078
	.short	-16875
	.short	-24831
	.short	-11481
	.short	-31640
	.short	-3816
	.short	15670
	.short	-29907
	.short	-3860
	.short	19621
	.short	-4632
	.short	-12739
	.short	14852
	.short	-2644
	.short	24245
	.short	8583
	.short	31694
	.short	1916
	.short	-771
	.short	-8320
	.short	-13941
	.short	-6812
	.short	-7553
	.short	-7358
	.short	-18278
	.short	-2093
	.short	20281
	.short	-17902
	.short	-3048
	.short	823
	.short	28491
	.short	5079
	.short	19205
	.short	21665
	.short	9108
	.short	20512
	.short	-896
	.short	-28354
	.short	-32174
	.short	-30563
	.short	8169
	.short	-5154
	.short	-26972
	.short	2013
	.short	-27234
	.short	-32592
	.short	22251
	.short	-2259
	.short	-22915
	.short	-12349
	.short	-17116
	.short	17278
	.short	2247
	.short	-6842
	.short	-882
	.short	32574
	.short	23418
	.short	-31321
	.short	22025
	.short	-12387
	.short	-1259
	.short	28375
	.short	-25612
	.short	12937
	.short	20535
	.short	1091
	.short	-25811
	.short	7825
	.short	3552
	.short	24795
	.short	-2956
	.short	-21435
	.short	2605
	.short	-16434
	.short	18504
	.short	-32621
	.short	22399
	.short	30155
	.short	10023
	.short	-30325
	.short	-3629
	.short	10113
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x704
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x1
	.4byte	.LASF37
	.4byte	.LASF38
	.4byte	.Ldebug_ranges0+0x90
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF13
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.4byte	0x4d
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x182
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0x93
	.4byte	0x182
	.4byte	.LLST1
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0x94
	.4byte	0x182
	.4byte	.LLST2
	.uleb128 0x5
	.string	"r"
	.byte	0x1
	.byte	0x95
	.4byte	0x18d
	.4byte	.LLST3
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0x96
	.4byte	0x62
	.4byte	.LLST4
	.uleb128 0x5
	.string	"nr"
	.byte	0x1
	.byte	0x97
	.4byte	0x62
	.4byte	.LLST5
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x99
	.4byte	0x4d
	.4byte	.LLST6
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x99
	.4byte	0x4d
	.4byte	.LLST7
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF15
	.byte	0x1
	.byte	0x53
	.4byte	0x62
	.byte	0x1
	.4byte	0x11f
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.llong	.LVL2
	.4byte	0x132
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL5
	.4byte	0x172
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x3
	.byte	0x92
	.uleb128 0x2f
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.uleb128 0xa
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0xa
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0xa
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
	.uleb128 0xb
	.llong	.LVL6
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.4byte	0x188
	.uleb128 0xd
	.4byte	0x5b
	.uleb128 0xc
	.byte	0x8
	.4byte	0x5b
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF14
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.4byte	0x4d
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST8
	.byte	0x1
	.4byte	0x2a3
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0xa0
	.4byte	0x2b0
	.4byte	.LLST9
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0xa1
	.4byte	0x18d
	.4byte	.LLST10
	.uleb128 0x5
	.string	"r"
	.byte	0x1
	.byte	0xa2
	.4byte	0x2b0
	.4byte	.LLST11
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0xa3
	.4byte	0x62
	.4byte	.LLST12
	.uleb128 0x5
	.string	"nr"
	.byte	0x1
	.byte	0xa4
	.4byte	0x62
	.4byte	.LLST13
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0xa6
	.4byte	0x4d
	.4byte	.LLST14
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0xa6
	.4byte	0x4d
	.4byte	.LLST15
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF15
	.byte	0x1
	.byte	0x53
	.4byte	0x62
	.byte	0x1
	.4byte	0x22d
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF16
	.byte	0x1
	.byte	0xa8
	.4byte	0x62
	.byte	0x1
	.4byte	0x240
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.llong	.LVL16
	.4byte	0x253
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL19
	.4byte	0x293
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x3
	.byte	0x92
	.uleb128 0x2f
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.uleb128 0xa
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0xa
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0xa
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
	.uleb128 0xb
	.llong	.LVL20
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	0x5b
	.4byte	0x2b0
	.uleb128 0xf
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.4byte	0x2a3
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF39
	.byte	0x1
	.byte	0x41
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST16
	.byte	0x1
	.4byte	0x696
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0x1
	.byte	0x42
	.4byte	0x696
	.4byte	0x40140004
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0x43
	.4byte	0x696
	.4byte	0x40140000
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0x44
	.4byte	0x69c
	.4byte	.LLST17
	.uleb128 0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0x4b
	.4byte	0x6a1
	.byte	0x3
	.byte	0x91
	.sleb128 -896
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4c
	.4byte	0x6a1
	.byte	0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4d
	.4byte	0x2b0
	.4byte	.LLST18
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4d
	.4byte	0x2b0
	.4byte	.LLST19
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF24
	.byte	0x1
	.byte	0x4f
	.4byte	0x62
	.byte	0x1
	.4byte	0x353
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF25
	.byte	0x1
	.byte	0x50
	.4byte	0x62
	.byte	0x1
	.4byte	0x366
	.uleb128 0x8
	.byte	0
	.uleb128 0x12
	.4byte	.LASF26
	.byte	0x1
	.byte	0x52
	.4byte	0x4d
	.byte	0x3
	.byte	0x91
	.sleb128 -960
	.uleb128 0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0x52
	.4byte	0x4d
	.byte	0x3
	.byte	0x91
	.sleb128 -956
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0x53
	.4byte	0x4d
	.uleb128 0x7
	.byte	0x1
	.4byte	.LASF15
	.byte	0x1
	.byte	0x53
	.4byte	0x62
	.byte	0x1
	.4byte	0x3a2
	.uleb128 0x8
	.byte	0
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x54
	.4byte	0x62
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.byte	0x54
	.4byte	0x62
	.uleb128 0x15
	.string	"nh"
	.byte	0x1
	.byte	0x54
	.4byte	0x62
	.4byte	.LLST20
	.uleb128 0x15
	.string	"nr"
	.byte	0x1
	.byte	0x54
	.4byte	0x62
	.4byte	.LLST21
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x1
	.byte	0x56
	.4byte	0x5b
	.4byte	.LLST22
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.byte	0x56
	.4byte	0x5b
	.4byte	.LLST23
	.uleb128 0x16
	.4byte	.Ldebug_ranges0+0
	.4byte	0x647
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x1
	.byte	0x5b
	.4byte	0x62
	.4byte	.LLST24
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x5c
	.4byte	0x62
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0x62
	.4byte	0x18d
	.4byte	0x40100000
	.uleb128 0x15
	.string	"k"
	.byte	0x1
	.byte	0x78
	.4byte	0x62
	.4byte	.LLST25
	.uleb128 0x9
	.llong	.LVL44
	.4byte	0x442
	.uleb128 0xa
	.byte	0x1
	.byte	0x6c
	.byte	0x3
	.byte	0x92
	.uleb128 0x36
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL45
	.4byte	0x457
	.uleb128 0xa
	.byte	0x1
	.byte	0x6c
	.byte	0x3
	.byte	0x92
	.uleb128 0x36
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL46
	.4byte	0x470
	.uleb128 0xa
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
	.uleb128 0x9
	.llong	.LVL47
	.4byte	0x493
	.uleb128 0xa
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.byte	0x91
	.sleb128 -944
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
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
	.uleb128 0x9
	.llong	.LVL48
	.4byte	0x4a7
	.uleb128 0xa
	.byte	0x1
	.byte	0x6e
	.byte	0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.uleb128 0x9
	.llong	.LVL49
	.4byte	0x4c9
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x5
	.byte	0x91
	.sleb128 -968
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x5
	.byte	0x91
	.sleb128 -972
	.byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.llong	.LVL51
	.4byte	0x502
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x5
	.byte	0x91
	.sleb128 -968
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x5
	.byte	0x91
	.sleb128 -972
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x58
	.sleb128 0
	.uleb128 0xa
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
	.uleb128 0x9
	.llong	.LVL53
	.4byte	0x525
	.uleb128 0xa
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.byte	0x91
	.sleb128 -948
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
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
	.uleb128 0x9
	.llong	.LVL57
	.4byte	0x53b
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 8
	.byte	0x3
	.byte	0x92
	.uleb128 0x59
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL58
	.4byte	0x576
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 28
	.byte	0x5
	.byte	0x91
	.sleb128 -956
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 24
	.byte	0x5
	.byte	0x91
	.sleb128 -960
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 20
	.byte	0x3
	.byte	0x92
	.uleb128 0x31
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x5
	.byte	0x91
	.sleb128 -968
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 8
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL59
	.4byte	0x58f
	.uleb128 0xa
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
	.uleb128 0x9
	.llong	.LVL60
	.4byte	0x5a9
	.uleb128 0xa
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
	.uleb128 0x9
	.llong	.LVL68
	.4byte	0x5c7
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x3
	.byte	0x92
	.uleb128 0x36
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 8
	.byte	0x3
	.byte	0x92
	.uleb128 0x32
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL71
	.4byte	0x5dc
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 8
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL72
	.4byte	0x617
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 28
	.byte	0x5
	.byte	0x91
	.sleb128 -956
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 24
	.byte	0x5
	.byte	0x91
	.sleb128 -960
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 20
	.byte	0x3
	.byte	0x92
	.uleb128 0x31
	.sleb128 0
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x5
	.byte	0x91
	.sleb128 -968
	.byte	0x94
	.byte	0x4
	.uleb128 0xa
	.byte	0x2
	.byte	0x7f
	.sleb128 8
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.llong	.LVL73
	.4byte	0x630
	.uleb128 0xa
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
	.uleb128 0xb
	.llong	.LVL74
	.uleb128 0xa
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
	.byte	0
	.uleb128 0x9
	.llong	.LVL32
	.4byte	0x660
	.uleb128 0xa
	.byte	0x1
	.byte	0x6c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL33
	.4byte	0x673
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.llong	.LVL34
	.4byte	0x686
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.llong	.LVL35
	.uleb128 0xa
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.4byte	0x62
	.uleb128 0x17
	.4byte	0x62
	.uleb128 0x18
	.4byte	0x5b
	.4byte	0x6b1
	.uleb128 0x19
	.4byte	0x77
	.byte	0xc7
	.byte	0
	.uleb128 0x18
	.4byte	0x5b
	.4byte	0x6c1
	.uleb128 0x19
	.4byte	0x77
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF34
	.byte	0x1
	.byte	0x13
	.4byte	0x6d7
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	xAddr_DDR
	.uleb128 0xd
	.4byte	0x6b1
	.uleb128 0x18
	.4byte	0x5b
	.4byte	0x6ec
	.uleb128 0x19
	.4byte	0x77
	.byte	0x2f
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF35
	.byte	0x1
	.byte	0x37
	.4byte	0x702
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	hAddr_DDR
	.uleb128 0xd
	.4byte	0x6dc
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.llong	.LFB4
	.llong	.LCFI0
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI0
	.llong	.LFE4
	.2byte	0x2
	.byte	0x7f
	.sleb128 56
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL1
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL1
	.llong	.LVL12
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL12
	.llong	.LFE4
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
	.llong	.LVL2-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL2-1
	.llong	.LVL13
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL13
	.llong	.LFE4
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
	.llong	.LVL2-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL2-1
	.llong	.LVL11
	.2byte	0x1
	.byte	0x58
	.llong	.LVL11
	.llong	.LFE4
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL2-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL2-1
	.llong	.LVL10
	.2byte	0x2
	.byte	0x90
	.uleb128 0x30
	.llong	.LVL10
	.llong	.LFE4
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LVL0
	.llong	.LVL2-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL2-1
	.llong	.LVL9
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2f
	.llong	.LVL9
	.llong	.LFE4
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL3
	.llong	.LVL4
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL4
	.llong	.LVL8
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST8:
	.llong	.LFB5
	.llong	.LCFI1
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI1
	.llong	.LFE5
	.2byte	0x2
	.byte	0x7f
	.sleb128 56
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL14
	.llong	.LVL15
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL15
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL26
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST10:
	.llong	.LVL14
	.llong	.LVL16-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL16-1
	.llong	.LVL27
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL27
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL14
	.llong	.LVL16-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL16-1
	.llong	.LVL25
	.2byte	0x1
	.byte	0x58
	.llong	.LVL25
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL14
	.llong	.LVL16-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL16-1
	.llong	.LVL24
	.2byte	0x2
	.byte	0x90
	.uleb128 0x30
	.llong	.LVL24
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL14
	.llong	.LVL16-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL16-1
	.llong	.LVL23
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2f
	.llong	.LVL23
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL17
	.llong	.LVL18
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL18
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL20
	.llong	.LVL21
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST16:
	.llong	.LFB3
	.llong	.LCFI2
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI2
	.llong	.LFE3
	.2byte	0x3
	.byte	0x7f
	.sleb128 1024
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL29
	.llong	.LVL30
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.llong	.LVL31
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.llong	0
	.llong	0
.LLST18:
	.llong	.LVL40
	.llong	.LVL63
	.2byte	0x1
	.byte	0x58
	.llong	.LVL67
	.llong	.LFE3
	.2byte	0x1
	.byte	0x58
	.llong	0
	.llong	0
.LLST19:
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
	.llong	.LVL66
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL67
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL36
	.llong	.LVL37
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.llong	.LVL60
	.llong	.LVL61
	.2byte	0x3
	.byte	0x91
	.sleb128 -972
	.llong	.LVL61
	.llong	.LVL67
	.2byte	0x1
	.byte	0x69
	.llong	.LVL74
	.llong	.LFE3
	.2byte	0x3
	.byte	0x91
	.sleb128 -972
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL35
	.llong	.LVL36
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.llong	.LVL62
	.llong	.LVL67
	.2byte	0x1
	.byte	0x6e
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL54
	.llong	.LVL56
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.llong	.LVL56
	.llong	.LVL65
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.llong	.LVL67
	.llong	.LVL69
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.llong	.LVL69
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL55
	.llong	.LVL67
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.llong	.LVL70
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL38
	.llong	.LVL39-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.llong	.LVL39-1
	.llong	.LFE3
	.2byte	0xa
	.byte	0x91
	.sleb128 -964
	.byte	0x94
	.byte	0x4
	.byte	0x34
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL55
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.llong	.LVL70
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.llong	0
	.llong	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.llong	.LFB4
	.llong	.LFE4-.LFB4
	.llong	.LFB5
	.llong	.LFE5-.LFB5
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LBB2
	.llong	.LBE2
	.llong	.LBB3
	.llong	.LBE3
	.llong	.LBB4
	.llong	.LBE4
	.llong	.LBB5
	.llong	.LBE5
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
	.llong	.LFB4
	.llong	.LFE4
	.llong	.LFB5
	.llong	.LFE5
	.llong	.LFB3
	.llong	.LFE3
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"vecr_len"
.LASF16:
	.string	"DSP_fir_cplx_hM4X4_asm"
.LASF38:
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSP_fir_cplx_hM4X4/test/asm/Debug"
.LASF30:
	.string	"diff_max"
.LASF22:
	.string	"xAddr"
.LASF33:
	.string	"hAddr"
.LASF20:
	.string	"rAddr_DDR_cn"
.LASF21:
	.string	"rAddr_DDR_vc"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"long unsigned int"
.LASF25:
	.string	"TimerStart"
.LASF2:
	.string	"short unsigned int"
.LASF34:
	.string	"xAddr_DDR"
.LASF31:
	.string	"vecx_len"
.LASF15:
	.string	"GetTimerCount"
.LASF35:
	.string	"hAddr_DDR"
.LASF39:
	.string	"main"
.LASF3:
	.string	"unsigned int"
.LASF27:
	.string	"time_vc"
.LASF0:
	.string	"long long unsigned int"
.LASF17:
	.string	"cache"
.LASF19:
	.string	"cache_ok"
.LASF23:
	.string	"rAddr"
.LASF9:
	.string	"sizetype"
.LASF29:
	.string	"diff"
.LASF7:
	.string	"long long int"
.LASF26:
	.string	"time_cn"
.LASF10:
	.string	"char"
.LASF36:
	.string	"GNU C 4.7.0"
.LASF37:
	.string	"../main.c"
.LASF6:
	.string	"short int"
.LASF11:
	.string	"time1"
.LASF12:
	.string	"time2"
.LASF18:
	.string	"cache1"
.LASF14:
	.string	"get_time_vc"
.LASF24:
	.string	"SetTimerPeriod"
.LASF8:
	.string	"long int"
.LASF13:
	.string	"get_time_cn"
.LASF5:
	.string	"signed char"
.LASF28:
	.string	"c_time"
