	.file	"main.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.global	x
	.section	.const,"a",@progbits
	.align	3
	.type	x, @object
	.size	x, 132
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
	.short	684
	.short	-1
	.short	16235
	.short	15637
	.short	684
	.short	-1
	.short	16235
	.short	10814
	.short	16534
	.short	684
	.short	-1
	.short	16235
	.short	15637
	.short	684
	.short	-1
	.zero	2
	.global	h
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
	.common	rAddr_DDR_cn,128,8
	.common	rAddr_DDR_vc,512,8
	.global	xAddr_DDR
	.section	.neardata,"aw",@progbits
	.align	3
	.type	xAddr_DDR, @object
	.size	xAddr_DDR, 8
xAddr_DDR:
	.llong	x
	.global	hAddr_DDR
	.align	3
	.type	hAddr_DDR, @object
	.size	hAddr_DDR, 8
hAddr_DDR:
	.llong	h+32
	.global	ptr_r_cn
	.section	.rodata,"a",@progbits
	.align	3
	.type	ptr_r_cn, @object
	.size	ptr_r_cn, 8
ptr_r_cn:
	.llong	rAddr_DDR_cn+32
	.global	ptr_r_vc
	.align	3
	.type	ptr_r_vc, @object
	.size	ptr_r_vc, 8
ptr_r_vc:
	.llong	rAddr_DDR_vc+32
	.section	.const,"a",@progbits
.LC0:
	.string	"Result Failure "
.LC1:
	.string	"Result Successful "
.LC2:
	.string	"   \tNR = %d\t  NH = %d\t cn_time:%d\t  vc_cycle:%d\t\n"
	.section	.text.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB3:
	.file 1 "../main.c"
	.loc 1 53 0
	.cfi_startproc
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, 0
		SADDA.M1		16,AR15,AR14
.LCFI1:
	.cfi_def_cfa 14, 0
		SNOP		1
		SMOVIL		-184, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[23]
		SMVAAGL.M1		AR8, R7:R6
		SNOP		1
		SMVAAGH.M1		AR8, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[22]
		SSTDW		R41:R40, *+AR15[21]
		SSTDW		R39:R38, *+AR15[20]
		SSTDW		R37:R36, *+AR15[19]
		SSTDW		R35:R34, *+AR15[18]
		SSTDW		R33:R32, *+AR15[17]
		SSTDW		R31:R30, *+AR15[16]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
	.cfi_offset 8, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -28
	.cfi_offset 54, -40
	.cfi_offset 55, -36
	.cfi_offset 52, -48
	.cfi_offset 53, -44
	.cfi_offset 50, -56
	.cfi_offset 51, -52
	.cfi_offset 48, -64
	.cfi_offset 49, -60
	.cfi_offset 46, -72
	.cfi_offset 47, -68
	.loc 1 54 0
		SMOVIL		1075052548, R42
		SMOVIH		1075052548, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[11]
	.loc 1 55 0
		SMOVIL		1075052544, R42
		SMOVIH		1075052544, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[12]
	.loc 1 57 0
		SLDDW		*-AR14[11], R43:R42
		SNOP		5
		SMOVIL		1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 58 0
		SLDDW		*-AR14[12], R43:R42
		SNOP		5
		SMOVIL		1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 59 0
		SLDDW		*-AR14[12], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R44
		SNOP		5
		SMOVIL		-76, R42
		SMOVIL		-1, R43
		SMOVIL		-72, R46
		SMOVIL		-1, R47
		SADDA.M1		R47:R46,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 60 0
		SBR		.L2
		SNOP		6
.L3:
	.loc 1 61 0
		SLDDW		*-AR14[12], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R44
		SNOP		5
		SMOVIL		-76, R42
		SMOVIL		-1, R43
		SMOVIL		-72, R46
		SMOVIL		-1, R47
		SADDA.M1		R47:R46,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
.L2:
	.loc 1 60 0 discriminator 1
		SMOVIL		-76, R42
		SMOVIL		-1, R43
		SMOVIL		-72, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SMOV.M1		R42, R0
	[R0]	SBR		.L3
		SNOP		6
	.loc 1 64 0
		SMOVIL		0, R10
		SMOVIL		-1, R12
		SBR		SetTimerPeriod
		SMOVIL		.L10, R62
		SMOVIH		.L10, R62
		SMOVIH4.L		.L10, R63
		SNOP		4
