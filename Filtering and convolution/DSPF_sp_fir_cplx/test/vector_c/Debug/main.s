	.file	"main.c"
.text;
.Ltext0:
	.section	.text.randomx_sp_cplx,"ax",@progbits
	.align	2
	.global	randomx_sp_cplx
	.type	randomx_sp_cplx, @function
randomx_sp_cplx:
.LFB4:
	.file 1 "../main.c"
	.loc 1 117 0
.LVL0:
		SMOVIL		-48, R6
		SMOVIL		-1, R7
	.loc 1 120 0
		SMOVIL		0, R42
	|	SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
		SLT		R42, R12, R0
	|	SADD.M1		-1,R12,R12
.LVL1:
.LCFI1:
	.loc 1 116 0
		SSHFLL		1, R12, R1
	|	SSTDW		R33:R32, *+AR15[2]
.LCFI2:
		SSHFLL		2, R12, R43
	|	SADD.M2		4,R10,R32
	|	SSTDW		R35:R34, *+AR15[3]
	.loc 1 120 0
	[!R0]	SBR		.L1
	|	SLTU		R1, R12, R2
	|	SADD.M2		R43,R32,R33
	|	SMOV.M1		R14, R34
	.loc 1 116 0
		SLTU		R32, R10, R35
	.loc 1 117 0
		SSTDW		R31:R30, *+AR15[1]
		SSTDW		R37:R36, *+AR15[4]
.LCFI3:
	.loc 1 116 0
		SLTU		R43, R1, R3
	|	SADD.M2		R11,R35,R8
	|	SMOV.M1		R10, R30
		SSHFLL		1, R2, R9
	|	SMOV.M2		R11, R31
	.loc 1 117 0
		SSTDW		R63:R62, *+AR15[5]
	;; condjump to .L1 occurs
.LCFI4:
	.loc 1 116 0
		SADD.M2		R9,R3,R10
	|	SMOVIL		1317011456, R37
.LVL2:
		SLTU		R33, R32, R11
	|	SADD.M2		R10,R8,R13
	.loc 1 122 0
		SMOVIL		813694976, R36
	|	SADD.M2		R13,R11,R35
		SMOVIH		1317011456, R37
		SMOVIH		813694976, R36
.LVL3:
.L3:
		SBR		rand
		SMOVIL		.L9, R62
		SMOVIH		.L9, R62
		SMOVIH4.L		.L9, R63
	;; call to rand occurs, with return value
		SNOP		3
.LVL4:
.L9:
		SFINTS32.M2		R10,R14
	|	SLTU		R32, R30, R15
	|	SMVAGA36.M1		R31:R30, AR10
	.loc 1 120 0
		SEQ		R32, R33, R0
	|	SADD.M2		R31,R15,R31
	[R0]	SEQ		R31, R35, R0
	|	SMOV.M1		R32, R30
	.loc 1 122 0
		SFSUBS32.M2		R37, R14, R17
	|	SADD.M1		4,R32,R32
		SNOP		2
		SFMULS32.M2		R17, R36, R18
		SNOP		1
	.loc 1 120 0
	[!R0]	SBR		.L3
		SNOP		1
	.loc 1 122 0
		SFMULS32.M2		R18, R34, R19
		SNOP		3
		SSTW		R19, *AR10
	;; condjump to .L3 occurs
.L1:
	.loc 1 123 0
		SLDDW		*+AR15[5], R63:R62
	|	SMOVIL		48, R6
		SLDDW		*+AR15[1], R31:R30
	|	SMOVIL		0, R7
		SLDDW		*+AR15[2], R33:R32
		SLDDW		*+AR15[3], R35:R34
.LVL5:
		SLDDW		*+AR15[4], R37:R36
	|	SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	;; return occurs
.LFE4:
	.size	randomx_sp_cplx, .-randomx_sp_cplx
	.section	.text.randomh_sp_cplx,"ax",@progbits
	.align	2
	.global	randomh_sp_cplx
	.type	randomh_sp_cplx, @function
randomh_sp_cplx:
.LFB5:
	.loc 1 126 0
.LVL6:
	.loc 1 127 0
		SFINTD.M2		R12,R49:R48
	|	SMOVIL		1073741824, R51
	|	SMVAGA36.M1		R11:R10, AR0
	.loc 1 129 0
		SMOVIL		0, R50
	|	SADD.M2		-1,R12,R3
	.loc 1 127 0
		SMOVIH		1073741824, R51
	.loc 1 125 0
		SLTU		R12, R3, R13
	.loc 1 127 0
		SFRCPD.M2		R49:R48, R43:R42
	|	SMOVIL		-56, R6
	.loc 1 126 0
		SMOVIL		-1, R7
	.loc 1 127 0
		SFMULD.M2		R49:R48, R43:R42, R47:R46
	|	SADDA.M1		R7:R6,AR15,AR15
.LCFI5:
	.loc 1 129 0
		SSHFLR		31, R12, R44
.LCFI6:
		SADD.M1		R12,R44,R0
	|	SSHFLL		2, R12, R44
	|	SSTW		R31, *+AR15[4]
	.loc 1 126 0
		SSTW		R30, *+AR15[3]
.LCFI7:
	.loc 1 129 0
		SSHFAR		1, R0, R1
	|	SMVAAGL.M1		AR0, R31:R30
		SLT		R50, R1, R2
.LCFI8:
	.loc 1 127 0
		SFSUBD.M2	R47:R46, R51:R50, R9:R8
	|	SSTW		R36, *+AR15[9]
.LCFI9:
		SMVAAGH.M1		AR0, R31:R30
	|	SSTW		R34, *+AR15[7]
	.loc 1 126 0
		SNOP		1
	.loc 1 125 0
		SADD.M1		4,R30,R34
	.loc 1 126 0
		SSTW		R32, *+AR15[5]
.LCFI10:
	.loc 1 127 0
		SFMULD.M2		R43:R42, R9:R8, R11:R10
	|	SSTW		R38, *+AR15[11]
.LVL7:
	.loc 1 126 0
		SNOP		1
	.loc 1 125 0
		SSHFLL		1, R12, R43
	|	SADD.M1		-1,R1,R9
	|[!R2]	SBR		.L10
	.loc 1 126 0
		SSTW		R37, *+AR15[10]
		SSTW		R33, *+AR15[6]
.LCFI11:
	.loc 1 125 0
		SLTU		R34, R30, R37
	.loc 1 127 0
	[R2]	SFMULD.M2		R49:R48, R11:R10, R15:R14
	|	SADD.M1		R31,R37,R29
	.loc 1 126 0
		SSTW		R35, *+AR15[8]
		SSTDW		R63:R62, *+AR15[6]
.LCFI12:
		SNOP		3
	;; condjump to .L10 occurs
	.loc 1 127 0
		SFSUBD.M2	R15:R14, R51:R50, R17:R16
		SNOP		4
		SFMULD.M2		R11:R10, R17:R16, R19:R18
		SNOP		1
	.loc 1 125 0
		SSHFAR		31, R3, R11
		SADD.M1		R11,R13,R15
	|	SLTU		R43, R12, R17
		SNOP		2
	.loc 1 127 0
		SFMULD.M2		R49:R48, R19:R18, R21:R20
		SNOP		5
		SFSUBD.M2	R21:R20, R51:R50, R23:R22
		SNOP		1
	.loc 1 125 0
		SLTU		R44, R43, R21
		SNOP		2
	.loc 1 127 0
		SFMULD.M2		R19:R18, R23:R22, R25:R24
		SNOP		1
	.loc 1 125 0
		SSHFLL		1, R15, R19
		SADD.M1		R19,R17,R12
	|	SSHFLL		1, R9, R23
.LVL8:
		SSHFLL		1, R12, R45
		SADD.M1		R45,R21,R45
	.loc 1 127 0
		SFADDD.M2		R25:R24, R25:R24, R27:R26
	;no-op trunc di R45:R44 to pdi R45:R44
	|	SADDA.M1		R45:R44,AR0,OR0
	.loc 1 125 0
		SNOP		1
		SSHFLL		2, R9, R25
		SLTU		R25, R23, R28
	|	SADD.M1		R25,R34,R35
		SLTU		R35, R34, R49
	.loc 1 127 0
		SFDPSP32.M2		R27:R26, R36
		SNOP		1
.LVL9:
	.loc 1 125 0
		SLTU		R23, R9, R27
		SSHFLL		1, R27, R32
		SADD.M1		R32,R28,R38
	|	SMVAAGL.M2		OR0, R33:R32
		SADD.M1		R38,R29,R50
	|	SMOVIL		805306368, R38
		SMVAAGH.M2		OR0, R33:R32
	|	SMOVIH		805306368, R38
	|	SADD.M1		R50,R49,R37
		SNOP		1
