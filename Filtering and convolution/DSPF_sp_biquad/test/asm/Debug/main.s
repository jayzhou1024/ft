	.file	"main.c"
.text;
.Ltext0:
	.common	yAddr_DDR_cn,512,8
	.common	yAddr_DDR_vc,512,8
	.global	deAddr_DDR
	.section	.far,"aw",@nobits
	.align	3
	.type	deAddr_DDR, @object
	.size	deAddr_DDR, 8
deAddr_DDR:
	.zero	8
	.global	aAddr_DDR
	.section	.fardata,"aw",@progbits
	.align	3
	.type	aAddr_DDR, @object
	.size	aAddr_DDR, 12
aAddr_DDR:
	.long	1065353216
	.long	-1094188519
	.long	1057540067
	.global	b_cnAddr_DDR
	.align	3
	.type	b_cnAddr_DDR, @object
	.size	b_cnAddr_DDR, 12
b_cnAddr_DDR:
	.long	1032470410
	.long	1049247726
	.long	1053777876
	.global	xAddr_DDR
	.align	3
	.type	xAddr_DDR, @object
	.size	xAddr_DDR, 512
xAddr_DDR:
	.long	-1063670059
	.long	1086327607
	.long	-1079012193
	.long	1090742336
	.long	-1060397520
	.long	-1063835000
	.long	-1058874652
	.long	-1058477433
	.long	1089231059
	.long	1070336813
	.long	1065306304
	.long	-1058850149
	.long	1088549019
	.long	1075591940
	.long	-1069627413
	.long	1049078978
	.long	-1074045156
	.long	-1056460593
	.long	-1062833117
	.long	-1057942676
	.long	-1060483956
	.long	-1062834641
	.long	-1076638754
	.long	-1055908785
	.long	1090576000
	.long	1091458296
	.long	-1103422846
	.long	-1101259968
	.long	-1068517349
	.long	1090520170
	.long	-1071162054
	.long	-1057434485
	.long	1085496447
	.long	-1072881052
	.long	-1062907572
	.long	-1074398174
	.long	-1056890253
	.long	-1058305665
	.long	1091400904
	.long	1091696268
	.long	1069582517
	.long	-1056121124
	.long	-1062617687
	.long	-1069812478
	.long	1087213681
	.long	-1055190490
	.long	-1055769730
	.long	-1059858260
	.long	1077861931
	.long	1083460966
	.long	1077747049
	.long	-1082440384
	.long	1064349568
	.long	-1065198899
	.long	1084004984
	.long	-1060695651
	.long	1081021076
	.long	-1060467320
	.long	-1071098121
	.long	1075890864
	.long	1085495413
	.long	-1056568787
	.long	1091135308
	.long	1085306053
	.long	-1098432289
	.long	-1079757899
	.long	-1081590835
	.long	-1065885851
	.long	1043218941
	.long	1046256127
	.long	1087064095
	.long	1086107947
	.long	1077459496
	.long	-1071947450
	.long	1086810455
	.long	1059590432
	.long	-1069608514
	.long	1091336962
	.long	1089510008
	.long	1065379447
	.long	1075627172
	.long	1071568285
	.long	-1061483648
	.long	-1065457767
	.long	-1089151137
	.long	-1062437678
	.long	1088183180
	.long	-1060939311
	.long	-1062246149
	.long	-1059930319
	.long	-1062319237
	.long	-1079731072
	.long	-1066284544
	.long	1091009348
	.long	-1078809785
	.long	-1060522061
	.long	1090621400
	.long	1092191484
	.long	-1080263128
	.long	-1057430981
	.long	-1063594322
	.long	-1075204772
	.long	1072885532
	.long	-1063768262
	.long	1073980321
	.long	1082600857
	.long	-1062071037
	.long	-1057695157
	.long	-1065213791
	.long	-1066928454
	.long	-1077796332
	.long	1042345982
	.long	-1056660852
	.long	-1063779605
	.long	1086367291
	.long	-1055480250
	.long	1091124156
	.long	1083402602
	.long	-1100396096
	.long	1070138925
	.long	-1062722697
	.long	-1085099617
	.long	1091842102
	.long	1064281409
	.long	1054371391
	.long	-1062484075
	.long	-1100783683
	.long	1075760131
	.section	.const,"a",@progbits
.LC0:
	.string	"Result Failure, max_pct_diff=%f"
.LC1:
	.string	"Result Successful "
.LC2:
	.string	"\tNX = %d\tnatC: %d\toptC: %d\n"
	.section	.text.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, @function
main:
.LFB3:
	.file 1 "../main.c"
	.loc 1 64 0
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI0:
		SADDA.M1		16,AR15,AR14
