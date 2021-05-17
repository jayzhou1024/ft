	.file	"datatransfer.c"
.text;
.Ltext0:
	.section	.text.M7002_datatrans,"ax",@progbits
	.align	2
	.global	M7002_datatrans
	.type	M7002_datatrans, @function
M7002_datatrans:
.LFB0:
	.file 1 "../datatransfer.c"
	.loc 1 4 0
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI0:
		SADDA.M1		16,AR15,AR14
.LCFI1:
		SNOP		1
		SMOVIL		-48, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R11:R10, *-AR14[5]
		SSTDW		R13:R12, *-AR14[6]
		SSTW		R14, *-AR14[13]
	.loc 1 6 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[4]
	.loc 1 7 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[5]
	.loc 1 8 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[3]
	.loc 1 9 0
		SLDDW		*-AR14[5], R43:R42
		SNOP		5
		SMOV.M1		R42, R42
		SMOV.M1		R43, R43
		SSHFLL		28, R43, R48
		SSHFLR		4, R42, R46
		SOR		R46, R48, R46
		SSHFAR		4, R43, R47
		SMOV.M1		R46, R43
		SMOVIL		-268435456, R42
		SMOVIH		-268435456, R42
		SAND		R42, R43, R42
		SSTW		R42, *-AR14[4]
	.loc 1 10 0
		SLDDW		*-AR14[6], R43:R42
		SNOP		5
		SMOV.M1		R42, R42
		SMOV.M1		R43, R43
		SSHFLL		24, R43, R46
		SSHFLR		8, R42, R44
		SOR		R44, R46, R44
		SSHFAR		8, R43, R45
		SMOV.M1		R44, R43
		SMOVIL		251658240, R42
		SMOVIH		251658240, R42
		SAND		R42, R43, R42
		SLDW		*-AR14[4], R43
		SNOP		5
		SOR		R42, R43, R42
		SSTW		R42, *-AR14[4]
	.loc 1 11 0
		SLDW		*-AR14[4], R43
		SNOP		5
		SMOVIL		20482, R42
		SOR		R42, R43, R42
		SSTW		R42, *-AR14[4]
	.loc 1 12 0
		SLDW		*-AR14[13], R42
		SNOP		5
		SSHFLR		2, R42, R42
		SSTW		R42, *-AR14[5]
	.loc 1 14 0
		SLDW		*-AR14[5], R43
		SNOP		5
		SMOVIL		65535, R42
		SMOVIH		65535, R42
		SLT		R42, R43, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L2
		SNOP		6
	.loc 1 16 0
		SMOVIL		-65536, R42
		SMOVIH		-65536, R42
		SSTW		R42, *-AR14[3]
	.loc 1 17 0
		SLDW		*-AR14[5], R42
		SNOP		5
		SSHFAR		31, R42, R43
		SSHFLR		16, R43, R43
		SADD.M1		R42,R43,R42
		SSHFAR		16, R42, R42
		SMOV.M1		R42, R43
		SMOVIL		65535, R42
		SMOVIH		65535, R42
		SAND		R42, R43, R42
		SLDW		*-AR14[3], R43
		SNOP		5
		SOR		R42, R43, R42
		SSTW		R42, *-AR14[3]
		SBR		.L3
		SNOP		6
.L2:
	.loc 1 20 0
		SLDW		*-AR14[5], R42
		SNOP		5
		SSTW		R42, *-AR14[3]
.L3:
	.loc 1 22 0
		SMOVIL		1075576784, R42
		SMOVIH		1075576784, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 23 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		-1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 26 0
		SMOVIL		1075445760, R42
		SMOVIH		1075445760, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 29 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SLDW		*-AR14[4], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 30 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 33 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 34 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 37 0
		SLDDW		*-AR14[5], R43:R42
		SNOP		5
		SMOV.M1		R42, R42
		SMOV.M1		R43, R43
		SMOV.M1		R42, R44
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 38 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 41 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SLDW		*-AR14[3], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 42 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 45 0
		SLDDW		*-AR14[6], R43:R42
		SNOP		5
		SMOV.M1		R42, R42
		SMOV.M1		R43, R43
		SMOV.M1		R42, R44
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 46 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 49 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SLDW		*-AR14[3], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 50 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 53 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		0, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 54 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 57 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		0, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 58 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 61 0
		SMOVIL		1075576824, R42
		SMOVIH		1075576824, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 62 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 64 0
		SMOVIL		1075576784, R42
		SMOVIH		1075576784, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 67 0
		SNOP		1