.LVL10:
.L12:
	.loc 1 131 0
		SBR		rand
		SMOVIL		.L18, R62
		SMOVIH		.L18, R62
		SMOVIH4.L		.L18, R63
	;; call to rand occurs, with return value
		SNOP		3
.LVL11:
.L18:
		SFINTS32.M2		R10,R51
	|	SLTU		R34, R30, R53
	|	SMVAGA36.M1		R31:R30, AR12
	.loc 1 129 0
		SEQ		R34, R35, R0
	|	SADD.M2		R31,R53,R31
	[R0]	SEQ		R31, R37, R0
	|	SADD.M1		-4,R32,R52
	.loc 1 131 0
		SFMULS32.M2		R51, R38, R56
	|	SLTU		R52, R32, R54
	|	SADD.M1		-1,R33,R55
		SMOV.M2		R52, R32
	|	SADD.M1		R55,R54,R33
	.loc 1 125 0
		SMVAGA36.M1		R33:R32, AR10
	|	SMOV.M2		R34, R30
		SNOP		1
	.loc 1 131 0
		SFMULS32.M2		R56, R36, R57
	|	SADD.M1		4,R34,R34
	.loc 1 129 0
	[!R0]	SBR		.L12
		SNOP		2
	.loc 1 131 0
		SSTW		R57, *AR12
	|	SFSUBS32.M2		R57, R36, R58
	.loc 1 132 0
		SNOP		2
		SSTW		R58, *AR10
	;; condjump to .L12 occurs
.LVL12:
.L10:
	.loc 1 134 0
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
.LFE5:
	.size	randomh_sp_cplx, .-randomh_sp_cplx
	.section	.text.get_time_cn,"ax",@progbits
	.align	2
	.global	get_time_cn
	.type	get_time_cn, @function
get_time_cn:
.LFB6:
	.loc 1 136 0
.LVL13:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI13:
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[5]
.LCFI14:
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTW		R32, *+AR15[5]
		SNOP		1
		SMOV.M2		R16, R32
		SSTDW		R7:R6, *+AR15[6]
.LCFI15:
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R31, *+AR15[4]
		SMOV.M1		R18, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL14:
.LCFI16:
	.loc 1 138 0
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
	.loc 1 136 0
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L20, R62
.LCFI17:
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L20, R62
		SMOVIH4.L		.L20, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
.LCFI18:
	.loc 1 138 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.LVL15:
.L20:
	.loc 1 139 0
		SBR		DSPF_sp_fir_cplx_cn
	|	SMOV.M2		R32, R16
	|	SMOV.M1		R31, R18
	.loc 1 138 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIL		.L21, R62
.LVL16:
	.loc 1 139 0
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH		.L21, R62
.LVL17:
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH4.L		.L21, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSPF_sp_fir_cplx_cn occurs
		SNOP		2
.LVL18:
.L21:
	.loc 1 140 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L22, R62
		SMOVIH		.L22, R62
		SMOVIH4.L		.L22, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL19:
	.loc 1 142 0
.L22:
		SLDDW		*+AR15[3], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL20:
		SLDDW		*+AR15[5], R63:R62
		SLDW		*+AR15[3], R30
.LVL21:
		SLDW		*+AR15[4], R31
.LVL22:
		SLDW		*+AR15[5], R32
		SNOP		1
.LVL23:
		SMVAGA36.M2		R7:R6, AR8
.LVL24:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[4], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[6], R7:R6
.LVL25:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		56, R6
.LVL26:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LFE6:
	.size	get_time_cn, .-get_time_cn
	.section	.text.get_time_vc,"ax",@progbits
	.align	2
	.global	get_time_vc
	.type	get_time_vc, @function
get_time_vc:
.LFB7:
	.loc 1 150 0
.LVL27:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI19:
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[5]
.LCFI20:
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTW		R32, *+AR15[5]
		SNOP		1
		SMOV.M2		R16, R32
		SSTDW		R7:R6, *+AR15[6]
.LCFI21:
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R31, *+AR15[4]
		SMOV.M1		R18, R31
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL28:
.LCFI22:
	.loc 1 152 0
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
	.loc 1 150 0
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L24, R62
.LCFI23:
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L24, R62
		SMOVIH4.L		.L24, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
.LCFI24:
	.loc 1 152 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[3]
.LVL29:
.L24:
	.loc 1 153 0
		SBR		DSPF_sp_fir_cplx_vc
	|	SMOV.M2		R32, R16
	|	SMOV.M1		R31, R18
	.loc 1 152 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIL		.L25, R62
.LVL30:
	.loc 1 153 0
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH		.L25, R62
.LVL31:
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH4.L		.L25, R63
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSPF_sp_fir_cplx_vc occurs, with return value
		SNOP		2
.LVL32:
.L25:
	.loc 1 154 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L26, R62
		SMOVIH		.L26, R62
		SMOVIH4.L		.L26, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL33:
	.loc 1 156 0
.L26:
		SLDDW		*+AR15[3], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL34:
		SLDDW		*+AR15[5], R63:R62
		SLDW		*+AR15[3], R30
.LVL35:
		SLDW		*+AR15[4], R31
.LVL36:
		SLDW		*+AR15[5], R32
		SNOP		1
.LVL37:
		SMVAGA36.M2		R7:R6, AR8
.LVL38:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[4], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SLDDW		*+AR15[6], R7:R6
.LVL39:
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		56, R6
.LVL40:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LFE7:
	.size	get_time_vc, .-get_time_vc
	.section	.const,"a",@progbits
.LC0:
	.string	"Result Failure  max_pct_diff = %f"
.LC1:
	.string	"Result Successful "
.LC2:
	.string	"\tNR = %d\t  NH = %d\t cn_time:%d\t  vc_cycle:%d\t\n"
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB3:
	.loc 1 36 0
.LVL41:
		SMOVIL		-6584, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI25:
		SMOVIL		822, R6
		SMOVIL		0, R7
	|	SADD.LS		AR15,92,AR10
		SMVAGA36.M1		R7:R6, OR15
	|	SMVAAGL.M2		AR14, R7:R6
	|	SMOVIL		1075052548, R46
	.loc 1 41 0
		SMOVIL		1075052544, R42
	.loc 1 36 0
		SMVAAGH.M2		AR14, R7:R6
	|	SMOVIH		1075052548, R46
	.loc 1 40 0
		SMOVIL		0, R47
	.loc 1 36 0
		SSTDW		R7:R6, *+AR15[OR15]
.LCFI26:
		SMOVIL		821, R6
	|	SMVAGA36.M2		R47:R46, AR12
		SMOVIL		0, R7
		SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		820, R6
		SMOVIL		0, R7
		SSTDW		R63:R62, *+AR15[OR15]
.LCFI27:
		SMVAGA36.M1		R7:R6, OR15
	|	SMVAAGL.M2		OR9, R7:R6
	|	SMOVIH		1075052544, R42
	.loc 1 41 0
		SMOVIL		0, R43
	.loc 1 36 0
		SMVAAGH.M1		OR9, R7:R6
	|	SMOVIL		1, R44
	|	SMVAGA36.M2		R43:R42, AR11
	.loc 1 41 0
		SNOP		1
	.loc 1 36 0
		SSTDW		R7:R6, *+AR15[OR15]
		SMOVIL		819, R6
		SMOVIL		0, R7
.LCFI28:
		SMVAGA36.M1		R7:R6, OR15
	|	SMVAAGL.M2		OR8, R7:R6
		SNOP		1
		SMVAAGH.M2		OR8, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[OR15]
		SMOVIL		818, R6
		SMOVIL		0, R7
.LCFI29:
		SMVAGA36.M1		R7:R6, OR15
	|	SMVAAGL.M2		AR9, R7:R6
		SNOP		1
		SMVAAGH.M2		AR9, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[OR15]
		SMOVIL		817, R6
		SMOVIL		0, R7
.LCFI30:
		SMVAGA36.M1		R7:R6, OR15
	|	SMVAAGL.M2		AR8, R7:R6
		SNOP		1
		SMVAAGH.M2		AR8, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[OR15]
		SMOVIL		816, R6
		SMOVIL		0, R7
.LCFI31:
		SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		815, R6
		SMOVIL		0, R7
		SSTDW		R41:R40, *+AR15[OR15]
.LCFI32:
		SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		814, R6
		SMOVIL		0, R7
		SSTDW		R39:R38, *+AR15[OR15]
.LCFI33:
		SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		813, R6
		SMOVIL		0, R7
		SSTDW		R37:R36, *+AR15[OR15]
.LCFI34:
		SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		812, R6
		SMOVIL		0, R7
		SSTDW		R35:R34, *+AR15[OR15]