.LCFI1:
		SNOP		1
		SMOVIL		-216, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[27]
		SMVAAGL.M1		AR8, R7:R6
		SNOP		1
		SMVAAGH.M1		AR8, R7:R6
		SNOP		1
		SSTDW		R7:R6, *+AR15[26]
		SSTDW		R41:R40, *+AR15[25]
		SSTDW		R39:R38, *+AR15[24]
		SSTDW		R37:R36, *+AR15[23]
		SSTDW		R35:R34, *+AR15[22]
		SSTDW		R33:R32, *+AR15[21]
		SSTDW		R31:R30, *+AR15[20]
.LCFI2:
	.loc 1 66 0
		SMOVIL		1075052548, R42
		SMOVIH		1075052548, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[12]
	.loc 1 67 0
		SMOVIL		1075052544, R42
		SMOVIH		1075052544, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[13]
	.loc 1 69 0
		SLDDW		*-AR14[12], R43:R42
		SNOP		5
		SMOVIL		1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 70 0
		SLDDW		*-AR14[13], R43:R42
		SNOP		5
		SMOVIL		1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 71 0
		SLDDW		*-AR14[13], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R44
		SNOP		5
		SMOVIL		-92, R42
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
	.loc 1 72 0
		SBR		.L2
		SNOP		6
.L3:
	.loc 1 73 0
		SLDDW		*-AR14[13], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R44
		SNOP		5
		SMOVIL		-92, R42
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
	.loc 1 72 0
		SMOVIL		-92, R42
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
	.loc 1 76 0
		SMOVIL		1074790400, R42
		SMOVIH		1074790400, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[14]
	.loc 1 78 0
		SMOVIL		1074798592, R42
		SMOVIH		1074798592, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[15]
	.loc 1 79 0
		SMOVIL		1074802688, R42
		SMOVIH		1074802688, R42
		SMOVIL		0, R43
		SMOVIL		-128, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTDW		R43:R42, *AR10
	.loc 1 84 0
		SMOVIL.L		b_cnAddr_DDR, R10
		SMOVIH.L		b_cnAddr_DDR, R10
		SMOVIH4.L		b_cnAddr_DDR, R11
		SLDDW		*-AR14[14], R13:R12
		SNOP		5
		SMOVIL		12, R14
		SBR		M7002_datatrans
		SMOVIL		.L19, R62
		SMOVIH		.L19, R62
		SMOVIH4.L		.L19, R63
		SNOP		4
.L19:
	.loc 1 86 0
		SMOVIL.L		aAddr_DDR, R10
		SMOVIH.L		aAddr_DDR, R10
		SMOVIH4.L		aAddr_DDR, R11
		SLDDW		*-AR14[15], R13:R12
		SNOP		5
		SMOVIL		12, R14
		SBR		M7002_datatrans
		SMOVIL		.L20, R62
		SMOVIH		.L20, R62
		SMOVIH4.L		.L20, R63
		SNOP		4
.L20:
	.loc 1 87 0
		SMOVIL.L		deAddr_DDR, R10
		SMOVIH.L		deAddr_DDR, R10
		SMOVIH4.L		deAddr_DDR, R11
		SMOVIL		-128, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R13:R12
		SNOP		5
		SMOVIL		8, R14
		SBR		M7002_datatrans
		SMOVIL		.L21, R62
		SMOVIH		.L21, R62
		SMOVIH4.L		.L21, R63
		SNOP		4
.L21:
	.loc 1 89 0
		SMOVIL		0, R10
		SMOVIL		-1, R12
		SBR		SetTimerPeriod
		SMOVIL		.L22, R62
		SMOVIH		.L22, R62
		SMOVIH4.L		.L22, R63
		SNOP		4
.L22:
	.loc 1 90 0
		SMOVIL		0, R10
		SBR		TimerStart
		SMOVIL		.L23, R62
		SMOVIH		.L23, R62
		SMOVIH4.L		.L23, R63
		SNOP		4
.L23:
	.loc 1 93 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L24, R62
		SMOVIH		.L24, R62
		SMOVIH4.L		.L24, R63
		SNOP		4
.L24:
		SMOVIL		-172, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SSTW		R10, *AR10
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L25, R62
		SMOVIH		.L25, R62
		SMOVIH4.L		.L25, R63
		SNOP		4
.L25:
		SMOV.M1		R10, R42
		SMOVIL		-172, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SSUB.M1		R42, R43, R42
		SMOVIL		-132, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
	.loc 1 95 0
		SMOVIL		0, R42
		SMOVIH		0, R42
		SMOVIL		-88, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
	.loc 1 98 0
		SMOVIL		8, R42
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
		SBR		.L4
		SNOP		6