.L4:
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SAND		1, R42, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L4
		SNOP		6
	.loc 1 69 0
		SNOP		1
	.loc 1 71 0
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
.LFE0:
	.size	M7002_datatrans, .-M7002_datatrans
	.section	.text.M7002_mat_transpose,"ax",@progbits
	.align	2
	.global	M7002_mat_transpose
	.type	M7002_mat_transpose, @function
M7002_mat_transpose:
.LFB1:
	.loc 1 75 0
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI2:
		SADDA.M1		16,AR15,AR14
.LCFI3:
		SNOP		1
		SMOVIL		-56, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R11:R10, *-AR14[5]
		SSTDW		R13:R12, *-AR14[6]
		SSTW		R14, *-AR14[13]
		SSTW		R16, *-AR14[14]
		SSTW		R18, *-AR14[15]
	.loc 1 77 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[4]
	.loc 1 78 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[5]
	.loc 1 79 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[3]
	.loc 1 80 0
		SLDDW		*-AR14[5], R43:R42
		SNOP		5
		SMOV.M1		R42, R42
		SMOV.M1		R43, R43
		SSHFLL		28, R43, R48
		SSHFLR		4, R42, R46
		SOR		R46, R48, R46
		SSHFAR		4, R43, R47
		SMOV.M1		R46, R43
		SMOVIL		-268435456, R42
		SMOVIH		-268435456, R42
		SAND		R42, R43, R42
		SSTW		R42, *-AR14[4]
	.loc 1 81 0
		SLDDW		*-AR14[6], R43:R42
		SNOP		5
		SMOV.M1		R42, R42
		SMOV.M1		R43, R43
		SSHFLL		24, R43, R46
		SSHFLR		8, R42, R44
		SOR		R44, R46, R44
		SSHFAR		8, R43, R45
		SMOV.M1		R44, R43
		SMOVIL		251658240, R42
		SMOVIH		251658240, R42
		SAND		R42, R43, R42
		SLDW		*-AR14[4], R43
		SNOP		5
		SOR		R42, R43, R42
		SSTW		R42, *-AR14[4]
	.loc 1 82 0
		SLDW		*-AR14[4], R43
		SNOP		5
		SMOVIL		20738, R42
		SOR		R42, R43, R42
		SSTW		R42, *-AR14[4]
	.loc 1 84 0
		SLDW		*-AR14[13], R42
		SNOP		5
		SSHFLL		16, R42, R42
		SSTW		R42, *-AR14[5]
	.loc 1 85 0
		SLDW		*-AR14[14], R43
		SNOP		5
		SMOVIL		65535, R42
		SMOVIH		65535, R42
		SAND		R42, R43, R42
		SLDW		*-AR14[5], R43
		SNOP		5
		SOR		R42, R43, R42
		SSTW		R42, *-AR14[5]
	.loc 1 87 0
		SLDW		*-AR14[15], R42
		SNOP		5
		SMOVIL		1, R0
		SEQ		R0, R42, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L7
		SNOP		6
	.loc 1 89 0
		SLDW		*-AR14[14], R42
		SNOP		5
		SSHFLR		31, R42, R43
		SADD.M1		R42,R43,R42
		SSHFAR		1, R42, R42
		SSHFLL		16, R42, R42
		SSTW		R42, *-AR14[3]
	.loc 1 90 0
		SLDW		*-AR14[13], R42
		SNOP		5
		SSHFLL		1, R42, R43
		SMOVIL		65535, R42
		SMOVIH		65535, R42
		SAND		R42, R43, R42
		SLDW		*-AR14[3], R43
		SNOP		5
		SOR		R42, R43, R42
		SSTW		R42, *-AR14[3]
		SBR		.L8
		SNOP		6
