	.file	"DSP_firlms2_vc.c"
.text;
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DSP_firlms2_vc,"ax",@progbits
	.align	2
	.global	DSP_firlms2_vc
	.type	DSP_firlms2_vc, @function
DSP_firlms2_vc:
.LFB3:
	.file 1 "../DSP_firlms2_vc.c"
	.loc 1 11 0
	.cfi_startproc
		SMOVIL		512, R6
		SMOVIL		0, R7
		SSUBA.L		R7:R6, AR7, AR7
		SNOP		2
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
		SMOVIL		-104, R6
		SMOVIL		-1, R7
		SADDA.M1		R7:R6,AR15,AR15
		SNOP		1
		SSTDW		R11:R10, *-AR14[12]
		SSTDW		R13:R12, *-AR14[13]
		SMOVIL		-98, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTH		R14, *AR10
		SMOVIL		-104, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R16, *AR10
	.loc 1 12 0
		SMOVIL		1075183616, R42
		SMOVIH		1075183616, R42
		SMOVIL		0, R43
		SSTDW		R43:R42, *-AR14[4]
	.loc 1 13 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMOVIL		67305985, R56
		SMOVIH		67305985, R56
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 14 0
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
		SMOVIL		134678021, R56
		SMOVIH		134678021, R56
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 15 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		8,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		202050057, R56
		SMOVIH		202050057, R56
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 16 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		12,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		269422093, R56
		SMOVIH		269422093, R56
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 17 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		16,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		100925952, R56
		SMOVIH		100925952, R56
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 18 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		20,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		235670024, R56
		SMOVIH		235670024, R56
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 19 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		24,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		0, R56
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 20 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		28,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		0, R56
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 22 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADD.LS		OR11,32,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		117768961, R56
		SMOVIH		117768961, R56
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 23 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADD.LS		OR11,36,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		252513033, R56
		SMOVIH		252513033, R56
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 24 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADD.LS		OR11,40,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		0, R56
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 25 0
		SLDDW		*-AR14[4], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADD.LS		OR11,44,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		0, R56
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 29 0
		SLDDW		*-AR14[13], R43:R42
		SNOP		5
		SSTDW		R43:R42, *-AR14[5]
	.loc 1 30 0
		SMOVIL		320, R42
		SMOVIL		0, R43
		SADDA.M1		R43:R42,AR7,OR0
		SNOP		2
		SMVAAGL.M1		OR0, R43:R42
		SNOP		1
		SMVAAGH.M1		OR0, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[6]
	.loc 1 32 0
		SMOVIL		256, R42
		SMOVIL		0, R43
		SADDA.M1		R43:R42,AR7,OR0
		SNOP		2
		SMVAAGL.M1		OR0, R43:R42
		SNOP		1
		SMVAAGH.M1		OR0, R43:R42
		SNOP		1
		SSTDW		R43:R42, *-AR14[7]
	.loc 1 34 0
		SMOVIL		-104, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
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
		SADD.M1		15,R42,R42
		SSHFAR		4, R42, R42
		SSTW		R42, *-AR14[15]
	.loc 1 37 0
		SMOVIL		-76, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		-98, R56
		SMOVIL		-1, R57
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R57:R56,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R57:R56
		SNOP		1
		SMVAAGH.M1		OR11, R57:R56
		SNOP		1
		SMVAGA36.M1		R57:R56, AR10
		SNOP		1
		SLDH		*AR10, R56
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTH		R56, *AR10
	.loc 1 38 0
		SMOVIL		-76, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, OR11
		SNOP		1
		SADDA.M1		2,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMOVIL		-98, R56
		SMOVIL		-1, R57
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R57:R56,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R57:R56
		SNOP		1
		SMVAAGH.M1		OR11, R57:R56
		SNOP		1
		SMVAGA36.M1		R57:R56, AR10
		SNOP		1
		SLDH		*AR10, R56
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTH		R56, *AR10
	.loc 1 39 0
		SMOVIL		-76, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
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
		SVBCAST.M1 		 R42,VR3
		SNOP		3
		VSTW.LS 		VR3,*+AR7[48]
	.loc 1 40 0
		SMOVIL		0, R42
		SVBCAST.M1 		 R42,VR3
		SNOP		3
		VSTW.LS 		VR3,*+AR7[32]
	.loc 1 41 0
		SMOVIL		192, R42
		SMOVIL		0, R43
		SADDA.M1		R43:R42,AR7,OR0
		SNOP		2
		SMVAAGL.M1		OR0, R43:R42
		SNOP		1
		SMVAAGH.M1		OR0, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDH.LS 		*AR1,VR3
		SNOP		7
		VSTH.LS 		VR3,*+AR7[240]
	.loc 1 42 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[4]
	.loc 1 47 0
		SMOVIL		0, R42
		SSTW		R42, *-AR14[3]
		SBR		.L2
		SNOP		6