.LCFI35:
		SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		811, R6
		SMOVIL		0, R7
		SSTDW		R33:R32, *+AR15[OR15]
		SMVAGA36.M2		R7:R6, OR15
		SNOP		1
		SSTDW		R31:R30, *+AR15[OR15]
.LCFI36:
	.loc 1 40 0
		SSTW		R44, *AR12
	|	SMVAGA36.M2		R43:R42, AR12
	.loc 1 44 0
		SNOP		2
	.loc 1 41 0
		SSTW		R44, *AR11
	.loc 1 42 0
		SSTW		R44, *AR10
		SNOP		2
.LVL42:
	.loc 1 43 0
		SLDW		*AR10, R0
		SNOP		5
	[!R0]	SBR		.L30
		SNOP		6
	;; condjump to .L30 occurs
.L51:
	.loc 1 44 0
		SLDW		*AR12, R42
		SNOP		5
.LVL43:
		SSTW		R42, *AR10
		SNOP		2
.LVL44:
	.loc 1 43 0
		SLDW		*AR10, R1
		SNOP		5
	[R1]	SBR		.L51
		SNOP		6
	;; condjump to .L51 occurs
.L30:
	.loc 1 46 0
		SBR		SetTimerPeriod
	|	SMOVIL		-1, R12
		SMOVIL		.L61, R62
		SMOVIH		.L61, R62
		SMOVIH4.L		.L61, R63
		SMOVIL		0, R10
	.loc 1 56 0
		SMOVIL		0, R34
	.loc 1 46 0
	;; call to SetTimerPeriod occurs, with return value
		SMOVIL		32, R35
.LVL45:
.L61:
	.loc 1 47 0
		SBR		TimerStart
	|	SMOVIL		0, R10
		SMOVIL		.L62, R62
		SMOVIH		.L62, R62
		SMOVIH4.L		.L62, R63
	.loc 1 56 0
		SMOVIH		0, R34
	.loc 1 47 0
	;; call to TimerStart occurs, with return value
		SNOP		2
.LVL46:
.L62:
	.loc 1 49 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L63, R62
		SMOVIH		.L63, R62
		SMOVIH4.L		.L63, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL47:
.L63:
		SBR		GetTimerCount
	|	SMOV.M2		R10, R30
	|	SMOVIL		0, R10
		SMOVIL		.L64, R62
		SMOVIH		.L64, R62
		SMOVIH4.L		.L64, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL48:
.L64:
	.loc 1 79 0
		SMOVIL		1248, R44
	|	SSUB.M2		R10, R30, R2
		SMOVIL		0, R45
	|	SSTW		R2, *+AR15[15]
.LVL49:
		SADDA.M2		R45:R44,AR15,AR9
	|	SMOVIL		2392, R46
.LBB2:
	.loc 1 70 0
		SMOVIL		0, R47
	.loc 1 36 0
		SMVAAGL.M1		AR9, R43:R42
	|	SADDA.M2		R47:R46,AR15,AR14
	|	SMOVIL		8, R3
		SMOVIL		8, R8
		SMVAAGH.M2		AR9, R43:R42
		SNOP		1
		SSUB.M2		R42, R3, R47
	|	SNEG		R43, R43
		SLTU		R8, R47, R9
	|	SSTW		R47, *+AR15[14]
	|	SMVAAGL.M2		AR14, R47:R46
		SSUB.M1		R9, R43, R10
		SMVAAGH.M2		AR14, R47:R46
		SSTW		R10, *+AR15[19]
		SSTDW		R47:R46, *+AR15[10]
.LVL50:
.L29:
		SMOVIL		224, R46
	|	SMVAAA.M2		AR9, OR0
	|	SADD.M1		15,R35,R11
		SMOVIL		0, R47
	|	SADD.M1		14,R35,R12
		SADDA.M1		R47:R46,AR15,OR11
	|	SADDA.M2		24,OR0,AR0
	|	SSHFAR		4, R11, R41
	|	SSTW		R12, *+AR15[18]
		SSHFAR		31, R11, R13
		SADDA.M1		-4,OR11,OR8
	|	SSHFLR		25, R41, R14
		SMVAAGL.M1		AR0, R33:R32
	|	SSHFLL		7, R13, R37
		SMVAAGL.M1		OR8, R17:R16
	|	SMOVIL		210911779, R30
	.loc 1 93 0
		SMOVIL		1002937505, R31
	|	SMVAAGH.M1		AR0, R33:R32
		SMVAAGH.M1		OR8, R17:R16
	|	SOR		R37, R14, R37
		SSHFLL		7, R41, R41
		SSTDW		R17:R16, *+AR15[8]
	|	SSHFLL		1, R35, R36
.LBE2:
	.loc 1 36 0
		SMOVIL		4, R38
.LBB3:
	.loc 1 93 0
		SMOVIH		210911779, R30
		SMOVIH		1002937505, R31
.LVL51:
.L41:
	.loc 1 36 0
		SLDW		*+AR15[18], R15
	|	SMVAAGL.M1		AR9, R11:R10
	|	SMOVIL		0, R12
	|	SMVAGA36.M2		R33:R32, OR9
	.loc 1 65 0
		SMOVIL		1144, R14
		SBR		memset
	|	SMVAAGH.M2		AR9, R11:R10
		SMOVIL		.L65, R62
		SMOVIH		.L65, R62
		SMOVIH4.L		.L65, R63
	.loc 1 36 0
		SADD.M2		R38,R15,R40
	|	SMOVIL		0, R15
	.loc 1 61 0
		SSHFAR		4, R40, R17
	.loc 1 65 0
	;; call to memset occurs, with return value
		SADD.M2		1,R17,R40
.LVL52:
.L65:
	.loc 1 66 0
		SBR		memset
	|	SADD.LS		AR15,96,OR12
	|	SMOVIL		0, R12
		SMOVIL		.L66, R62
		SMVAAGL.M2		OR12, R11:R10
	|	SMOVIH		.L66, R62
		SMOVIH4.L		.L66, R63
		SMVAAGH.M2		OR12, R11:R10
	|	SMOVIL		128, R14
		SMOVIL		0, R15
	;; call to memset occurs, with return value
		SSHFAR		31, R40, R39
.LVL53:
.L66:
	.loc 1 69 0
		SMOVIL		224, R42
		SMOVIL		0, R43
	|	SBR		memset
		SADDA.M2		R43:R42,AR15,OR13
	|	SMOVIL		.L67, R62
		SMOVIH		.L67, R62
		SMVAAGL.M2		OR13, R11:R10
	|	SMOVIH4.L		.L67, R63
		SMOVIL		0, R12
		SMVAAGH.M2		OR13, R11:R10
	|	SMOVIL		1024, R14
	;; call to memset occurs, with return value
		SMOVIL		0, R15
.LVL54:
.L67:
	.loc 1 70 0
		SBR		memset
	|	SMOVIL		0, R15
	|	SMVAAGL.M2		AR14, R11:R10
		SMOVIL		.L68, R62
		SMVAAGH.M2		AR14, R11:R10
	|	SMOVIH		.L68, R62
		SMOVIH4.L		.L68, R63
		SMOVIL		4096, R14
		SMOVIL		0, R12
	;; call to memset occurs, with return value
		SNOP		1
.LVL55:
.L68:
	.loc 1 75 0
		SSHFLL		7, R39, R19
		SBR		vmalloc
	|	SSHFLR		25, R40, R20
		SMOVIL		.L69, R62
		SMOVIH		.L69, R62
		SMOVIH4.L		.L69, R63
		SSHFLL		7, R40, R18
		SOR		R19, R20, R40
	|	SMOV.M2		R18, R10
	|	SSTW		R18, *+AR15[9]
.LVL56:
	;; call to vmalloc occurs, with return value
		SMOV.M2		R40, R11
.LVL57:
.L69:
	.loc 1 76 0
		SBR		vmalloc
	|	SMOV.M2		R10, R21
	|	SMOV.M1		R37, R11
	.loc 1 75 0
		SSTW		R21, *+AR15[10]
	|	SMOV.M2		R41, R10
	|	SMOVIL		.L70, R62
	.loc 1 76 0
		SMOVIH		.L70, R62
		SMOVIH4.L		.L70, R63
	.loc 1 75 0
		SSHFAR		31, R21, R22
		SSTW		R22, *+AR15[11]
	.loc 1 76 0
	;; call to vmalloc occurs, with return value
		SNOP		1