.L10:
	.loc 1 65 0
		SMOVIL		0, R10
		SBR		TimerStart
		SMOVIL		.L11, R62
		SMOVIH		.L11, R62
		SMOVIH4.L		.L11, R63
		SNOP		4
.L11:
	.loc 1 68 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L12, R62
		SMOVIH		.L12, R62
		SMOVIH4.L		.L12, R63
		SNOP		4
.L12:
		SMOVIL		-156, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SSTW		R10, *AR10
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L13, R62
		SMOVIH		.L13, R62
		SMOVIH4.L		.L13, R63
		SNOP		4
.L13:
		SMOV.M1		R10, R42
		SMOVIL		-156, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SSUB.M1		R42, R43, R42
		SMOVIL		-100, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
	.loc 1 70 0
		SMOVIL		4, R42
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
		SBR		.L4
		SNOP		6
.L9:
	.loc 1 71 0
		SMOVIL		4, R42
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
		SBR		.L5
		SNOP		6
.L8:
.LBB2:
	.loc 1 72 0
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSHFLL		1, R42, R43
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SADD.M1		R42,R43,R42
		SADD.M1		17,R42,R42
		SSHFAR		31, R42, R43
		SSHFLR		28, R43, R43
		SADD.M1		R42,R43,R42
		SSHFAR		4, R42, R42
		SMOVIL		-104, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
	.loc 1 73 0
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SADD.M1		15,R42,R42
		SSHFAR		31, R42, R43
		SSHFLR		28, R43, R43
		SADD.M1		R42,R43,R42
		SSHFAR		4, R42, R42
		SMOVIL		-108, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
	.loc 1 75 0
		SMOVIL		-104, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDW		*AR10, R34
		SNOP		5
		SMOVIL		-104, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R35
		SSHFLR		27, R34, R42
		SSHFLL		5, R35, R31
		SOR		R31, R42, R31
		SSHFLL		5, R34, R30
		SMOV.M1		R30, R10
		SMOV.M1		R31, R11
		SBR		vmalloc
		SMOVIL		.L14, R62
		SMOVIH		.L14, R62
		SMOVIH4.L		.L14, R63
		SNOP		4
.L14:
		SSTDW		R11:R10, *-AR14[15]
	.loc 1 76 0
		SMOVIL		-108, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDW		*AR10, R36
		SNOP		5
		SMOVIL		-108, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R37
		SSHFLR		26, R36, R42
		SSHFLL		6, R37, R33
		SOR		R33, R42, R33
		SSHFLL		6, R36, R32
		SMOV.M1		R32, R10
		SMOV.M1		R33, R11
		SBR		vmalloc
		SMOVIL		.L15, R62
		SMOVIH		.L15, R62
		SMOVIH4.L		.L15, R63
		SNOP		4
.L15:
		SMOVIL		-128, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SSTDW		R11:R10, *AR10
	.loc 1 77 0
		SMOVIL		1074790400, R42
		SMOVIH		1074790400, R42
		SMOVIL		0, R43
		SMOVIL		-136, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTDW		R43:R42, *AR10
	.loc 1 78 0
		SMOVIL.L		rAddr_DDR_cn, R10
		SMOVIH.L		rAddr_DDR_cn, R10
		SMOVIH4.L		rAddr_DDR_cn, R11
		SMOVIL		0, R12
		SMOVIL		128, R14
		SMOVIL		0, R15
		SBR		memset
		SMOVIL		.L16, R62
		SMOVIH		.L16, R62
		SMOVIH4.L		.L16, R63
		SNOP		4
.L16:
	.loc 1 79 0
		SMOVIL.L		rAddr_DDR_vc, R10
		SMOVIH.L		rAddr_DDR_vc, R10
		SMOVIH4.L		rAddr_DDR_vc, R11
		SMOVIL		0, R12
		SMOVIL		512, R14
		SMOVIL		0, R15
		SBR		memset
		SMOVIL		.L17, R62
		SMOVIH		.L17, R62
		SMOVIH4.L		.L17, R63
		SNOP		4