.L7:
.LBB2:
	.loc 1 49 0
		SLDDW		*-AR14[13], R57:R56
		SNOP		5
		SLDW		*-AR14[3], R50
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R51
		SMOV.M1		R50, R42
		SMOV.M1		R51, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLR		31, R42, R58
		SSHFLL		1, R43, R45
		SOR		R45, R58, R45
		SSHFLL		1, R42, R44
		SMVAGA36.M1		R57:R56, OR11
		SNOP		1
		SADDA.M1		R45:R44,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDH.LS 		*AR1,VR3
		SNOP		7
		VSTH.LS 		VR3,*+AR7[224]
	.loc 1 51 0
		SLDW		*-AR14[3], R42
		SNOP		5
		SSHFAR		1, R42, R42
		SLDDW		*-AR14[5], R57:R56
		SNOP		5
		SMOV.M1		R42, R52
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R53
		SMOV.M1		R52, R42
		SMOV.M1		R53, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLR		30, R42, R58
		SSHFLL		2, R43, R47
		SOR		R47, R58, R47
		SSHFLL		2, R42, R46
		SMVAGA36.M1		R57:R56, OR11
		SNOP		1
		SADDA.M1		R47:R46,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDW.LS 		*AR1,VR3
		SNOP		7
		VSTW.LS 		VR3,*+AR7[80]
	.loc 1 52 0
		SMOVIL		0, R42
		SMVCGC.L		R42, SMR
		SNOP		2
	.loc 1 53 0
		VLDW.LS 		*+AR7[80],VR3
		SNOP		7
		VLDW.LS 		*+AR7[80],VR4
		SNOP		7
		VSHUFH		 VR3,VR4,VR3
		SNOP		2
		VSTW.LS 		VR3,*+AR7[80]
	.loc 1 54 0
		SLDDW		*-AR14[6], R43:R42
		SNOP		5
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDH.LS 		*AR1,VR3
		SNOP		7
		VSTH.LS 		VR3,*+AR7[208]
	.loc 1 56 0
		SLDDW		*-AR14[12], R57:R56
		SNOP		5
		SLDW		*-AR14[3], R54
		SNOP		5
		SLDW		*-AR14[3], R42
		SNOP		5
		SSHFAR		31, R42, R42
		SMOV.M1		R42, R55
		SMOV.M1		R54, R42
		SMOV.M1		R55, R43
	;no-op trunc di R43:R42 to pdi R43:R42
		SSHFLR		31, R42, R58
		SSHFLL		1, R43, R49
		SOR		R49, R58, R49
		SSHFLL		1, R42, R48
		SMVAGA36.M1		R57:R56, OR11
		SNOP		1
		SADDA.M1		R49:R48,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR1
		SNOP		1
		VLDH.LS 		*AR1,VR3
		SNOP		7
		VSTH.LS 		VR3,*+AR7[192]
	.loc 1 58 0
		VLDH.LS 		*+AR7[240],VR4
		SNOP		7
		VLDH.LS 		*+AR7[224],VR5
		SNOP		7
		VLDW.LS 		*+AR7[32],VR3
		SNOP		7
		VMULAS16T.M1		 VR4,VR5,VR3,VR3
		SNOP		2
		VSTW.LS 		VR3,*+AR7[64]
	.loc 1 60 0
		VLDW.LS 		*+AR7[64],VR3
		SNOP		7
		VSHFAR		15,VR3, VR3
		VSTW.LS 		VR3,*+AR7[64]
	.loc 1 62 0
		VLDH.LS 		*+AR7[208],VR4
		SNOP		7
		VLDW.LS 		*+AR7[32],VR3
		SNOP		7
		VMULAS16T.M1		 1,VR4,VR3,VR3
		SNOP		2
		VSTW.LS 		VR3,*+AR7[16]
	.loc 1 63 0
		VLDW.LS 		*+AR7[64],VR4
		SNOP		7
		VLDW.LS 		*+AR7[16],VR3
		SNOP		7
		VMULIS.M1		 VR3,VR4,VR3
		SNOP		2
		VSTW.LS 		VR3,*+AR7[64]
	.loc 1 64 0
		VLDW.LS 		*+AR7[64],VR3
		SNOP		7
		VLDH.LS 		*+AR7[208],VR4
		SNOP		7
		VLDH.LS 		*+AR7[192],VR5
		SNOP		7
		VMULAS16T.M1		 VR4,VR5,VR3,VR3
		SNOP		2
		VSTW.LS 		VR3,*+AR7[64]
	.loc 1 66 0
		SMOVIL		-104, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
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
		SAND		15, R42, R42
		SMOVIL		-64, R56
		SMOVIL		-1, R57
		SADDA.M1		R57:R56,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
	.loc 1 68 0
		SMOVIL		-64, R56
		SMOVIL		-1, R57
		SADDA.M1		R57:R56,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SMOV.M1		R42, R0
	[!R0]	SBR		.L3
		SNOP		6
	.loc 1 68 0 is_stmt 0 discriminator 1
		SLDW		*-AR14[3], R42
		SNOP		5
		SSHFAR		4, R42, R43
		SLDW		*-AR14[15], R42
		SNOP		5
		SADD.M1		-1,R42,R42
		SEQ		R42, R43, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L3
		SNOP		6
	.loc 1 69 0 is_stmt 1
		VLDW.LS 		*+AR7[64],VR3
		SNOP		7
	; ;APP 
