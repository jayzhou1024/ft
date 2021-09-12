	.file	"main.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.global	x
	.section	.const,"a",@progbits
	.align	3
	.type	x, @object
	.size	x, 256
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
	.global	h
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
	.short	196
	.short	208
	.short	-199
	.short	159
	.short	82
	.short	238
	.short	182
	.short	-100
	.short	7
	.short	61
	.short	-43
	.short	209
	.short	56
	.short	-70
	.short	-40
	.short	-217
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
	.common	rAddr_DDR_cn,192,8
	.common	rAddr_DDR_vc,1024,8
	.global	xAddr_DDR
	.section	.neardata,"aw",@progbits
	.align	3
	.type	xAddr_DDR, @object
	.size	xAddr_DDR, 8
xAddr_DDR:
	.llong	x+32
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
	.string	"Result Failure (r_i)  "
.LC1:
	.string	"Result Successful (r_i)  "
.LC2:
	.string	"   \tNR = %d\t  NH = %d\t cn_time:%d\t  vc_cycle:%d\t\n"
	.section	.text.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB3:
	.file 1 "../main.c"
	.loc 1 78 0
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
	.loc 1 79 0
		SMOVIL		1075052548, R42
		SMOVIH		1075052548, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[11]
	.loc 1 80 0
		SMOVIL		1075052544, R42
		SMOVIH		1075052544, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[12]
	.loc 1 82 0
		SLDDW		*-AR14[11], R43:R42
		SNOP		5
		SMOVIL		1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 83 0
		SLDDW		*-AR14[12], R43:R42
		SNOP		5
		SMOVIL		1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 84 0
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
	.loc 1 85 0
		SBR		.L2
		SNOP		6
.L3:
	.loc 1 86 0
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
	.loc 1 85 0 discriminator 1
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
	.loc 1 90 0
		SMOVIL		0, R10
		SMOVIL		-1, R12
		SBR		SetTimerPeriod
		SMOVIL		.L10, R62
		SMOVIH		.L10, R62
		SMOVIH4.L		.L10, R63
		SNOP		4
.L10:
	.loc 1 91 0
		SMOVIL		0, R10
		SBR		TimerStart
		SMOVIL		.L11, R62
		SMOVIH		.L11, R62
		SMOVIH4.L		.L11, R63
		SNOP		4
.L11:
	.loc 1 94 0
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
	.loc 1 97 0
		SMOVIL		8, R42
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
		SBR		.L4
		SNOP		6
.L9:
	.loc 1 98 0
		SMOVIL		1, R42
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
		SBR		.L5
		SNOP		6
.L8:
.LBB2:
	.loc 1 99 0
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SADD.M1		R42,R43,R42
		SADD.M1		14,R42,R42
		SSHFAR		31, R42, R43
		SSHFLR		28, R43, R43
		SADD.M1		R42,R43,R42
		SSHFAR		4, R42, R42
		SMOVIL		-104, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
	.loc 1 100 0
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
	.loc 1 102 0
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
	.loc 1 107 0
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
	.loc 1 108 0
		SMOVIL		1074790400, R42
		SMOVIH		1074790400, R42
		SMOVIL		0, R43
		SMOVIL		-136, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTDW		R43:R42, *AR10
	.loc 1 110 0
		SMOVIL.L		rAddr_DDR_cn, R10
		SMOVIH.L		rAddr_DDR_cn, R10
		SMOVIH4.L		rAddr_DDR_cn, R11
		SMOVIL		0, R12
		SMOVIL		192, R14
		SMOVIL		0, R15
		SBR		memset
		SMOVIL		.L16, R62
		SMOVIH		.L16, R62
		SMOVIH4.L		.L16, R63
		SNOP		4
.L16:
	.loc 1 111 0
		SMOVIL.L		rAddr_DDR_vc, R10
		SMOVIH.L		rAddr_DDR_vc, R10
		SMOVIH4.L		rAddr_DDR_vc, R11
		SMOVIL		0, R12
		SMOVIL		1024, R14
		SMOVIL		0, R15
		SBR		memset
		SMOVIL		.L17, R62
		SMOVIH		.L17, R62
		SMOVIH4.L		.L17, R63
		SNOP		4
.L17:
	.loc 1 113 0
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
	.loc 1 114 0
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
	.loc 1 115 0
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
		SMOVIL		64, R14
		SBR		M7002_datatrans
		SMOVIL		.L20, R62
		SMOVIH		.L20, R62
		SMOVIH4.L		.L20, R63
		SNOP		4