.L14:
.LBB2:
	.loc 1 99 0
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SADD.M1		15,R42,R44
		SMOVIL		-64, R42
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
		SSHFAR		31, R44, R45
		SSHFLR		28, R45, R45
		SADD.M1		R44,R45,R44
		SSHFAR		4, R44, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 100 0
		SMOVIL		-64, R42
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
		SLDW		*AR10, R40
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R41
		SSHFLR		26, R40, R42
		SSHFLL		6, R41, R37
		SOR		R37, R42, R37
		SSHFLL		6, R40, R36
		SMOV.M1		R36, R10
		SMOV.M1		R37, R11
		SBR		vmalloc
		SMOVIL		.L26, R62
		SMOVIH		.L26, R62
		SMOVIH4.L		.L26, R63
		SNOP		4
.L26:
		SMOV.M1		R10, R42
		SMOVIL		-184, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
		SSHFAR		31, R42, R42
		SMOVIL		-180, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
		SMOVIL		-184, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SMOVIL		-144, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SMVAAGL.M1		OR11, R45:R44
		SNOP		1
		SMVAAGH.M1		OR11, R45:R44
		SNOP		1
		SSTDW		R45:R44, *AR10
	.loc 1 101 0
		SMOVIL		-64, R42
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
		SLDW		*AR10, R46
		SNOP		5
		SMOVIL		-192, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R46, *AR10
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOVIL		-188, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
		SMOVIL		-192, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SSHFLR		26, R43, R42
		SMOVIL		-188, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SSHFLL		6, R43, R39
		SOR		R39, R42, R39
		SMOVIL		-192, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSHFLL		6, R42, R38
		SMOV.M1		R38, R10
		SMOV.M1		R39, R11
		SBR		vmalloc
		SMOVIL		.L27, R62
		SMOVIH		.L27, R62
		SMOVIH4.L		.L27, R63
		SNOP		4
.L27:
		SMOV.M1		R10, R42
		SMOVIL		-200, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
		SSHFAR		31, R42, R42
		SMOVIL		-196, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
		SMOVIL		-200, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SMOVIL		-152, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SMVAAGL.M1		OR11, R45:R44
		SNOP		1
		SMVAAGH.M1		OR11, R45:R44
		SNOP		1
		SSTDW		R45:R44, *AR10
	.loc 1 102 0
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSHFLL		2, R42, R42
		SMOVIL.L		xAddr_DDR, R10
		SMOVIH.L		xAddr_DDR, R10
		SMOVIH4.L		xAddr_DDR, R11
		SMOVIL		-144, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R13:R12
		SNOP		5
		SMOV.M1		R42, R14
		SBR		M7002_datatrans
		SMOVIL		.L28, R62
		SMOVIH		.L28, R62
		SMOVIH4.L		.L28, R63
		SNOP		4
.L28:
	.loc 1 104 0
		SMOVIL.L		yAddr_DDR_cn, R10
		SMOVIH.L		yAddr_DDR_cn, R10
		SMOVIH4.L		yAddr_DDR_cn, R11
		SMOVIL		0, R12
		SMOVIL		512, R14
		SMOVIL		0, R15
		SBR		memset
		SMOVIL		.L29, R62
		SMOVIH		.L29, R62
		SMOVIH4.L		.L29, R63
		SNOP		4
.L29:
	.loc 1 105 0
		SMOVIL.L		yAddr_DDR_vc, R10
		SMOVIH.L		yAddr_DDR_vc, R10
		SMOVIH4.L		yAddr_DDR_vc, R11
		SMOVIL		0, R12
		SMOVIL		512, R14
		SMOVIL		0, R15
		SBR		memset
		SMOVIL		.L30, R62
		SMOVIH		.L30, R62
		SMOVIH4.L		.L30, R63
		SNOP		4
.L30:
	.loc 1 107 0
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSHFLL		2, R42, R42
		SMOVIL.L		yAddr_DDR_vc, R10
		SMOVIH.L		yAddr_DDR_vc, R10
		SMOVIH4.L		yAddr_DDR_vc, R11
		SMOVIL		-152, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R13:R12
		SNOP		5
		SMOV.M1		R42, R14
		SBR		M7002_datatrans
		SMOVIL		.L31, R62
		SMOVIH		.L31, R62
		SMOVIH4.L		.L31, R63
		SNOP		4
.L31:
	.loc 1 109 0
		SMOVIL		-84, R42
		SMOVIL		-1, R43
		SMOVIL		-72, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,AR8
		SNOP		1
		SMOVIL.L		xAddr_DDR, R10
		SMOVIH.L		xAddr_DDR, R10
		SMOVIH4.L		xAddr_DDR, R11
		SMOVIL.L		b_cnAddr_DDR, R12
		SMOVIH.L		b_cnAddr_DDR, R12
		SMOVIH4.L		b_cnAddr_DDR, R13
		SMOVIL.L		aAddr_DDR, R14
		SMOVIH.L		aAddr_DDR, R14
		SMOVIH4.L		aAddr_DDR, R15
		SMOVIL.L		deAddr_DDR, R16
		SMOVIH.L		deAddr_DDR, R16
		SMOVIH4.L		deAddr_DDR, R17
		SMOVIL.L		yAddr_DDR_cn, R18
		SMOVIH.L		yAddr_DDR_cn, R18
		SMOVIH4.L		yAddr_DDR_cn, R19
		SMOVIL		-76, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDW		*AR10, R20
		SNOP		5
		SBR		getTime_cn
		SMOVIL		.L32, R62
		SMOVIH		.L32, R62
		SMOVIH4.L		.L32, R63
		SNOP		4