;# 69 "../DSP_firlms2_vc.c" 1
	  VMVCGC    VR3, SVR         
	  SNOP      2               
	
;# 0 "" 2
	.loc 1 70 0
	; ;NO_APP 
		SMOVIL		0, R42
		SSTW		R42, *-AR14[5]
	.loc 1 71 0
		SMOVIL		-68, R56
		SMOVIL		-1, R57
		SADDA.M1		R57:R56,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SMVCCG.L		SVR0,R42
		SNOP		1
		SMOVIL		-68, R56
		SMOVIL		-1, R57
		SADDA.M1		R57:R56,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
	.loc 1 72 0
		SMOVIL		-64, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R56
		SNOP		5
		SMVCCG.L		SVR1,R56
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 73 0
		SMOVIL		-68, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R56
		SNOP		5
		SMVCCG.L		SVR2,R56
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 74 0
		SMOVIL		-72, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R56
		SNOP		5
		SMVCCG.L		SVR3,R56
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 75 0
		SLDW		*-AR14[5], R43
		SNOP		5
		SMOVIL		-68, R56
		SMOVIL		-1, R57
		SADDA.M1		R57:R56,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SADD.M1		R42,R43,R56
		SMOVIL		-64, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
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
		SADD.M1		R42,R56,R56
		SMOVIL		-68, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
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
		SADD.M1		R42,R56,R56
		SMOVIL		-72, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
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
		SADD.M1		R42,R56,R42
		SSTW		R42, *-AR14[5]
	.loc 1 76 0
		SMOVIL		-64, R56
		SMOVIL		-1, R57
		SADDA.M1		R57:R56,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SSHFAR		3, R42, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L4
		SNOP		6
	.loc 1 77 0
		SMOVIL		-68, R56
		SMOVIL		-1, R57
		SADDA.M1		R57:R56,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SMVCCG.L		SVR4,R42
		SNOP		1
		SMOVIL		-68, R56
		SMOVIL		-1, R57
		SADDA.M1		R57:R56,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
	.loc 1 78 0
		SMOVIL		-64, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R56
		SNOP		5
		SMVCCG.L		SVR5,R56
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 79 0
		SMOVIL		-68, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R56
		SNOP		5
		SMVCCG.L		SVR6,R56
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 80 0
		SMOVIL		-72, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R56
		SNOP		5
		SMVCCG.L		SVR7,R56
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 81 0
		SLDW		*-AR14[5], R43
		SNOP		5
		SMOVIL		-68, R56
		SMOVIL		-1, R57
		SADDA.M1		R57:R56,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SADD.M1		R42,R43,R56
		SMOVIL		-64, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
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
		SADD.M1		R42,R56,R56
		SMOVIL		-68, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
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
		SADD.M1		R42,R56,R56
		SMOVIL		-72, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
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
		SADD.M1		R42,R56,R42
		SSTW		R42, *-AR14[5]