.LVL58:
.L70:
	.loc 1 79 0
		SBR		randomx_sp_cplx
	|	SMOV.M2		R10, R23
	|	SMOV.M1		R36, R12
	|	SMOVIL		1092616192, R14
	.loc 1 76 0
		SSTW		R23, *+AR15[12]
	|	SMVAAGL.M2		OR9, R11:R10
	|	SMOVIL		.L71, R62
	.loc 1 79 0
		SMOVIH		.L71, R62
		SMVAAGH.M2		OR9, R11:R10
	|	SMOVIH4.L		.L71, R63
	.loc 1 76 0
		SSHFAR		31, R23, R24
		SSTW		R24, *+AR15[13]
	|	SMOVIH		1092616192, R14
	.loc 1 79 0
	;; call to randomx_sp_cplx occurs
		SNOP		1
.LVL59:
.L71:
	.loc 1 80 0
		SADD.LS		AR15,96,OR14
	|	SSHFLL		1, R38, R12
		SNOP		1
	.loc 1 75 0
		SLDDW		*+AR15[5], R27:R26
	|	SMVAAGL.M2		OR14, R11:R10
	.loc 1 76 0
		SLDDW		*+AR15[6], R29:R28
	.loc 1 80 0
		SBR		randomh_sp_cplx
	|	SMVAAGH.M2		OR14, R11:R10
		SMOVIL		.L72, R62
		SMOVIH		.L72, R62
		SMOVIH4.L		.L72, R63
	.loc 1 75 0
		SMVAGA36.M2		R27:R26, AR8
.LVL60:
	.loc 1 76 0
		SMVAGA36.M1		R29:R28, OR8
	.loc 1 80 0
	;; call to randomh_sp_cplx occurs
		SNOP		1
.LVL61:
.L72:
	.loc 1 82 0
		SLDW		*+AR15[9], R25
	|	SBR		M7002_datatrans
	|	SMOV.M1		R40, R15
	|	SMVAAGL.M2		AR9, R11:R10
		SMVAAGL.M1		AR8, R13:R12
	|	SMOVIL		.L73, R62
		SMVAAGH.M1		AR9, R11:R10
	|	SMOVIH		.L73, R62
		SMVAAGH.M1		AR8, R13:R12
	|	SMOVIH4.L		.L73, R63
		SNOP		2
	;; call to M7002_datatrans occurs, with return value
		SMOV.M2		R25, R14
.LVL62:
.L73:
	.loc 1 83 0
		SBR		M7002_datatrans
	|	SMOV.M2		R41, R14
	|	SMOV.M1		R37, R15
		SMVAAGL.M1		AR14, R11:R10
	|	SMVAAGL.M2		OR8, R13:R12
	|	SMOVIL		.L74, R62
		SMOVIH		.L74, R62
		SMVAAGH.M1		AR14, R11:R10
	|	SMVAAGH.M2		OR8, R13:R12
	|	SMOVIH4.L		.L74, R63
	;; call to M7002_datatrans occurs, with return value
		SNOP		3
.LVL63:
.L74:
	.loc 1 36 0
		SLDW		*+AR15[14], R27
	|	SMOVIL		1074790400, R12
		SLDW		*+AR15[19], R29
	|	SMOVIH		1074790400, R12
	.loc 1 84 0
		SBR		M7002_datatrans
	|	SADD.LS		AR15,96,OR11
	|	SMOVIL		0, R13
		SMOVIL		.L75, R62
		SMVAAGL.M2		OR11, R11:R10
	|	SMOVIH		.L75, R62
		SMOVIH4.L		.L75, R63
	.loc 1 36 0
		SADD.M1		R32,R27,R14
	|	SMVAAGH.M2		OR11, R11:R10
		SADD.M1		R33,R29,R45
	|	SLTU		R14, R27, R48
	.loc 1 84 0
	;; call to M7002_datatrans occurs, with return value
		SADD.M2		R45,R48,R15
.LVL64:
.L75:
	.loc 1 86 0
		SMVAAGL.M2		OR9, R11:R10
	|	SMOVIL		224, R42
	|	SMOV.M1		R38, R16
		SMOVIL		0, R43
	|	SBR		get_time_cn
	|	SMOV.M1		R35, R18
		SADDA.M1		R43:R42,AR15,OR12
	|	SMVAAGH.M2		OR9, R11:R10
	|	SADD.LS		AR15,96,OR9
	|	SMOVIL		.L76, R62
		SMOVIH		.L76, R62
		SMVAAGL.M1		OR12, R15:R14
	|	SMVAAGL.M2		OR9, R13:R12
	|	SMOVIH4.L		.L76, R63
		SNOP		1
		SMVAAGH.M1		OR12, R15:R14
	|	SMVAAGH.M2		OR9, R13:R12
	;; call to get_time_cn occurs, with return value
		SNOP		1
.LVL65:
.L76:
		SLDW		*+AR15[15], R49
	|	SMVAAGL.M2		OR8, R15:R14
	|	SMOVIL		1074790400, R12
	|	SMOV.M1		R38, R16
	.loc 1 87 0
		SMOV.M1		R35, R18
	|	SMOVIH		1074790400, R12
		SMVAAGH.M2		OR8, R15:R14
	|	SMOVIL		0, R13
		SBR		get_time_vc
		SMOVIL		.L77, R62
		SMOVIH		.L77, R62
	.loc 1 86 0
		SSUB.M1		R49, R10, R40
	|	SMVAAGL.M2		AR8, R11:R10
	|	SMOVIH4.L		.L77, R63
.LVL66:
	.loc 1 87 0
		SNOP		1
		SMVAAGH.M2		AR8, R11:R10
	;; call to get_time_vc occurs, with return value
		SNOP		1
.LVL67:
.L77:
		SLDW		*+AR15[15], R50
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOV.M1		R41, R14
	.loc 1 89 0
		SMOV.M1		R37, R15
		SMVAAGH.M2		AR14, R13:R12
		SBR		M7002_datatrans
		SMOVIL		.L78, R62
		SMOVIH		.L78, R62
	.loc 1 87 0
		SSUB.M1		R50, R10, R39
	|	SMVAAGL.M2		OR8, R11:R10
	|	SMOVIH4.L		.L78, R63
.LVL68:
	.loc 1 89 0
		SNOP		1
		SMVAAGH.M2		OR8, R11:R10
	;; call to M7002_datatrans occurs, with return value
		SNOP		1
.LVL69:
.L78:
		SLDDW		*+AR15[8], R45:R44
	|	SMOVIL		0, R57
		SLDDW		*+AR15[10], R43:R42
	|	SMOVIL		1073741824, R54
	.loc 1 94 0
		SMOVIL		1120403456, R56
	.loc 1 97 0
		SMOVIL		-2147483648, R55
	.loc 1 91 0
		SMOVIL		0, R19
	.loc 1 93 0
		SMOVIH		0, R57
	.loc 1 94 0
		SMOVIH		1073741824, R54
		SMOVIH		1120403456, R56
	.loc 1 97 0
		SMOVIH		-2147483648, R55
.LVL70:
.L36:
		SADD.M1		4,R44,R51
	|	SMVAGA36.M2		R43:R42, AR12
	|	SMOVIL		0, R17
		SLTU		R51, R44, R53
	|	SMOV.M1		R51, R44
		SADD.M2		R45,R53,R45
	|	SMOVIH		0, R17
	.loc 1 36 0
		SMVAGA36.M2		R45:R44, AR10
		SNOP		1
	.loc 1 93 0
		SLDW		*AR10, R58
		SNOP		5
		SFSPDP32T.M2		R58, R61:R60
		SNOP		1
		SFABSD.M2		R61:R60, R47:R46
		SNOP		1
		SFDPSP32.M2		R47:R46, R59
		SNOP		2
		SFSPDP32T.M2		R59, R1:R0
		SNOP		1
		SFCMPGD.M2		R1:R0, R31:R30, R1
		SNOP		1
	[!R1]	SBR		.L31
		SNOP		6
	;; condjump to .L31 occurs
		SLDW		*AR12, R61
		SNOP		5
		SFSPDP32T.M2		R61, R3:R2
		SNOP		1
		SFABSD.M2		R3:R2, R47:R46
		SNOP		1
		SFDPSP32.M2		R47:R46, R3
		SNOP		2
		SFSPDP32T.M2		R3, R9:R8
		SNOP		1
		SFCMPGD.M2		R9:R8, R31:R30, R0
		SNOP		1
	[!R0]	SBR		.L31
		SNOP		6
	;; condjump to .L31 occurs
	.loc 1 94 0
		SFRCPS32.M1		R58, R9
	|	SFSUBS32.M2		R61, R58, R10
		SFMULS32.M1		R58, R9, R47
		SNOP		3
		SFSUBS32.M2		R47, R54, R46
		SNOP		2
		SFMULS32.M2		R9, R46, R11
		SNOP		3
		SFMULS32.M2		R58, R11, R12
		SNOP		3
		SFSUBS32.M2		R12, R54, R13
		SNOP		2
		SFMULS32.M2		R11, R13, R14
		SNOP		3
		SFMULS32.M2		R10, R14, R16
		SNOP		3
		SFMULS32.M2		R16, R56, R17
		SNOP		3
