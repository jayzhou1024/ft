	.file	"main.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.randomx_sp_cplx,"ax",@progbits
	.align	2
	.global	randomx_sp_cplx
	.type	randomx_sp_cplx, @function
randomx_sp_cplx:
.LFB4:
	.file 1 "../main.c"
	.loc 1 117 0
	.cfi_startproc
.LVL0:
		SMOVIL		-48, R6
		SMOVIL		-1, R7
	.loc 1 120 0
		SMOVIL		0, R42
	|	SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 48
		SLT		R42, R12, R0
	|	SADD.M1		-1,R12,R12
.LVL1:
	.cfi_offset 48, -32
	.cfi_offset 49, -28
	.loc 1 116 0
		SSHFLL		1, R12, R1
	|	SSTDW		R33:R32, *+AR15[2]
	.cfi_offset 50, -24
	.cfi_offset 51, -20
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
	.cfi_offset 46, -40
	.cfi_offset 47, -36
	.cfi_offset 52, -16
	.cfi_offset 53, -12
	.loc 1 116 0
		SLTU		R43, R1, R3
	|	SADD.M2		R11,R35,R8
	|	SMOV.M1		R10, R30
		SSHFLL		1, R2, R9
	|	SMOV.M2		R11, R31
	.loc 1 117 0
		SSTDW		R63:R62, *+AR15[5]
	;; condjump to .L1 occurs
	.cfi_offset 78, -8
	.cfi_offset 79, -4
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
	.loc 1 122 0 is_stmt 0 discriminator 2
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
	.loc 1 120 0 is_stmt 1 discriminator 2
		SEQ		R32, R33, R0
	|	SADD.M2		R31,R15,R31
	[R0]	SEQ		R31, R35, R0
	|	SMOV.M1		R32, R30
	.loc 1 122 0 discriminator 2
		SFSUBS32.M2		R37, R14, R17
	|	SADD.M1		4,R32,R32
		SNOP		2
		SFMULS32.M2		R17, R36, R18
		SNOP		1
	.loc 1 120 0 discriminator 2
	[!R0]	SBR		.L3
		SNOP		1
	.loc 1 122 0 discriminator 2
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
	.cfi_endproc
.LFE4:
	.size	randomx_sp_cplx, .-randomx_sp_cplx
	.section	.text.randomh_sp_cplx,"ax",@progbits
	.align	2
	.global	randomh_sp_cplx
	.type	randomh_sp_cplx, @function
randomh_sp_cplx:
.LFB5:
	.loc 1 126 0
	.cfi_startproc
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
.LCFI1:
	.cfi_def_cfa_offset 56
	.loc 1 129 0
		SSHFLR		31, R12, R44
	.cfi_offset 47, -40
		SADD.M1		R12,R44,R0
	|	SSHFLL		2, R12, R44
	|	SSTW		R31, *+AR15[4]
	.loc 1 126 0
		SSTW		R30, *+AR15[3]
	.cfi_offset 46, -44
	.loc 1 129 0
		SSHFAR		1, R0, R1
	|	SMVAAGL.M1		AR0, R31:R30
		SLT		R50, R1, R2
	.cfi_offset 52, -20
	.loc 1 127 0
		SFSUBD.M2	R47:R46, R51:R50, R9:R8
	|	SSTW		R36, *+AR15[9]
	.cfi_offset 50, -28
		SMVAAGH.M1		AR0, R31:R30
	|	SSTW		R34, *+AR15[7]
	.loc 1 126 0
		SNOP		1
	.loc 1 125 0
		SADD.M1		4,R30,R34
	.loc 1 126 0
		SSTW		R32, *+AR15[5]
	.cfi_offset 48, -36
	.cfi_offset 54, -12
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
	.cfi_offset 53, -16
	.cfi_offset 49, -32
	.loc 1 125 0
		SLTU		R34, R30, R37
	.loc 1 127 0
	[R2]	SFMULD.M2		R49:R48, R11:R10, R15:R14
	|	SADD.M1		R31,R37,R29
	.loc 1 126 0
		SSTW		R35, *+AR15[8]
		SSTDW		R63:R62, *+AR15[6]
	.cfi_offset 51, -24
	.cfi_offset 78, -8
	.cfi_offset 79, -4
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
	.loc 1 131 0 discriminator 2
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
	.loc 1 129 0 discriminator 2
		SEQ		R34, R35, R0
	|	SADD.M2		R31,R53,R31
	[R0]	SEQ		R31, R37, R0
	|	SADD.M1		-4,R32,R52
	.loc 1 131 0 discriminator 2
		SFMULS32.M2		R51, R38, R56
	|	SLTU		R52, R32, R54
	|	SADD.M1		-1,R33,R55
		SMOV.M2		R52, R32
	|	SADD.M1		R55,R54,R33
	.loc 1 125 0 discriminator 2
		SMVAGA36.M1		R33:R32, AR10
	|	SMOV.M2		R34, R30
		SNOP		1
	.loc 1 131 0 discriminator 2
		SFMULS32.M2		R56, R36, R57
	|	SADD.M1		4,R34,R34
	.loc 1 129 0 discriminator 2
	[!R0]	SBR		.L12
		SNOP		2
	.loc 1 131 0 discriminator 2
		SSTW		R57, *AR12
	|	SFSUBS32.M2		R57, R36, R58
	.loc 1 132 0 discriminator 2
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
	.cfi_endproc
.LFE5:
	.size	randomh_sp_cplx, .-randomh_sp_cplx
	.section	.text.get_time_cn,"ax",@progbits
	.align	2
	.global	get_time_cn
	.type	get_time_cn, @function
get_time_cn:
.LFB6:
	.loc 1 136 0
	.cfi_startproc
.LVL13:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI2:
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
.LVL14:
	.cfi_offset 46, -44
	.loc 1 138 0
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
	.loc 1 136 0
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L20, R62
	.cfi_offset 88, -24
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L20, R62
		SMOVIH4.L		.L20, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
	.cfi_offset 8, -32
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
	.cfi_endproc
.LFE6:
	.size	get_time_cn, .-get_time_cn
	.section	.text.get_time_vc,"ax",@progbits
	.align	2
	.global	get_time_vc
	.type	get_time_vc, @function
get_time_vc:
.LFB7:
	.loc 1 150 0
	.cfi_startproc
.LVL27:
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI3:
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
.LVL28:
	.cfi_offset 46, -44
	.loc 1 152 0
		SBR		GetTimerCount
	|	SSTW		R30, *+AR15[3]
	.loc 1 150 0
		SSTDW		R7:R6, *+AR15[4]
	|	SMOVIL		.L24, R62
	.cfi_offset 88, -24
		SMVAAGL.M2		AR8, R7:R6
	|	SMOVIH		.L24, R62
		SMOVIH4.L		.L24, R63
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
		SNOP		1
	.cfi_offset 8, -32
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
	.cfi_endproc