.L32:
		SSTW		R10, *AR8
	.loc 1 111 0
		SMOVIL		-88, R42
		SMOVIL		-1, R43
		SMOVIL		-72, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,AR8
		SNOP		1
		SMOVIL		-144, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R11:R10
		SNOP		5
		SLDDW		*-AR14[14], R13:R12
		SNOP		5
		SLDDW		*-AR14[15], R15:R14
		SNOP		5
		SMOVIL		-128, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R17:R16
		SNOP		5
		SMOVIL		-152, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R19:R18
		SNOP		5
		SMOVIL		-76, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDW		*AR10, R20
		SNOP		5
		SBR		getTime_vc
		SMOVIL		.L33, R62
		SMOVIH		.L33, R62
		SMOVIH4.L		.L33, R63
		SNOP		4
.L33:
		SSTW		R10, *AR8
	.loc 1 114 0
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSHFLL		2, R42, R42
		SMOVIL		-152, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R11:R10
		SNOP		5
		SMOVIL.L		yAddr_DDR_vc, R12
		SMOVIH.L		yAddr_DDR_vc, R12
		SMOVIH4.L		yAddr_DDR_vc, R13
		SMOV.M1		R42, R14
		SBR		M7002_datatrans
		SMOVIL		.L34, R62
		SMOVIH		.L34, R62
		SMOVIH4.L		.L34, R63
		SNOP		4
.L34:
	.loc 1 116 0
		SMOVIL		0, R42
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
		SBR		.L5
		SNOP		6
.L10:
	.loc 1 117 0
		SMOVIL.L		yAddr_DDR_cn, R46
		SMOVIH.L		yAddr_DDR_cn, R46
		SMOVIH4.L		yAddr_DDR_cn, R47
		SMOVIL		-80, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDW		*AR10, R30
		SNOP		5
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R31
		SADD.M1		R30,R30,R42
		SLTU		R42, R30, R44
		SADD.M1		R31,R31,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R48
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R48,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SMVAGA36.M1		R47:R46, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R48
		SNOP		5
		SMOVIL.L		yAddr_DDR_vc, R46
		SMOVIH.L		yAddr_DDR_vc, R46
		SMOVIH4.L		yAddr_DDR_vc, R47
		SMOVIL		-80, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDW		*AR10, R32
		SNOP		5
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R33
		SADD.M1		R32,R32,R42
		SLTU		R42, R32, R44
		SADD.M1		R33,R33,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R49
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R49,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SMVAGA36.M1		R47:R46, OR11
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
		SFSUBS32.M1		R42, R48, R48
		SNOP		2
		SMOVIL.L		yAddr_DDR_cn, R46
		SMOVIH.L		yAddr_DDR_cn, R46
		SMOVIH4.L		yAddr_DDR_cn, R47
		SMOVIL		-80, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDW		*AR10, R34
		SNOP		5
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R35
		SADD.M1		R34,R34,R42
		SLTU		R42, R34, R44
		SADD.M1		R35,R35,R43
		SADD.M1		R43,R44,R44
		SMOV.M1		R44, R43
		SADD.M1		R42,R42,R44
		SLTU		R44, R42, R49
		SADD.M1		R43,R43,R45
		SADD.M1		R45,R49,R42
		SMOV.M1		R42, R45
		SMOV.M1		R44, R42
		SMOV.M1		R45, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SMVAGA36.M1		R47:R46, OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SMOVIL		1073741824, R45
		SMOVIH		1073741824, R45
		SFRCPS32.M1		R43, R42
		SFMULS32.M1		R43, R42, R44
		SNOP		3
		SFSUBS32.M1		R44, R45, R44
		SNOP		2
		SFMULS32.M1		R42, R44, R42
		SNOP		3
		SFMULS32.M1		R43, R42, R44
		SNOP		3
		SFSUBS32.M1		R44, R45, R44
		SNOP		2
		SFMULS32.M1		R42, R44, R42
		SNOP		3
		SFMULS32.M1		R48, R42, R43
		SNOP		3
		SMOVIL		1120403456, R42
		SMOVIH		1120403456, R42
		SFMULS32.M1		R43, R42, R42
		SNOP		3
		SMOVIL		-84, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
	.loc 1 118 0
		SMOVIL		-84, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SMOVIL		0, R42
		SMOVIH		0, R42
		SFCMPLS32.M1		R43, R42, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L6
		SNOP		6