.L4:
	.loc 1 83 0
		SMOVIL		-64, R56
		SMOVIL		-1, R57
		SADDA.M1		R57:R56,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SMOVIL		12, R0
		SEQ		R0, R42, R42
		SMOV.M1		R42, R0
	[!R0]	SBR		.L5
		SNOP		6
	.loc 1 84 0
		SMOVIL		-68, R56
		SMOVIL		-1, R57
		SADDA.M1		R57:R56,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SMVCCG.L		SVR8,R42
		SNOP		1
		SMOVIL		-68, R56
		SMOVIL		-1, R57
		SADDA.M1		R57:R56,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
	.loc 1 85 0
		SMOVIL		-64, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R56
		SNOP		5
		SMVCCG.L		SVR9,R56
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 86 0
		SMOVIL		-68, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R56
		SNOP		5
		SMVCCG.L		SVR10,R56
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 87 0
		SMOVIL		-72, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R56
		SNOP		5
		SMVCCG.L		SVR11,R56
		SNOP		1
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SSTW		R56, *AR10
	.loc 1 88 0
		SLDW		*-AR14[5], R43
		SNOP		5
		SMOVIL		-68, R56
		SMOVIL		-1, R57
		SADDA.M1		R57:R56,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SADD.M1		R42,R43,R56
		SMOVIL		-64, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
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
		SADD.M1		R42,R56,R56
		SMOVIL		-68, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
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
		SADD.M1		R42,R56,R56
		SMOVIL		-72, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
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
		SADD.M1		R42,R56,R42
		SSTW		R42, *-AR14[5]
.L5:
	.loc 1 90 0
		SLDW		*-AR14[4], R43
		SNOP		5
		SLDW		*-AR14[5], R42
		SNOP		5
		SADD.M1		R42,R43,R42
		SSTW		R42, *-AR14[4]
		SBR		.L6
		SNOP		6
.L3:
	.loc 1 93 0
		VLDW.LS 		*+AR7[64],VR3
		SNOP		7
		VREDUC16 VR3,0,0,VR3
		SNOP		6
		VSTW.LS 		VR3,*AR7
	.loc 1 94 0
		VLDW.LS 		*AR7,VR3
		SNOP		7
	; ;APP 