.L17:
	.loc 1 81 0
		SMOVIL.L		xAddr_DDR, R42
		SMOVIH.L		xAddr_DDR, R42
		SMOVIH4.L		xAddr_DDR, R43
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDDW		*AR10, R43:R42
		SNOP		5
		SMOVIL		-104, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R40
		SNOP		5
		SMOVIL		-104, R46
		SMOVIL		-1, R47
		SADDA.M1		R47:R46,AR14,AR10
		SNOP		1
		SLDW		*AR10, R44
		SNOP		5
		SSHFAR		31, R44, R44
		SMOV.M1		R44, R41
		SMOV.M1		R40, R44
		SSHFLL		5, R44, R44
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SMVAAGL.M1		OR11, R11:R10
		SNOP		1
		SMVAAGH.M1		OR11, R11:R10
		SNOP		1
		SLDDW		*-AR14[15], R13:R12
		SNOP		5
		SMOV.M1		R44, R14
		SBR		M7002_datatrans
		SMOVIL		.L18, R62
		SMOVIH		.L18, R62
		SMOVIH4.L		.L18, R63
		SNOP		4
.L18:
	.loc 1 82 0
		SMOVIL.L		ptr_r_vc, R42
		SMOVIH.L		ptr_r_vc, R42
		SMOVIH4.L		ptr_r_vc, R43
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDDW		*AR10, R43:R42
		SNOP		5
		SMOVIL		-108, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R46
		SNOP		5
		SMOVIL		-168, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R46, *AR10
		SMOVIL		-108, R46
		SMOVIL		-1, R47
		SADDA.M1		R47:R46,AR14,AR10
		SNOP		1
		SLDW		*AR10, R44
		SNOP		5
		SSHFAR		31, R44, R44
		SMOVIL		-164, R46
		SMOVIL		-1, R47
		SADDA.M1		R47:R46,AR14,AR10
		SNOP		1
		SSTW		R44, *AR10
		SMOVIL		-168, R46
		SMOVIL		-1, R47
		SADDA.M1		R47:R46,AR14,AR10
		SNOP		1
		SLDW		*AR10, R44
		SNOP		5
		SSHFLL		6, R44, R44
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SMVAAGL.M1		OR11, R11:R10
		SNOP		1
		SMVAAGH.M1		OR11, R11:R10
		SNOP		1
		SMOVIL		-128, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R13:R12
		SNOP		5
		SMOV.M1		R44, R14
		SBR		M7002_datatrans
		SMOVIL		.L19, R62
		SMOVIH		.L19, R62
		SMOVIH4.L		.L19, R63
		SNOP		4
.L19:
	.loc 1 83 0
		SMOVIL.L		hAddr_DDR, R42
		SMOVIH.L		hAddr_DDR, R42
		SMOVIH4.L		hAddr_DDR, R43
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDDW		*AR10, R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SMVAAGL.M1		OR11, R11:R10
		SNOP		1
		SMVAAGH.M1		OR11, R11:R10
		SNOP		1
		SMOVIL		-136, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R13:R12
		SNOP		5
		SMOVIL		36, R14
		SBR		M7002_datatrans
		SMOVIL		.L20, R62
		SMOVIH		.L20, R62
		SMOVIH4.L		.L20, R63
		SNOP		4