.L15:
		SMOVIL		-84, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SMOVIL		-2147483648, R42
		SMOVIH		-2147483648, R42
		SXOR		R42, R43, R42
		SMOVIL		-84, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
.L6:
	.loc 1 119 0
		SMOVIL		-84, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SMOVIL		-88, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SFCMPGS32.M1		R43, R42, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L8
		SNOP		6
.L16:
		SMOVIL		-84, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SMOVIL		-88, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
.L8:
	.loc 1 116 0
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SADD.M1		1,R42,R42
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
.L5:
		SMOVIL		-80, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SLT		R43, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L10
		SNOP		6
	.loc 1 121 0
		SMOVIL		-88, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SFSPDP32T.M1		R42, R45:R44
		SNOP		1
		SMOVIL		1202590843, R42
		SMOVIH		1202590843, R42
		SMOVIL		1066695393, R43
		SMOVIH		1066695393, R43
		SFCMPGD.M1		R45:R44, R43:R42, R42
		SNOP		1
		SMOV.M1		R42, R0
	[!R0]	SBR		.L18
		SNOP		6
.L17:
	.loc 1 122 0
		SMOVIL		-88, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SFSPDP32T.M1		R42, R43:R42
		SNOP		1
		SMOVIL.L		.LC0, R44
		SMOVIH.L		.LC0, R44
		SMOVIH4.L		.LC0, R45
		SSTDW		R45:R44, *+AR15[1]
		SSTDW		R43:R42, *+AR15[2]
		SBR		printf
		SMOVIL		.L35, R62
		SMOVIH		.L35, R62
		SMOVIH4.L		.L35, R63
		SNOP		4
.L35:
		SBR		.L13
		SNOP		6
.L18:
	.loc 1 124 0
		SMOVIL.L		.LC1, R42
		SMOVIH.L		.LC1, R42
		SMOVIH4.L		.LC1, R43
		SSTDW		R43:R42, *+AR15[1]
		SBR		printf
		SMOVIL		.L36, R62
		SMOVIH		.L36, R62
		SMOVIH4.L		.L36, R63
		SNOP		4
.L36:
.L13:
	.loc 1 126 0
		SMOVIL		-84, R42
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
		SLDW		*AR10, R43
		SNOP		5
		SMOVIL		-132, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSUB.M1		R42, R43, R45
		SMOVIL		-88, R42
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
		SLDW		*AR10, R43
		SNOP		5
		SMOVIL		-132, R46
		SMOVIL		-1, R47
		SADDA.M1		R47:R46,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSUB.M1		R42, R43, R44
		SMOVIL.L		.LC2, R42
		SMOVIH.L		.LC2, R42
		SMOVIH4.L		.LC2, R43
		SSTDW		R43:R42, *+AR15[1]
		SMOVIL		-76, R46
		SMOVIL		-1, R47
		SADDA.M1		R47:R46,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSTW		R42, *+AR15[4]
		SSTW		R45, *+AR15[5]
		SSTW		R44, *+AR15[6]
		SBR		printf
		SMOVIL		.L37, R62
		SMOVIH		.L37, R62
		SMOVIH4.L		.L37, R63
		SNOP		4
.L37:
	.loc 1 127 0
		SMOVIL		-144, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R11:R10
		SNOP		5
		SBR		vfree
		SMOVIL		.L38, R62
		SMOVIH		.L38, R62
		SMOVIH4.L		.L38, R63
		SNOP		4
.L38:
	.loc 1 128 0
		SMOVIL		-152, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDDW		*AR10, R11:R10
		SNOP		5
		SBR		vfree
		SMOVIL		.L39, R62
		SMOVIH		.L39, R62
		SMOVIH4.L		.L39, R63
		SNOP		4
.L39:
.LBE2:
	.loc 1 98 0
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SADD.M1		8,R42,R42
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
.L4:
		SMOVIL		-76, R44
		SMOVIL		-1, R45
		SADDA.M1		R45:R44,AR14,AR10
		SNOP		1
		SLDW		*AR10, R43
		SNOP		5
		SMOVIL		128, R42
		SLT		R42, R43, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L14
		SNOP		6
	.loc 1 133 0
		SLDDW		*+AR15[20], R31:R30
		SNOP		5
		SLDDW		*+AR15[21], R33:R32
		SNOP		5
		SLDDW		*+AR15[22], R35:R34
		SNOP		5
		SLDDW		*+AR15[23], R37:R36
		SNOP		5
		SLDDW		*+AR15[24], R39:R38
		SNOP		5
		SLDDW		*+AR15[25], R41:R40
		SNOP		5
		SLDDW		*+AR15[26], R7:R6
		SNOP		5
		SMVAGA36.M1		R7:R6, AR8
		SNOP		1
		SLDDW		*+AR15[27], R63:R62
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
.LFE3:
	.size	main, .-main
	.section	.text.getTime_vc,"ax",@progbits
	.align	2
	.global	getTime_vc
	.type	getTime_vc, @function
