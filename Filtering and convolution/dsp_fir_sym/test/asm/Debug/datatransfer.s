	.file	"datatransfer.c"
	.section	.text.M7002_datatrans,"ax",@progbits
	.align	2
	.global	M7002_datatrans
	.type	M7002_datatrans, @function
M7002_datatrans:
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
		SADDA.M1		16,AR15,AR14
		SNOP		1
		SMOVIL		-48, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R11:R10, *-AR14[5]
		SSTDW		R13:R12, *-AR14[6]
		SSTW		R14, *-AR14[13]
		SMOVIL		0, R42
		SSTW		R42, *-AR14[4]
		SMOVIL		0, R42
		SSTW		R42, *-AR14[5]
		SMOVIL		0, R42
		SSTW		R42, *-AR14[3]
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
		SLDW		*-AR14[4], R43
		SNOP		5
		SMOVIL		20482, R42
		SOR		R42, R43, R42
		SSTW		R42, *-AR14[4]
		SLDW		*-AR14[13], R42
		SNOP		5
		SSHFLR		2, R42, R42
		SSTW		R42, *-AR14[5]
		SLDW		*-AR14[5], R43
		SNOP		5
		SMOVIL		65535, R42
		SMOVIH		65535, R42
		SLT		R42, R43, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L2
		SNOP		6
		SMOVIL		-65536, R42
		SMOVIH		-65536, R42
		SSTW		R42, *-AR14[3]
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
		SLDW		*-AR14[5], R42
		SNOP		5
		SSTW		R42, *-AR14[3]
.L3:
		SMOVIL		1075576784, R42
		SMOVIH		1075576784, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[4]
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		-1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
		SMOVIL		1075445760, R42
		SMOVIH		1075445760, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[4]
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SLDW		*-AR14[4], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
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
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
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
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SLDW		*-AR14[3], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
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
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SLDW		*-AR14[3], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
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
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		0, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
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
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		0, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
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
		SMOVIL		1075576824, R42
		SMOVIH		1075576824, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[4]
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
		SMOVIL		1075576784, R42
		SMOVIH		1075576784, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[4]
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
		SNOP		1
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
	.size	M7002_datatrans, .-M7002_datatrans
	.section	.text.M7002_mat_transpose,"ax",@progbits
	.align	2
	.global	M7002_mat_transpose
	.type	M7002_mat_transpose, @function
M7002_mat_transpose:
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
		SADDA.M1		16,AR15,AR14
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
		SMOVIL		0, R42
		SSTW		R42, *-AR14[4]
		SMOVIL		0, R42
		SSTW		R42, *-AR14[5]
		SMOVIL		0, R42
		SSTW		R42, *-AR14[3]
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
		SLDW		*-AR14[4], R43
		SNOP		5
		SMOVIL		20738, R42
		SOR		R42, R43, R42
		SSTW		R42, *-AR14[4]
		SLDW		*-AR14[13], R42
		SNOP		5
		SSHFLL		16, R42, R42
		SSTW		R42, *-AR14[5]
		SLDW		*-AR14[14], R43
		SNOP		5
		SMOVIL		65535, R42
		SMOVIH		65535, R42
		SAND		R42, R43, R42
		SLDW		*-AR14[5], R43
		SNOP		5
		SOR		R42, R43, R42
		SSTW		R42, *-AR14[5]
		SLDW		*-AR14[15], R42
		SNOP		5
		SMOVIL		1, R0
		SEQ		R0, R42, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L7
		SNOP		6
		SLDW		*-AR14[14], R42
		SNOP		5
		SSHFLR		31, R42, R43
		SADD.M1		R42,R43,R42
		SSHFAR		1, R42, R42
		SSHFLL		16, R42, R42
		SSTW		R42, *-AR14[3]
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
		SLDW		*-AR14[14], R42
		SNOP		5
		SSHFLL		16, R42, R42
		SSTW		R42, *-AR14[3]
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
		SMOVIL		1075576784, R42
		SMOVIH		1075576784, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[4]
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		-1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
		SMOVIL		1075445760, R42
		SMOVIH		1075445760, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[4]
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SLDW		*-AR14[4], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
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
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SLDW		*-AR14[5], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
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
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SLDW		*-AR14[3], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
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
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		0, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
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
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		0, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
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
		SMOVIL		1075576824, R42
		SMOVIH		1075576824, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[4]
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
		SMOVIL		1075576784, R42
		SMOVIH		1075576784, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[4]
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
		SNOP		1
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
	.size	M7002_mat_transpose, .-M7002_mat_transpose
	.section	.text.M7002_datatrans_index,"ax",@progbits
	.align	2
	.global	M7002_datatrans_index
	.type	M7002_datatrans_index, @function
M7002_datatrans_index:
		SMVAAGL.M1		AR14, R7:R6
		SNOP		1
		SMVAAGH.M1		AR14, R7:R6
		SNOP		1
		SSTDW		R7:R6, *AR15--[2]
		SADDA.M1		16,AR15,AR14
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
		SMOVIL		0, R42
		SSTW		R42, *-AR14[3]
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
		SLDW		*-AR14[3], R43
		SNOP		5
		SMOVIL		20482, R42
		SOR		R42, R43, R42
		SSTW		R42, *-AR14[3]
		SMOVIL		0, R42
		SSTW		R42, *-AR14[4]
		SLDW		*-AR14[11], R42
		SNOP		5
		SSHFLL		16, R42, R42
		SSTW		R42, *-AR14[4]
		SLDW		*-AR14[12], R43
		SNOP		5
		SMOVIL		65535, R42
		SMOVIH		65535, R42
		SAND		R42, R43, R42
		SLDW		*-AR14[4], R43
		SNOP		5
		SOR		R42, R43, R42
		SSTW		R42, *-AR14[4]
		SMOVIL		1075576784, R42
		SMOVIH		1075576784, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[3]
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMOVIL		-1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
		SMOVIL		1075445760, R42
		SMOVIH		1075445760, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[3]
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SLDW		*-AR14[3], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
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
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMOVIL		1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
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
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SLDW		*-AR14[4], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
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
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SLDW		*-AR14[4], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
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
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SLDW		*-AR14[13], R44
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
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
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMOVIL		0, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
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
		SMOVIL		1075576824, R42
		SMOVIH		1075576824, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[3]
		SLDDW		*-AR14[3], R43:R42
		SNOP		5
		SMOVIL		1, R44
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R44, *AR10
		SMOVIL		1075576784, R42
		SMOVIH		1075576784, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[3]
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
		SNOP		1
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
	.size	M7002_datatrans_index, .-M7002_datatrans_index