.L20:
	.loc 1 85 0
		SMOVIL.L		xAddr_DDR, R42
		SMOVIH.L		xAddr_DDR, R42
		SMOVIH4.L		xAddr_DDR, R43
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDDW		*AR10, R47:R46
		SNOP		5
		SMOVIL.L		hAddr_DDR, R42
		SMOVIH.L		hAddr_DDR, R42
		SMOVIH4.L		hAddr_DDR, R43
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDDW		*AR10, R45:R44
		SNOP		5
		SMOVIL.L		ptr_r_cn, R42
		SMOVIH.L		ptr_r_cn, R42
		SMOVIH4.L		ptr_r_cn, R43
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDDW		*AR10, R43:R42
		SNOP		5
		SMOVIL		-68, R48
		SMOVIL		-1, R49
		SMOVIL		-72, R50
		SMOVIL		-1, R51
		SADDA.M1		R51:R50,AR14,OR11
		SNOP		1
		SADDA.M1		R49:R48,OR11,AR8
		SNOP		1
		SMVAGA36.M1		R47:R46, OR11
		SNOP		1
		SMVAAGL.M1		OR11, R11:R10
		SNOP		1
		SMVAAGH.M1		OR11, R11:R10
		SNOP		1
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SMVAAGL.M1		OR11, R13:R12
		SNOP		1
		SMVAAGH.M1		OR11, R13:R12
		SNOP		1
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SMVAAGL.M1		OR11, R15:R14
		SNOP		1
		SMVAAGH.M1		OR11, R15:R14
		SNOP		1
		SMOVIL		-76, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDW		*AR10, R16
		SNOP		5
		SMOVIL		-80, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDW		*AR10, R18
		SNOP		5
		SMOVIL		0, R20
		SBR		get_time_cn
		SMOVIL		.L21, R62
		SMOVIH		.L21, R62
		SMOVIH4.L		.L21, R63
		SNOP		4
.L21:
		SSTW		R10, *AR8
	.loc 1 86 0
		SMOVIL		-72, R42
		SMOVIL		-1, R43
		SMOVIL		-72, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,AR8
		SNOP		1
		SLDDW		*-AR14[15], R11:R10
		SNOP		5
		SMOVIL		-136, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R13:R12
		SNOP		5
		SMOVIL		-128, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R15:R14
		SNOP		5
		SMOVIL		-76, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDW		*AR10, R16
		SNOP		5
		SMOVIL		-80, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDW		*AR10, R18
		SNOP		5
		SMOVIL		0, R20
		SBR		get_time_vc
		SMOVIL		.L22, R62
		SMOVIH		.L22, R62
		SMOVIH4.L		.L22, R63
		SNOP		4
.L22:
		SSTW		R10, *AR8
	.loc 1 88 0
		SMOVIL.L		ptr_r_vc, R42
		SMOVIH.L		ptr_r_vc, R42
		SMOVIH4.L		ptr_r_vc, R43
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDDW		*AR10, R43:R42
		SNOP		5
		SMOVIL		-80, R46
		SMOVIL		-1, R47
		SADDA.M1		R47:R46,AR14,AR10
		SNOP		1
		SLDW		*AR10, R44
		SNOP		5
		SSHFLL		1, R44, R44
		SMOVIL		-128, R46
		SMOVIL		-1, R47
		SADDA.M1		R47:R46,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R11:R10
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SMVAAGL.M1		OR11, R13:R12
		SNOP		1
		SMVAAGH.M1		OR11, R13:R12
		SNOP		1
		SMOV.M1		R44, R14
		SBR		M7002_datatrans
		SMOVIL		.L23, R62
		SMOVIH		.L23, R62
		SMOVIH4.L		.L23, R63
		SNOP		4
.L23:
	.loc 1 90 0
		SMOVIL.L		ptr_r_vc, R42
		SMOVIH.L		ptr_r_vc, R42
		SMOVIH4.L		ptr_r_vc, R43
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDDW		*AR10, R45:R44
		SNOP		5
		SMOVIL.L		ptr_r_cn, R42
		SMOVIH.L		ptr_r_cn, R42
		SMOVIH4.L		ptr_r_cn, R43
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDDW		*AR10, R43:R42
		SNOP		5
		SMOVIL		-80, R48
		SMOVIL		-1, R49
		SADDA.M1		R49:R48,AR14,AR10
		SNOP		1
		SLDW		*AR10, R46
		SNOP		5
		SSHFLL		1, R46, R46
		SMOV.M1		R46, R38
		SSHFAR		31, R46, R46
		SMOV.M1		R46, R39
		SMVAGA36.M1		R45:R44, OR11
		SNOP		1
		SMVAAGL.M1		OR11, R11:R10
		SNOP		1
		SMVAAGH.M1		OR11, R11:R10
		SNOP		1
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SMVAAGL.M1		OR11, R13:R12
		SNOP		1
		SMVAAGH.M1		OR11, R13:R12
		SNOP		1
		SMOV.M1		R38, R14
		SMOV.M1		R39, R15
		SBR		memcmp
		SMOVIL		.L24, R62
		SMOVIH		.L24, R62
		SMOVIH4.L		.L24, R63
		SNOP		4