.L20:
	.loc 1 117 0
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
		SBR		get_time_cn
		SMOVIL		.L21, R62
		SMOVIH		.L21, R62
		SMOVIH4.L		.L21, R63
		SNOP		4
.L21:
		SSTW		R10, *AR8
	.loc 1 118 0
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
		SBR		get_time_vc
		SMOVIL		.L22, R62
		SMOVIH		.L22, R62
		SMOVIH4.L		.L22, R63
		SNOP		4
.L22:
		SSTW		R10, *AR8
	.loc 1 120 0
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
	.loc 1 122 0
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
	.loc 1 123 0
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
	.loc 1 126 0
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
	.loc 1 127 0
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
	.loc 1 128 0
		SLDDW		*-AR14[15], R11:R10
		SNOP		5
		SBR		vfree
		SMOVIL		.L28, R62
		SMOVIH		.L28, R62
		SMOVIH4.L		.L28, R63
		SNOP		4
.L28:
	.loc 1 129 0
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
	.loc 1 98 0
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SADD.M1		1,R42,R42
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
.L5:
	.loc 1 98 0 is_stmt 0 discriminator 1
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SMOVIL		32, R42
		SLT		R42, R43, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L8
		SNOP		6
	.loc 1 97 0 is_stmt 1
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SADD.M1		8,R42,R42
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
.L4:
	.loc 1 97 0 is_stmt 0 discriminator 1
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SMOVIL		64, R42
		SLT		R42, R43, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L9
		SNOP		6
	.loc 1 132 0 is_stmt 1
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
	.loc 1 134 0
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
		SMOVIL		-48, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[6]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SSTDW		R11:R10, *-AR14[4]
		SSTDW		R13:R12, *-AR14[5]
		SSTDW		R15:R14, *-AR14[6]
		SSTW		R16, *-AR14[13]
		SSTW		R18, *-AR14[14]
	.loc 1 136 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L32, R62
		SMOVIH		.L32, R62
		SMOVIH4.L		.L32, R63
		SNOP		4
.L32:
		SMOV.M1		R10, R42
		SSTW		R42, *-AR14[5]
	.loc 1 137 0
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
		SBR		DSP_fir_gen_hM17_rA8X8_cn
		SMOVIL		.L33, R62
		SMOVIH		.L33, R62
		SMOVIH4.L		.L33, R63
		SNOP		4
.L33:
	.loc 1 138 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L34, R62
		SMOVIH		.L34, R62
		SMOVIH4.L		.L34, R63
		SNOP		4
.L34:
		SMOV.M1		R10, R42
		SSTW		R42, *-AR14[6]
	.loc 1 139 0
		SLDW		*-AR14[6], R43
		SNOP		5
		SLDW		*-AR14[5], R42
		SNOP		5
		SSUB.M1		R42, R43, R42
	.loc 1 140 0
		SMOV.M1		R42, R10
		SLDDW		*+AR15[6], R63:R62
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
	.loc 1 142 0
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
		SMOVIL		-48, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[6]
	.cfi_offset 78, -16
	.cfi_offset 79, -12
		SSTDW		R11:R10, *-AR14[4]
		SSTDW		R13:R12, *-AR14[5]
		SSTDW		R15:R14, *-AR14[6]
		SSTW		R16, *-AR14[13]
		SSTW		R18, *-AR14[14]
	.loc 1 144 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L37, R62
		SMOVIH		.L37, R62
		SMOVIH4.L		.L37, R63
		SNOP		4
.L37:
		SMOV.M1		R10, R42
		SSTW		R42, *-AR14[5]
	.loc 1 145 0
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
		SBR		DSP_fir_gen_hM17_rA8X8_asm
		SMOVIL		.L38, R62
		SMOVIH		.L38, R62
		SMOVIH4.L		.L38, R63
		SNOP		4
.L38:
	.loc 1 146 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L39, R62
		SMOVIH		.L39, R62
		SMOVIH4.L		.L39, R63
		SNOP		4