;# 94 "../DSP_firlms2_vc.c" 1
	  VMVCGC    VR3, SVR         
	  SNOP      2               
	
;# 0 "" 2
	.loc 1 95 0
	; ;NO_APP 
		SMOVIL		-68, R56
		SMOVIL		-1, R57
		SADDA.M1		R57:R56,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SMVCCG.L		SVR0,R42
		SNOP		1
		SMOVIL		-68, R56
		SMOVIL		-1, R57
		SADDA.M1		R57:R56,AR14,AR10
		SNOP		1
		SSTW		R42, *AR10
	.loc 1 96 0
		SLDW		*-AR14[4], R43
		SNOP		5
		SMOVIL		-68, R56
		SMOVIL		-1, R57
		SADDA.M1		R57:R56,AR14,AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SADD.M1		R42,R43,R42
		SSTW		R42, *-AR14[4]
.L6:
.LBE2:
	.loc 1 47 0
		SLDW		*-AR14[3], R42
		SNOP		5
		SADD.M1		16,R42,R42
		SSTW		R42, *-AR14[3]
.L2:
	.loc 1 47 0 is_stmt 0 discriminator 1
		SMOVIL		-104, R42
		SMOVIL		-1, R43
		SADDA.M1		-8,AR14,OR11
		SNOP		1
		SADDA.M1		R43:R42,OR11,OR11
		SNOP		1
		SMVAAGL.M1		OR11, R43:R42
		SNOP		1
		SMVAAGH.M1		OR11, R43:R42
		SNOP		1
		SLDW		*-AR14[3], R56
		SNOP		5
		SMVAGA36.M1		R43:R42, AR10
		SNOP		1
		SLDW		*AR10, R42
		SNOP		5
		SLT		R56, R42, R42
		SMOV.M1		R42, R0
	[R0]	SBR		.L7
		SNOP		6
	.loc 1 99 0 is_stmt 1
		SLDW		*-AR14[4], R42
		SNOP		5
	.loc 1 100 0
		SMOV.M1		R42, R10
		SMOVIL		512, R6
		SMOVIL		0, R7
		SADDA.M1		R7:R6,AR7,AR7
		SNOP		2
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
	.size	DSP_firlms2_vc, .-DSP_firlms2_vc
