	.file	"main.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.random_x_sp,"ax",@progbits
	.align	2
	.global	random_x_sp
	.type	random_x_sp, @function
random_x_sp:
.LFB4:
	.file 1 "../main.c"
	.loc 1 94 0
	.cfi_startproc
.LVL0:
		SMOVIL		-48, R6
		SMOVIL		-1, R7
	.loc 1 97 0
		SMOVIL		0, R42
	|	SADDA.M2		R7:R6,AR15,AR15
.LCFI0:
	.cfi_def_cfa_offset 48
		SLT		R42, R12, R0
	|	SADD.M1		-1,R12,R12
.LVL1:
	.cfi_offset 48, -32
	.cfi_offset 49, -28
	.loc 1 94 0
		SSHFLL		1, R12, R1
	|	SSTDW		R33:R32, *+AR15[2]
	.cfi_offset 50, -24
	.cfi_offset 51, -20
		SSHFLL		2, R12, R43
	|	SADD.M2		4,R10,R32
	|	SSTDW		R35:R34, *+AR15[3]
	.loc 1 97 0
	[!R0]	SBR		.L1
	|	SLTU		R1, R12, R2
	|	SADD.M2		R43,R32,R33
	|	SMOV.M1		R14, R34
	.loc 1 94 0
		SLTU		R32, R10, R35
		SSTDW		R31:R30, *+AR15[1]
		SSTDW		R37:R36, *+AR15[4]
	.cfi_offset 46, -40
	.cfi_offset 47, -36
	.cfi_offset 52, -16
	.cfi_offset 53, -12
		SLTU		R43, R1, R3
	|	SADD.M2		R11,R35,R8
	|	SMOV.M1		R10, R30
		SSHFLL		1, R2, R9
	|	SMOV.M2		R11, R31
		SSTDW		R63:R62, *+AR15[5]
	;; condjump to .L1 occurs
	.cfi_offset 78, -8
	.cfi_offset 79, -4
	.loc 1 94 0
		SADD.M2		R9,R3,R10
	|	SMOVIL		1317011456, R37
.LVL2:
		SLTU		R33, R32, R11
	|	SADD.M2		R10,R8,R13
	.loc 1 98 0
		SMOVIL		813694976, R36
	|	SADD.M2		R13,R11,R35
		SMOVIH		1317011456, R37
		SMOVIH		813694976, R36
.LVL3:
.L3:
	.loc 1 98 0 is_stmt 0 discriminator 2
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
	.loc 1 97 0 is_stmt 1 discriminator 2
		SEQ		R32, R33, R0
	|	SADD.M2		R31,R15,R31
	[R0]	SEQ		R31, R35, R0
	|	SMOV.M1		R32, R30
	.loc 1 98 0 discriminator 2
		SFSUBS32.M2		R37, R14, R17
	|	SADD.M1		4,R32,R32
		SNOP		2
		SFMULS32.M2		R17, R36, R18
		SNOP		1
	.loc 1 97 0 discriminator 2
	[!R0]	SBR		.L3
		SNOP		1
	.loc 1 98 0 discriminator 2
		SFMULS32.M2		R18, R34, R19
		SNOP		3
		SSTW		R19, *AR10
	;; condjump to .L3 occurs
.L1:
	.loc 1 100 0
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
	.size	random_x_sp, .-random_x_sp
	.section	.text.random_h_sp,"ax",@progbits
	.align	2
	.global	random_h_sp
	.type	random_h_sp, @function
random_h_sp:
.LFB5:
	.loc 1 102 0
	.cfi_startproc
.LVL6:
	.loc 1 104 0
		SFINTD.M2		R12,R49:R48
	|	SMOVIL		1073741824, R51
	|	SMVAGA36.M1		R11:R10, AR0
	.loc 1 105 0
		SMOVIL		0, R50
	|	SADD.M2		-1,R12,R1
	.loc 1 104 0
		SMOVIH		1073741824, R51
	.loc 1 102 0
		SMOVIL		-56, R6
	.loc 1 104 0
		SFRCPD.M2		R49:R48, R43:R42
	|	SMOVIL		-1, R7
	.loc 1 102 0
		SADDA.M1		R7:R6,AR15,AR15
.LCFI1:
	.cfi_def_cfa_offset 56
	.loc 1 104 0
		SFMULD.M1		R49:R48, R43:R42, R47:R46
	|	SLT		R50, R12, R0
	.cfi_offset 47, -40
	.loc 1 102 0
		SSHFLL		2, R12, R44
	|	SSTW		R31, *+AR15[4]
		SSTW		R30, *+AR15[3]
	.cfi_offset 46, -44
		SMVAAGL.M2		AR0, R31:R30
		SNOP		1
	.cfi_offset 52, -20
		SMVAAGH.M1		AR0, R31:R30
	|	SSTW		R36, *+AR15[9]
	.cfi_offset 50, -28
	.loc 1 104 0
		SFSUBD.M1	R47:R46, R51:R50, R3:R2
	|	SSTW		R34, *+AR15[7]
	.loc 1 102 0
		SADD.M2		4,R30,R34
		SNOP		1
		SSTW		R37, *+AR15[10]
		SSTW		R33, *+AR15[6]
	.cfi_offset 53, -16
	.cfi_offset 49, -32
	.loc 1 104 0
		SFMULD.M2		R43:R42, R3:R2, R9:R8
	|	SLTU		R34, R30, R37
	.loc 1 105 0
	[!R0]	SBR		.L10
	|	SADD.M1		R31,R37,R26
	.loc 1 102 0
		SSTW		R32, *+AR15[5]
		SSTW		R35, *+AR15[8]
		SSHFAR		31, R1, R3
		SSHFLL		1, R12, R43
		SSTW		R38, *+AR15[11]
	.cfi_offset 48, -36
	.cfi_offset 51, -24
	.cfi_offset 54, -12
		SSTDW		R63:R62, *+AR15[6]
	;; condjump to .L10 occurs
	.cfi_offset 78, -8
	.cfi_offset 79, -4
	.loc 1 104 0
		SFMULD.M2		R49:R48, R9:R8, R11:R10
	|	SLTU		R43, R12, R13
.LVL7:
	.loc 1 106 0
		SMOVIL		805306368, R38
		SMOVIH		805306368, R38
		SNOP		3
	.loc 1 104 0
		SFSUBD.M2	R11:R10, R51:R50, R15:R14
		SNOP		4
		SFMULD.M2		R9:R8, R15:R14, R17:R16
		SNOP		1
	.loc 1 102 0
		SLTU		R12, R1, R9
		SADD.M1		R3,R9,R11
		SSHFLL		1, R11, R15
		SADD.M1		R15,R13,R12
.LVL8:
	.loc 1 104 0
		SFMULD.M2		R49:R48, R17:R16, R19:R18
	|	SSHFLL		1, R12, R45
	.loc 1 102 0
		SNOP		5
	.loc 1 104 0
		SFSUBD.M2	R19:R18, R51:R50, R21:R20
		SNOP		1
	.loc 1 102 0
		SSHFLL		1, R1, R19
		SNOP		2
	.loc 1 104 0
		SFMULD.M2		R17:R16, R21:R20, R23:R22
		SNOP		1
	.loc 1 102 0
		SLTU		R44, R43, R17
		SADD.M1		R45,R17,R45
	|	SSHFLL		2, R1, R21
	;no-op trunc di R45:R44 to pdi R45:R44
		SADDA.M1		R45:R44,AR0,OR0
		SNOP		1
	.loc 1 104 0
		SFADDD.M1		R23:R22, R23:R22, R25:R24
	|	SADD.M2		R21,R34,R35
		SMVAAGL.M2		OR0, R33:R32
	|	SLTU		R35, R34, R44
	.loc 1 102 0
		SLTU		R19, R1, R23
		SSHFLL		1, R23, R27
	|	SMVAAGH.M2		OR0, R33:R32
		SNOP		1
	.loc 1 104 0
		SFDPSP32.M2		R25:R24, R36
		SNOP		1