.LVL71:
	.loc 1 96 0
		SFCMPLS32.M2		R17, R57, R1
	|	SXOR		R55, R17, R15
	[!R1]	SBR		.L31
		SNOP		6
	;; condjump to .L31 occurs
	.loc 1 97 0
		SMOV.M2		R15, R17
.LVL72:
.L31:
	.loc 1 99 0
		SFCMPGS32.M2		R17, R34, R2
	|	SADD.M1		4,R42,R18
	[!R2]	SBR		.L35
	|	SADD.M2		1,R19,R19
	|	SLTU		R18, R42, R20
	|	SMOV.M1		R18, R42
	.loc 1 91 0
		SLT		R19, R36, R0
		SNOP		5
	.loc 1 99 0
	;; condjump to .L35 occurs
	.loc 1 100 0
		SMOV.M2		R17, R34
.LVL73:
.L35:
	.loc 1 91 0
	[R0]	SBR		.L36
	|	SADD.M2		R43,R20,R43
		SNOP		6
	;; condjump to .L36 occurs
	.loc 1 103 0
		SFSPDP32T.M2		R34, R43:R42
	|	SMOVIL		-1717986918, R44
		SMOVIL		1068079513, R45
		SMOVIH		-1717986918, R44
		SMOVIH		1068079513, R45
		SFCMPGD.M2		R43:R42, R45:R44, R1
		SNOP		1
	[!R1]	SBR		.L37
	|	SMOVIL		2139095039, R44
		SMOVIH		2139095039, R44
		SNOP		5
	;; condjump to .L37 occurs
		SFCMPLS32.M2		R34, R44, R2
	[R2]	SBR		.L58
		SNOP		6
	;; condjump to .L58 occurs
.L37:
	.loc 1 107 0
		SMOVIL.L		.LC1, R42
		SMOVIH.L		.LC1, R42
		SBR		printf
	|	SMOVIH4.L		.LC1, R43
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L79, R62
		SMOVIH		.L79, R62
		SMOVIH4.L		.L79, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL74:
.L79:
	.loc 1 109 0
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L80, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L80, R62
		SMOVIH4.L		.L80, R63
	;; call to vfree occurs, with return value
		SNOP		3
.LVL75:
.L80:
	.loc 1 110 0
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L81, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L81, R62
		SMOVIH4.L		.L81, R63
	;; call to vfree occurs, with return value
		SNOP		3
.LVL76:
.L81:
	.loc 1 111 0
		SMOVIL.L		.LC2, R44
	|	SSTW		R38, *+AR15[5]
	|	SADD.M2		4,R38,R38
.LVL77:
		SMOVIH.L		.LC2, R44
	|	SSTW		R35, *+AR15[4]
		SMOVIH4.L		.LC2, R45
		SNOP		1
		SBR		printf
	|	SSTDW		R45:R44, *+AR15[1]
		SSTW		R40, *+AR15[6]
	|	SMOVIL		.L82, R62
		SMOVIH		.L82, R62
		SMOVIH4.L		.L82, R63
		SSTW		R39, *+AR15[7]
	;; call to printf occurs, with return value
		SNOP		2
.LVL78:
.L82:
.LBE3:
	.loc 1 60 0
		SMOVIL		20, R21
	|	SADDU.M2		32,R32,R42
		SEQ		R21, R38, R0
	[!R0]	SBR		.L41
	|	SLTU		R42, R32, R22
	|	SMOV.M2		R42, R32
		SADD.M2		R33,R22,R33
		SNOP		5
	;; condjump to .L41 occurs
.LVL79:
.L59:
	.loc 1 59 0
		SADD.M2		8,R35,R35
	|	SMOVIL		136, R31
.LVL80:
		SEQ		R31, R35, R1
	[!R1]	SBR		.L29
		SNOP		6
	;; condjump to .L29 occurs
	.loc 1 114 0
		SMOVIL		811, R6
		SMOVIL		0, R7
		SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		812, R6
		SMOVIL		0, R7
		SLDDW		*+AR15[OR15], R31:R30
	|	SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		813, R6
		SMOVIL		0, R7
		SLDDW		*+AR15[OR15], R33:R32
	|	SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		814, R6
		SMOVIL		0, R7
		SLDDW		*+AR15[OR15], R35:R34
	|	SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		815, R6
.LVL81:
		SMOVIL		0, R7
		SLDDW		*+AR15[OR15], R37:R36
	|	SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		816, R6
		SMOVIL		0, R7
		SLDDW		*+AR15[OR15], R39:R38
	|	SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		817, R6
.LVL82:
		SMOVIL		0, R7
		SLDDW		*+AR15[OR15], R41:R40
	|	SMVAGA36.M2		R7:R6, OR15
.LVL83:
		SNOP		1
		SLDDW		*+AR15[OR15], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, AR8
	|	SMOVIL		818, R6
.LVL84:
		SMOVIL		0, R7
		SMVAGA36.M2		R7:R6, OR15
		SNOP		1
		SLDDW		*+AR15[OR15], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, AR9
	|	SMOVIL		819, R6
		SMOVIL		0, R7
		SMVAGA36.M2		R7:R6, OR15
		SNOP		1
		SLDDW		*+AR15[OR15], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SMOVIL		820, R6
.LVL85:
		SMOVIL		0, R7
		SMVAGA36.M2		R7:R6, OR15
		SNOP		1
		SLDDW		*+AR15[OR15], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR9
	|	SMOVIL		821, R6
		SMOVIL		0, R7
		SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		822, R6
		SMOVIL		0, R7
		SLDDW		*+AR15[OR15], R63:R62
	|	SMVAGA36.M2		R7:R6, OR15
		SNOP		1
		SLDDW		*+AR15[OR15], R7:R6
		SNOP		3
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
	|	SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		6584, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		4
	;; return occurs
.LVL86:
.L58:
.LBB4:
	.loc 1 104 0
		SSTDW		R43:R42, *+AR15[2]
	|	SMOVIL.L		.LC0, R42
		SMOVIH.L		.LC0, R42
		SBR		printf
	|	SMOVIH4.L		.LC0, R43
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L83, R62
		SMOVIH		.L83, R62
		SMOVIH4.L		.L83, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL87:
.L83:
	.loc 1 109 0
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L84, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L84, R62
		SMOVIH4.L		.L84, R63
	;; call to vfree occurs, with return value
		SNOP		3
.LVL88:
.L84:
	.loc 1 110 0
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L85, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L85, R62
		SMOVIH4.L		.L85, R63
	;; call to vfree occurs, with return value
		SNOP		3
.LVL89:
.L85:
	.loc 1 111 0
		SMOVIL.L		.LC2, R44
	|	SSTW		R38, *+AR15[5]
	|	SADD.M2		4,R38,R38
.LVL90:
		SMOVIH.L		.LC2, R44
	|	SSTW		R35, *+AR15[4]
		SMOVIH4.L		.LC2, R45
		SNOP		1
		SBR		printf
	|	SSTDW		R45:R44, *+AR15[1]
		SSTW		R40, *+AR15[6]
	|	SMOVIL		.L86, R62
		SMOVIH		.L86, R62
		SMOVIH4.L		.L86, R63
		SSTW		R39, *+AR15[7]
	;; call to printf occurs, with return value
		SNOP		2
.LVL91:
.L86:
.LBE4:
	.loc 1 60 0
		SMOVIL		20, R21
	|	SADDU.M2		32,R32,R42
		SEQ		R21, R38, R0
	[!R0]	SBR		.L41
	|	SLTU		R42, R32, R22
	|	SMOV.M2		R42, R32
		SADD.M2		R33,R22,R33
		SNOP		5
	;; condjump to .L41 occurs
		SBR		.L59
		SNOP		6
	;; jump to .L59 occurs