.LFE7:
	.size	get_time_vc, .-get_time_vc
	.section	.const.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Result Failure  max_pct_diff = %f"
.LC1:
	.string	"Result Successful "
.LC2:
	.string	"\tNX = %-3d\t  NH = %-2d\t cn_cycle:%-4d\t  vc_cycle:%-4d\t \n"
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB3:
	.loc 1 36 0
	.cfi_startproc
.LVL41:
		SMOVIL		-6568, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI4:
	.cfi_def_cfa_offset 6568
		SMOVIL		820, R6
		SMOVIL		0, R7
	|	SADD.LS		AR15,84,AR10
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
	.cfi_offset 14, -8
		SMOVIL		819, R6
	|	SMVAGA36.M2		R47:R46, AR12
		SMOVIL		0, R7
		SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		818, R6
		SMOVIL		0, R7
		SSTDW		R63:R62, *+AR15[OR15]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
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
		SMOVIL		817, R6
		SMOVIL		0, R7
	.cfi_offset 89, -24
		SMVAGA36.M1		R7:R6, OR15
	|	SMVAAGL.M2		OR8, R7:R6
		SNOP		1
		SMVAAGH.M2		OR8, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[OR15]
		SMOVIL		816, R6
		SMOVIL		0, R7
	.cfi_offset 88, -32
		SMVAGA36.M1		R7:R6, OR15
	|	SMVAAGL.M2		AR8, R7:R6
		SNOP		1
		SMVAAGH.M2		AR8, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[OR15]
		SMOVIL		815, R6
		SMOVIL		0, R7
	.cfi_offset 8, -40
		SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		814, R6
		SMOVIL		0, R7
		SSTDW		R41:R40, *+AR15[OR15]
	.cfi_offset 56, -48
	.cfi_offset 57, -44
		SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		813, R6
		SMOVIL		0, R7
		SSTDW		R39:R38, *+AR15[OR15]
	.cfi_offset 54, -56
	.cfi_offset 55, -52
		SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		812, R6
		SMOVIL		0, R7
		SSTDW		R37:R36, *+AR15[OR15]
	.cfi_offset 52, -64
	.cfi_offset 53, -60
		SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		811, R6
		SMOVIL		0, R7
		SSTDW		R35:R34, *+AR15[OR15]
	.cfi_offset 50, -72
	.cfi_offset 51, -68
		SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		810, R6
		SMOVIL		0, R7
		SSTDW		R33:R32, *+AR15[OR15]
		SMVAGA36.M2		R7:R6, OR15
		SNOP		1
		SSTDW		R31:R30, *+AR15[OR15]
	.cfi_offset 48, -80
	.cfi_offset 49, -76
	.cfi_offset 46, -88
	.cfi_offset 47, -84
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
		SMOVIL		0, R39
	.loc 1 46 0
	;; call to SetTimerPeriod occurs, with return value
		SMOVIL		210911779, R30
.LVL45:
.L61:
		SMOVIL.L		.LC2, R42
	.loc 1 47 0
		SBR		TimerStart
	|	SMOVIH.L		.LC2, R42
		SMOVIL		.L62, R62
		SMOVIH		.L62, R62
		SMOVIH4.L		.L62, R63
		SMOVIH4.L		.LC2, R43
		SMVAGA36.M2		R43:R42, OR9
	|	SMOVIL		0, R10
	;; call to TimerStart occurs, with return value
		SMOVIL		1002937505, R31
.LVL46:
.L62:
	.loc 1 49 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L63, R62
		SMOVIH		.L63, R62
		SMOVIH4.L		.L63, R63
	.loc 1 59 0
		SMOVIL		32, R40
	.loc 1 56 0
		SMOVIH		0, R39
	.loc 1 49 0
	;; call to GetTimerCount occurs, with return value
		SMOVIH		210911779, R30
.LVL47:
.L63:
		SBR		GetTimerCount
	|	SMOV.M2		R10, R41
	|	SMOVIL		0, R10
		SMOVIL		.L64, R62
		SMOVIH		.L64, R62
		SMOVIH4.L		.L64, R63
.LBB2:
	.loc 1 93 0
		SMOVIH		1002937505, R31
.LBE2:
	.loc 1 49 0
	;; call to GetTimerCount occurs, with return value
		SNOP		2
.LVL48:
.L64:
	.loc 1 36 0
		SMOVIL		1240, R44
	|	SSUB.M2		R10, R41, R41
.LVL49:
		SMOVIL		0, R45
		SMOVIL		216, R46
	|	SADDA.M2		R45:R44,AR15,OR11
		SMOVIL		0, R47
		SADDA.M1		R47:R46,AR15,OR12
	|	SMOVIL		2384, R44
	|	SADDA.M2		24,OR11,OR8
.LBB3:
	.loc 1 70 0
		SMOVIL		0, R45
		SADDA.M1		R45:R44,AR15,AR14
	|	SADDA.M2		-4,OR12,OR13
		SMVAAGL.M1		OR8, R3:R2
		SMVAAGL.M1		AR14, R9:R8
	|	SMVAAGL.M2		OR13, R47:R46
		SMVAAGH.M1		OR8, R3:R2
		SMVAAGH.M1		AR14, R9:R8
	|	SMVAAGH.M2		OR13, R47:R46
		SSTDW		R3:R2, *+AR15[9]
		SSTDW		R9:R8, *+AR15[8]
		SNOP		2
		SSTDW		R47:R46, *+AR15[7]
.LVL50:
.L29:
.LBE3:
	.loc 1 36 0 discriminator 1
		SADD.M2		15,R40,R3
	|	SLDDW		*+AR15[9], R33:R32
	|	SADD.M1		14,R40,R45
	|	SSHFLL		1, R40, R38
		SSHFAR		4, R3, R35
	|	SSTW		R45, *+AR15[13]
		SSHFAR		31, R3, R9
		SSHFLR		25, R35, R43
		SSHFLL		7, R9, R10
		SOR		R10, R43, R11
		SSTW		R11, *+AR15[12]
	|	SSHFLL		7, R35, R35
		SMOVIL		4, R34