.LVL9:
	.loc 1 102 0
		SLTU		R21, R19, R25
		SADD.M2		R27,R25,R28
		SADD.M2		R28,R26,R29
		SADD.M2		R29,R44,R37
.LVL10:
.L12:
	.loc 1 106 0 discriminator 2
		SBR		rand
		SMOVIL		.L18, R62
		SMOVIH		.L18, R62
		SMOVIH4.L		.L18, R63
	;; call to rand occurs, with return value
		SNOP		3
.LVL11:
.L18:
		SFINTS32.M2		R10,R49
	|	SLTU		R34, R30, R51
	|	SMVAGA36.M1		R31:R30, AR12
	.loc 1 105 0 discriminator 2
		SEQ		R34, R35, R0
	|	SADD.M2		R31,R51,R31
	[R0]	SEQ		R31, R37, R0
	|	SADD.M1		-4,R32,R50
	.loc 1 106 0 discriminator 2
		SFMULS32.M2		R49, R38, R54
	|	SLTU		R50, R32, R52
	|	SADD.M1		-1,R33,R53
		SMOV.M2		R50, R32
	|	SADD.M1		R53,R52,R33
	.loc 1 102 0 discriminator 2
		SMVAGA36.M1		R33:R32, AR10
	|	SMOV.M2		R34, R30
		SNOP		1
	.loc 1 106 0 discriminator 2
		SFMULS32.M2		R54, R36, R55
	|	SADD.M1		4,R34,R34
	.loc 1 105 0 discriminator 2
	[!R0]	SBR		.L12
		SNOP		2
	.loc 1 106 0 discriminator 2
		SSTW		R55, *AR12
	|	SFSUBS32.M2		R55, R36, R56
	.loc 1 107 0 discriminator 2
		SNOP		2
		SSTW		R56, *AR10
	;; condjump to .L12 occurs
.LVL12:
.L10:
	.loc 1 109 0
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
	.size	random_h_sp, .-random_h_sp
	.section	.text.getTime_vc,"ax",@progbits
	.align	2
	.global	getTime_vc
	.type	getTime_vc, @function
getTime_vc:
.LFB6:
	.loc 1 111 0
	.cfi_startproc
.LVL13:
		SMOVIL		-64, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI2:
	.cfi_def_cfa_offset 64
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[6]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.cfi_offset 50, -36
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTW		R34, *+AR15[7]
		SNOP		1
		SMOV.M2		R20, R34
		SSTDW		R7:R6, *+AR15[7]
	.cfi_offset 14, -8
	.cfi_offset 49, -40
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R33, *+AR15[6]
		SMOV.M1		R22, R33
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL14:
		SSTW		R32, *+AR15[5]
		SSTDW		R7:R6, *+AR15[5]
	.cfi_offset 48, -44
	.cfi_offset 88, -24
	.loc 1 113 0
		SBR		GetTimerCount
	|	SMOV.M1		R16, R32
	|	SMVAAGL.M2		AR8, R7:R6
	.loc 1 111 0
		SMOVIL		.L20, R62
	.cfi_offset 47, -48
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
	|	SSTW		R31, *+AR15[4]
	|	SMOVIH		.L20, R62
		SSTW		R30, *+AR15[3]
	|	SMOVIH4.L		.L20, R63
		SMOV.M2		R18, R31
		SNOP		1
	.cfi_offset 46, -52
	.cfi_offset 8, -32
	.loc 1 113 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[4]
.LVL15:
.L20:
	.loc 1 114 0
		SBR		DSPF_sp_fircirc_vc4
	|	SMOV.M2		R34, R16
	|	SMOV.M1		R33, R18
		SMOV.M2		R32, R20
	|	SMOV.M1		R31, R22
	|	SMOVIL		.L21, R62
	.loc 1 113 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIH		.L21, R62
.LVL16:
	.loc 1 114 0
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH4.L		.L21, R63
.LVL17:
		SMVAAGH.M1		AR14, R13:R12
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSPF_sp_fircirc_vc4 occurs, with return value
		SNOP		1
.LVL18:
.L21:
	.loc 1 115 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L22, R62
		SMOVIH		.L22, R62
		SMOVIH4.L		.L22, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL19:
	.loc 1 117 0
.L22:
		SLDDW		*+AR15[4], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL20:
		SLDDW		*+AR15[6], R63:R62
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
		SLDDW		*+AR15[5], R7:R6
		SLDW		*+AR15[6], R33
.LVL25:
		SLDW		*+AR15[7], R34
		SNOP		3
.LVL26:
		SMVAGA36.M2		R7:R6, OR8
		SNOP		1
.LVL27:
		SLDDW		*+AR15[7], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		64, R6
.LVL28:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.cfi_endproc
.LFE6:
	.size	getTime_vc, .-getTime_vc
	.section	.text.getTime_cn,"ax",@progbits
	.align	2
	.global	getTime_cn
	.type	getTime_cn, @function
getTime_cn:
.LFB7:
	.loc 1 119 0
	.cfi_startproc
.LVL29:
		SMOVIL		-64, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI3:
	.cfi_def_cfa_offset 64
		SMVAAGL.M1		AR14, R7:R6
		SSTDW		R63:R62, *+AR15[6]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.cfi_offset 50, -36
		SMVAAGH.M1		AR14, R7:R6
	|	SMVAGA36.M2		R13:R12, AR14
	|	SSTW		R34, *+AR15[7]
		SNOP		1
		SMOV.M2		R20, R34
		SSTDW		R7:R6, *+AR15[7]
	.cfi_offset 14, -8
	.cfi_offset 49, -40
		SMVAAGL.M2		OR8, R7:R6
	|	SSTW		R33, *+AR15[6]
		SMOV.M1		R22, R33
		SMVAAGH.M1		OR8, R7:R6
	|	SMVAGA36.M2		R11:R10, OR8
	|	SMOVIL		0, R10
.LVL30:
		SSTW		R32, *+AR15[5]
		SSTDW		R7:R6, *+AR15[5]
	.cfi_offset 48, -44
	.cfi_offset 88, -24
	.loc 1 121 0
		SBR		GetTimerCount
	|	SMOV.M1		R16, R32
	|	SMVAAGL.M2		AR8, R7:R6
	.loc 1 119 0
		SMOVIL		.L24, R62
	.cfi_offset 47, -48
		SMVAAGH.M1		AR8, R7:R6
	|	SMVAGA36.M2		R15:R14, AR8
	|	SSTW		R31, *+AR15[4]
	|	SMOVIH		.L24, R62
		SSTW		R30, *+AR15[3]
	|	SMOVIH4.L		.L24, R63
		SMOV.M2		R18, R31
		SNOP		1
	.cfi_offset 46, -52
	.cfi_offset 8, -32
	.loc 1 121 0
	;; call to GetTimerCount occurs, with return value
		SSTDW		R7:R6, *+AR15[4]