getTime_vc:
.LFB4:
	.loc 1 136 0
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI3:
		SADDA.M1		16,AR15,AR14
.LCFI4:
		SNOP		1
		SMOVIL		-64, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[8]
.LCFI5:
		SSTDW		R11:R10, *-AR14[4]
		SSTDW		R13:R12, *-AR14[5]
		SSTDW		R15:R14, *-AR14[6]
		SSTDW		R17:R16, *-AR14[7]
		SSTDW		R19:R18, *-AR14[8]
		SMOVIL		-68, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SSTW		R20, *AR10
	.loc 1 138 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L42, R62
		SMOVIH		.L42, R62
		SMOVIH4.L		.L42, R63
		SNOP		4
.L42:
		SMOV.M1		R10, R42
		SSTW		R42, *-AR14[5]
	.loc 1 139 0
		SLDDW		*-AR14[4], R11:R10
		SNOP		5
		SLDDW		*-AR14[5], R13:R12
		SNOP		5
		SLDDW		*-AR14[6], R15:R14
		SNOP		5
		SLDDW		*-AR14[7], R17:R16
		SNOP		5
		SLDDW		*-AR14[8], R19:R18
		SNOP		5
		SMOVIL		-68, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDW		*AR10, R20
		SNOP		5
		SBR		DSPF_sp_biquad_asm
		SMOVIL		.L43, R62
		SMOVIH		.L43, R62
		SMOVIH4.L		.L43, R63
		SNOP		4
.L43:
	.loc 1 140 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L44, R62
		SMOVIH		.L44, R62
		SMOVIH4.L		.L44, R63
		SNOP		4
.L44:
		SMOV.M1		R10, R42
		SSTW		R42, *-AR14[6]
	.loc 1 141 0
		SLDW		*-AR14[6], R43
		SNOP		5
		SLDW		*-AR14[5], R42
		SNOP		5
		SSUB.M1		R42, R43, R42
	.loc 1 142 0
		SMOV.M1		R42, R10
		SLDDW		*+AR15[8], R63:R62
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
.LFE4:
	.size	getTime_vc, .-getTime_vc
	.section	.text.getTime_cn,"ax",@progbits
	.align	2
	.global	getTime_cn
	.type	getTime_cn, @function
getTime_cn:
.LFB5:
	.loc 1 144 0
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI6:
		SADDA.M1		16,AR15,AR14
.LCFI7:
		SNOP		1
		SMOVIL		-64, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R63:R62, *+AR15[8]
.LCFI8:
		SSTDW		R11:R10, *-AR14[4]
		SSTDW		R13:R12, *-AR14[5]
		SSTDW		R15:R14, *-AR14[6]
		SSTDW		R17:R16, *-AR14[7]
		SSTDW		R19:R18, *-AR14[8]
		SMOVIL		-68, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SSTW		R20, *AR10
	.loc 1 146 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L47, R62
		SMOVIH		.L47, R62
		SMOVIH4.L		.L47, R63
		SNOP		4
.L47:
		SMOV.M1		R10, R42
		SSTW		R42, *-AR14[5]
	.loc 1 147 0
		SLDDW		*-AR14[4], R11:R10
		SNOP		5
		SLDDW		*-AR14[5], R13:R12
		SNOP		5
		SLDDW		*-AR14[6], R15:R14
		SNOP		5
		SLDDW		*-AR14[7], R17:R16
		SNOP		5
		SLDDW		*-AR14[8], R19:R18
		SNOP		5
		SMOVIL		-68, R42
		SMOVIL		-1, R43
		SADDA.M1		R43:R42,AR14,AR10
		SNOP		1
		SLDW		*AR10, R20
		SNOP		5
		SBR		DSPF_sp_biquad_cn
		SMOVIL		.L48, R62
		SMOVIH		.L48, R62
		SMOVIH4.L		.L48, R63
		SNOP		4
.L48:
	.loc 1 148 0
		SMOVIL		0, R10
		SBR		GetTimerCount
		SMOVIL		.L49, R62
		SMOVIH		.L49, R62
		SMOVIH4.L		.L49, R63
		SNOP		4