.LVL51:
.L41:
.LBB4:
	.loc 1 36 0 is_stmt 0
		SLDW		*+AR15[13], R47
	|	SMOVIL		1240, R42
	|	SMOV.M2		R32, R36
	|	SMOV.M1		R33, R37
	.loc 1 65 0 is_stmt 1
		SMOVIL		0, R43
	|	SBR		memset
	;no-op trunc di R37:R36 to pdi R37:R36
		SADDA.M2		R43:R42,AR15,OR14
	|	SMOVIL		.L65, R62
		SMOVIH		.L65, R62
		SMVAAGL.M2		OR14, R11:R10
	|	SMOVIH4.L		.L65, R63
		SMOVIL		0, R12
	.loc 1 36 0
		SADD.M1		R34,R47,R13
	|	SMVAAGH.M2		OR14, R11:R10
	|	SMOVIL		1144, R14
	.loc 1 65 0
	;; call to memset occurs, with return value
		SSTW		R13, *+AR15[10]
	|	SMOVIL		0, R15
.LVL52:
.L65:
	.loc 1 61 0
		SLDW		*+AR15[10], R12
	|	SMOVIL		0, R15
	.loc 1 66 0
		SADD.LS		AR15,88,OR11
		SNOP		1
		SMVAAGL.M2		OR11, R11:R10
		SNOP		1
		SMVAAGH.M2		OR11, R11:R10
		SBR		memset
	|	SSHFAR		4, R12, R16
.LVL53:
		SSTW		R16, *+AR15[9]
	|	SMOVIL		.L66, R62
		SMOVIH		.L66, R62
		SMOVIH4.L		.L66, R63
	.loc 1 75 0
		SSHFLL		7, R16, R14
		SSTW		R14, *+AR15[11]
	|	SMOVIL		0, R12
	.loc 1 66 0
	;; call to memset occurs, with return value
		SMOVIL		128, R14
.LVL54:
.L66:
	.loc 1 69 0
		SMOVIL		216, R42
		SMOVIL		0, R43
	|	SBR		memset
		SADDA.M2		R43:R42,AR15,OR8
	|	SMOVIL		.L67, R62
		SMOVIH		.L67, R62
		SMVAAGL.M2		OR8, R11:R10
	|	SMOVIH4.L		.L67, R63
		SMOVIL		0, R12
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIL		1024, R14
	;; call to memset occurs, with return value
		SMOVIL		0, R15
.LVL55:
.L67:
	.loc 1 70 0
		SBR		memset
	|	SMOVIL		4096, R14
	|	SMVAAGL.M2		AR14, R11:R10
		SMOVIL		.L68, R62
		SMVAAGH.M2		AR14, R11:R10
	|	SMOVIH		.L68, R62
		SMOVIH4.L		.L68, R63
		SMOVIL		0, R12
		SMOVIL		0, R15
	;; call to memset occurs, with return value
		SNOP		1
.LVL56:
.L68:
	.loc 1 75 0
		SLDW		*+AR15[10], R15
		SLDW		*+AR15[9], R19
		SLDW		*+AR15[11], R10
		SNOP		3
		SBR		vmalloc
	|	SSHFAR		31, R15, R17
		SMOVIL		.L69, R62
		SMOVIH		.L69, R62
		SMOVIH4.L		.L69, R63
		SSHFLL		7, R17, R18
		SSHFLR		25, R19, R20
	;; call to vmalloc occurs, with return value
		SOR		R18, R20, R11
.LVL57:
.L69:
	.loc 1 76 0
		SBR		vmalloc
	|	SMVAGA36.M2		R11:R10, AR8
	|	SMOV.M1		R35, R10
	|	SLDW		*+AR15[12], R11
.LVL58:
		SMOVIL		.L70, R62
		SMOVIH		.L70, R62
		SMOVIH4.L		.L70, R63
	;; call to vmalloc occurs, with return value
		SNOP		3
.LVL59:
.L70:
	.loc 1 79 0
		SBR		randomx_sp_cplx
	|	SMVAGA36.M2		R37:R36, OR12
	|	SMOV.M1		R38, R12
	|	SMOVIL		1092616192, R14
	.loc 1 76 0
		SMVAGA36.M1		R11:R10, OR8
	|	SMOVIL		.L71, R62
.LVL60:
	.loc 1 79 0
		SMVAAGL.M1		OR12, R11:R10
	|	SMOVIH		.L71, R62
.LVL61:
		SMOVIH4.L		.L71, R63
		SMVAAGH.M2		OR12, R11:R10
	|	SMOVIH		1092616192, R14
	;; call to randomx_sp_cplx occurs
		SNOP		2
.LVL62:
.L71:
	.loc 1 80 0
		SBR		randomh_sp_cplx
	|	SADD.LS		AR15,88,OR13
	|	SSHFLL		1, R34, R12
		SMOVIL		.L72, R62
		SMVAAGL.M2		OR13, R11:R10
	|	SMOVIH		.L72, R62
		SMOVIH4.L		.L72, R63
		SMVAAGH.M2		OR13, R11:R10
	;; call to randomh_sp_cplx occurs
		SNOP		2
.LVL63:
.L72:
	.loc 1 82 0
		SMOVIL		1240, R42
	|	SMVAAGL.M2		AR8, R13:R12
	|	SLDW		*+AR15[11], R14
		SMOVIL		0, R43
	|	SBR		M7002_datatrans
		SADDA.M1		R43:R42,AR15,OR14
	|	SMVAAGH.M2		AR8, R13:R12
	|	SMOVIL		.L73, R62
		SMOVIH		.L73, R62
		SMVAAGL.M2		OR14, R11:R10
	|	SMOVIH4.L		.L73, R63
		SNOP		1
		SMVAAGH.M2		OR14, R11:R10
	;; call to M7002_datatrans occurs
		SNOP		1
.LVL64:
.L73:
	.loc 1 83 0
		SBR		M7002_datatrans
	|	SMOV.M1		R35, R14
	|	SMVAAGL.M2		AR14, R11:R10
		SMVAAGL.M1		OR8, R13:R12
	|	SMOVIL		.L74, R62
		SMVAAGH.M1		AR14, R11:R10
	|	SMOVIH		.L74, R62
		SMVAAGH.M1		OR8, R13:R12
	|	SMOVIH4.L		.L74, R63
	;; call to M7002_datatrans occurs
		SNOP		3
.LVL65:
.L74:
	.loc 1 84 0
		SBR		M7002_datatrans
	|	SADD.LS		AR15,88,OR11
	|	SMOVIL		0, R13
		SMOVIL		.L75, R62
		SMVAAGL.M2		OR11, R11:R10
	|	SMOVIH		.L75, R62
		SMOVIH4.L		.L75, R63
		SMVAAGH.M2		OR11, R11:R10
	|	SSHFLL		3, R34, R14
		SMOVIL		1074790400, R12
	;; call to M7002_datatrans occurs
		SMOVIH		1074790400, R12