.L39:
		SMOV.M1		R10, R42
		SSTW		R42, *-AR14[6]
	.loc 1 147 0
		SLDW		*-AR14[6], R43
		SNOP		5
		SLDW		*-AR14[5], R42
		SNOP		5
		SSUB.M1		R42, R43, R42
	.loc 1 148 0
		SMOV.M1		R42, R10
		SLDDW		*+AR15[6], R63:R62
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
	.4byte	0x40d
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
	.byte	0x4e
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x1c5
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x1
	.byte	0x4f
	.4byte	0x1c5
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x1
	.byte	0x50
	.4byte	0x1c5
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x51
	.4byte	0x1cb
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x58
	.4byte	0x1dd
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0x58
	.4byte	0x1dd
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF16
	.byte	0x1
	.byte	0x5a
	.4byte	0x62
	.byte	0x1
	.4byte	0x104
	.uleb128 0x7
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF17
	.byte	0x1
	.byte	0x5b
	.4byte	0x62
	.byte	0x1
	.4byte	0x117
	.uleb128 0x7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x1
	.byte	0x5d
	.4byte	0x4d
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x1
	.byte	0x5d
	.4byte	0x4d
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x1
	.byte	0x5e
	.4byte	0x4d
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF21
	.byte	0x1
	.byte	0x5e
	.4byte	0x62
	.byte	0x1
	.4byte	0x157
	.uleb128 0x7
	.byte	0
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x5f
	.4byte	0x62
	.uleb128 0x8
	.string	"j"
	.byte	0x1
	.byte	0x5f
	.4byte	0x62
	.uleb128 0x9
	.string	"nh"
	.byte	0x1
	.byte	0x5f
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x9
	.string	"nr"
	.byte	0x1
	.byte	0x5f
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
	.byte	0x63
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x1
	.byte	0x64
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x1
	.byte	0x6c
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
	.byte	0x86
	.byte	0x1
	.4byte	0x4d
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x279
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.byte	0x86
	.4byte	0x279
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"h"
	.byte	0x1
	.byte	0x86
	.4byte	0x279
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"r"
	.byte	0x1
	.byte	0x86
	.4byte	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"nh"
	.byte	0x1
	.byte	0x86
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.string	"nr"
	.byte	0x1
	.byte	0x86
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x1
	.byte	0x87
	.4byte	0x4d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x1
	.byte	0x87
	.4byte	0x4d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF21
	.byte	0x1
	.byte	0x5e
	.4byte	0x62
	.byte	0x1
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.4byte	0x27f
	.uleb128 0x12
	.4byte	0x5b
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.4byte	0x4d
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x314
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.byte	0x8e
	.4byte	0x1dd
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"h"
	.byte	0x1
	.byte	0x8e
	.4byte	0x1e3
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"r"
	.byte	0x1
	.byte	0x8e
	.4byte	0x1dd
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"nh"
	.byte	0x1
	.byte	0x8e
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.string	"nr"
	.byte	0x1
	.byte	0x8e
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x1
	.byte	0x8f
	.4byte	0x4d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x1
	.byte	0x8f
	.4byte	0x4d
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF21
	.byte	0x1
	.byte	0x5e
	.4byte	0x62
	.byte	0x1
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x5b
	.4byte	0x324
	.uleb128 0x14
	.4byte	0x77
	.byte	0x7f
	.byte	0
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.byte	0x23
	.4byte	0x338
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	x
	.uleb128 0x12
	.4byte	0x314
	.uleb128 0x13
	.4byte	0x5b
	.4byte	0x34d
	.uleb128 0x14
	.4byte	0x77
	.byte	0x3f
	.byte	0
	.uleb128 0x15
	.string	"h"
	.byte	0x1
	.byte	0x39
	.4byte	0x361
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	h
	.uleb128 0x12
	.4byte	0x33d
	.uleb128 0x13
	.4byte	0x5b
	.4byte	0x376
	.uleb128 0x14
	.4byte	0x77
	.byte	0x5f
	.byte	0
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0x47
	.4byte	0x366
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	rAddr_DDR_cn
	.uleb128 0x13
	.4byte	0x5b
	.4byte	0x39d
	.uleb128 0x17
	.4byte	0x77
	.2byte	0x1ff
	.byte	0
	.uleb128 0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0x48
	.4byte	0x38c
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	rAddr_DDR_vc
	.uleb128 0x16
	.4byte	.LASF31
	.byte	0x1
	.byte	0x4a
	.4byte	0x279
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	xAddr_DDR
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x4b
	.4byte	0x279
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	hAddr_DDR
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0x4c
	.4byte	0x3f5
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	ptr_r_cn
	.uleb128 0x12
	.4byte	0x1e3
	.uleb128 0x16
	.4byte	.LASF34
	.byte	0x1
	.byte	0x4d
	.4byte	0x3f5
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
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
.LASF37:
	.string	"/cygdrive/e/project/function  demo/asm/DSP_fir_gen_hM17_rA8X8/Release"
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