.LFE3:
	.size	main, .-main
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
	.llong	.LFB4
	.llong	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xb0
	.byte	0x8
	.byte	0xb1
	.byte	0x7
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xb2
	.byte	0x6
	.byte	0xb3
	.byte	0x5
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xae
	.byte	0xa
	.byte	0xaf
	.byte	0x9
	.byte	0xb4
	.byte	0x4
	.byte	0xb5
	.byte	0x3
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
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
	.llong	.LFB5
	.llong	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xaf
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xae
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xb4
	.byte	0x5
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xb2
	.byte	0x7
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xb0
	.byte	0x9
	.byte	0xb6
	.byte	0x3
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xb5
	.byte	0x4
	.byte	0xb1
	.byte	0x8
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xb3
	.byte	0x6
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
	.llong	.LFB6
	.llong	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI13-.LFB6
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0xb0
	.byte	0x9
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x8e
	.byte	0x2
	.byte	0xaf
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xae
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x5
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0x88
	.byte	0x8
	.align	3
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.llong	.LFB7
	.llong	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI19-.LFB7
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0xb0
	.byte	0x9
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x8e
	.byte	0x2
	.byte	0xaf
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xae
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0x5
	.byte	0x58
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0x88
	.byte	0x8
	.align	3
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI25-.LFB3
	.byte	0xe
	.byte	0xb8,0x33
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0x5
	.byte	0x59
	.byte	0x6
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0x5
	.byte	0x58
	.byte	0x8
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0x89
	.byte	0xa
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0x88
	.byte	0xc
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0xb8
	.byte	0xe
	.byte	0xb9
	.byte	0xd
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0xb6
	.byte	0x10
	.byte	0xb7
	.byte	0xf
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xb4
	.byte	0x12
	.byte	0xb5
	.byte	0x11
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xb2
	.byte	0x14
	.byte	0xb3
	.byte	0x13
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0xb0
	.byte	0x16
	.byte	0xb1
	.byte	0x15
	.byte	0xae
	.byte	0x18
	.byte	0xaf
	.byte	0x17
	.align	3