.L24:
		SMOV.M1		R10, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L6
		SNOP		6
	.loc 1 91 0
		SMOVIL.L		.LC0, R42
		SMOVIH.L		.LC0, R42
		SMOVIH4.L		.LC0, R43
		SSTDW		R43:R42, *+AR15[1]
		SBR		printf
		SMOVIL		.L25, R62
		SMOVIH		.L25, R62
		SMOVIH4.L		.L25, R63
		SNOP		4
.L25:
		SBR		.L7
		SNOP		6
.L6:
	.loc 1 94 0
		SMOVIL.L		.LC1, R42
		SMOVIH.L		.LC1, R42
		SMOVIH4.L		.LC1, R43
		SSTDW		R43:R42, *+AR15[1]
		SBR		printf
		SMOVIL		.L26, R62
		SMOVIH		.L26, R62
		SMOVIH4.L		.L26, R63
		SNOP		4
.L26:
.L7:
	.loc 1 95 0
		SMOVIL.L		.LC2, R42
		SMOVIH.L		.LC2, R42
		SMOVIH4.L		.LC2, R43
		SSTDW		R43:R42, *+AR15[1]
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSTW		R42, *+AR15[4]
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSTW		R42, *+AR15[5]
		SMOVIL		-68, R42
		SMOVIL		-1, R43
		SMOVIL		-72, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSTW		R42, *+AR15[6]
		SMOVIL		-72, R42
		SMOVIL		-1, R43
		SMOVIL		-72, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSTW		R42, *+AR15[7]
		SBR		printf
		SMOVIL		.L27, R62
		SMOVIH		.L27, R62
		SMOVIH4.L		.L27, R63
		SNOP		4
.L27:
	.loc 1 96 0
		SLDDW		*-AR14[15], R11:R10
		SNOP		5
		SBR		vfree
		SMOVIL		.L28, R62
		SMOVIH		.L28, R62
		SMOVIH4.L		.L28, R63
		SNOP		4
.L28:
	.loc 1 97 0
		SMOVIL		-128, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R11:R10
		SNOP		5
		SBR		vfree
		SMOVIL		.L29, R62
		SMOVIH		.L29, R62
		SMOVIH4.L		.L29, R63
		SNOP		4
.L29:
.LBE2:
	.loc 1 71 0
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SADD.M1		4,R42,R42
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
.L5:
	.loc 1 71 0 is_stmt 0 discriminator 1
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SMOVIL		16, R42
		SLT		R42, R43, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L8
		SNOP		6
	.loc 1 70 0 is_stmt 1
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SADD.M1		4,R42,R42
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
.L4:
	.loc 1 70 0 is_stmt 0 discriminator 1
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SMOVIL		36, R42
		SLT		R42, R43, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L9
		SNOP		6
	.loc 1 100 0 is_stmt 1
		SLDDW		*+AR15[16], R31:R30
		SNOP		5
		SLDDW		*+AR15[17], R33:R32
		SNOP		5
		SLDDW		*+AR15[18], R35:R34
		SNOP		5
		SLDDW		*+AR15[19], R37:R36
		SNOP		5
		SLDDW		*+AR15[20], R39:R38
		SNOP		5
		SLDDW		*+AR15[21], R41:R40
		SNOP		5
		SLDDW		*+AR15[22], R7:R6
		SNOP		5
		SMVAGA36.M1		R7:R6, AR8
		SNOP		1
		SLDDW		*+AR15[23], R63:R62
		SNOP		5
		SADDA.M1		-16,AR14,AR15
		SNOP		1
		SLDDW		*++AR15[2], R7:R6
		SNOP		5
		SMVAGA36.M1		R7:R6, AR14
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.text.get_time_cn,"ax",@progbits
	.align	2
	.global	get_time_cn
	.type	get_time_cn, @function
get_time_cn:
.LFB4:
	.loc 1 102 0
	.cfi_startproc
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI2:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, 0
		SADDA.M1		16,AR15,AR14