.LVL66:
.L75:
	.loc 1 86 0
		SMOVIL		216, R42
	|	SMVAGA36.M2		R37:R36, OR12
	|	SADD.LS		AR15,88,OR13
	|	SMOV.M1		R34, R16
		SMOVIL		0, R43
	|	SBR		get_time_cn
	|	SMOV.M1		R40, R18
		SADDA.M1		R43:R42,AR15,OR14
	|	SMVAAGL.M2		OR12, R11:R10
	|	SMOVIL		.L76, R62
		SMVAAGL.M1		OR13, R13:R12
	|	SMOVIH		.L76, R62
		SMVAAGL.M1		OR14, R15:R14
	|	SMVAAGH.M2		OR12, R11:R10
	|	SMOVIH4.L		.L76, R63
		SMVAAGH.M1		OR13, R13:R12
		SMVAAGH.M1		OR14, R15:R14
	;; call to get_time_cn occurs, with return value
		SNOP		1
.LVL67:
.L76:
	.loc 1 87 0
		SBR		get_time_vc
	|	SMOV.M2		R34, R16
	|	SMOV.M1		R40, R18
	|	SMOVIL		0, R13
		SMVAAGL.M2		OR8, R15:R14
	|	SSUB.M1		R41, R10, R37
	|	SMOVIL		.L77, R62
.LVL68:
		SMVAAGL.M1		AR8, R11:R10
	|	SMOVIH		.L77, R62
		SMVAAGH.M1		OR8, R15:R14
	|	SMOVIH4.L		.L77, R63
		SMVAAGH.M1		AR8, R11:R10
	|	SMOVIL		1074790400, R12
		SMOVIH		1074790400, R12
	;; call to get_time_vc occurs, with return value
		SNOP		1
.LVL69:
.L77:
	.loc 1 89 0
		SBR		M7002_datatrans
	|	SMOV.M1		R35, R14
	|	SMVAAGL.M2		AR14, R13:R12
	.loc 1 87 0
		SSUB.M1		R41, R10, R36
	|	SMVAAGL.M2		OR8, R11:R10
	|	SMOVIL		.L78, R62
.LVL70:
	.loc 1 89 0
		SMVAAGH.M1		AR14, R13:R12
	|	SMOVIH		.L78, R62
		SMVAAGH.M1		OR8, R11:R10
	|	SMOVIH4.L		.L78, R63
	;; call to M7002_datatrans occurs
		SNOP		3
.LVL71:
.L78:
		SLDDW		*+AR15[7], R45:R44
	|	SMOVIL		0, R57
		SLDDW		*+AR15[8], R43:R42
	|	SMOVIL		1073741824, R54
	.loc 1 94 0
		SMOVIL		1120403456, R56
	.loc 1 97 0
		SMOVIL		-2147483648, R55
	.loc 1 91 0
		SMOVIL		0, R49
	.loc 1 93 0
		SMOVIH		0, R57
	.loc 1 94 0
		SMOVIH		1073741824, R54
		SMOVIH		1120403456, R56
	.loc 1 97 0
		SMOVIH		-2147483648, R55
.LVL72:
.L36:
		SADD.M1		4,R44,R21
	|	SMVAGA36.M2		R43:R42, AR12
	|	SMOVIL		0, R3
		SLTU		R21, R44, R50
	|	SMOV.M1		R21, R44
		SADD.M2		R45,R50,R45
	|	SMOVIH		0, R3
	.loc 1 36 0
		SMVAGA36.M2		R45:R44, AR10
		SNOP		1
	.loc 1 93 0
		SLDW		*AR10, R23
		SNOP		5
		SFSPDP32T.M2		R23, R25:R24
		SNOP		1
		SFABSD.M2		R25:R24, R47:R46
		SNOP		1
		SFDPSP32.M2		R47:R46, R25
		SNOP		2
		SFSPDP32T.M2		R25, R27:R26
		SNOP		1
		SFCMPGD.M2		R27:R26, R31:R30, R0
		SNOP		1
	[!R0]	SBR		.L31
		SNOP		6
	;; condjump to .L31 occurs
	.loc 1 93 0 is_stmt 0 discriminator 1
		SLDW		*AR12, R53
		SNOP		5
		SFSPDP32T.M2		R53, R29:R28
		SNOP		1
		SFABSD.M2		R29:R28, R47:R46
		SNOP		1
		SFDPSP32.M2		R47:R46, R27
		SNOP		2
		SFSPDP32T.M2		R27, R59:R58
		SNOP		1
		SFCMPGD.M2		R59:R58, R31:R30, R1
		SNOP		1
	[!R1]	SBR		.L31
		SNOP		6
	;; condjump to .L31 occurs
	.loc 1 94 0 is_stmt 1
		SFRCPS32.M1		R23, R29
	|	SFSUBS32.M2		R53, R23, R48
		SFMULS32.M1		R23, R29, R51
		SNOP		3
		SFSUBS32.M2		R51, R54, R52
		SNOP		2
		SFMULS32.M2		R29, R52, R59
		SNOP		3
		SFMULS32.M2		R23, R59, R60
		SNOP		3
		SFSUBS32.M2		R60, R54, R61
		SNOP		2
		SFMULS32.M2		R59, R61, R2
		SNOP		3
		SFMULS32.M2		R48, R2, R8
		SNOP		3
		SFMULS32.M2		R8, R56, R3
		SNOP		3
.LVL73:
	.loc 1 96 0
		SFCMPLS32.M2		R3, R57, R0
	|	SXOR		R55, R3, R46
	[!R0]	SBR		.L31
		SNOP		6
	;; condjump to .L31 occurs
	.loc 1 97 0
		SMOV.M2		R46, R3
.LVL74:
.L31:
	.loc 1 99 0
		SFCMPGS32.M2		R3, R39, R1
	|	SADD.M1		4,R42,R9
	[!R1]	SBR		.L35
	|	SADD.M2		1,R49,R49
	|	SLTU		R9, R42, R10
	|	SMOV.M1		R9, R42
	.loc 1 91 0
		SLT		R49, R38, R2
		SNOP		5
	.loc 1 99 0
	;; condjump to .L35 occurs
	.loc 1 100 0
		SMOV.M2		R3, R39
.LVL75:
.L35:
	.loc 1 91 0
	[R2]	SBR		.L36
	|	SADD.M2		R43,R10,R43
		SNOP		6
	;; condjump to .L36 occurs
	.loc 1 103 0
		SFSPDP32T.M2		R39, R43:R42
	|	SMOVIL		-1717986918, R44
		SMOVIL		1068079513, R45
		SMOVIH		-1717986918, R44
		SMOVIH		1068079513, R45
		SFCMPGD.M2		R43:R42, R45:R44, R0
		SNOP		1
	[!R0]	SBR		.L37
	|	SMOVIL		2139095039, R44
		SMOVIH		2139095039, R44
		SNOP		5
	;; condjump to .L37 occurs
	.loc 1 103 0 is_stmt 0 discriminator 1
		SFCMPLS32.M2		R39, R44, R1
	[R1]	SBR		.L58
		SNOP		6
	;; condjump to .L58 occurs