.L49:
		SMOV.M1		R10, R42
		SSTW		R42, *-AR14[6]
	.loc 1 149 0
		SLDW		*-AR14[6], R43
		SNOP		5
		SLDW		*-AR14[5], R42
		SNOP		5
		SSUB.M1		R42, R43, R42
	.loc 1 150 0
		SMOV.M1		R42, R10
		SLDDW		*+AR15[8], R63:R62
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
.LFE5:
	.size	getTime_cn, .-getTime_cn
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
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xc
	.byte	0xe
	.byte	0
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.byte	0x88
	.byte	0x6
	.byte	0xb8
	.byte	0x8
	.byte	0xb9
	.byte	0x7
	.byte	0xb6
	.byte	0xa
	.byte	0xb7
	.byte	0x9
	.byte	0xb4
	.byte	0xc
	.byte	0xb5
	.byte	0xb
	.byte	0xb2
	.byte	0xe
	.byte	0xb3
	.byte	0xd
	.byte	0xb0
	.byte	0x10
	.byte	0xb1
	.byte	0xf
	.byte	0xae
	.byte	0x12
	.byte	0xaf
	.byte	0x11
	.align	3
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.llong	.LFB4
	.llong	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI3-.LFB4
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xc
	.byte	0xe
	.byte	0
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.align	3
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.llong	.LFB5
	.llong	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI6-.LFB5
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xc
	.byte	0xe
	.byte	0
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x5
	.byte	0x4e
	.byte	0x4
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.align	3
.LEFDE4:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x586
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../main.c"
	.string	"/cygdrive/e/something/newtext/DSPF_sp_biquad/DSPF_sp_biquad/Debug"
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
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
	.string	"main"
	.byte	0x1
	.byte	0x40
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x31f
	.byte	0x4
	.string	"cache"
	.byte	0x1
	.byte	0x42
	.4byte	0x31f
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x4
	.string	"cache1"
	.byte	0x1
	.byte	0x43
	.4byte	0x31f
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x4
	.string	"cache_ok"
	.byte	0x1
	.byte	0x44
	.4byte	0x325
	.byte	0x3
	.byte	0x91
	.byte	0xdc,0x7e
	.byte	0x4
	.string	"b_cnAddr"
	.byte	0x1
	.byte	0x4c
	.4byte	0x32a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x4
	.string	"aAddr"
	.byte	0x1
	.byte	0x4e
	.4byte	0x32a
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7f
	.byte	0x4
	.string	"deAddr"
	.byte	0x1
	.byte	0x4f
	.4byte	0x32a
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0x5
	.byte	0x1
	.string	"M7002_datatrans"
	.byte	0x1
	.byte	0x54
	.4byte	0xff
	.byte	0x1
	.4byte	0x1e6
	.byte	0x6
	.byte	0
	.byte	0x5
	.byte	0x1
	.string	"SetTimerPeriod"
	.byte	0x1
	.byte	0x59
	.4byte	0xff
	.byte	0x1
	.4byte	0x204
	.byte	0x6
	.byte	0
	.byte	0x5
	.byte	0x1
	.string	"TimerStart"
	.byte	0x1
	.byte	0x5a
	.4byte	0xff
	.byte	0x1
	.4byte	0x21e
	.byte	0x6
	.byte	0
	.byte	0x4
	.string	"time_vc"
	.byte	0x1
	.byte	0x5c
	.4byte	0xce
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.byte	0x4
	.string	"time_cn"
	.byte	0x1
	.byte	0x5c
	.4byte	0xce
	.byte	0x3
	.byte	0x91
	.byte	0xe4,0x7e
	.byte	0x4
	.string	"c_time"
	.byte	0x1
	.byte	0x5d
	.4byte	0xce
	.byte	0x3
	.byte	0x91
	.byte	0xfc,0x7e
	.byte	0x7
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x5d
	.4byte	0xff
	.byte	0x1
	.4byte	0x269
	.byte	0x6
	.byte	0
	.byte	0x4
	.string	"nx"
	.byte	0x1
	.byte	0x5e
	.4byte	0xff
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x4
	.string	"i"
	.byte	0x1
	.byte	0x5e
	.4byte	0xff
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x4
	.string	"pct_diff"
	.byte	0x1
	.byte	0x5f
	.4byte	0x330
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x4
	.string	"max_pct_diff"
	.byte	0x1
	.byte	0x5f
	.4byte	0x330
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x8
	.llong	.LBB2
	.llong	.LBE2
	.byte	0x4
	.string	"len_vx"
	.byte	0x1
	.byte	0x63
	.4byte	0xff
	.byte	0x3
	.byte	0x91
	.byte	0xf8,0x7e
	.byte	0x4
	.string	"xAddr"
	.byte	0x1
	.byte	0x64
	.4byte	0x346
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0x5
	.byte	0x1
	.string	"vmalloc"
	.byte	0x1
	.byte	0x64
	.4byte	0xff
	.byte	0x1
	.4byte	0x2fb
	.byte	0x6
	.byte	0
	.byte	0x4
	.string	"yAddr"
	.byte	0x1
	.byte	0x65
	.4byte	0x346
	.byte	0x3
	.byte	0x91
	.byte	0xe8,0x7e
	.byte	0x9
	.byte	0x1
	.string	"vfree"
	.byte	0x1
	.byte	0x7f
	.4byte	0xff
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x8
	.4byte	0xff
	.byte	0xb
	.4byte	0xff
	.byte	0xa
	.byte	0x8
	.4byte	0x330
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.byte	0xc
	.byte	0x1
	.4byte	0x330
	.4byte	0x346
	.byte	0xd
	.byte	0xf
	.byte	0
	.byte	0xa
	.byte	0x8
	.4byte	0x339
	.byte	0xe
	.byte	0x1
	.string	"getTime_vc"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.4byte	0xce
	.llong	.LFB4
	.llong	.LFE4
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x3f7
	.byte	0xf
	.string	"x"
	.byte	0x1
	.byte	0x88
	.4byte	0x346
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0xf
	.string	"b"
	.byte	0x1
	.byte	0x88
	.4byte	0x32a
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0xf
	.string	"a"
	.byte	0x1
	.byte	0x88
	.4byte	0x32a
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0xf
	.string	"delay"
	.byte	0x1
	.byte	0x88
	.4byte	0x32a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0xf
	.string	"y"
	.byte	0x1
	.byte	0x88
	.4byte	0x346
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xf
	.string	"nx"
	.byte	0x1
	.byte	0x88
	.4byte	0x3f7
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x4
	.string	"time1"
	.byte	0x1
	.byte	0x89
	.4byte	0xce
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x4
	.string	"time2"
	.byte	0x1
	.byte	0x89
	.4byte	0xce
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x10
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x5d
	.4byte	0xff
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	0xff
	.byte	0xe
	.byte	0x1
	.string	"getTime_cn"
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.4byte	0xce
	.llong	.LFB5
	.llong	.LFE5
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x4a7
	.byte	0xf
	.string	"x"
	.byte	0x1
	.byte	0x90
	.4byte	0x32a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0xf
	.string	"b"
	.byte	0x1
	.byte	0x90
	.4byte	0x32a
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0xf
	.string	"a"
	.byte	0x1
	.byte	0x90
	.4byte	0x32a
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0xf
	.string	"delay"
	.byte	0x1
	.byte	0x90
	.4byte	0x32a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0xf
	.string	"y"
	.byte	0x1
	.byte	0x90
	.4byte	0x32a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xf
	.string	"nx"
	.byte	0x1
	.byte	0x90
	.4byte	0x3f7
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x4
	.string	"time1"
	.byte	0x1
	.byte	0x91
	.4byte	0xce
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x4
	.string	"time2"
	.byte	0x1
	.byte	0x91
	.4byte	0xce
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x10
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x5d
	.4byte	0xff
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	0x330
	.4byte	0x4b7
	.byte	0x13
	.4byte	0x123
	.byte	0x7f
	.byte	0
	.byte	0x14
	.string	"yAddr_DDR_cn"
	.byte	0x1
	.byte	0x15
	.4byte	0x4a7
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	yAddr_DDR_cn
	.byte	0x14
	.string	"yAddr_DDR_vc"
	.byte	0x1
	.byte	0x16
	.4byte	0x4a7
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	yAddr_DDR_vc
	.byte	0x12
	.4byte	0x330
	.4byte	0x505
	.byte	0x13
	.4byte	0x123
	.byte	0x1
	.byte	0
	.byte	0x14
	.string	"deAddr_DDR"
	.byte	0x1
	.byte	0x18
	.4byte	0x4f5
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	deAddr_DDR
	.byte	0x12
	.4byte	0x330
	.4byte	0x532
	.byte	0x13
	.4byte	0x123
	.byte	0x2
	.byte	0
	.byte	0x14
	.string	"aAddr_DDR"
	.byte	0x1
	.byte	0x19
	.4byte	0x522
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	aAddr_DDR
	.byte	0x14
	.string	"b_cnAddr_DDR"
	.byte	0x1
	.byte	0x1a
	.4byte	0x522
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	b_cnAddr_DDR
	.byte	0x14
	.string	"xAddr_DDR"
	.byte	0x1
	.byte	0x1c
	.4byte	0x4a7
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.llong	xAddr_DDR
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
	.byte	0x5
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
	.byte	0x6
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
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
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0x96,0x42
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x3f
	.byte	0xc
	.byte	0x2
	.byte	0xa
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
	.byte	0
	.llong	.LCFI0
	.llong	.LCFI1
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.llong	.LCFI1
	.llong	.LFE3
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.llong	0
	.llong	0
.LLST1:
	.llong	.LFB4
	.llong	.LCFI3
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI3
	.llong	.LCFI4
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.llong	.LCFI4
	.llong	.LFE4
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.llong	0
	.llong	0
.LLST2:
	.llong	.LFB5
	.llong	.LCFI6
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI6
	.llong	.LCFI7
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.llong	.LCFI7
	.llong	.LFE5
	.2byte	0x2
	.byte	0x7e
	.byte	0
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
	.section	.debug_str,"",@progbits
.LASF0:
	.string	"GetTimerCount"