.LCFI3:
	.cfi_def_cfa 14, 0
		SNOP		1
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[7]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SSTDW		R11:R10, *-AR14[4]
		SSTDW		R13:R12, *-AR14[5]
		SSTDW		R15:R14, *-AR14[6]
		SSTW		R16, *-AR14[13]
		SSTW		R18, *-AR14[14]
		SSTW		R20, *-AR14[15]
	.loc 1 104 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L32, R62
		SMOVIH		.L32, R62
		SMOVIH4.L		.L32, R63
		SNOP		4
.L32:
		SMOV.M1		R10, R42
		SSTW		R42, *-AR14[5]
	.loc 1 105 0
		SLDDW		*-AR14[4], R11:R10
		SNOP		5
		SLDDW		*-AR14[5], R13:R12
		SNOP		5
		SLDDW		*-AR14[6], R15:R14
		SNOP		5
		SLDW		*-AR14[13], R16
		SNOP		5
		SLDW		*-AR14[14], R18
		SNOP		5
		SLDW		*-AR14[15], R20
		SNOP		5
		SBR		DSP_fir_sym_cn
		SMOVIL		.L33, R62
		SMOVIH		.L33, R62
		SMOVIH4.L		.L33, R63
		SNOP		4
.L33:
	.loc 1 106 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L34, R62
		SMOVIH		.L34, R62
		SMOVIH4.L		.L34, R63
		SNOP		4
.L34:
		SMOV.M1		R10, R42
		SSTW		R42, *-AR14[6]
	.loc 1 107 0
		SLDW		*-AR14[6], R43
		SNOP		5
		SLDW		*-AR14[5], R42
		SNOP		5
		SSUB.M1		R42, R43, R42
	.loc 1 108 0
		SMOV.M1		R42, R10
		SLDDW		*+AR15[7], R63:R62
		SNOP		5
		SADDA.M1		-16,AR14,AR15
		SNOP		1
		SLDDW		*++AR15[2], R7:R6
		SNOP		5
		SMVAGA36.M1		R7:R6, AR14
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	.cfi_endproc
.LFE4:
	.size	get_time_cn, .-get_time_cn
	.section	.text.get_time_vc,"ax",@progbits
	.align	2
	.global	get_time_vc
	.type	get_time_vc, @function
get_time_vc:
.LFB5:
	.loc 1 110 0
	.cfi_startproc
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI4:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, 0
		SADDA.M1		16,AR15,AR14
.LCFI5:
	.cfi_def_cfa 14, 0
		SNOP		1
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[7]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SSTDW		R11:R10, *-AR14[4]
		SSTDW		R13:R12, *-AR14[5]
		SSTDW		R15:R14, *-AR14[6]
		SSTW		R16, *-AR14[13]
		SSTW		R18, *-AR14[14]
		SSTW		R20, *-AR14[15]
	.loc 1 112 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L37, R62
		SMOVIH		.L37, R62
		SMOVIH4.L		.L37, R63
		SNOP		4
.L37:
		SMOV.M1		R10, R42
		SSTW		R42, *-AR14[5]
	.loc 1 113 0
		SLDDW		*-AR14[4], R11:R10
		SNOP		5
		SLDDW		*-AR14[5], R13:R12
		SNOP		5
		SLDDW		*-AR14[6], R15:R14
		SNOP		5
		SLDW		*-AR14[13], R16
		SNOP		5
		SLDW		*-AR14[14], R18
		SNOP		5
		SLDW		*-AR14[15], R20
		SNOP		5
		SBR		DSP_fir_sym_asm
		SMOVIL		.L38, R62
		SMOVIH		.L38, R62
		SMOVIH4.L		.L38, R63
		SNOP		4
.L38:
	.loc 1 114 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L39, R62
		SMOVIH		.L39, R62
		SMOVIH4.L		.L39, R63
		SNOP		4
