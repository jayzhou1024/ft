.global DSPF_sp_fircirc_asm
DSPF_sp_fircirc_asm:  
    ;公共部分：栈空间、block_length、mod
        SMOVI0L	        0, R50     ;初始化i

        SMOVIL		-128,R2   ;开一个16 * 8的空间
|       SSUB.M1         1,R18,R42
|       SADD.M2         1,R50,R43

        SMOVIL		    -1,R3
|       SMVAGA36.M1 	R11:R10, AR1  ;X

        SSHFLL          R42,R43,R42         ;block_length
|       SADDA.M1        R3:R2,AR15,AR12     
|       SADD.M2         0,R50,R45

        SMOVIL          16,R44
|       SSUB.M2         1,R42,R43     ;mod
|       VLDW            *AR1,VR3      ;X_0_15

        SMOVIH          0,R44   
|       SMVAAGL.M1	AR12, R49:R48 
|       SMVAGA36.M2 	R13:R12, AR10  ;H

        SEQ             2,R18,R0 
|       SMVAGA36.M1 	R45:R44, OR4    ;16
|       SMVAAGH.M2      AR12, R49:R48   ;只有一个为真，可以流水

        SEQ             3,R18,R1
|       SMVAGA36.M1     R49:R48,AR0       ;space_db
|[R0]   SBR             CSIZE_2
 [R1]   SBR             CSIZE_3
|       SEQ             4,R18,R0
[R0]   SBR              CSIZE_4
|       SLT             5,R18,R0
[R0]   SBR              CSIZE_5
        SNOP            6
; csize == 1
CSIZE_1:
        VMVCGC          VR3,SVR
        SNOP            2
        SMVCCG          SVR0,R44  ;P2
        SNOP            1
        SVBCAST.M1      R44,VR30
CSIZE_1_LOOPI:
        SSUB            R50,R20,R46    ;P6
|       SLDW            *AR10++[1],R53
|	SMVAGA36.M1 	R15:R14, AR2
|       VMOVIL          0,VR4
       
        SLT             2,R46,R0
|       SLDW            *AR10++[1],R54
|       VMOVIH          0,VR4

        SLT             4,R46,R1
|       SLDW            *AR10++[1],R55
|       VMOV            VR4,VR5

        SLT             6,R46,R2
|       SLDW            *AR10++[1],R56
|       VMOV            VR4,VR6

        SMOVI0L	        0, R51 
|       SLDW            *AR10++[1],R57
|       VMOV            VR4,VR7

        SMOVI0L	        0, R52 
|       SLDW            *AR10++[1],R58
|       VMOV            VR4,VR8

        SVBCAST.M1      R53,VR10
|       SLDW            *AR10++[1],R59
|       VMOV            VR4,VR9 

        SVBCAST.M1      R54,VR11 
|       SLDW            *AR10++[1],R60   

 [!R0]   SADD.M1         0,R51,R55
        SVBCAST.M1      R55,VR12
|[!R0]   SADD.M2         0,R51,R56 

        SEQ             0,R50,R0
|       SVBCAST.M1      R56,VR13
|[!R1]   SADD.M2         0,R51,R57

        SVBCAST.M1      R57,VR14
|[!R1]   SADD.M2         0,R51,R58

        SVBCAST.M1      R58,VR15
|[!R2]   SADD.M2         0,R51,R59

        SVBCAST.M1      R59,VR16
|[!R2]   SADD.M2         0,R51,R60
        SVBCAST.M1      R60,VR17

CSIZE_1_LOOPJ:

        VFMULAS32.M2      VR30,VR10,VR4,VR4   ;m1冲突，只用m2 m3并行
|       VFMULAS32.M3      VR31,VR11,VR5,VR5 
|       VLDW		  *AR2, VR3

        VFMULAS32.M2      VR30,VR12,VR6,VR6
|       VFMULAS32.M3      VR31,VR13,VR7,VR7 

        VFMULAS32.M2      VR30,VR14,VR8,VR8 