.LVL31:
.L24:
	.loc 1 122 0
		SBR		DSPF_sp_fircirc_cn
	|	SMOV.M2		R34, R16
	|	SMOV.M1		R33, R18
		SMOV.M2		R32, R20
	|	SMOV.M1		R31, R22
	|	SMOVIL		.L25, R62
	.loc 1 121 0
		SMOV.M1		R10, R30
	|	SMVAAGL.M2		AR14, R13:R12
	|	SMOVIH		.L25, R62
.LVL32:
	.loc 1 122 0
		SMVAAGL.M1		OR8, R11:R10
	|	SMVAAGL.M2		AR8, R15:R14
	|	SMOVIH4.L		.L25, R63
.LVL33:
		SMVAAGH.M1		AR14, R13:R12
		SMVAAGH.M1		OR8, R11:R10
	|	SMVAAGH.M2		AR8, R15:R14
	;; call to DSPF_sp_fircirc_cn occurs, with return value
		SNOP		1
.LVL34:
.L25:
	.loc 1 123 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L26, R62
		SMOVIH		.L26, R62
		SMOVIH4.L		.L26, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL35:
	.loc 1 125 0
.L26:
		SLDDW		*+AR15[4], R7:R6
	|	SSUB.M2		R30, R10, R10
.LVL36:
		SLDDW		*+AR15[6], R63:R62
		SLDW		*+AR15[3], R30
.LVL37:
		SLDW		*+AR15[4], R31
.LVL38:
		SLDW		*+AR15[5], R32
		SNOP		1
.LVL39:
		SMVAGA36.M2		R7:R6, AR8
.LVL40:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[5], R7:R6
		SLDW		*+AR15[6], R33
.LVL41:
		SLDW		*+AR15[7], R34
		SNOP		3
.LVL42:
		SMVAGA36.M2		R7:R6, OR8
		SNOP		1
.LVL43:
		SLDDW		*+AR15[7], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		64, R6
.LVL44:
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
	.cfi_endproc
.LFE7:
	.size	getTime_cn, .-getTime_cn
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
	.loc 1 20 0
	.cfi_startproc
.LVL45:
		SMOVIL		-968, R6
		SMOVIL		-1, R7
		SADDA.M2		R7:R6,AR15,AR15
.LCFI4:
	.cfi_def_cfa_offset 968
		SMVAAGL.M1		AR14, R7:R6
	|	SMOVIL		1075052548, R46
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.loc 1 25 0
		SMOVIL		1075052544, R42
	|	SSTDW		R63:R62, *+AR15[119]
	.cfi_offset 56, -48
	.cfi_offset 57, -44
	.loc 1 20 0
		SMVAAGH.M2		AR14, R7:R6
	|	SMOVIH		1075052548, R46
	|	SSTDW		R41:R40, *+AR15[115]
	.loc 1 24 0
		SMOVIL		0, R47
	.loc 1 25 0
		SMOVIH		1075052544, R42
	|	SMVAGA36.M2		R47:R46, AR12
	|	SADD.LS		AR15,44,AR10
		SMOVIL		0, R43
	.loc 1 20 0
		SSTDW		R7:R6, *+AR15[120]
	.cfi_offset 14, -8
	.cfi_offset 54, -56
	.cfi_offset 55, -52
		SMVAAGL.M2		OR9, R7:R6
	|	SSTDW		R39:R38, *+AR15[114]
	.loc 1 24 0
		SMOVIL		1, R44
	|	SMVAGA36.M1		R43:R42, AR11
	.loc 1 20 0
		SMVAAGH.M1		OR9, R7:R6
		SSTW		R36, *+AR15[227]
		SSTDW		R7:R6, *+AR15[118]
		SMVAAGL.M2		OR8, R7:R6
		SNOP		1
	.cfi_offset 52, -60
	.cfi_offset 89, -24
	.cfi_offset 51, -64
		SMVAAGH.M2		OR8, R7:R6
	|	SSTW		R35, *+AR15[226]
		SSTW		R34, *+AR15[225]
		SNOP		2
		SSTDW		R7:R6, *+AR15[117]
	.cfi_offset 50, -68
	.cfi_offset 88, -32
	.cfi_offset 49, -72
		SMVAAGL.M2		AR8, R7:R6
	|	SSTW		R33, *+AR15[224]
		SNOP		1
		SMVAAGH.M2		AR8, R7:R6
		SSTW		R32, *+AR15[223]
		SSTDW		R7:R6, *+AR15[116]
		SNOP		2
		SSTW		R31, *+AR15[222]
		SSTW		R30, *+AR15[221]
		SNOP		2
	.cfi_offset 48, -76
	.cfi_offset 8, -40
	.cfi_offset 47, -80
	.cfi_offset 46, -84
	.loc 1 24 0
		SSTW		R44, *AR12
	|	SMVAGA36.M2		R43:R42, AR12
	.loc 1 25 0
		SSTW		R44, *AR11
		SNOP		2
	.loc 1 26 0
		SSTW		R44, *AR10
		SNOP		2
.LVL46:
	.loc 1 27 0
		SLDW		*AR10, R0
		SNOP		5
	[!R0]	SBR		.L30
		SNOP		6
	;; condjump to .L30 occurs
.L43:
	.loc 1 28 0
		SLDW		*AR12, R42
		SNOP		5
.LVL47:
		SSTW		R42, *AR10
		SNOP		2
.LVL48:
	.loc 1 27 0
		SLDW		*AR10, R1
		SNOP		5
	[R1]	SBR		.L43
		SNOP		6
	;; condjump to .L43 occurs
.L30:
	.loc 1 36 0
		SMOVIL		368, R42
	|	SADD.LS		AR15,48,AR14
		SBR		random_x_sp
	|	SMOVIL		0, R43
		SADDA.M1		R43:R42,AR15,OR11
	|	SMVAAGL.M2		AR14, R35:R34
	|	SMOVIL		.L52, R62
	.loc 1 70 0
		SMOVIH		.L52, R62
	.loc 1 36 0
		SMVAAGL.M1		OR11, R11:R10
	|	SMVAAGH.M2		AR14, R35:R34
	|	SMOVIH4.L		.L52, R63
		SMOVIL		128, R12
		SMVAAGH.M2		OR11, R11:R10
	|	SMOVIL		1092616192, R14
	;; call to random_x_sp occurs
		SMOVIH		1092616192, R14
.LVL49:
.L52:
		SMOVIH4.L		.LC2, R43
	|	SMVAAGL.M2		AR14, R11:R10
		SMOVIL.L		.LC2, R42
	.loc 1 37 0
		SBR		random_h_sp
	|	SMOVIH.L		.LC2, R42
	|	SMVAAGH.M2		AR14, R11:R10
		SMVAGA36.M1		R43:R42, OR9
	|	SMOVIL		.L53, R62
		SMOVIH		.L53, R62
		SMOVIH4.L		.L53, R63
		SMOVIL		16, R12
	.loc 1 55 0
		SMOVIL		0, R33
	.loc 1 37 0
	;; call to random_h_sp occurs
		SMOVIL		1073741824, R32