.LEFDE8:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9f3
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../main.c"
	.string	"/cygdrive/e/project/function  demo/DSPF_sp_fir_cplx/Debug"
	.4byte	.Ldebug_ranges0+0x40
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
	.string	"randomx_sp_cplx"
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x1c8
	.byte	0x4
	.string	"tempx"
	.byte	0x1
	.byte	0x74
	.4byte	0x1c8
	.4byte	.LLST1
	.byte	0x4
	.string	"N"
	.byte	0x1
	.byte	0x74
	.4byte	0x10a
	.4byte	.LLST2
	.byte	0x4
	.string	"factor"
	.byte	0x1
	.byte	0x74
	.4byte	0x75
	.4byte	.LLST3
	.byte	0x5
	.string	"rand_midpoint"
	.byte	0x1
	.byte	0x76
	.4byte	0x75
	.byte	0x4
	.4byte	0x4e800000
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x77
	.4byte	0x10a
	.4byte	.LLST4
	.byte	0
	.byte	0x7
	.byte	0x8
	.4byte	0x75
	.byte	0x3
	.byte	0x1
	.string	"randomh_sp_cplx"
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x250
	.byte	0x8
	.4byte	.LASF0
	.byte	0x1
	.byte	0x7d
	.4byte	0x1c8
	.4byte	.LLST6
	.byte	0x4
	.string	"N"
	.byte	0x1
	.byte	0x7d
	.4byte	0x10a
	.4byte	.LLST7
	.byte	0x5
	.string	"frand_max"
	.byte	0x1
	.byte	0x7f
	.4byte	0x75
	.byte	0x4
	.4byte	0x4f000000
	.byte	0x6
	.string	"pair_sum"
	.byte	0x1
	.byte	0x7f
	.4byte	0x75
	.4byte	.LLST8
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x80
	.4byte	0x10a
	.4byte	.LLST9
	.byte	0
	.byte	0x9
	.byte	0x1
	.string	"get_time_cn"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.4byte	0xd9
	.llong	.LFB6
	.llong	.LFE6
	.4byte	.LLST10
	.byte	0x1
	.4byte	0x359
	.byte	0x4
	.string	"x"
	.byte	0x1
	.byte	0x88
	.4byte	0x359
	.4byte	.LLST11
	.byte	0x4
	.string	"h"
	.byte	0x1
	.byte	0x88
	.4byte	0x359
	.4byte	.LLST12
	.byte	0x4
	.string	"r"
	.byte	0x1
	.byte	0x88
	.4byte	0x1c8
	.4byte	.LLST13
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x88
	.4byte	0x10a
	.4byte	.LLST14
	.byte	0x4
	.string	"ny"
	.byte	0x1
	.byte	0x88
	.4byte	0x10a
	.4byte	.LLST15
	.byte	0x6
	.string	"time1"
	.byte	0x1
	.byte	0x89
	.4byte	0xd9
	.4byte	.LLST16
	.byte	0x6
	.string	"time2"
	.byte	0x1
	.byte	0x89
	.4byte	0xd9
	.4byte	.LLST17
	.byte	0xa
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x31
	.4byte	0x10a
	.byte	0x1
	.4byte	0x2f6
	.byte	0xb
	.byte	0
	.byte	0xc
	.llong	.LVL15
	.4byte	0x309
	.byte	0xd
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xc
	.llong	.LVL18
	.4byte	0x349
	.byte	0xd
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x2f
	.byte	0
	.byte	0xd
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xe
	.llong	.LVL19
	.byte	0xd
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x8
	.4byte	0x35f
	.byte	0xf
	.4byte	0x75
	.byte	0x9
	.byte	0x1
	.string	"get_time_vc"
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.4byte	0xd9
	.llong	.LFB7
	.llong	.LFE7
	.4byte	.LLST18
	.byte	0x1
	.4byte	0x49c
	.byte	0x4
	.string	"xAddr"
	.byte	0x1
	.byte	0x91
	.4byte	0x4a9
	.4byte	.LLST19
	.byte	0x4
	.string	"hAddr"
	.byte	0x1
	.byte	0x92
	.4byte	0x4af
	.4byte	.LLST20
	.byte	0x4
	.string	"rAddr"
	.byte	0x1
	.byte	0x93
	.4byte	0x4a9
	.4byte	.LLST21
	.byte	0x4
	.string	"nh"
	.byte	0x1
	.byte	0x94
	.4byte	0x10a
	.4byte	.LLST22
	.byte	0x4
	.string	"nr"
	.byte	0x1
	.byte	0x95
	.4byte	0x10a
	.4byte	.LLST23
	.byte	0x6
	.string	"time1"
	.byte	0x1
	.byte	0x97
	.4byte	0xd9
	.4byte	.LLST24
	.byte	0x6
	.string	"time2"
	.byte	0x1
	.byte	0x97
	.4byte	0xd9
	.4byte	.LLST25
	.byte	0xa
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x31
	.4byte	0x10a
	.byte	0x1
	.4byte	0x416
	.byte	0xb
	.byte	0
	.byte	0x10
	.byte	0x1
	.string	"DSPF_sp_fir_cplx_vc"
	.byte	0x1
	.byte	0x99
	.4byte	0x10a
	.byte	0x1
	.4byte	0x439
	.byte	0xb
	.byte	0
	.byte	0xc
	.llong	.LVL29
	.4byte	0x44c
	.byte	0xd
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xc
	.llong	.LVL32
	.4byte	0x48c
	.byte	0xd
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x2f
	.byte	0
	.byte	0xd
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x30
	.byte	0
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xe
	.llong	.LVL33
	.byte	0xd
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x1
	.4byte	0x7e
	.4byte	0x4a9
	.byte	0x12
	.byte	0xf
	.byte	0
	.byte	0x7
	.byte	0x8
	.4byte	0x49c
	.byte	0x7
	.byte	0x8
	.4byte	0x7e
	.byte	0x13
	.byte	0x1
	.string	"main"
	.byte	0x1
	.byte	0x24
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST26
	.byte	0x1
	.4byte	0x9ad
	.byte	0x14
	.string	"cache"
	.byte	0x1
	.byte	0x25
	.4byte	0x9ad
	.4byte	0x40140004
	.byte	0x14
	.string	"cache1"
	.byte	0x1
	.byte	0x26
	.4byte	0x9ad
	.4byte	0x40140000
	.byte	0x6
	.string	"cache_ok"
	.byte	0x1
	.byte	0x27
	.4byte	0x9b3
	.4byte	.LLST27
	.byte	0x10
	.byte	0x1
	.string	"SetTimerPeriod"
	.byte	0x1
	.byte	0x2e
	.4byte	0x10a
	.byte	0x1
	.4byte	0x52c
	.byte	0xb
	.byte	0
	.byte	0x10
	.byte	0x1
	.string	"TimerStart"
	.byte	0x1
	.byte	0x2f
	.4byte	0x10a
	.byte	0x1
	.4byte	0x546
	.byte	0xb
	.byte	0
	.byte	0x6
	.string	"c_time"
	.byte	0x1
	.byte	0x31
	.4byte	0xd9
	.4byte	.LLST28
	.byte	0xa
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x31
	.4byte	0x10a
	.byte	0x1
	.4byte	0x56b
	.byte	0xb
	.byte	0
	.byte	0x15
	.4byte	.LASF0
	.byte	0x1
	.byte	0x33
	.4byte	0x9b8
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x4d
	.byte	0x16
	.string	"xAddr_DDR"
	.byte	0x1
	.byte	0x34
	.4byte	0x9c8
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x56
	.byte	0x16
	.string	"rAddr_DDR_vc"
	.byte	0x1
	.byte	0x35
	.4byte	0x9d9
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x5f
	.byte	0x16
	.string	"rAddr_DDR_cn"
	.byte	0x1
	.byte	0x36
	.4byte	0x9ea
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x4e
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0x37
	.4byte	0x10a
	.4byte	.LLST29
	.byte	0x17
	.string	"j"
	.byte	0x1
	.byte	0x37
	.4byte	0x10a
	.byte	0x1
	.byte	0x6
	.string	"ny"
	.byte	0x1
	.byte	0x37
	.4byte	0x10a
	.4byte	.LLST30
	.byte	0x6
	.string	"nh"
	.byte	0x1
	.byte	0x37
	.4byte	0x10a
	.4byte	.LLST31
	.byte	0x6
	.string	"pct_diff"
	.byte	0x1
	.byte	0x38
	.4byte	0x75
	.4byte	.LLST32
	.byte	0x6
	.string	"max_pct_diff"
	.byte	0x1
	.byte	0x38
	.4byte	0x75
	.4byte	.LLST33
	.byte	0x6
	.string	"time_cn"
	.byte	0x1
	.byte	0x39
	.4byte	0xd9
	.4byte	.LLST34
	.byte	0x16
	.string	"time_vc"
	.byte	0x1
	.byte	0x39
	.4byte	0xd9
	.byte	0x2
	.byte	0x90
	.byte	0x37
	.byte	0x18
	.4byte	.Ldebug_ranges0+0
	.4byte	0x95e
	.byte	0x6
	.string	"vecx_len"
	.byte	0x1
	.byte	0x3d
	.4byte	0x10a
	.4byte	.LLST35
	.byte	0x19
	.string	"vecr_len"
	.byte	0x1
	.byte	0x3e
	.4byte	0x10a
	.byte	0x6
	.string	"xAddr"
	.byte	0x1
	.byte	0x4a
	.4byte	0x4a9
	.4byte	.LLST36
	.byte	0x6
	.string	"rAddr"
	.byte	0x1
	.byte	0x4a
	.4byte	0x4a9
	.4byte	.LLST37
	.byte	0x10
	.byte	0x1
	.string	"vmalloc"
	.byte	0x1
	.byte	0x4b
	.4byte	0x10a
	.byte	0x1
	.4byte	0x6a9
	.byte	0xb
	.byte	0
	.byte	0x14
	.string	"hAddr"
	.byte	0x1
	.byte	0x4d
	.4byte	0x4af
	.4byte	0x40100000
	.byte	0x10
	.byte	0x1
	.string	"M7002_datatrans"
	.byte	0x1
	.byte	0x52
	.4byte	0x10a
	.byte	0x1
	.4byte	0x6d9
	.byte	0xb
	.byte	0
	.byte	0x10
	.byte	0x1
	.string	"vfree"
	.byte	0x1
	.byte	0x6d
	.4byte	0x10a
	.byte	0x1
	.4byte	0x6ee
	.byte	0xb
	.byte	0
	.byte	0xc
	.llong	.LVL52
	.4byte	0x70c
	.byte	0xd
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xc
	.llong	.LVL53
	.4byte	0x72b
	.byte	0xd
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x4d
	.byte	0
	.byte	0xc
	.llong	.LVL54
	.4byte	0x73e
	.byte	0xd
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xc
	.llong	.LVL55
	.4byte	0x75c
	.byte	0xd
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x7e
	.byte	0
	.byte	0
	.byte	0xc
	.llong	.LVL59
	.4byte	0x77d
	.byte	0xd
	.byte	0x1
	.byte	0x6c
	.byte	0x3
	.byte	0x92
	.byte	0x34
	.byte	0
	.byte	0xd
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x59
	.byte	0
	.byte	0
	.byte	0xc
	.llong	.LVL61
	.4byte	0x7a0
	.byte	0xd
	.byte	0x1
	.byte	0x6c
	.byte	0x5
	.byte	0x92
	.byte	0x36
	.byte	0
	.byte	0x31
	.byte	0x24
	.byte	0xd
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x4d
	.byte	0
	.byte	0xc
	.llong	.LVL62
	.4byte	0x7c4
	.byte	0xd
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xd
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xc
	.llong	.LVL63
	.4byte	0x7e9
	.byte	0xd
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x58
	.byte	0
	.byte	0xd
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x2
	.byte	0x7e
	.byte	0
	.byte	0
	.byte	0xc
	.llong	.LVL64
	.4byte	0x803
	.byte	0xd
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x4d
	.byte	0
	.byte	0xc
	.llong	.LVL65
	.4byte	0x82d
	.byte	0xd
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x33
	.byte	0
	.byte	0xd
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x36
	.byte	0
	.byte	0xd
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x59
	.byte	0
	.byte	0
	.byte	0xc
	.llong	.LVL67
	.4byte	0x862
	.byte	0xd
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x3
	.byte	0x92
	.byte	0x33
	.byte	0
	.byte	0xd
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x3
	.byte	0x92
	.byte	0x36
	.byte	0
	.byte	0xd
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.byte	0x3
	.byte	0x92
	.byte	0x58
	.byte	0
	.byte	0xd
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
	.byte	0xc
	.llong	.LVL69
	.4byte	0x887
	.byte	0xd
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
	.byte	0xd
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
	.byte	0xc
	.llong	.LVL75
	.4byte	0x8a0
	.byte	0xd
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
	.byte	0xc
	.llong	.LVL76
	.4byte	0x8ba
	.byte	0xd
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
	.byte	0xc
	.llong	.LVL78
	.4byte	0x8e8
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x1c
	.byte	0x3
	.byte	0x92
	.byte	0x37
	.byte	0
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x18
	.byte	0x3
	.byte	0x92
	.byte	0x38
	.byte	0
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x14
	.byte	0x3
	.byte	0x92
	.byte	0x36
	.byte	0x7c
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x10
	.byte	0x3
	.byte	0x92
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0xc
	.llong	.LVL87
	.4byte	0x900
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x10
	.byte	0x5
	.byte	0xf5
	.byte	0x32
	.byte	0x75
	.byte	0xf7
	.byte	0x7e
	.byte	0
	.byte	0xc
	.llong	.LVL88
	.4byte	0x919
	.byte	0xd
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
	.byte	0xc
	.llong	.LVL89
	.4byte	0x933
	.byte	0xd
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
	.byte	0xe
	.llong	.LVL91
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x1c
	.byte	0x3
	.byte	0x92
	.byte	0x37
	.byte	0
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x18
	.byte	0x3
	.byte	0x92
	.byte	0x38
	.byte	0
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x14
	.byte	0x3
	.byte	0x92
	.byte	0x36
	.byte	0x7c
	.byte	0xd
	.byte	0x2
	.byte	0x7f
	.byte	0x10
	.byte	0x3
	.byte	0x92
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.llong	.LVL45
	.4byte	0x977
	.byte	0xd
	.byte	0x1
	.byte	0x6c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0xd
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xc
	.llong	.LVL46
	.4byte	0x98a
	.byte	0xd
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xc
	.llong	.LVL47
	.4byte	0x99d
	.byte	0xd
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xe
	.llong	.LVL48
	.byte	0xd
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x8
	.4byte	0x10a
	.byte	0x1a
	.4byte	0x10a
	.byte	0x1b
	.4byte	0x75
	.4byte	0x9c8
	.byte	0x1c
	.4byte	0x12e
	.byte	0x1f
	.byte	0
	.byte	0x1b
	.4byte	0x75
	.4byte	0x9d9
	.byte	0x1d
	.4byte	0x12e
	.2byte	0x11d
	.byte	0
	.byte	0x1b
	.4byte	0x75
	.4byte	0x9ea
	.byte	0x1d
	.4byte	0x12e
	.2byte	0x3ff
	.byte	0
	.byte	0x1e
	.4byte	0x75
	.byte	0x1c
	.4byte	0x12e
	.byte	0xff
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
	.byte	0x1c
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0xa
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
	.byte	0xb
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0xa
	.byte	0x91,0x42
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
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
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
	.byte	0x21
	.byte	0
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
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
	.byte	0
	.llong	.LCFI0
	.llong	.LFE4
	.2byte	0x2
	.byte	0x7f
	.byte	0x30
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
	.llong	.LFE4
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
	.llong	.LVL1
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL1
	.llong	.LVL3
	.2byte	0x3
	.byte	0x8c
	.byte	0x1
	.byte	0x9f
	.llong	.LVL3
	.llong	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x6c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST3:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x1
	.byte	0x6e
	.llong	.LVL3
	.llong	.LVL5
	.2byte	0x2
	.byte	0x90
	.byte	0x32
	.llong	.LVL5
	.llong	.LFE4
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0x1e
	.byte	0x75
	.byte	0x9f
	.llong	0
	.llong	0