|       VFMULAS32.M3      VR31,VR15,VR9,VR9 

        VFMULAS32.M2      VR30,VR16,VR40,VR40 
|       VFMULAS32.M3      VR31,VR17,VR41,VR41

        SADD.M1	    	  16,R51,R51
        SLT	          R51,R22,R1
        VFADDS32.M1     VR4,VR5,VR4
        VFADDS32.M1     VR6,VR7,VR6
        VFADDS32.M1     VR8,VR9,VR8   
|[R0]   SVBCAST.M1      R45,VR3     ;初始化r
        VFADDS32.M1     VR40,VR41,VR40
        VFADDS32.M1     VR4,VR6,VR4
        SNOP            1
        VFADDS32.M1     VR3,VR8,VR3
        VFADDS32.M1     VR4,VR40,VR4
        SNOP            2
        VFADDS32.M1     VR3,VR4,VR3
        SNOP            2
        VSTW            VR3,*AR2++[OR4]
|[R1]   SBR	        CSIZE_1_LOOPJ
|	SADD.M1	        1, R52,R52 
        VMOVIL          0,VR4
        VMOVIH          0,VR4
        VMOV            VR4,VR5
|       VADD.M1         0,VR4,VR6
        VMOV            VR4,VR7
        VMOV            VR4,VR8
        VMOV            VR4,VR9
|       VADD.M1         0,VR4,VR40
|       VADD.M2         0,VR4,VR41

        SADD 	    	8, R50, R50
        SLT		R50,R20,R2
 [R2]	SBR		CSIZE_1_LOOPI
 [!R2]  SBR	        R62                  
        SNOP    	6     

; csize == 2
CSIZE_2:
        SAND            1,R16,R0
|       VMVCGC          VR3,SVR
        SNOP            1
        SMVCCG          SVR0,R44  ;P2  debug
        SMVCCG          SVR1,R45  
 [R0]   SMVCCG          SVR0,R45
 [R0]   SMVCCG          SVR1,R44
        SNOP            2
        SVBCAST2.M1     R45:R44,VR31:VR30
        SNOP            3
        VSTDWM16        VR31:VR30,*+AR0
        SMOVI0L         0,R45
        SNOP            3
        VLDW            *+AR0,VR30
|       VLDW            *+AR0[1],VR31
CSIZE_2_LOOPI:
 
        SSUB            R50,R20,R46    ;P6
|       SLDW            *AR10++[1],R53
|	    SMVAGA36.M1 	R15:R14, AR2
|       VMOVIL          0,VR4
       
        SLT             2,R46,R0
|       SLDW            *AR10++[1],R54
|       VMOVIH          0,VR4

        SLT             4,R46,R1
|       SLDW            *AR10++[1],R55
|       VMOV            VR4,VR5

        SLT             6,R46,R2
|       SLDW            *AR10++[1],R56
|       VMOV            VR4,VR6

        SMOVI0L	        0, R51 
|       SLDW            *AR10++[1],R57
|       VMOV            VR4,VR7

        SMOVI0L	        0, R52 
|       SLDW            *AR10++[1],R58
|       VMOV            VR4,VR8

        SVBCAST.M1      R53,VR10
|       SLDW            *AR10++[1],R59
|       VMOV            VR4,VR9 

        SVBCAST.M1      R54,VR11 
|       SLDW            *AR10++[1],R60   

 [!R0]   SADD.M1         0,R51,R55
 
        SVBCAST.M1      R55,VR12
|[!R0]   SADD.M2         0,R51,R56 

        SEQ             0,R50,R0
|       SVBCAST.M1      R56,VR13
|[!R1]   SADD.M2         0,R51,R57

        SVBCAST.M1      R57,VR14
|[!R1]   SADD.M2         0,R51,R58

        SVBCAST.M1      R58,VR15
|[!R2]   SADD.M2         0,R51,R59

        SVBCAST.M1      R59,VR16