.L7:
	.loc 1 94 0
		SLDW		*-AR14[14], R42
		SNOP		5
		SSHFLL		16, R42, R42
		SSTW		R42, *-AR14[3]
	.loc 1 95 0
		SLDW		*-AR14[13], R43
		SNOP		5
		SMOVIL		65535, R42
		SMOVIH		65535, R42
		SAND		R42, R43, R42
		SLDW		*-AR14[3], R43
		SNOP		5
		SOR		R42, R43, R42
		SSTW		R42, *-AR14[3]
.L8:
	.loc 1 98 0
		SMOVIL		1075576784, R42
		SMOVIH		1075576784, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 99 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		-1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 102 0
		SMOVIL		1075445760, R42
		SMOVIH		1075445760, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 105 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SLDW		*-AR14[4], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 106 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 109 0
		SLDW		*-AR14[15], R42
		SNOP		5
		SMOVIL		0, R0
		SEQ		R0, R42, R42
		SSHFLL		24, R42, R44
		SSHFLR		24, R44, R44
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 110 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 113 0
		SLDDW		*-AR14[5], R43:R42
		SNOP		5
		SMOV.M1		R42, R42
		SMOV.M1		R43, R43
		SMOV.M1		R42, R44
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 114 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 117 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SLDW		*-AR14[5], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 118 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 121 0
		SLDDW		*-AR14[6], R43:R42
		SNOP		5
		SMOV.M1		R42, R42
		SMOV.M1		R43, R43
		SMOV.M1		R42, R44
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 122 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 125 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SLDW		*-AR14[3], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 126 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 129 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		0, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 130 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 133 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		0, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 134 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 137 0
		SMOVIL		1075576824, R42
		SMOVIH		1075576824, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 138 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 140 0
		SMOVIL		1075576784, R42
		SMOVIH		1075576784, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 143 0
		SNOP		1
.L9:
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SAND		1, R42, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L9
		SNOP		6
	.loc 1 145 0
		SNOP		1
	.loc 1 147 0
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
.LFE1:
	.size	M7002_mat_transpose, .-M7002_mat_transpose
	.section	.text.M7002_datatrans_index,"ax",@progbits
	.align	2
	.global	M7002_datatrans_index
	.type	M7002_datatrans_index, @function
M7002_datatrans_index:
.LFB2:
	.loc 1 150 0
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
.LCFI4:
		SADDA.M1		16,AR15,AR14