.LVL50:
.L53:
	.loc 1 43 0
		SBR		vmalloc
	|	SMOVIL		512, R10
		SMOVIL		.L54, R62
		SMOVIH		.L54, R62
		SMOVIH4.L		.L54, R63
		SMOVIL		0, R11
	.loc 1 60 0
		SMOVIL		8, R36
	.loc 1 43 0
	;; call to vmalloc occurs, with return value
		SMOVIH		0, R33
.LVL51:
.L54:
	.loc 1 44 0
		SBR		vmalloc
	|	SMVAGA36.M2		R11:R10, AR8
	|	SMOVIL		128, R10
.LVL52:
		SMOVIL		.L55, R62
		SMOVIH		.L55, R62
		SMOVIH4.L		.L55, R63
		SMOVIL		0, R11
	.loc 1 76 0
		SMOVIH		1073741824, R32
	.loc 1 44 0
	;; call to vmalloc occurs, with return value
		SNOP		1
.LVL53:
.L55:
	.loc 1 46 0
		SMOVIL		368, R46
	|	SMVAGA36.M1		R11:R10, OR8
	|	SMVAAGL.M2		AR8, R13:R12
.LVL54:
		SMOVIL		0, R47
	|	SBR		M7002_datatrans
		SADDA.M1		R47:R46,AR15,OR12
	|	SMVAAGH.M2		AR8, R13:R12
	|	SMOVIL		.L56, R62
		SMOVIH		.L56, R62
		SMVAAGL.M2		OR12, R11:R10
	|	SMOVIH4.L		.L56, R63
.LVL55:
		SMOVIL		512, R14
		SMVAAGH.M2		OR12, R11:R10
	;; call to M7002_datatrans occurs
		SNOP		1
.LVL56:
.L56:
	.loc 1 47 0
		SBR		M7002_datatrans
	|	SMOVIL		0, R13
	|	SMVAAGL.M2		AR14, R11:R10
		SMOVIL		.L57, R62
		SMVAAGH.M2		AR14, R11:R10
	|	SMOVIH		.L57, R62
		SMOVIH4.L		.L57, R63
		SMOVIL		64, R14
		SMOVIL		1074790400, R12
	;; call to M7002_datatrans occurs
		SMOVIH		1074790400, R12
.LVL57:
.L57:
	.loc 1 49 0
		SBR		SetTimerPeriod
	|	SMOVIL		-1, R12
		SMOVIL		.L58, R62
		SMOVIH		.L58, R62
		SMOVIH4.L		.L58, R63
		SMOVIL		0, R10
	;; call to SetTimerPeriod occurs, with return value
		SNOP		2
.LVL58:
.L58:
	.loc 1 50 0
		SBR		TimerStart
	|	SMOVIL		0, R10
		SMOVIL		.L59, R62
		SMOVIH		.L59, R62
		SMOVIH4.L		.L59, R63
	;; call to TimerStart occurs, with return value
		SNOP		3
.LVL59:
.L59:
	.loc 1 53 0
		SBR		GetTimerCount
	|	SMOVIL		0, R10
		SMOVIL		.L60, R62
		SMOVIH		.L60, R62
		SMOVIH4.L		.L60, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL60:
.L60:
		SBR		GetTimerCount
	|	SMOV.M2		R10, R41
	|	SMOVIL		0, R10
		SMOVIL		.L61, R62
		SMOVIH		.L61, R62
		SMOVIH4.L		.L61, R63
	;; call to GetTimerCount occurs, with return value
		SNOP		3
.LVL61:
.L61:
		SMOVIL		112, R42
	|	SSUB.M2		R10, R41, R41
.LVL62:
		SMOVIL		0, R43
		SADDA.M2		R43:R42,AR15,OR13
	|	SMOVIL		240, R42
		SMOVIL		0, R43
		SADDA.M1		-4,OR13,OR14
	|	SADDA.M2		R43:R42,AR15,OR11
		SNOP		1
		SMVAAGL.M1		OR14, R3:R2
	|	SADDA.M2		-4,OR11,AR14
		SNOP		1
		SMVAAGH.M2		OR14, R3:R2
		SNOP		1
		SSTDW		R3:R2, *+AR15[4]
.LVL63:
.L29:
		SMVAAGL.M2		AR14, R31:R30
	|	SMOVIL		2, R38
	.loc 1 20 0 discriminator 1
		SNOP		1
		SMVAAGH.M2		AR14, R31:R30
		SNOP		1
.LVL64:
.L38:
	.loc 1 65 0
		SBR		memset
	|	SADD.LS		AR15,112,OR12
	|	SMOVIL		0, R12
		SMOVIL		.L62, R62
		SMVAAGL.M2		OR12, R11:R10
	|	SMOVIH		.L62, R62
		SMOVIH4.L		.L62, R63
		SMVAAGH.M2		OR12, R11:R10
	|	SMOVIL		128, R14
		SMOVIL		0, R15
	;; call to memset occurs, with return value
		SNOP		1
.LVL65:
.L62:
	.loc 1 66 0
		SMOVIL		240, R42
		SMOVIL		0, R43
	|	SBR		memset
		SADDA.M2		R43:R42,AR15,OR13
	|	SMOVIL		.L63, R62
		SMOVIH		.L63, R62
		SMVAAGL.M2		OR13, R11:R10
	|	SMOVIH4.L		.L63, R63
		SMOVIL		0, R15
		SMVAAGH.M2		OR13, R11:R10
	|	SMOVIL		128, R14
	;; call to memset occurs, with return value
		SMOVIL		0, R12
.LVL66:
.L63:
	.loc 1 68 0
		SMOVIL		240, R42
	|	SMVAAGL.M2		OR8, R13:R12
		SMOVIL		0, R43
	|	SBR		M7002_datatrans
		SADDA.M1		R43:R42,AR15,OR14
	|	SMVAAGH.M2		OR8, R13:R12
	|	SMOVIL		.L64, R62
		SMOVIH		.L64, R62
		SMVAAGL.M2		OR14, R11:R10
	|	SMOVIH4.L		.L64, R63
		SMOVIL		128, R14
		SMVAAGH.M2		OR14, R11:R10
	;; call to M7002_datatrans occurs
		SNOP		1
.LVL67:
.L64:
	.loc 1 70 0
		SMOVIL		368, R42
	|	SMVAGA36.M2		R35:R34, OR12
	|	SADD.LS		AR15,112,OR13
	|	SMOV.M1		R38, R16
		SMOVIL		0, R43
	|	SBR		getTime_cn
	|	SMOV.M1		R36, R18
		SADDA.M1		R43:R42,AR15,OR11
	|	SMVAAGL.M2		OR12, R13:R12
	|	SMOVIL		.L65, R62
		SMVAAGL.M1		OR13, R15:R14
	|	SMOVIH		.L65, R62
		SMVAAGL.M1		OR11, R11:R10
	|	SMVAAGH.M2		OR12, R13:R12
	|	SMOVIH4.L		.L65, R63
		SMVAAGH.M1		OR13, R15:R14
	|	SMOVIL		1, R20
		SMVAAGH.M1		OR11, R11:R10
	|	SMOVIL		1, R22
	;; call to getTime_cn occurs, with return value
		SNOP		1
.LVL68:
.L65:
	.loc 1 71 0
		SMOV.M2		R38, R16
	|	SMOV.M1		R10, R40
	|	SMOVIL		1074790400, R12