.L39:
		SMOV.M1		R10, R42
		SSTW		R42, *-AR14[6]
	.loc 1 115 0
		SLDW		*-AR14[6], R43
		SNOP		5
		SLDW		*-AR14[5], R42
		SNOP		5
		SSUB.M1		R42, R43, R42
	.loc 1 116 0
		SMOV.M1		R42, R10
		SLDDW		*+AR15[7], R63:R62
		SNOP		5
		SADDA.M1		-16,AR14,AR15
		SNOP		1
		SLDDW		*++AR15[2], R7:R6
		SNOP		5
		SMVAGA36.M1		R7:R6, AR14
		SNOP		1
		SMVCGC.L		R63, BRReg
		SNOP		1
		SBR		R62
		SNOP		6
	.cfi_endproc
.LFE5:
	.size	get_time_vc, .-get_time_vc
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x424
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x1
	.4byte	.LASF36
	.4byte	.LASF37
	.4byte	.Ldebug_ranges0+0
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
	.4byte	.LASF38
	.byte	0x1
	.byte	0x35
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x1c5
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x1
	.byte	0x36
	.4byte	0x1c5
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x1
	.byte	0x37
	.4byte	0x1c5
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x38
	.4byte	0x1cb
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3e
	.4byte	0x1dd
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0x3e
	.4byte	0x1dd
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF16
	.byte	0x1
	.byte	0x40
	.4byte	0x62
	.byte	0x1
	.4byte	0x104
	.uleb128 0x7
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF17
	.byte	0x1
	.byte	0x41
	.4byte	0x62
	.byte	0x1
	.4byte	0x117
	.uleb128 0x7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x1
	.byte	0x43
	.4byte	0x4d
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x1
	.byte	0x43
	.4byte	0x4d
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x1
	.byte	0x44
	.4byte	0x4d
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF21
	.byte	0x1
	.byte	0x44
	.4byte	0x62
	.byte	0x1
	.4byte	0x157
	.uleb128 0x7
	.byte	0
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x45
	.4byte	0x62
	.uleb128 0x8
	.string	"j"
	.byte	0x1
	.byte	0x45
	.4byte	0x62
	.uleb128 0x9
	.string	"nh"
	.byte	0x1
	.byte	0x45
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x9
	.string	"nr"
	.byte	0x1
	.byte	0x45
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xa
	.llong	.LBB2
	.llong	.LBE2
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x1
	.byte	0x48
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x1
	.byte	0x49
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x1
	.byte	0x4d
	.4byte	0x1e3
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.4byte	0x62
	.uleb128 0xc
	.4byte	0x62
	.uleb128 0xd
	.byte	0x1
	.4byte	0x5b
	.4byte	0x1dd
	.uleb128 0xe
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.4byte	0x1d0
	.uleb128 0xb
	.byte	0x8
	.4byte	0x5b
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.4byte	0x4d
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x285
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.byte	0x66
	.4byte	0x285
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"h"
	.byte	0x1
	.byte	0x66
	.4byte	0x285
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"r"
	.byte	0x1
	.byte	0x66
	.4byte	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"nh"
	.byte	0x1
	.byte	0x66
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.string	"nr"
	.byte	0x1
	.byte	0x66
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.string	"s"
	.byte	0x1
	.byte	0x66
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x1
	.byte	0x67
	.4byte	0x4d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x1
	.byte	0x67
	.4byte	0x4d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF21
	.byte	0x1
	.byte	0x44
	.4byte	0x62
	.byte	0x1
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.4byte	0x28b
	.uleb128 0x12
	.4byte	0x5b
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x4d
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x32c
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.byte	0x6e
	.4byte	0x1dd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"h"
	.byte	0x1
	.byte	0x6e
	.4byte	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"r"
	.byte	0x1
	.byte	0x6e
	.4byte	0x1dd
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"nh"
	.byte	0x1
	.byte	0x6e
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.string	"nr"
	.byte	0x1
	.byte	0x6e
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.string	"s"
	.byte	0x1
	.byte	0x6e
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x1
	.byte	0x6f
	.4byte	0x4d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x1
	.byte	0x6f
	.4byte	0x4d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF21
	.byte	0x1
	.byte	0x44
	.4byte	0x62
	.byte	0x1
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x5b
	.4byte	0x33c
	.uleb128 0x14
	.4byte	0x77
	.byte	0x41
	.byte	0
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.byte	0x18
	.4byte	0x350
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	x
	.uleb128 0x12
	.4byte	0x32c
	.uleb128 0x13
	.4byte	0x5b
	.4byte	0x365
	.uleb128 0x14
	.4byte	0x77
	.byte	0x2f
	.byte	0
	.uleb128 0x15
	.string	"h"
	.byte	0x1
	.byte	0x25
	.4byte	0x379
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	h
	.uleb128 0x12
	.4byte	0x355
	.uleb128 0x13
	.4byte	0x5b
	.4byte	0x38e
	.uleb128 0x14
	.4byte	0x77
	.byte	0x3f
	.byte	0
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2e
	.4byte	0x37e
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	rAddr_DDR_cn
	.uleb128 0x13
	.4byte	0x5b
	.4byte	0x3b4
	.uleb128 0x14
	.4byte	0x77
	.byte	0xff
	.byte	0
	.uleb128 0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2f
	.4byte	0x3a4
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	rAddr_DDR_vc
	.uleb128 0x16
	.4byte	.LASF31
	.byte	0x1
	.byte	0x30
	.4byte	0x285
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	xAddr_DDR
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x31
	.4byte	0x285
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	hAddr_DDR
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0x32
	.4byte	0x40c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_r_cn
	.uleb128 0x12
	.4byte	0x1e3
	.uleb128 0x16
	.4byte	.LASF34
	.byte	0x1
	.byte	0x33
	.4byte	0x40c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_r_vc
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x18
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
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
	.llong	.LFB3
	.llong	.LCFI0
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI0
	.llong	.LCFI1
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	.LCFI1
	.llong	.LFE3
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.llong	0
	.llong	0