.text;
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2c3
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x1
	.4byte	.LASF40
	.4byte	.LASF41
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF42
	.byte	0x1
	.byte	0x7
	.byte	0x1
	.4byte	0x62
	.llong	.LFB3
	.llong	.LFE3
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x291
	.uleb128 0x5
	.string	"h"
	.byte	0x1
	.byte	0x8
	.4byte	0x29e
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x5
	.string	"x"
	.byte	0x1
	.byte	0x9
	.4byte	0x29e
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x5
	.string	"b"
	.byte	0x1
	.byte	0xa
	.4byte	0x5b
	.byte	0x3
	.byte	0x91
	.sleb128 -106
	.uleb128 0x5
	.string	"nh"
	.byte	0x1
	.byte	0xb
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0xc
	.4byte	0x2a4
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1b
	.4byte	0x291
	.byte	0x3
	.byte	0x77
	.sleb128 448
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1b
	.4byte	0x291
	.byte	0x3
	.byte	0x77
	.sleb128 416
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1b
	.4byte	0x291
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1b
	.4byte	0x291
	.byte	0x3
	.byte	0x77
	.sleb128 480
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1b
	.4byte	0x291
	.byte	0x3
	.byte	0x77
	.sleb128 384
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1b
	.4byte	0x291
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1c
	.4byte	0x2aa
	.byte	0x3
	.byte	0x77
	.sleb128 320
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1d
	.4byte	0x2b7
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1e
	.4byte	0x29e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1f
	.4byte	0x2bd
	.byte	0x3
	.byte	0x77
	.sleb128 256
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1f
	.4byte	0x2bd
	.byte	0x3
	.byte	0x77
	.sleb128 128
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1f
	.4byte	0x2bd
	.byte	0x3
	.byte	0x77
	.sleb128 192
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1f
	.4byte	0x2bd
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x1
	.byte	0x1f
	.4byte	0x2bd
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1f
	.4byte	0x2bd
	.byte	0x3
	.byte	0x77
	.sleb128 64
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x1
	.byte	0x20
	.4byte	0x2b7
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.byte	0x21
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x1
	.byte	0x21
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x1
	.byte	0x21
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x1
	.byte	0x21
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x1
	.byte	0x22
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x23
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x8
	.string	"ib"
	.byte	0x1
	.byte	0x24
	.4byte	0x62
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x8
	.string	"r"
	.byte	0x1
	.byte	0x2a
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x1
	.byte	0x2a
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x1
	.byte	0x2d
	.4byte	0x2bd
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x1
	.byte	0x2d
	.4byte	0x2bd
	.uleb128 0x9
	.llong	.LBB2
	.llong	.LBE2
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x1
	.byte	0x42
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.4byte	0x5b
	.4byte	0x29e
	.uleb128 0xb
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.4byte	0x291
	.uleb128 0xc
	.byte	0x8
	.4byte	0x62
	.uleb128 0xa
	.byte	0x1
	.4byte	0x5b
	.4byte	0x2b7
	.uleb128 0xb
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.4byte	0x2aa
	.uleb128 0xd
	.byte	0x1
	.4byte	0x62
	.uleb128 0xb
	.byte	0xf
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
	.uleb128 0xa
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
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x2107
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.llong	.LFB3
	.llong	.LFE3-.LFB3
	.llong	0
	.llong	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.llong	.LFB3
	.llong	.LFE3
	.llong	0
	.llong	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF2:
	.string	"short unsigned int"
.LASF24:
	.string	"int_v0"
.LASF30:
	.string	"svr0"
.LASF14:
	.string	"temp_vx_0_15"
.LASF32:
	.string	"svr2"
.LASF33:
	.string	"svr3"
.LASF22:
	.string	"temp_vx_0_31_shuff"
.LASF11:
	.string	"float"
.LASF26:
	.string	"tempr"
.LASF42:
	.string	"DSP_firlms2_vc"
.LASF1:
	.string	"unsigned char"
.LASF19:
	.string	"stemp_xb"
.LASF27:
	.string	"int_v1"
.LASF4:
	.string	"long unsigned int"
.LASF29:
	.string	"htemp_xb"
.LASF16:
	.string	"short_vb"
.LASF36:
	.string	"shuff_L"
.LASF12:
	.string	"double"
.LASF37:
	.string	"shuff_R"
.LASF15:
	.string	"temp_vx_1_16"
.LASF18:
	.string	"temp_vh_0_16"
.LASF41:
	.string	"/cygdrive/e/project/function  demo/asm/DSP_firlms2/Debug"
.LASF3:
	.string	"unsigned int"
.LASF20:
	.string	"temp_vx_0_31"
.LASF0:
	.string	"long long unsigned int"
.LASF35:
	.string	"itemp_r"
.LASF17:
	.string	"temp_vh"
.LASF23:
	.string	"temp_xb"
.LASF9:
	.string	"sizetype"
.LASF38:
	.string	"diff"
.LASF40:
	.string	"../DSP_firlms2_vc.c"
.LASF7:
	.string	"long long int"
.LASF25:
	.string	"int_vb"
.LASF10:
	.string	"char"
.LASF39:
	.string	"GNU C 4.7.0"
.LASF6:
	.string	"short int"
.LASF34:
	.string	"vh_len"
.LASF8:
	.string	"long int"
.LASF5:
	.string	"signed char"
.LASF21:
	.string	"xaddr"
.LASF13:
	.string	"mw_config_Addr"
.LASF31:
	.string	"svr1"
.LASF28:
	.string	"itemp_vx_1_16"