.LVL69:
		SBR		getTime_vc
	|	SMOV.M1		R36, R18
	|	SMOVIL		1, R20
	|	SMVAAGL.M2		AR8, R11:R10
.LVL70:
		SMVAAGL.M1		OR8, R15:R14
	|	SMOVIL		.L66, R62
		SMVAAGH.M1		AR8, R11:R10
	|	SMOVIH		.L66, R62
		SMVAAGH.M1		OR8, R15:R14
	|	SMOVIH4.L		.L66, R63
		SMOVIL		1, R22
		SMOVIH		1074790400, R12
	;; call to getTime_vc occurs, with return value
		SMOVIL		0, R13
.LVL71:
.L66:
	.loc 1 73 0
		SMOVIL		240, R42
	|	SMOV.M1		R10, R39
	|	SMVAAGL.M2		OR8, R11:R10
.LVL72:
		SMOVIL		0, R43
	|	SBR		M7002_datatrans
		SADDA.M1		R43:R42,AR15,OR14
	|	SMVAAGH.M2		OR8, R11:R10
	|	SMOVIL		.L67, R62
		SMOVIH		.L67, R62
		SMVAAGL.M2		OR14, R13:R12
	|	SMOVIH4.L		.L67, R63
		SMOVIL		128, R14
		SMVAAGH.M2		OR14, R13:R12
	;; call to M7002_datatrans occurs
		SNOP		1
.LVL73:
.L67:
		SLDDW		*+AR15[4], R45:R44
	|	SMOVIL		1120403456, R55
	|	SMOV.M2		R30, R42
	|	SMOV.M1		R31, R43
	.loc 1 77 0
		SMOVIL		0, R54
		SMOVIL		-2147483648, R56
	.loc 1 75 0
		SMOVIL		0, R49
	.loc 1 76 0
		SMOVIH		1120403456, R55
	.loc 1 77 0
		SMOVIH		0, R54
		SMOVIH		-2147483648, R56
.LVL74:
.L34:
		SADD.M2		4,R44,R46
	|	SADD.M1		4,R42,R3
		SLTU		R46, R44, R48
	|	SMOV.M2		R46, R44
	|	SADD.M1		1,R49,R49
		SADD.M2		R45,R48,R45
	|	SLTU		R3, R42, R8
	|	SMOV.M1		R3, R42
	.loc 1 20 0
		SMVAGA36.M2		R45:R44, AR10
	|	SADD.M1		R43,R8,R43
	|	SLT		R49, R36, R0
	.loc 1 75 0
		SNOP		1
	.loc 1 76 0
		SLDW		*AR10, R10
	|	SMVAGA36.M2		R43:R42, AR10
	.loc 1 20 0
		SNOP		1
	.loc 1 76 0
		SLDW		*AR10, R51
		SNOP		3
		SFRCPS32.M2		R10, R11
		SFMULS32.M2		R10, R11, R12
		SFSUBS32.M1		R51, R10, R13
		SNOP		2
		SFSUBS32.M2		R12, R32, R14
		SNOP		2
		SFMULS32.M2		R11, R14, R15
		SNOP		3
		SFMULS32.M2		R10, R15, R16
		SNOP		3
		SFSUBS32.M2		R16, R32, R17
		SNOP		2
		SFMULS32.M2		R15, R17, R18
		SNOP		3
		SFMULS32.M2		R13, R18, R19
		SNOP		3
		SFMULS32.M2		R19, R55, R20
		SNOP		3
.LVL75:
	.loc 1 77 0
		SFCMPLS32.M2		R20, R54, R1
	[R1]	SBR		.L49
		SNOP		6
	;; condjump to .L49 occurs
.L31:
	.loc 1 78 0
		SFCMPGS32.M2		R20, R33, R2
	[!R2]	SBR		.L33
		SNOP		6
	;; condjump to .L33 occurs
		SMOV.M2		R20, R33
.LVL76:
.L33:
	.loc 1 75 0
	[R0]	SBR		.L34
		SNOP		6
	;; condjump to .L34 occurs
	.loc 1 80 0
		SFSPDP32T.M2		R33, R43:R42
	|	SMOVIL		1202590843, R44
		SMOVIL		1065646817, R45
		SMOVIH		1202590843, R44
		SMOVIH		1065646817, R45
		SFCMPGD.M2		R43:R42, R45:R44, R0
		SNOP		1
	[!R0]	SBR		.L47
		SNOP		6
	;; condjump to .L47 occurs
	.loc 1 81 0
		SSTDW		R43:R42, *+AR15[2]
	|	SMOVIL.L		.LC0, R42
		SMOVIH4.L		.LC0, R43
		SBR		printf
	|	SMOVIH.L		.LC0, R42
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L68, R62
		SMOVIH		.L68, R62
		SMOVIH4.L		.L68, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL77:
.L68:
	.loc 1 85 0
		SMVAAGL.M2		OR9, R25:R24
	|	SSUB.M1		R41, R40, R21
	|	SSTW		R38, *+AR15[5]
		SSUB.M1		R41, R39, R22
	|	SSTW		R36, *+AR15[4]
		SMVAAGH.M2		OR9, R25:R24
	|	SADD.M1		2,R38,R38
	.loc 1 61 0
		SNOP		1
	.loc 1 85 0
		SBR		printf
	|	SSTDW		R25:R24, *+AR15[1]
		SSTW		R21, *+AR15[6]
	|	SMOVIL		.L69, R62
		SMOVIH		.L69, R62
		SMOVIH4.L		.L69, R63
		SSTW		R22, *+AR15[7]
	;; call to printf occurs, with return value
		SNOP		2
.LVL78:
.L69:
	.loc 1 61 0
		SMOVIL		18, R43
		SEQ		R43, R38, R1
	[!R1]	SBR		.L38
		SNOP		6
	;; condjump to .L38 occurs
.L50:
	.loc 1 60 0
		SADD.M2		4,R36,R36
	|	SMOVIL		36, R23
.LVL79:
		SEQ		R23, R36, R2
	[!R2]	SBR		.L29
		SNOP		6
	;; condjump to .L29 occurs
	.loc 1 90 0
		SBR		vfree
	|	SMVAAGL.M2		AR8, R11:R10
		SMOVIL		.L70, R62
		SMVAAGH.M2		AR8, R11:R10
	|	SMOVIH		.L70, R62
		SMOVIH4.L		.L70, R63
	;; call to vfree occurs
		SNOP		3
.LVL80:
.L70:
	.loc 1 91 0
		SBR		vfree
	|	SMVAAGL.M2		OR8, R11:R10
		SMOVIL		.L71, R62
		SMVAAGH.M2		OR8, R11:R10
	|	SMOVIH		.L71, R62
		SMOVIH4.L		.L71, R63
	;; call to vfree occurs
		SNOP		3
.LVL81:
	.loc 1 92 0
.L71:
		SLDDW		*+AR15[116], R7:R6
		SLDDW		*+AR15[119], R63:R62
		SLDW		*+AR15[221], R30
		SLDW		*+AR15[222], R31
		SLDW		*+AR15[223], R32
		SNOP		1
		SMVAGA36.M2		R7:R6, AR8
.LVL82:
		SMVCGC.L		R63, BRReg
		SNOP		2
		SLDDW		*+AR15[117], R7:R6
		SLDW		*+AR15[224], R33
.LVL83:
		SLDW		*+AR15[225], R34
		SLDW		*+AR15[226], R35
		SLDW		*+AR15[227], R36
		SNOP		1