.LLST1:
	.llong	.LFB4
	.llong	.LCFI2
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI2
	.llong	.LCFI3
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	.LCFI3
	.llong	.LFE4
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
	.llong	0
	.llong	0
.LLST2:
	.llong	.LFB5
	.llong	.LCFI4
	.2byte	0x2
	.byte	0x7f
	.sleb128 0
	.llong	.LCFI4
	.llong	.LCFI5
	.2byte	0x2
	.byte	0x7f
	.sleb128 16
	.llong	.LCFI5
	.llong	.LFE5
	.2byte	0x2
	.byte	0x7e
	.sleb128 0
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
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.llong	.LFB4
	.llong	.LFE4-.LFB4
	.llong	.LFB5
	.llong	.LFE5-.LFB5
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
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"vecr_len"
.LASF14:
	.string	"xAddr"
.LASF24:
	.string	"hAddr"
.LASF29:
	.string	"rAddr_DDR_cn"
.LASF30:
	.string	"rAddr_DDR_vc"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"long unsigned int"
.LASF17:
	.string	"TimerStart"
.LASF2:
	.string	"short unsigned int"
.LASF31:
	.string	"xAddr_DDR"
.LASF37:
	.string	"/cygdrive/e/project/function  demo/asm/dsp_fir_sym/Debug"
.LASF22:
	.string	"vecx_len"
.LASF21:
	.string	"GetTimerCount"
.LASF32:
	.string	"hAddr_DDR"
.LASF38:
	.string	"main"
.LASF3:
	.string	"unsigned int"
.LASF19:
	.string	"time_vc"
.LASF0:
	.string	"long long unsigned int"
.LASF11:
	.string	"cache"
.LASF13:
	.string	"cache_ok"
.LASF15:
	.string	"rAddr"
.LASF9:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF18:
	.string	"time_cn"
.LASF10:
	.string	"char"
.LASF35:
	.string	"GNU C 4.7.0"
.LASF36:
	.string	"../main.c"
.LASF6:
	.string	"short int"
.LASF25:
	.string	"time1"
.LASF26:
	.string	"time2"
.LASF12:
	.string	"cache1"
.LASF28:
	.string	"get_time_vc"
.LASF16:
	.string	"SetTimerPeriod"
.LASF8:
	.string	"long int"
.LASF27:
	.string	"get_time_cn"
.LASF5:
	.string	"signed char"
.LASF34:
	.string	"ptr_r_vc"
.LASF20:
	.string	"c_time"
.LASF33:
	.string	"ptr_r_cn"