|[!R2]   SADD.M2         0,R51,R60
        SVBCAST.M1      R60,VR17

CSIZE_2_LOOPJ:
 
        VFMULAS32.M2      VR30,VR10,VR4,VR4   ;p6
|       VFMULAS32.M3      VR31,VR11,VR5,VR5 
|       VLDW		  *AR2, VR3

        VFMULAS32.M2      VR30,VR12,VR6,VR6
|       VFMULAS32.M3      VR31,VR13,VR7,VR7 

        VFMULAS32.M2      VR30,VR14,VR8,VR8 
|       VFMULAS32.M3      VR31,VR15,VR9,VR9 

        VFMULAS32.M2      VR30,VR16,VR40,VR40 
|       VFMULAS32.M3      VR31,VR17,VR41,VR41

        SADD.M1	    	  16,R51,R51
        SLT	          R51,R22,R1

        VFADDS32.M1     VR4,VR5,VR4
        VFADDS32.M1     VR6,VR7,VR6
        VFADDS32.M1     VR8,VR9,VR8   
|[R0]   SVBCAST.M1      R45,VR3     ;初始化r
        VFADDS32.M1     VR40,VR41,VR40
        VFADDS32.M1     VR4,VR6,VR4
        SNOP            1
        VFADDS32.M1     VR3,VR8,VR3
        VFADDS32.M1     VR4,VR40,VR4
        SNOP            2
        VFADDS32.M1     VR3,VR4,VR3
        SNOP            2
        VSTW            VR3,*AR2++[OR4]
|[R1]   SBR	        CSIZE_2_LOOPJ
|	SADD.M1	        1, R52,R52 
        VMOVIL          0,VR4
        VMOVIH          0,VR4
        VMOV            VR4,VR5
|       VADD.M1         0,VR4,VR6
        VMOV            VR4,VR7
        VMOV            VR4,VR8
        VMOV            VR4,VR9
|       VADD.M1         0,VR4,VR40
|       VADD.M2         0,VR4,VR41
        SADD 	    	8, R50, R50
        SLT		R50,R20,R2
 [R2]	SBR		CSIZE_2_LOOPI
 [!R2]  SBR	        R62                  
        SNOP    	6     

; csize == 3
CSIZE_3:
        VSTW            VR3,*+AR0
|       VSTW            VR3,*+AR0[4]

        VSTW            VR3,*+AR0[8]
|       VSTW            VR3,*+AR0[12]

        VSTW            VR3,*+AR0[OR4]
|       SAND            R43,R16,R44     ;INDEX & MOD
|       SADD.M1         1,R43,R43

        SMVAGA36.M1 	R45:R44, OR1
|       SAND            R43,R16,R44     ;(INDEX+1) & MOD
|       SADD.M2         1,R43,R43

        SMVAGA36.M1 	R45:R44, OR2
|       SAND            R43,R16,R44     ;(INDEX+1) & MOD
|       SADD.M2         1,R43,R43

        SMVAGA36.M1 	R45:R44, OR3
|       SAND            R43,R16,R44     ;(INDEX+1) & MOD

        SMVAGA36.M1 	R45:R44, OR1
|       VLDW            *+AR0[OR1],VR30
|       VLDW            *+AR0[OR2],VR31

        VLDW            *+AR0[OR3],VR32
        VLDW            *+AR0[OR1],VR33
CSIZE_3_LOOPI:
        SSUB            R50,R20,R46    ;P6
|       SLDW            *AR10++[1],R53
|	SMVAGA36.M1 	 R15:R14, AR2
|       VMOVIL          0,VR4

        SLT             2,R46,R0
|       SLDW            *AR10++[1],R54
|       VMOVIH          0,VR4

        SLT             4,R46,R1
|       SLDW            *AR10++[1],R55
|       VMOV            VR4,VR5

        SLT             6,R46,R2
|       SLDW            *AR10++[1],R56
|       VMOV            VR4,VR6

        SMOVI0L	        0, R51 