.LVL84:
		SMVAGA36.M2		R7:R6, OR8
		SNOP		3
.LVL85:
		SLDDW		*+AR15[118], R7:R6
		SLDDW		*+AR15[114], R39:R38
.LVL86:
		SLDDW		*+AR15[115], R41:R40
		SNOP		3
.LVL87:
		SMVAGA36.M2		R7:R6, OR9
		SNOP		1
		SLDDW		*+AR15[120], R7:R6
		SNOP		2
		SBR		R62
		SNOP		2
		SMVAGA36.M2		R7:R6, AR14
	|	SMOVIL		968, R6
		SMOVIL		0, R7
		SADDA.M2		R7:R6,AR15,AR15
		SNOP		1
	;; return occurs
.LVL88:
.L49:
		SBR		.L31
	|	SXOR		R56, R20, R20
	.loc 1 77 0 discriminator 1
		SNOP		6
.LVL89:
	;; jump to .L31 occurs
.LVL90:
.L47:
	.loc 1 83 0
		SMOVIL.L		.LC1, R42
		SMOVIH4.L		.LC1, R43
		SBR		printf
	|	SMOVIH.L		.LC1, R42
		SSTDW		R43:R42, *+AR15[1]
	|	SMOVIL		.L72, R62
		SMOVIH		.L72, R62
		SMOVIH4.L		.L72, R63
	;; call to printf occurs, with return value
		SNOP		3
.LVL91:
.L72:
	.loc 1 85 0
		SMVAAGL.M2		OR9, R25:R24
	|	SSUB.M1		R41, R40, R21
	|	SSTW		R38, *+AR15[5]
		SSUB.M1		R41, R39, R22
	|	SSTW		R36, *+AR15[4]
		SMVAAGH.M2		OR9, R25:R24
	|	SADD.M1		2,R38,R38
	.loc 1 61 0
		SNOP		1
	.loc 1 85 0
		SBR		printf
	|	SSTDW		R25:R24, *+AR15[1]
		SSTW		R21, *+AR15[6]
	|	SMOVIL		.L73, R62
		SMOVIH		.L73, R62
		SMOVIH4.L		.L73, R63
		SSTW		R22, *+AR15[7]
	;; call to printf occurs, with return value
		SNOP		2
.LVL92:
.L73:
	.loc 1 61 0
		SMOVIL		18, R43
		SEQ		R43, R38, R1
	[!R1]	SBR		.L38
		SNOP		6
	;; condjump to .L38 occurs
		SBR		.L50
		SNOP		6
	;; jump to .L50 occurs
	.cfi_endproc