.LCFI5:
		SNOP		1
		SMOVIL		-48, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R11:R10, *-AR14[4]
		SSTDW		R13:R12, *-AR14[5]
		SSTW		R14, *-AR14[11]
		SSTW		R16, *-AR14[12]
		SSTW		R18, *-AR14[13]
	.loc 1 152 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[3]
	.loc 1 153 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOV.M1		R42, R42
		SMOV.M1		R43, R43
		SSHFLL		28, R43, R48
		SSHFLR		4, R42, R46
		SOR		R46, R48, R46
		SSHFAR		4, R43, R47
		SMOV.M1		R46, R43
		SMOVIL		-268435456, R42
		SMOVIH		-268435456, R42
		SAND		R42, R43, R42
		SSTW		R42, *-AR14[3]
	.loc 1 154 0
		SLDDW		*-AR14[5], R43:R42
		SNOP		5
		SMOV.M1		R42, R42
		SMOV.M1		R43, R43
		SSHFLL		24, R43, R46
		SSHFLR		8, R42, R44
		SOR		R44, R46, R44
		SSHFAR		8, R43, R45
		SMOV.M1		R44, R43
		SMOVIL		251658240, R42
		SMOVIH		251658240, R42
		SAND		R42, R43, R42
		SLDW		*-AR14[3], R43
		SNOP		5
		SOR		R42, R43, R42
		SSTW		R42, *-AR14[3]
	.loc 1 155 0
		SLDW		*-AR14[3], R43
		SNOP		5
		SMOVIL		20482, R42
		SOR		R42, R43, R42
		SSTW		R42, *-AR14[3]
	.loc 1 156 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[4]
	.loc 1 158 0
		SLDW		*-AR14[11], R42
		SNOP		5
		SSHFLL		16, R42, R42
		SSTW		R42, *-AR14[4]
	.loc 1 159 0
		SLDW		*-AR14[12], R43
		SNOP		5
		SMOVIL		65535, R42
		SMOVIH		65535, R42
		SAND		R42, R43, R42
		SLDW		*-AR14[4], R43
		SNOP		5
		SOR		R42, R43, R42
		SSTW		R42, *-AR14[4]
	.loc 1 162 0
		SMOVIL		1075576784, R42
		SMOVIH		1075576784, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[3]
	.loc 1 163 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMOVIL		-1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 166 0
		SMOVIL		1075445760, R42
		SMOVIH		1075445760, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[3]
	.loc 1 169 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SLDW		*-AR14[3], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 170 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[3]
	.loc 1 173 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMOVIL		1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 174 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[3]
	.loc 1 177 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOV.M1		R42, R42
		SMOV.M1		R43, R43
		SMOV.M1		R42, R44
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 178 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[3]
	.loc 1 181 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SLDW		*-AR14[4], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 182 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[3]
	.loc 1 185 0
		SLDDW		*-AR14[5], R43:R42
		SNOP		5
		SMOV.M1		R42, R42
		SMOV.M1		R43, R43
		SMOV.M1		R42, R44
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 186 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[3]
	.loc 1 189 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SLDW		*-AR14[4], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 190 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[3]
	.loc 1 193 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SLDW		*-AR14[13], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 194 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[3]
	.loc 1 197 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMOVIL		0, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 198 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		4,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[3]
	.loc 1 201 0
		SMOVIL		1075576824, R42
		SMOVIH		1075576824, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[3]
	.loc 1 202 0
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMOVIL		1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
	.loc 1 204 0
		SMOVIL		1075576784, R42
		SMOVIH		1075576784, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[3]
	.loc 1 207 0
		SNOP		1
.L12:
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SAND		1, R42, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L12
		SNOP		6
	.loc 1 209 0
		SNOP		1
	.loc 1 211 0
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
.LFE2:
	.size	M7002_datatrans_index, .-M7002_datatrans_index
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
	.llong	.LFB0
	.llong	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xc
	.byte	0xe
	.byte	0
	.align	3
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.llong	.LFB1
	.llong	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI2-.LFB1
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xc
	.byte	0xe
	.byte	0
	.align	3
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.llong	.LFB2
	.llong	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI4-.LFB2
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xc
	.byte	0xe
	.byte	0
	.align	3