|       SLDW            *AR10++[1],R57
|       VMOV            VR4,VR7

        SMOVI0L	        0, R52 
|       SLDW            *AR10++[1],R58
|       VMOV            VR4,VR8

        SVBCAST.M1      R53,VR10
|       SLDW            *AR10++[1],R59
|       VMOV            VR4,VR9 

        SVBCAST.M1      R54,VR11 
|       SLDW            *AR10++[1],R60   
        
 [!R0]   SADD.M1         0,R51,R55
 
        SVBCAST.M1      R55,VR12
|[!R0]   SADD.M2         0,R51,R56 

        SEQ             0,R50,R0
|       SVBCAST.M1      R56,VR13
|[!R1]   SADD.M2         0,R51,R57

        SVBCAST.M1      R57,VR14
|[!R1]   SADD.M2         0,R51,R58

        SVBCAST.M1      R58,VR15
|[!R2]   SADD.M2         0,R51,R59

        SVBCAST.M1      R59,VR16
|[!R2]   SADD.M2         0,R51,R60
        SVBCAST.M1      R60,VR17
CSIZE_3_LOOPJ:

        VFMULAS32.M2      VR30,VR10,VR4,VR4   ;p6
|       VFMULAS32.M3      VR31,VR11,VR5,VR5 
|       VLDW		  *AR2, VR3

        VFMULAS32.M2      VR32,VR12,VR6,VR6
|       VFMULAS32.M3      VR33,VR13,VR7,VR7 

        VFMULAS32.M2      VR30,VR14,VR8,VR8 
|       VFMULAS32.M3      VR31,VR15,VR9,VR9 

        VFMULAS32.M2      VR32,VR16,VR40,VR40 
|       VFMULAS32.M3      VR33,VR17,VR41,VR41

|       SADD.M1	    	16,R51,R51
        SLT	        R51,R22,R1

        VFADDS32.M1     VR4,VR5,VR4
        VFADDS32.M1     VR6,VR7,VR6
        VFADDS32.M1     VR8,VR9,VR8   
|[R0]   SVBCAST.M1      R45,VR3     ;初始化r
        VFADDS32.M1     VR40,VR41,VR40
        VFADDS32.M1     VR4,VR6,VR4
        SNOP            1
        VFADDS32.M1     VR3,VR8,VR3
        VFADDS32.M1     VR4,VR40,VR4
        SNOP            2
        VFADDS32.M1     VR3,VR4,VR3
        SNOP            2
        VSTW            VR3,*AR2++[OR4]
|[R1]   SBR	        CSIZE_3_LOOPJ
|	SADD.M1	        1, R52,R52 
        VMOVIL          0,VR4
        VMOVIH          0,VR4
        VMOV            VR4,VR5
|       VADD.M1         0,VR4,VR6
        VMOV            VR4,VR7
        VMOV            VR4,VR8
        VMOV            VR4,VR9
|       VADD.M1         0,VR4,VR40
|       VADD.M2         0,VR4,VR41
        SADD 	    	8, R50, R50
        SLT		R50,R20,R2
 [R2]	SBR		CSIZE_3_LOOPI
 [!R2]  SBR	        R62                  
        SNOP    	6       

;CSIZE = 4
CSIZE_4:
        SMOVI0L         0,R47
|       VSTW            VR3,*+AR0
|       VSTW            VR3,*+AR0[8]
|       SADD            R44,R44,R46

        VSTW            VR3,*+AR0[OR4]
|       SADD            R44,R46,R46
|       SMVAGA36.M1 	R47:R46, OR5

        SMVAGA36.M1 	R47:R46, OR6
CSIZE_4_LOOPI:

 	    SMVAGA36.M1 	R15:R14, AR1
|       SADD.M2         R50,R16,R46       ;index + i
|       SLDW            *AR10++[1],R54    ;p6
|       VMOVIL          0,VR40

        SAND            R43,R46,R44       