.L37:
	.loc 1 107 0 is_stmt 1
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
.LVL76:
.L79:
	.loc 1 109 0
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L80, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L80, R62
		SMOVIH4.L		.L80, R63
	;; call to vfree occurs
		SNOP		3
.LVL77:
.L80:
	.loc 1 110 0
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L81, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L81, R62
		SMOVIH4.L		.L81, R63
	;; call to vfree occurs
		SNOP		3
.LVL78:
.L81:
	.loc 1 111 0
		SMVAAGL.M2		OR9, R43:R42
	|	SSUB.M1		R41, R37, R45
	|	SSTW		R34, *+AR15[5]
		SSUB.M1		R41, R36, R11
	|	SSTW		R40, *+AR15[4]
		SMVAAGH.M2		OR9, R43:R42
	|	SADD.M1		4,R34,R34
.LBE4:
	.loc 1 60 0
		SNOP		1
.LBB5:
	.loc 1 111 0
		SBR		printf
	|	SSTDW		R43:R42, *+AR15[1]
		SSTW		R45, *+AR15[6]
	|	SMOVIL		.L82, R62
		SMOVIH		.L82, R62
		SMOVIH4.L		.L82, R63
		SSTW		R11, *+AR15[7]
	;; call to printf occurs, with return value
		SNOP		2
.LVL79:
.L82:
.LBE5:
	.loc 1 60 0
		SMOVIL		20, R13
	|	SADDU.M2		32,R32,R47
		SEQ		R13, R34, R2
	[!R2]	SBR		.L41
	|	SLTU		R47, R32, R12
	|	SMOV.M2		R47, R32
		SADD.M2		R33,R12,R33
		SNOP		5
	;; condjump to .L41 occurs
.L59:
	.loc 1 59 0
		SADD.M2		8,R40,R40
	|	SMOVIL		136, R32
.LVL80:
		SEQ		R32, R40, R0
	[!R0]	SBR		.L29
		SNOP		6
	;; condjump to .L29 occurs
	.loc 1 114 0
		SMOVIL		810, R6
		SMOVIL		0, R7
		SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		811, R6
		SMOVIL		0, R7
		SLDDW		*+AR15[OR15], R31:R30
	|	SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		812, R6
		SMOVIL		0, R7
		SLDDW		*+AR15[OR15], R33:R32
	|	SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		813, R6
		SMOVIL		0, R7
		SLDDW		*+AR15[OR15], R35:R34
	|	SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		814, R6
.LVL81:
		SMOVIL		0, R7
		SLDDW		*+AR15[OR15], R37:R36
	|	SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		815, R6
.LVL82:
		SMOVIL		0, R7
		SLDDW		*+AR15[OR15], R39:R38
	|	SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		816, R6
		SMOVIL		0, R7
		SLDDW		*+AR15[OR15], R41:R40
	|	SMVAGA36.M2		R7:R6, OR15
.LVL83:
		SNOP		1
		SLDDW		*+AR15[OR15], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, AR8
	|	SMOVIL		817, R6
.LVL84:
		SMOVIL		0, R7
		SMVAGA36.M2		R7:R6, OR15
		SNOP		1
		SLDDW		*+AR15[OR15], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR8
	|	SMOVIL		818, R6
.LVL85:
		SMOVIL		0, R7
		SMVAGA36.M2		R7:R6, OR15
		SNOP		1
		SLDDW		*+AR15[OR15], R7:R6
		SNOP		5
		SMVAGA36.M2		R7:R6, OR9
	|	SMOVIL		819, R6
		SMOVIL		0, R7
		SMVAGA36.M2		R7:R6, OR15
	|	SMOVIL		820, R6
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
	|	SMOVIL		6568, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		4
	;; return occurs
.LVL86:
.L58:
.LBB6:
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
	;; call to vfree occurs
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
	;; call to vfree occurs
		SNOP		3
.LVL89:
.L85:
	.loc 1 111 0
		SMVAAGL.M2		OR9, R43:R42
	|	SSUB.M1		R41, R37, R45
	|	SSTW		R34, *+AR15[5]
		SSUB.M1		R41, R36, R11
	|	SSTW		R40, *+AR15[4]
		SMVAAGH.M2		OR9, R43:R42
	|	SADD.M1		4,R34,R34
.LBE6:
	.loc 1 60 0
		SNOP		1
.LBB7:
	.loc 1 111 0
		SBR		printf
	|	SSTDW		R43:R42, *+AR15[1]
		SSTW		R45, *+AR15[6]
	|	SMOVIL		.L86, R62
		SMOVIH		.L86, R62
		SMOVIH4.L		.L86, R63
		SSTW		R11, *+AR15[7]
	;; call to printf occurs, with return value
		SNOP		2
.LVL90:
.L86:
.LBE7:
	.loc 1 60 0
		SMOVIL		20, R13
	|	SADDU.M2		32,R32,R47
		SEQ		R13, R34, R2
	[!R2]	SBR		.L41
	|	SLTU		R47, R32, R12
	|	SMOV.M2		R47, R32
		SADD.M2		R33,R12,R33
		SNOP		5
	;; condjump to .L41 occurs
		SBR		.L59
		SNOP		6
	;; jump to .L59 occurs
	.cfi_endproc