.LLST4:
	.llong	.LVL0
	.llong	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST5:
	.llong	.LFB5
	.llong	.LCFI5
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI5
	.llong	.LFE5
	.2byte	0x2
	.byte	0x7f
	.byte	0x38
	.llong	0
	.llong	0
.LLST6:
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL7
	.llong	.LVL10
	.2byte	0x1
	.byte	0x50
	.llong	.LVL10
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST7:
	.llong	.LVL6
	.llong	.LVL8
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL8
	.llong	.LVL10
	.2byte	0x3
	.byte	0x83
	.byte	0x1
	.byte	0x9f
	.llong	.LVL10
	.llong	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x6c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL9
	.llong	.LVL12
	.2byte	0x2
	.byte	0x90
	.byte	0x34
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL9
	.llong	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST10:
	.llong	.LFB6
	.llong	.LCFI13
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI13
	.llong	.LFE6
	.2byte	0x2
	.byte	0x7f
	.byte	0x38
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL13
	.llong	.LVL14
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL14
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL25
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL15-1
	.llong	.LVL26
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL26
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL15-1
	.llong	.LVL24
	.2byte	0x1
	.byte	0x58
	.llong	.LVL24
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL15-1
	.llong	.LVL23
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	.LVL23
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL15-1
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.byte	0x2f
	.llong	.LVL22
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST16:
	.llong	.LVL16
	.llong	.LVL17
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL17
	.llong	.LVL21
	.2byte	0x2
	.byte	0x90
	.byte	0x2e
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL19
	.llong	.LVL20
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST18:
	.llong	.LFB7
	.llong	.LCFI19
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI19
	.llong	.LFE7
	.2byte	0x2
	.byte	0x7f
	.byte	0x38
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL27
	.llong	.LVL28
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x6b
	.byte	0x93
	.byte	0x4
	.llong	.LVL28
	.llong	.LVL39
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL39
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL27
	.llong	.LVL29-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.byte	0x4
	.byte	0x6d
	.byte	0x93
	.byte	0x4
	.llong	.LVL29-1
	.llong	.LVL40
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL40
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8c
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL27
	.llong	.LVL29-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.byte	0x4
	.byte	0x6f
	.byte	0x93
	.byte	0x4
	.llong	.LVL29-1
	.llong	.LVL38
	.2byte	0x1
	.byte	0x58
	.llong	.LVL38
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x8e
	.byte	0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL27
	.llong	.LVL29-1
	.2byte	0x2
	.byte	0x90
	.byte	0x20
	.llong	.LVL29-1
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.byte	0x30
	.llong	.LVL37
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL27
	.llong	.LVL29-1
	.2byte	0x2
	.byte	0x90
	.byte	0x22
	.llong	.LVL29-1
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.byte	0x2f
	.llong	.LVL36
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.byte	0x2
	.byte	0x90
	.byte	0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL30
	.llong	.LVL31
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL31
	.llong	.LVL35
	.2byte	0x2
	.byte	0x90
	.byte	0x2e
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL33
	.llong	.LVL34
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST26:
	.llong	.LFB3
	.llong	.LCFI25
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI25
	.llong	.LFE3
	.2byte	0x3
	.byte	0x7f
	.byte	0xb8,0x33
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL42
	.llong	.LVL43
	.2byte	0x2
	.byte	0x7a
	.byte	0
	.llong	.LVL44
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x3a
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL49
	.llong	.LVL50
	.2byte	0x1
	.byte	0x62
	.llong	.LVL50
	.llong	.LFE3
	.2byte	0x3
	.byte	0x91
	.byte	0x84,0x4d
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL69
	.llong	.LVL70
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL73
	.llong	.LVL74-1
	.2byte	0x2
	.byte	0x90
	.byte	0x23
	.llong	.LVL86
	.llong	.LVL87-1
	.2byte	0x2
	.byte	0x90
	.byte	0x23
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL49
	.llong	.LVL50
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.llong	.LVL80
	.llong	.LVL86
	.2byte	0x2
	.byte	0x90
	.byte	0x33
	.llong	0
	.llong	0
.LLST31:
	.llong	.LVL50
	.llong	.LVL51
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.llong	.LVL78
	.llong	.LVL82
	.2byte	0x2
	.byte	0x90
	.byte	0x36
	.llong	.LVL91
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x36
	.llong	0
	.llong	0
.LLST32:
	.llong	.LVL70
	.llong	.LVL71
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	.LVL71
	.llong	.LVL74-1
	.2byte	0x2
	.byte	0x90
	.byte	0x21
	.llong	.LVL86
	.llong	.LVL87-1
	.2byte	0x2
	.byte	0x90
	.byte	0x21
	.llong	0
	.llong	0
.LLST33:
	.llong	.LVL49
	.llong	.LVL50
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.llong	.LVL50
	.llong	.LVL51
	.2byte	0x2
	.byte	0x90
	.byte	0x32
	.llong	.LVL69
	.llong	.LVL78
	.2byte	0x2
	.byte	0x90
	.byte	0x32
	.llong	.LVL80
	.llong	.LVL81
	.2byte	0x2
	.byte	0x90
	.byte	0x32
	.llong	.LVL86
	.llong	.LVL91
	.2byte	0x2
	.byte	0x90
	.byte	0x32
	.llong	0
	.llong	0
.LLST34:
	.llong	.LVL66
	.llong	.LVL83
	.2byte	0x2
	.byte	0x90
	.byte	0x38
	.llong	.LVL86
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x38
	.llong	0
	.llong	0
.LLST35:
	.llong	.LVL52
	.llong	.LVL56
	.2byte	0x2
	.byte	0x90
	.byte	0x38
	.llong	.LVL56
	.llong	.LVL77
	.2byte	0xe
	.byte	0x91
	.byte	0x90,0x4d
	.byte	0x94
	.byte	0x4
	.byte	0x92
	.byte	0x36
	.byte	0
	.byte	0x22
	.byte	0x34
	.byte	0x26
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.llong	.LVL77
	.llong	.LVL78-1
	.2byte	0x10
	.byte	0x91
	.byte	0x90,0x4d
	.byte	0x94
	.byte	0x4
	.byte	0x91
	.byte	0xdc,0x4c
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x34
	.byte	0x26
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.llong	.LVL78-1
	.llong	.LVL79
	.2byte	0x10
	.byte	0x92
	.byte	0x36
	.byte	0
	.byte	0x91
	.byte	0x90,0x4d
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x34
	.byte	0x26
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.llong	.LVL86
	.llong	.LVL90
	.2byte	0xe
	.byte	0x91
	.byte	0x90,0x4d
	.byte	0x94
	.byte	0x4
	.byte	0x92
	.byte	0x36
	.byte	0
	.byte	0x22
	.byte	0x34
	.byte	0x26
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.llong	.LVL90
	.llong	.LVL91-1
	.2byte	0x10
	.byte	0x91
	.byte	0x90,0x4d
	.byte	0x94
	.byte	0x4
	.byte	0x91
	.byte	0xdc,0x4c
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x34
	.byte	0x26
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.llong	.LVL91-1
	.llong	.LFE3
	.2byte	0x10
	.byte	0x92
	.byte	0x36
	.byte	0
	.byte	0x91
	.byte	0x90,0x4d
	.byte	0x94
	.byte	0x4
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.byte	0x34
	.byte	0x26
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.llong	0
	.llong	0
.LLST36:
	.llong	.LVL60
	.llong	.LVL84
	.2byte	0x1
	.byte	0x58
	.llong	.LVL86
	.llong	.LFE3
	.2byte	0x1
	.byte	0x58
	.llong	0
	.llong	0
.LLST37:
	.llong	.LVL61
	.llong	.LVL85
	.2byte	0x2
	.byte	0x90
	.byte	0x58
	.llong	.LVL86
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.byte	0x58
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
	.llong	.LFB4
	.llong	.LFE4-.LFB4
	.llong	.LFB5
	.llong	.LFE5-.LFB5
	.llong	.LFB6
	.llong	.LFE6-.LFB6
	.llong	.LFB7
	.llong	.LFE7-.LFB7
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
	.llong	0
	.llong	0
	.llong	.LFB4
	.llong	.LFE4
	.llong	.LFB5
	.llong	.LFE5
	.llong	.LFB6
	.llong	.LFE6
	.llong	.LFB7
	.llong	.LFE7
	.llong	.LFB3
	.llong	.LFE3
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"",@progbits
.LASF0:
	.string	"hAddr_DDR"
.LASF1:
	.string	"GetTimerCount"