.LFE3:
	.size	main, .-main
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x84e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x1
	.4byte	.LASF49
	.4byte	.LASF50
	.4byte	.Ldebug_ranges0+0
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
	.4byte	.LASF15
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST0
	.byte	0x1
	.4byte	0xfd
	.uleb128 0x5
	.string	"x1"
	.byte	0x1
	.byte	0x5e
	.4byte	0xfd
	.4byte	.LLST1
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x5e
	.4byte	0x70
	.4byte	.LLST2
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x5e
	.4byte	0x31
	.4byte	.LLST3
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x5f
	.4byte	0x31
	.byte	0x4
	.4byte	0x4e800000
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x60
	.4byte	0x70
	.4byte	.LLST4
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.4byte	0x31
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF16
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x16c
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0x66
	.4byte	0xfd
	.4byte	.LLST6
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x66
	.4byte	0x70
	.4byte	.LLST7
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x67
	.4byte	0x70
	.4byte	.LLST8
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x68
	.4byte	0x31
	.byte	0x4
	.4byte	0x4f000000
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x68
	.4byte	0x31
	.4byte	.LLST9
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF25
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.4byte	0x5b
	.llong	.LFB6
	.llong	.LFE6
	.4byte	.LLST10
	.byte	0x1
	.4byte	0x2aa
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0x6f
	.4byte	0x2b7
	.4byte	.LLST11
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0x6f
	.4byte	0xfd
	.4byte	.LLST12
	.uleb128 0x5
	.string	"r"
	.byte	0x1
	.byte	0x6f
	.4byte	0x2b7
	.4byte	.LLST13
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0x6f
	.4byte	0x70
	.4byte	.LLST14
	.uleb128 0x5
	.string	"nr"
	.byte	0x1
	.byte	0x6f
	.4byte	0x70
	.4byte	.LLST15
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0x6f
	.4byte	0x70
	.4byte	.LLST16
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0x6f
	.4byte	0x70
	.4byte	.LLST17
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x70
	.4byte	0x5b
	.4byte	.LLST18
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x70
	.4byte	0x5b
	.4byte	.LLST19
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0x35
	.4byte	0x70
	.byte	0x1
	.4byte	0x224
	.uleb128 0xd
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF24
	.byte	0x1
	.byte	0x72
	.4byte	0x70
	.byte	0x1
	.4byte	0x237
	.uleb128 0xd
	.byte	0
	.uleb128 0xe
	.llong	.LVL15
	.4byte	0x24a
	.uleb128 0xf
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.llong	.LVL18
	.4byte	0x29a
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x26
	.byte	0x3
	.byte	0x92
	.uleb128 0x2f
	.sleb128 0
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x3
	.byte	0x92
	.uleb128 0x31
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
	.uleb128 0x11
	.byte	0x1
	.4byte	0x31
	.4byte	0x2b7
	.uleb128 0x12
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.4byte	0x2aa
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF26
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.4byte	0x5b
	.llong	.LFB7
	.llong	.LFE7
	.4byte	.LLST20
	.byte	0x1
	.4byte	0x3fb
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0x77
	.4byte	0xfd
	.4byte	.LLST21
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0x77
	.4byte	0xfd
	.4byte	.LLST22
	.uleb128 0x5
	.string	"r"
	.byte	0x1
	.byte	0x77
	.4byte	0xfd
	.4byte	.LLST23
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0x77
	.4byte	0x70
	.4byte	.LLST24
	.uleb128 0x5
	.string	"nr"
	.byte	0x1
	.byte	0x77
	.4byte	0x70
	.4byte	.LLST25
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0x77
	.4byte	0x70
	.4byte	.LLST26
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0x77
	.4byte	0x70
	.4byte	.LLST27
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x78
	.4byte	0x5b
	.4byte	.LLST28
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x78
	.4byte	0x5b
	.4byte	.LLST29
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0x35
	.4byte	0x70
	.byte	0x1
	.4byte	0x375
	.uleb128 0xd
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0x7a
	.4byte	0x70
	.byte	0x1
	.4byte	0x388
	.uleb128 0xd
	.byte	0
	.uleb128 0xe
	.llong	.LVL31
	.4byte	0x39b
	.uleb128 0xf
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.llong	.LVL34
	.4byte	0x3eb
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x26
	.byte	0x3
	.byte	0x92
	.uleb128 0x2f
	.sleb128 0
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x3
	.byte	0x92
	.uleb128 0x30
	.sleb128 0
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x3
	.byte	0x92
	.uleb128 0x31
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
	.llong	.LVL35
	.uleb128 0xf
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF51
	.byte	0x1
	.byte	0x14
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST30
	.byte	0x1
	.4byte	0x81a
	.uleb128 0x14
	.4byte	.LASF28
	.byte	0x1
	.byte	0x15
	.4byte	0x81a
	.4byte	0x40140004
	.uleb128 0x14
	.4byte	.LASF29
	.byte	0x1
	.byte	0x16
	.4byte	0x81a
	.4byte	0x40140000
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0x17
	.4byte	0x820
	.4byte	.LLST31
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.byte	0x1e
	.4byte	0x825
	.byte	0x3
	.byte	0x91
	.sleb128 -920
	.uleb128 0x15
	.4byte	.LASF32
	.byte	0x1
	.byte	0x1f
	.4byte	0x835
	.byte	0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x15
	.4byte	.LASF33
	.byte	0x1
	.byte	0x20
	.4byte	0x845
	.byte	0x3
	.byte	0x91
	.sleb128 -856
	.uleb128 0x15
	.4byte	.LASF34
	.byte	0x1
	.byte	0x21
	.4byte	0x845
	.byte	0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x1
	.byte	0x28
	.4byte	0x70
	.byte	0x2
	.uleb128 0x16
	.4byte	.LASF36
	.byte	0x1
	.byte	0x29
	.4byte	0x70
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x1
	.byte	0x2a
	.4byte	0xfd
	.4byte	0x40100000
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x1
	.byte	0x2b
	.4byte	0x2b7
	.4byte	.LLST32
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x1
	.byte	0x2c
	.4byte	0x2b7
	.4byte	.LLST33
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF40
	.byte	0x1
	.byte	0x31
	.4byte	0x70
	.byte	0x1
	.4byte	0x4dd
	.uleb128 0xd
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF41
	.byte	0x1
	.byte	0x32
	.4byte	0x70
	.byte	0x1
	.4byte	0x4f0
	.uleb128 0xd
	.byte	0
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x1
	.byte	0x34
	.4byte	0x5b
	.byte	0x2
	.byte	0x90
	.uleb128 0x37
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x1
	.byte	0x34
	.4byte	0x5b
	.4byte	.LLST34
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x1
	.byte	0x35
	.4byte	0x5b
	.byte	0x2
	.byte	0x90
	.uleb128 0x39
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0x35
	.4byte	0x70
	.byte	0x1
	.4byte	0x52e
	.uleb128 0xd
	.byte	0
	.uleb128 0x8
	.string	"nr"
	.byte	0x1
	.byte	0x36
	.4byte	0x70
	.4byte	.LLST35
	.uleb128 0x8
	.string	"nh"
	.byte	0x1
	.byte	0x36
	.4byte	0x70
	.4byte	.LLST36
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x36
	.4byte	0x70
	.4byte	.LLST37
	.uleb128 0x16
	.4byte	.LASF45
	.byte	0x1
	.byte	0x36
	.4byte	0x70
	.byte	0x1
	.uleb128 0x17
	.string	"nc"
	.byte	0x1
	.byte	0x36
	.4byte	0x70
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x1
	.byte	0x37
	.4byte	0x31
	.4byte	.LLST38
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x1
	.byte	0x37
	.4byte	0x31
	.4byte	.LLST39
	.uleb128 0xe
	.llong	.LVL49
	.4byte	0x5a0
	.uleb128 0xf
	.byte	0x1
	.byte	0x6c
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0xe
	.llong	.LVL50
	.4byte	0x5bf
	.uleb128 0xf
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x40
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
	.uleb128 0x32
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.llong	.LVL56
	.4byte	0x5df
	.uleb128 0xf
	.byte	0x1
	.byte	0x6e
	.byte	0x3
	.byte	0xa
	.2byte	0x200
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
	.llong	.LVL57
	.4byte	0x5ff
	.uleb128 0xf
	.byte	0x1
	.byte	0x6e
	.byte	0x2
	.byte	0x8
	.byte	0x40
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
	.uleb128 0x32
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.llong	.LVL58
	.4byte	0x618
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
	.llong	.LVL59
	.4byte	0x62b
	.uleb128 0xf
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.llong	.LVL60
	.4byte	0x63e
	.uleb128 0xf
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.llong	.LVL61
	.4byte	0x651
	.uleb128 0xf
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.llong	.LVL65
	.4byte	0x670
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
	.sleb128 -856
	.byte	0
	.uleb128 0xe
	.llong	.LVL66
	.4byte	0x683
	.uleb128 0xf
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.llong	.LVL67
	.4byte	0x6a3
	.uleb128 0xf
	.byte	0x1
	.byte	0x6e
	.byte	0x2
	.byte	0x8
	.byte	0x80
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
	.byte	0
	.uleb128 0xe
	.llong	.LVL68
	.4byte	0x6ed
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x26
	.byte	0x5
	.byte	0x91
	.sleb128 -924
	.byte	0x94
	.byte	0x4
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x5
	.byte	0x91
	.sleb128 -924
	.byte	0x94
	.byte	0x4
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x36
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
	.byte	0x91
	.sleb128 -856
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
	.uleb128 0x32
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.llong	.LVL71
	.4byte	0x736
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x26
	.byte	0x5
	.byte	0x91
	.sleb128 -924
	.byte	0x94
	.byte	0x4
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x5
	.byte	0x91
	.sleb128 -924
	.byte	0x94
	.byte	0x4
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
	.sleb128 0
	.uleb128 0xf
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x3
	.byte	0x92
	.uleb128 0x36
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
	.llong	.LVL73
	.4byte	0x756
	.uleb128 0xf
	.byte	0x1
	.byte	0x6e
	.byte	0x2
	.byte	0x8
	.byte	0x80
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
	.4byte	0x76e
	.uleb128 0xf
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x5
	.byte	0xf5
	.uleb128 0x31
	.uleb128 0x31
	.byte	0xf7
	.uleb128 0x38
	.byte	0
	.uleb128 0xe
	.llong	.LVL78
	.4byte	0x7ac
	.uleb128 0xf
	.byte	0x2
	.byte	0x7f
	.sleb128 28
	.byte	0x7
	.byte	0x92
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x36
	.sleb128 -2
	.uleb128 0xf
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
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
	.llong	.LVL80
	.4byte	0x7c5
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
	.llong	.LVL81
	.4byte	0x7df
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
	.llong	.LVL92
	.uleb128 0xf
	.byte	0x2
	.byte	0x7f
	.sleb128 28
	.byte	0x7
	.byte	0x92
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x36
	.sleb128 -2
	.uleb128 0xf
	.byte	0x2
	.byte	0x7f
	.sleb128 16
	.byte	0x3
	.byte	0x92
	.uleb128 0x34
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
	.uleb128 0x9
	.byte	0x8
	.4byte	0x70
	.uleb128 0x18
	.4byte	0x70
	.uleb128 0x19
	.4byte	0x31
	.4byte	0x835
	.uleb128 0x1a
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x19
	.4byte	0x31
	.4byte	0x845
	.uleb128 0x1a
	.4byte	0x85
	.byte	0x7f
	.byte	0
	.uleb128 0x1b
	.4byte	0x31
	.uleb128 0x1a
	.4byte	0x85
	.byte	0x1f
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
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1b
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
	.byte	0x81
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
	.llong	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	0
	.llong	0
.LLST9:
	.llong	.LVL9
	.llong	.LVL12
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
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
	.2byte	0x3
	.byte	0x7f
	.sleb128 64
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
	.llong	.LVL27
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL27
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
	.llong	.LVL28
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL28
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
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	.LVL15-1
	.llong	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	.LVL26
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x9f
	.llong	0
	.llong	0