.LFE3:
	.size	main, .-main
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x87c
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x1
	.4byte	.LASF45
	.4byte	.LASF46
	.4byte	.Ldebug_ranges0+0x70
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x8
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
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF16
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST0
	.byte	0x1
	.4byte	0xfe
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x74
	.4byte	0xfe
	.4byte	.LLST1
	.uleb128 0x6
	.string	"N"
	.byte	0x1
	.byte	0x74
	.4byte	0x70
	.4byte	.LLST2
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x74
	.4byte	0x31
	.4byte	.LLST3
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x76
	.4byte	0x31
	.byte	0x4
	.4byte	0x4e800000
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x77
	.4byte	0x70
	.4byte	.LLST4
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.4byte	0x31
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF17
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x16f
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x1
	.byte	0x7d
	.4byte	0xfe
	.4byte	.LLST6
	.uleb128 0x6
	.string	"N"
	.byte	0x1
	.byte	0x7d
	.4byte	0x70
	.4byte	.LLST7
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0x7f
	.4byte	0x31
	.byte	0x4
	.4byte	0x4f000000
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0x7f
	.4byte	0x31
	.4byte	.LLST8
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x80
	.4byte	0x70
	.4byte	.LLST9
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.4byte	0x5b
	.llong	.LFB6
	.llong	.LFE6
	.4byte	.LLST10
	.byte	0x1
	.4byte	0x26c
	.uleb128 0x6
	.string	"x"
	.byte	0x1
	.byte	0x88
	.4byte	0x26c
	.4byte	.LLST11
	.uleb128 0x6
	.string	"h"
	.byte	0x1
	.byte	0x88
	.4byte	0x26c
	.4byte	.LLST12
	.uleb128 0x6
	.string	"r"
	.byte	0x1
	.byte	0x88
	.4byte	0xfe
	.4byte	.LLST13
	.uleb128 0x6
	.string	"nh"
	.byte	0x1
	.byte	0x88
	.4byte	0x70
	.4byte	.LLST14
	.uleb128 0x6
	.string	"ny"
	.byte	0x1
	.byte	0x88
	.4byte	0x70
	.4byte	.LLST15
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x89
	.4byte	0x5b
	.4byte	.LLST16
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x89
	.4byte	0x5b
	.4byte	.LLST17
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0x31
	.4byte	0x70
	.byte	0x1
	.4byte	0x209
	.uleb128 0xd
	.byte	0
	.uleb128 0xe
	.llong	.LVL15
	.4byte	0x21c
	.uleb128 0xf
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.llong	.LVL18
	.4byte	0x25c
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x3
	.byte	0x92
	.uleb128 0x2f
	.sleb128 0
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.uleb128 0xf
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
	.uleb128 0xf
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
	.uleb128 0xf
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
	.uleb128 0x10
	.llong	.LVL19
	.uleb128 0xf
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.4byte	0x272
	.uleb128 0x11
	.4byte	0x31
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF24
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.4byte	0x5b
	.llong	.LFB7
	.llong	.LFE7
	.4byte	.LLST18
	.byte	0x1
	.4byte	0x38d
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x1
	.byte	0x91
	.4byte	0x39a
	.4byte	.LLST19
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x1
	.byte	0x92
	.4byte	0x3a0
	.4byte	.LLST20
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x1
	.byte	0x93
	.4byte	0x39a
	.4byte	.LLST21
	.uleb128 0x6
	.string	"nh"
	.byte	0x1
	.byte	0x94
	.4byte	0x70
	.4byte	.LLST22
	.uleb128 0x6
	.string	"nr"
	.byte	0x1
	.byte	0x95
	.4byte	0x70
	.4byte	.LLST23
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x97
	.4byte	0x5b
	.4byte	.LLST24
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x97
	.4byte	0x5b
	.4byte	.LLST25
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0x31
	.4byte	0x70
	.byte	0x1
	.4byte	0x317
	.uleb128 0xd
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF29
	.byte	0x1
	.byte	0x99
	.4byte	0x70
	.byte	0x1
	.4byte	0x32a
	.uleb128 0xd
	.byte	0
	.uleb128 0xe
	.llong	.LVL29
	.4byte	0x33d
	.uleb128 0xf
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.llong	.LVL32
	.4byte	0x37d
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x3
	.byte	0x92
	.uleb128 0x2f
	.sleb128 0
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.uleb128 0xf
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
	.uleb128 0xf
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
	.uleb128 0xf
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
	.uleb128 0x10
	.llong	.LVL33
	.uleb128 0xf
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	0x38
	.4byte	0x39a
	.uleb128 0x13
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.4byte	0x38d
	.uleb128 0x9
	.byte	0x8
	.4byte	0x38
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF47
	.byte	0x1
	.byte	0x24
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST26
	.byte	0x1
	.4byte	0x836
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.byte	0x25
	.4byte	0x836
	.4byte	0x40140004
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.byte	0x26
	.4byte	0x836
	.4byte	0x40140000
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0x27
	.4byte	0x83c
	.4byte	.LLST27
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0x2e
	.4byte	0x70
	.byte	0x1
	.4byte	0x407
	.uleb128 0xd
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF34
	.byte	0x1
	.byte	0x2f
	.4byte	0x70
	.byte	0x1
	.4byte	0x41a
	.uleb128 0xd
	.byte	0
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x1
	.byte	0x31
	.4byte	0x5b
	.byte	0x2
	.byte	0x90
	.uleb128 0x39
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0x31
	.4byte	0x70
	.byte	0x1
	.4byte	0x43b
	.uleb128 0xd
	.byte	0
	.uleb128 0x16
	.4byte	.LASF18
	.byte	0x1
	.byte	0x33
	.4byte	0x841
	.byte	0x3
	.byte	0x91
	.sleb128 -6480
	.uleb128 0x16
	.4byte	.LASF36
	.byte	0x1
	.byte	0x34
	.4byte	0x851
	.byte	0x3
	.byte	0x91
	.sleb128 -5328
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0x1
	.byte	0x35
	.4byte	0x862
	.byte	0x3
	.byte	0x91
	.sleb128 -4184
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x1
	.byte	0x36
	.4byte	0x873
	.byte	0x3
	.byte	0x91
	.sleb128 -6352
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x37
	.4byte	0x70
	.4byte	.LLST28
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.byte	0x37
	.4byte	0x70
	.byte	0x1
	.uleb128 0x8
	.string	"ny"
	.byte	0x1
	.byte	0x37
	.4byte	0x70
	.4byte	.LLST29
	.uleb128 0x8
	.string	"nh"
	.byte	0x1
	.byte	0x37
	.4byte	0x70
	.4byte	.LLST30
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x1
	.byte	0x38
	.4byte	0x31
	.4byte	.LLST31
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x1
	.byte	0x38
	.4byte	0x31
	.4byte	.LLST32
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0x1
	.byte	0x39
	.4byte	0x5b
	.byte	0x2
	.byte	0x90
	.uleb128 0x35
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x1
	.byte	0x39
	.4byte	0x5b
	.4byte	.LLST33
	.uleb128 0x18
	.4byte	.Ldebug_ranges0+0
	.4byte	0x7e7
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x1
	.byte	0x3d
	.4byte	0x70
	.4byte	.LLST34
	.uleb128 0x19
	.4byte	.LASF48
	.byte	0x1
	.byte	0x3e
	.4byte	0x70
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x4a
	.4byte	0x39a
	.4byte	.LLST35
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4a
	.4byte	0x39a
	.4byte	.LLST36
	.uleb128 0x15
	.4byte	.LASF26
	.byte	0x1
	.byte	0x4d
	.4byte	0x3a0
	.4byte	0x40100000
	.uleb128 0xe
	.llong	.LVL52
	.4byte	0x548
	.uleb128 0xf
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.llong	.LVL54
	.4byte	0x567
	.uleb128 0xf
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -6480
	.byte	0
	.uleb128 0xe
	.llong	.LVL55
	.4byte	0x586
	.uleb128 0xf
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
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
	.uleb128 0xe
	.llong	.LVL56
	.4byte	0x5a4
	.uleb128 0xf
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.uleb128 0xf
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
	.uleb128 0xe
	.llong	.LVL62
	.4byte	0x5c5
	.uleb128 0xf
	.byte	0x1
	.byte	0x6c
	.byte	0x3
	.byte	0x92
	.uleb128 0x36
	.sleb128 0
	.uleb128 0xf
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.llong	.LVL63
	.4byte	0x5e8
	.uleb128 0xf
	.byte	0x1
	.byte	0x6c
	.byte	0x5
	.byte	0x92
	.uleb128 0x32
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.uleb128 0xf
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -6480
	.byte	0
	.uleb128 0xe
	.llong	.LVL64
	.4byte	0x60a
	.uleb128 0xf
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.byte	0x91
	.sleb128 -6524
	.byte	0x94
	.byte	0x4
	.uleb128 0xf
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
	.uleb128 0xe
	.llong	.LVL65
	.4byte	0x636
	.uleb128 0xf
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0x92
	.uleb128 0x33
	.sleb128 0
	.uleb128 0xf
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
	.uleb128 0xf
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
	.uleb128 0xe
	.llong	.LVL66
	.4byte	0x659
	.uleb128 0xf
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.byte	0x92
	.uleb128 0x32
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.uleb128 0xf
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -6480
	.byte	0
	.uleb128 0xe
	.llong	.LVL67
	.4byte	0x68f
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x3
	.byte	0x92
	.uleb128 0x38
	.sleb128 0
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x32
	.sleb128 0
	.uleb128 0xf
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x91
	.sleb128 -6480
	.uleb128 0xf
	.byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.llong	.LVL69
	.4byte	0x6c4
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x3
	.byte	0x92
	.uleb128 0x38
	.sleb128 0
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x32
	.sleb128 0
	.uleb128 0xf
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
	.uleb128 0xf
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
	.uleb128 0xe
	.llong	.LVL71
	.4byte	0x6f0
	.uleb128 0xf
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0x92
	.uleb128 0x33
	.sleb128 0
	.uleb128 0xf
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
	.uleb128 0xf
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
	.uleb128 0xe
	.llong	.LVL77
	.4byte	0x709
	.uleb128 0xf
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
	.uleb128 0xe
	.llong	.LVL78
	.4byte	0x723
	.uleb128 0xf
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
	.uleb128 0xe
	.llong	.LVL79
	.4byte	0x761
	.uleb128 0xf
	.byte	0x2
	.byte	0x7f
	.sleb128 28
	.byte	0x7
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.byte	0x92
	.uleb128 0x39
	.sleb128 0
	.byte	0x1c
	.uleb128 0xf
	.byte	0x2
	.byte	0x7f
	.sleb128 24
	.byte	0x7
	.byte	0x92
	.uleb128 0x35
	.sleb128 0
	.byte	0x92
	.uleb128 0x39
	.sleb128 0
	.byte	0x1c
	.uleb128 0xf
	.byte	0x2
	.byte	0x7f
	.sleb128 20
	.byte	0x3
	.byte	0x92
	.uleb128 0x32
	.sleb128 -4
	.uleb128 0xf
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x3
	.byte	0x92
	.uleb128 0x38
	.sleb128 0
	.uleb128 0xf
	.byte	0x2
	.byte	0x7f
	.sleb128 8
	.byte	0x3
	.byte	0x92
	.uleb128 0x59
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.llong	.LVL87
	.4byte	0x779
	.uleb128 0xf
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x5
	.byte	0xf5
	.uleb128 0x37
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.byte	0
	.uleb128 0xe
	.llong	.LVL88
	.4byte	0x792
	.uleb128 0xf
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
	.uleb128 0xe
	.llong	.LVL89
	.4byte	0x7ac
	.uleb128 0xf
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
	.uleb128 0x10
	.llong	.LVL90
	.uleb128 0xf
	.byte	0x2
	.byte	0x7f
	.sleb128 28
	.byte	0x7
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.byte	0x92
	.uleb128 0x39
	.sleb128 0
	.byte	0x1c
	.uleb128 0xf
	.byte	0x2
	.byte	0x7f
	.sleb128 24
	.byte	0x7
	.byte	0x92
	.uleb128 0x35
	.sleb128 0
	.byte	0x92
	.uleb128 0x39
	.sleb128 0
	.byte	0x1c
	.uleb128 0xf
	.byte	0x2
	.byte	0x7f
	.sleb128 20
	.byte	0x3
	.byte	0x92
	.uleb128 0x32
	.sleb128 -4
	.uleb128 0xf
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x3
	.byte	0x92
	.uleb128 0x38
	.sleb128 0
	.uleb128 0xf
	.byte	0x2
	.byte	0x7f
	.sleb128 8
	.byte	0x3
	.byte	0x92
	.uleb128 0x59
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.llong	.LVL45
	.4byte	0x800
	.uleb128 0xf
	.byte	0x1
	.byte	0x6c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0xf
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.llong	.LVL46
	.4byte	0x813
	.uleb128 0xf
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.llong	.LVL47
	.4byte	0x826
	.uleb128 0xf
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.llong	.LVL48
	.uleb128 0xf
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.4byte	0x70
	.uleb128 0x1a
	.4byte	0x70
	.uleb128 0x1b
	.4byte	0x31
	.4byte	0x851
	.uleb128 0x1c
	.4byte	0x85
	.byte	0x1f
	.byte	0
	.uleb128 0x1b
	.4byte	0x31
	.4byte	0x862
	.uleb128 0x1d
	.4byte	0x85
	.2byte	0x11d
	.byte	0
	.uleb128 0x1b
	.4byte	0x31
	.4byte	0x873
	.uleb128 0x1d
	.4byte	0x85
	.2byte	0x3ff
	.byte	0
	.uleb128 0x1e
	.4byte	0x31
	.uleb128 0x1c
	.4byte	0x85
	.byte	0xff
	.byte	0
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
	.uleb128 0x2116
	.uleb128 0xc
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.sleb128 48
	.llong	0
	.llong	0