|       SADD.M2         1,R46,R46         
|       SLDW            *AR10++[1],R55 
|       VMOVIH          0,VR40

        SAND            R43,R46,R44       ;index + 1 + i
|       SADDA.M1        R45:R44,AR0,AR2   ;vx_0_15  p3
|       SADD.M2         1,R46,R46   
|       SLDW            *AR10++[1],R56 
|       VMOV            0,VR40,VR41

        SAND            R43,R46,R44       ;index + 1 + i
|       SADDA.M1        R45:R44,AR0,AR3   
|       SADD.M2         1,R46,R46   
|       SLDW            *AR10++[1],R57
|       VMOV            0,VR40,VR42

        SAND            R43,R46,R44 
|       SADDA.M1        R45:R44,AR0,AR4   
|       SADD.M2         1,R46,R46  
|       VMOV            0,VR40,VR43 

        SAND            R43,R46,R44 
|       SADDA.M1        R45:R44,AR0,AR5   
|       SSUB.M2 	R50,R16,R42

        SLT		2,R42,R2 
|       VLDW            *+AR2,VR30
|       SVBCAST.M2      R54,VR10

        VLDW            *+AR3,VR31       ;P8
|       SVBCAST.M2      R55,VR11

 [R2]   SADD.M2         0,R47,R56 
 [R2]   SADD.M2         0,R47,R57 
|       VLDW            *+AR4,VR32       ;P8
|       SVBCAST.M2      R56,VR12

        VLDW            *+AR5,VR33       ;P8
|       SVBCAST.M2      R57,VR13
        SNOP            3
        SEQ             0,R50,R0 
|       VFMULS32.M1      VR30,VR10,VR4  ;P4
        VFMULS32.M1      VR31,VR11,VR5 
        VFMULS32.M1      VR32,VR12,VR6  ;P4
        VFMULS32.M1      VR33,VR13,VR7 
CSIZE_4_LOOPJ:
        
        SSUB		R51,R18,R46 
|       VLDW		*AR1, VR50
|       VLDW		*+AR1[OR4], VR51

        VLDW		*+AR1[OR5], VR52
|       VLDW		*+AR1[OR6], VR53

        SLT		16,R46,R1
|       VFADDS32.M1     VR4,VR5,VR4

        SLT		32,R46,R2
|       SVBCAST.M1	R1,VR0

        SLT		48,R46,R3
|       VFADDS32.M1     VR6,VR7,VR6
|       SVBCAST.M1	R2,VR1

        SVBCAST.M1	R3,VR2
        SNOP            1
        VFADDS32.M1     VR4,VR6,VR4
        SNOP            2
        SAND            R0,R1,R0
|       VFADDS32.M1     VR50,VR4,VR50

        SAND            R0,R2,R0
|[R0]   SVBCAST.M1	R47,VR51
|[VR0]  VFADDS32.M1     VR51,VR4,VR51

        SAND            R0,R3,R0
|[R0]   SVBCAST.M1	R47,VR52
|[VR1]  VFADDS32.M1     VR52,VR4,VR52

        SADD	    	64,R51,R51
|[R0]   SVBCAST.M1	R47,VR53
|[VR2]  VFADDS32.M1     VR53,VR4,VR53
|       VSTW            VR50,*AR2++[OR4]

        SLT	        R51,R22,R1
|       VSTW            VR51,*AR2++[OR4]
        VSTW            VR52,*AR2++[OR4]
        VSTW            VR53,*AR2++[OR4]
|[R1]   SBR	        CSIZE_1_LOOPJ
        SNOP            6
        SADD 	    	4, R50, R50
        SLT		R50,R20,R2
 [R2]	SBR		CSIZE_1_LOOPI
 [!R2]  SBR	        R62                  
        SNOP    	6   

; csize > 4
;AR0 block
CSIZE_5:
        



CSIZE_5_LOOPI:

CSIZE_5_LOOPJ:

.size DSPF_sp_fircirc_asm, .-DSPF_sp_fircirc_asm