.LEFDE4:
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2cf
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.string	"GNU C 4.7.0"
	.byte	0x1
	.string	"../datatransfer.c"
	.string	"/cygdrive/e/project/\351\241\271\347\233\256/ft-m7002-function-base/Filtering and convolution/DSPF_sp_fir_gen/test/asm/Debug"
	.4byte	.Ldebug_ranges0+0
	.llong	0
	.llong	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.string	"M7002_datatrans"
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.llong	.LFB0
	.llong	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x148
	.byte	0x3
	.string	"src"
	.byte	0x1
	.byte	0x3
	.4byte	0x148
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x3
	.string	"dst"
	.byte	0x1
	.byte	0x3
	.4byte	0x148
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x3
	.string	"bytes"
	.byte	0x1
	.byte	0x3
	.4byte	0x14a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x4
	.4byte	.LASF0
	.byte	0x1
	.byte	0x5
	.4byte	0x15f
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x5
	.string	"word0"
	.byte	0x1
	.byte	0x6
	.4byte	0x16a
	.byte	0x2
	.byte	0x91
	.byte	0x70
	.byte	0x5
	.string	"word_n"
	.byte	0x1
	.byte	0x7
	.4byte	0x16a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x5
	.string	"byte1"
	.byte	0x1
	.byte	0x8
	.4byte	0x16a
	.byte	0x2
	.byte	0x91
	.byte	0x74
	.byte	0
	.byte	0x6
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.byte	0x8
	.byte	0x8
	.4byte	0x165
	.byte	0x9
	.4byte	0x16a
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x1
	.string	"M7002_mat_transpose"
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.llong	.LFB1
	.llong	.LFE1
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x229
	.byte	0x3
	.string	"src"
	.byte	0x1
	.byte	0x4a
	.4byte	0x148
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x3
	.string	"dst"
	.byte	0x1
	.byte	0x4a
	.4byte	0x148
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x3
	.string	"row"
	.byte	0x1
	.byte	0x4a
	.4byte	0x16a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x3
	.string	"col"
	.byte	0x1
	.byte	0x4a
	.4byte	0x16a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x3
	.string	"flag"
	.byte	0x1
	.byte	0x4a
	.4byte	0x16a
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x4
	.4byte	.LASF0
	.byte	0x1
	.byte	0x4c
	.4byte	0x15f
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x5
	.string	"word0"
	.byte	0x1
	.byte	0x4d
	.4byte	0x16a
	.byte	0x2
	.byte	0x91
	.byte	0x70
	.byte	0x5
	.string	"byte0"
	.byte	0x1
	.byte	0x4e
	.4byte	0x16a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x5
	.string	"byte1"
	.byte	0x1
	.byte	0x4f
	.4byte	0x16a
	.byte	0x2
	.byte	0x91
	.byte	0x74
	.byte	0
	.byte	0xa
	.byte	0x1
	.string	"M7002_datatrans_index"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.llong	.LFB2
	.llong	.LFE2
	.4byte	.LLST2
	.byte	0x1
	.byte	0x3
	.string	"src"
	.byte	0x1
	.byte	0x95
	.4byte	0x148
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x3
	.string	"dst"
	.byte	0x1
	.byte	0x95
	.4byte	0x148
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x3
	.string	"frame"
	.byte	0x1
	.byte	0x95
	.4byte	0x16a
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x3
	.string	"elem"
	.byte	0x1
	.byte	0x95
	.4byte	0x16a
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x3
	.string	"index"
	.byte	0x1
	.byte	0x95
	.4byte	0x16a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x4
	.4byte	.LASF0
	.byte	0x1
	.byte	0x97
	.4byte	0x15f
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x5
	.string	"word0"
	.byte	0x1
	.byte	0x98
	.4byte	0x16a
	.byte	0x2
	.byte	0x91
	.byte	0x74
	.byte	0x5
	.string	"byte"
	.byte	0x1
	.byte	0x9c
	.4byte	0x16a
	.byte	0x2
	.byte	0x91
	.byte	0x70
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
	.byte	0x97,0x42
	.byte	0xc
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x2
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0x97,0x42
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.llong	.LFB0
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
	.llong	.LFE0
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.llong	0
	.llong	0
.LLST1:
	.llong	.LFB1
	.llong	.LCFI2
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI2
	.llong	.LCFI3
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.llong	.LCFI3
	.llong	.LFE1
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.llong	0
	.llong	0
.LLST2:
	.llong	.LFB2
	.llong	.LCFI4
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.llong	.LCFI4
	.llong	.LCFI5
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.llong	.LCFI5
	.llong	.LFE2
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
	.llong	.LFB0
	.llong	.LFE0-.LFB0
	.llong	.LFB1
	.llong	.LFE1-.LFB1
	.llong	.LFB2
	.llong	.LFE2-.LFB2
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LFB0
	.llong	.LFE0
	.llong	.LFB1
	.llong	.LFE1
	.llong	.LFB2
	.llong	.LFE2
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"",@progbits
.LASF0:
	.string	"address"