.LLST1:
	.llong	.LVL0
	.llong	.LVL2
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL2
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
	.llong	.LVL1
	.2byte	0x1
	.byte	0x6c
	.llong	.LVL1
	.llong	.LVL3
	.2byte	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.llong	.LVL3
	.llong	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
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
	.uleb128 0x32
	.llong	.LVL5
	.llong	.LFE4
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x1e
	.uleb128 0x31
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
.LLST6:
	.llong	.LVL6
	.llong	.LVL7
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL7
	.llong	.LVL10
	.2byte	0x1
	.byte	0x50
	.llong	.LVL10
	.llong	.LFE5
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
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
	.sleb128 1
	.byte	0x9f
	.llong	.LVL10
	.llong	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x6c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST8:
	.llong	.LVL9
	.llong	.LVL12
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
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
	.llong	.LCFI2
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI2
	.llong	.LFE6
	.2byte	0x2
	.byte	0x7f
	.sleb128 56
	.llong	0
	.llong	0
.LLST11:
	.llong	.LVL13
	.llong	.LVL14
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL14
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL25
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST12:
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL15-1
	.llong	.LVL26
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL26
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST13:
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL15-1
	.llong	.LVL24
	.2byte	0x1
	.byte	0x58
	.llong	.LVL24
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST14:
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL15-1
	.llong	.LVL23
	.2byte	0x2
	.byte	0x90
	.uleb128 0x30
	.llong	.LVL23
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST15:
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL15-1
	.llong	.LVL22
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2f
	.llong	.LVL22
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
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
	.uleb128 0x2e
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
	.llong	.LCFI3
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI3
	.llong	.LFE7
	.2byte	0x2
	.byte	0x7f
	.sleb128 56
	.llong	0
	.llong	0