.LLST17:
	.llong	.LVL13
	.llong	.LVL15-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.llong	.LVL15-1
	.llong	.LVL25
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	.LVL25
	.llong	.LFE6
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x26
	.byte	0x9f
	.llong	0
	.llong	0
.LLST18:
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
.LLST19:
	.llong	.LVL19
	.llong	.LVL20
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST20:
	.llong	.LFB7
	.llong	.LCFI3
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI3
	.llong	.LFE7
	.2byte	0x3
	.byte	0x7f
	.sleb128 64
	.llong	0
	.llong	0
.LLST21:
	.llong	.LVL29
	.llong	.LVL30
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL30
	.llong	.LVL43
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL43
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST22:
	.llong	.LVL29
	.llong	.LVL31-1
	.2byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6d
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL31-1
	.llong	.LVL44
	.2byte	0x1
	.byte	0x5e
	.llong	.LVL44
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST23:
	.llong	.LVL29
	.llong	.LVL31-1
	.2byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL31-1
	.llong	.LVL40
	.2byte	0x1
	.byte	0x58
	.llong	.LVL40
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x9f
	.llong	0
	.llong	0
.LLST24:
	.llong	.LVL29
	.llong	.LVL31-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.llong	.LVL31-1
	.llong	.LVL39
	.2byte	0x2
	.byte	0x90
	.uleb128 0x30
	.llong	.LVL39
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x9f
	.llong	0
	.llong	0
.LLST25:
	.llong	.LVL29
	.llong	.LVL31-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.llong	.LVL31-1
	.llong	.LVL38
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2f
	.llong	.LVL38
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x22
	.byte	0x9f
	.llong	0
	.llong	0
.LLST26:
	.llong	.LVL29
	.llong	.LVL31-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	.LVL31-1
	.llong	.LVL42
	.2byte	0x2
	.byte	0x90
	.uleb128 0x32
	.llong	.LVL42
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x24
	.byte	0x9f
	.llong	0
	.llong	0
.LLST27:
	.llong	.LVL29
	.llong	.LVL31-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.llong	.LVL31-1
	.llong	.LVL41
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	.LVL41
	.llong	.LFE7
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x26
	.byte	0x9f
	.llong	0
	.llong	0
.LLST28:
	.llong	.LVL32
	.llong	.LVL33
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL33
	.llong	.LVL37
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.llong	0
	.llong	0
.LLST29:
	.llong	.LVL35
	.llong	.LVL36
	.2byte	0x1
	.byte	0x6a
	.llong	0
	.llong	0
.LLST30:
	.llong	.LFB3
	.llong	.LCFI4
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI4
	.llong	.LFE3
	.2byte	0x3
	.byte	0x7f
	.sleb128 968
	.llong	0
	.llong	0
.LLST31:
	.llong	.LVL46
	.llong	.LVL47
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.llong	.LVL48
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.llong	0
	.llong	0
.LLST32:
	.llong	.LVL52
	.llong	.LVL82
	.2byte	0x1
	.byte	0x58
	.llong	.LVL88
	.llong	.LFE3
	.2byte	0x1
	.byte	0x58
	.llong	0
	.llong	0
.LLST33:
	.llong	.LVL54
	.llong	.LVL55
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x4
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.llong	.LVL55
	.llong	.LVL85
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	.LVL88
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.llong	0
	.llong	0
.LLST34:
	.llong	.LVL69
	.llong	.LVL70
	.2byte	0x1
	.byte	0x6a
	.llong	.LVL70
	.llong	.LVL87
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.llong	.LVL88
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.llong	0
	.llong	0
.LLST35:
	.llong	.LVL62
	.llong	.LVL63
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.llong	.LVL79
	.llong	.LVL84
	.2byte	0x2
	.byte	0x90
	.uleb128 0x34
	.llong	0
	.llong	0
.LLST36:
	.llong	.LVL63
	.llong	.LVL64
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.llong	.LVL78
	.llong	.LVL86
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.llong	.LVL92
	.llong	.LFE3
	.2byte	0x2
	.byte	0x90
	.uleb128 0x36
	.llong	0
	.llong	0
.LLST37:
	.llong	.LVL73
	.llong	.LVL74
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.llong	.LVL76
	.llong	.LVL77-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
	.llong	.LVL90
	.llong	.LVL91-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
	.llong	0
	.llong	0
.LLST38:
	.llong	.LVL75
	.llong	.LVL77-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	.LVL88
	.llong	.LVL91-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.llong	0
	.llong	0
.LLST39:
	.llong	.LVL62
	.llong	.LVL63
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.llong	.LVL63
	.llong	.LVL64
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	.LVL73
	.llong	.LVL78
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	.LVL79
	.llong	.LVL83
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
	.llong	.LVL88
	.llong	.LVL92
	.2byte	0x2
	.byte	0x90
	.uleb128 0x31
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
.LASF9:
	.string	"long long int"
.LASF20:
	.string	"csize"
.LASF25:
	.string	"getTime_vc"
.LASF26:
	.string	"getTime_cn"
.LASF27:
	.string	"DSPF_sp_fircirc_cn"
.LASF17:
	.string	"frand_max"
.LASF16:
	.string	"random_h_sp"
.LASF38:
	.string	"xAddr"
.LASF14:
	.string	"rand_midpoint"
.LASF37:
	.string	"hAddr"
.LASF46:
	.string	"pct_diff"
.LASF33:
	.string	"rAddr_DDR_cn"
.LASF0:
	.string	"float"
.LASF3:
	.string	"unsigned char"
.LASF35:
	.string	"len_vr"
.LASF47:
	.string	"max_pct_diff"
.LASF6:
	.string	"long unsigned int"
.LASF41:
	.string	"TimerStart"
.LASF36:
	.string	"len_vx"
.LASF50:
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSPF_sp_fircirc/test/vector/Release"
.LASF32:
	.string	"xAddr_DDR"
.LASF1:
	.string	"double"
.LASF23:
	.string	"GetTimerCount"
.LASF31:
	.string	"hAddr_DDR"
.LASF18:
	.string	"pair_sum"
.LASF24:
	.string	"DSPF_sp_fircirc_vc4"
.LASF51:
	.string	"main"
.LASF5:
	.string	"unsigned int"
.LASF45:
	.string	"index_i"
.LASF42:
	.string	"time_vc"
.LASF2:
	.string	"long long unsigned int"
.LASF28:
	.string	"cache"
.LASF30:
	.string	"cache_ok"
.LASF34:
	.string	"rAddr_DDR_vc"
.LASF39:
	.string	"rAddr"
.LASF11:
	.string	"sizetype"
.LASF13:
	.string	"factor"
.LASF43:
	.string	"time_cn"
.LASF12:
	.string	"char"
.LASF48:
	.string	"GNU C 4.7.0"
.LASF19:
	.string	"index"
.LASF49:
	.string	"../main.c"
.LASF15:
	.string	"random_x_sp"
.LASF8:
	.string	"short int"
.LASF21:
	.string	"time1"
.LASF22:
	.string	"time2"
.LASF29:
	.string	"cache1"
.LASF40:
	.string	"SetTimerPeriod"
.LASF10:
	.string	"long int"
.LASF7:
	.string	"signed char"
.LASF4:
	.string	"short unsigned int"
.LASF44:
	.string	"c_time"
