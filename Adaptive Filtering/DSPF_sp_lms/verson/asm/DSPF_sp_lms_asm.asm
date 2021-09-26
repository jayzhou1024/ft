.global DSPF_sp_lms_asm

DSPF_sp_lms_asm:
        SMOVIL      0xf,R60
|       SMVAGA36.M1 R15:R14,AR10    ;addr_y_i   p2
|       SMVAGA36.M2 R17:R16,AR11    ;addr_y_o

        SMVCGC      R60,VLR     ;关闭VPE4~15 p2
|       SVBCAST.M1  R18,VR0         ;vec_ar     p4

        SMOVI0L     0,R50       ;初始化i
        SMOVIL      3,R0            ;饱和配置
        
        SMVCGC      R0,SCR
|       SADD.M1     0,R50,R55
|       SADD.M2     0,R50,R57

;外循环
.loop_i:
        SVBCAST.M1  R20,VR1         ;vec_error  p4
|       SSHFLL      2,R50,R54

        SADD.M2     R54,R10,R54     ;x
|       SMOVI0L     0,R51

        SMVAGA36.M1 R55:R54,AR0     ;p2
        SMVAGA36.M1 R13:R12,AR2     ;h
        SADDA.M2    4,AR0,AR1       ;x_1
|       VFMULS32.M1    VR1,VR0,VR1     ;p4

;内循环
.loop_j:
        SEQ         0,R51,R0
|       SADD.M1     0,R51,R56
|       VLDW        *AR2,VR10  ;vec_h0 p8

 [R0]   SVBCAST.M2  R51,VR2     ;p4
|       SMVAGA36.M1 R57:R56,OR0 ;p2

        SADD.M1     4,R51,R51

        VLDW        *+AR0[OR0],VR20 ;vec_x0
|       VLDW        *+AR1[OR0],VR24 ;vec_x0_1
|       SLT         R51,R22,R0
        SNOP        7
        VFMULAS32.M1 VR1,VR20,VR10,VR10 ;p6
        SNOP        5
        VSTW        VR10,*AR2++[4]
|       VFMULAS32.M1 VR10,VR24,VR2,VR2
       
 [R0]   SBR         .loop_j
        SNOP         6

        VMVCGC      VR2,SVR
|       SLDW        *AR10++[1],R58  ;p6
|       SADD.M1     1,R50,R50
        SLT         R50,R24,R1
        SNOP        1

        SMVCCG      SVR0,R45        ;p2
        SMVCCG      SVR1,R46
        SMVCCG      SVR2,R47
        SMVCCG      SVR3,R48
        SFADDS32.M1 R45,R46,R49     ;p3
        SNOP        2
        SFADDS32.M1 R47,R49,R49
        SNOP        2
        SFADDS32.M1 R48,R49,R49
        
 [R1]   SBR         .loop_i
        SNOP        2
        SSTW        R49,*AR11++[1]
|       SFSUBS32.M1 R49,R58,R20  ;p3
        SNOP        3

        SBR         R62
        SMOVIL      0xffff,R60
        SMVCGC      R60,VLR
|       SMOV.M1     R20,R10
        SNOP        4

.size DSPF_sp_lms_asm, .-DSPF_sp_lms_asm