.LLST19:
	.llong	.LVL27
	.llong	.LVL28
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL28
	.llong	.LVL39
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL39
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST20:
	.llong	.LVL27
	.llong	.LVL29-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL29-1
	.llong	.LVL40
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL40
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL27
	.llong	.LVL29-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL29-1
	.llong	.LVL38
	.2byte	0x1
	.byte	0x58
	.llong	.LVL38
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL27
	.llong	.LVL29-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL29-1
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.uleb128 0x30
	.llong	.LVL37
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL27
	.llong	.LVL29-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL29-1
	.llong	.LVL36
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2f
	.llong	.LVL36
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
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
	.uleb128 0x2e
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
	.llong	.LCFI4
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI4
	.llong	.LFE3
	.2byte	0x3
	.byte	0x7f
	.sleb128 6568
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL42
	.llong	.LVL43
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.llong	.LVL44
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL71
	.llong	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL75
	.llong	.LVL76-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
	.llong	.LVL86
	.llong	.LVL87-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL49
	.llong	.LVL50
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.llong	.LVL80
	.llong	.LVL83
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.llong	.LVL83
	.llong	.LVL86
	.2byte	0x8
	.byte	0x91
	.sleb128 -6516
	.byte	0x94
	.byte	0x4
	.byte	0x36
	.byte	0x1c
	.byte	0x9f
	.llong	0
	.llong	0
.LLST30:
	.llong	.LVL50
	.llong	.LVL51
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.llong	.LVL79
	.llong	.LVL81
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	.LVL90
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	0
	.llong	0
.LLST31:
	.llong	.LVL72
	.llong	.LVL73
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL73
	.llong	.LVL76-1
	.2byte	0x1
	.byte	0x63
	.llong	.LVL86
	.llong	.LVL87-1
	.2byte	0x1
	.byte	0x63
	.llong	0
	.llong	0
.LLST32:
	.llong	.LVL49
	.llong	.LVL50
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL50
	.llong	.LVL51
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.llong	.LVL71
	.llong	.LVL79
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.llong	.LVL80
	.llong	.LVL90
	.2byte	0x2
	.byte	0x90
	.uleb128 0x37
	.llong	0
	.llong	0
.LLST33:
	.llong	.LVL70
	.llong	.LVL82
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.llong	.LVL86
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.llong	0
	.llong	0
.LLST34:
	.llong	.LVL53
	.llong	.LVL54-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL54-1
	.llong	.LFE3
	.2byte	0x8
	.byte	0x91
	.sleb128 -6528
	.byte	0x94
	.byte	0x4
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.llong	0
	.llong	0
.LLST35:
	.llong	.LVL58
	.llong	.LVL84
	.2byte	0x1
	.byte	0x58
	.llong	.LVL86
	.llong	.LFE3
	.2byte	0x1
	.byte	0x58
	.llong	0
	.llong	0
.LLST36:
	.llong	.LVL60
	.llong	.LVL61
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL61
	.llong	.LVL85
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL86
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
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
	.llong	.LBB5
	.llong	.LBE5
	.llong	.LBB6
	.llong	.LBE6
	.llong	.LBB7
	.llong	.LBE7
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
	.section	.debug_str,"MS",@progbits,1
.LASF48:
	.string	"vecr_len"
.LASF46:
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSPF_sp_fir_cplx/test/vector_c/Debug"
.LASF19:
	.string	"frand_max"
.LASF25:
	.string	"xAddr"
.LASF26:
	.string	"hAddr"
.LASF39:
	.string	"pct_diff"
.LASF38:
	.string	"rAddr_DDR_cn"
.LASF0:
	.string	"float"
.LASF9:
	.string	"long long int"
.LASF3:
	.string	"unsigned char"
.LASF13:
	.string	"tempx"
.LASF17:
	.string	"randomh_sp_cplx"
.LASF40:
	.string	"max_pct_diff"
.LASF6:
	.string	"long unsigned int"
.LASF34:
	.string	"TimerStart"
.LASF4:
	.string	"short unsigned int"
.LASF36:
	.string	"xAddr_DDR"
.LASF33:
	.string	"SetTimerPeriod"
.LASF15:
	.string	"rand_midpoint"
.LASF1:
	.string	"double"
.LASF43:
	.string	"vecx_len"
.LASF28:
	.string	"GetTimerCount"
.LASF18:
	.string	"hAddr_DDR"
.LASF16:
	.string	"randomx_sp_cplx"
.LASF20:
	.string	"pair_sum"
.LASF47:
	.string	"main"
.LASF5:
	.string	"unsigned int"
.LASF42:
	.string	"time_vc"
.LASF2:
	.string	"long long unsigned int"
.LASF30:
	.string	"cache"
.LASF32:
	.string	"cache_ok"
.LASF37:
	.string	"rAddr_DDR_vc"
.LASF27:
	.string	"rAddr"
.LASF11:
	.string	"sizetype"
.LASF14:
	.string	"factor"
.LASF41:
	.string	"time_cn"
.LASF12:
	.string	"char"
.LASF44:
	.string	"GNU C 4.7.0"
.LASF45:
	.string	"../main.c"
.LASF8:
	.string	"short int"
.LASF21:
	.string	"time1"
.LASF22:
	.string	"time2"
.LASF31:
	.string	"cache1"
.LASF24:
	.string	"get_time_vc"
.LASF10:
	.string	"long int"
.LASF23:
	.string	"get_time_cn"
.LASF7:
	.string	"signed char"
.LASF35:
	.string	"c_time"
.LASF29:
	.string	"DSPF_sp_fir_cplx_vc"
