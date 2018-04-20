                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	sound.c
                              7 	.globl _music_off
                              8 	.area .text
   0FFC                       9 _music_off:
   0FFC FE E8                10 	.word	_Vec_ADSR_FADE4
   0FFE FE B6                11 	.word	_Vec_TWANG_VIBEHL
   1000 80                   12 	.byte	-128
   1001 80                   13 	.byte	-128
   1002 00                   14 	.byte	0
   1003 80                   15 	.byte	-128
                             16 	.globl _explosion_off
   1004                      17 _explosion_off:
   1004 3F                   18 	.byte	63
   1005 00                   19 	.byte	0
   1006 01                   20 	.byte	1
   1007 80                   21 	.byte	-128
                             22 	.globl _current_music
                             23 	.area .data
   C8D3                      24 _current_music:
   C8D3 0F FC                25 	.word	_music_off
                             26 	.globl _current_explosion
   C8D5                      27 _current_explosion:
   C8D5 10 04                28 	.word	_explosion_off
                             29 	.area .text
                             30 	.globl _sound_init
   1008                      31 _sound_init:
   1008 8E 0F FC      [ 3]   32 	ldx	#_music_off
   100B BF C8 D3      [ 6]   33 	stx	_current_music
   100E 8E 10 04      [ 3]   34 	ldx	#_explosion_off
   1011 BF C8 D5      [ 6]   35 	stx	_current_explosion
   1014 39            [ 5]   36 	rts
                             37 	.globl _stop_explosion
   1015                      38 _stop_explosion:
   1015 7F C8 77      [ 7]   39 	clr	_Vec_Expl_Timer
   1018 7F C8 67      [ 7]   40 	clr	_Vec_Expl_Flag
   101B 8E 10 04      [ 3]   41 	ldx	#_explosion_off
   101E BF C8 D5      [ 6]   42 	stx	_current_explosion
   1021 39            [ 5]   43 	rts
                             44 	.globl _stop_music
   1022                      45 _stop_music:
   1022 7F C8 56      [ 7]   46 	clr	_Vec_Music_Flag
   1025 8E 0F FC      [ 3]   47 	ldx	#_music_off
   1028 BF C8 D3      [ 6]   48 	stx	_current_music
   102B 39            [ 5]   49 	rts
                             50 	.globl _play_music
   102C                      51 _play_music:
   102C 32 7E         [ 5]   52 	leas	-2,s
   102E AF E4         [ 5]   53 	stx	,s
   1030 BD 10 15      [ 8]   54 	jsr	_stop_explosion
   1033 AE E4         [ 5]   55 	ldx	,s
   1035 BF C8 D3      [ 6]   56 	stx	_current_music
   1038 C6 01         [ 2]   57 	ldb	#1
   103A F7 C8 56      [ 5]   58 	stb	_Vec_Music_Flag
   103D 32 62         [ 5]   59 	leas	2,s
   103F 39            [ 5]   60 	rts
                             61 	.globl _play_explosion
   1040                      62 _play_explosion:
   1040 32 7E         [ 5]   63 	leas	-2,s
   1042 AF E4         [ 5]   64 	stx	,s
   1044 BD F7 42      [ 8]   65 	jsr	___Stop_Sound
   1047 BD 10 22      [ 8]   66 	jsr	_stop_music
   104A AE E4         [ 5]   67 	ldx	,s
   104C BF C8 D5      [ 6]   68 	stx	_current_explosion
   104F C6 80         [ 2]   69 	ldb	#-128
   1051 F7 C8 67      [ 5]   70 	stb	_Vec_Expl_Flag
   1054 32 62         [ 5]   71 	leas	2,s
   1056 39            [ 5]   72 	rts
                             73 	.globl _play_tune
   1057                      74 _play_tune:
   1057 32 73         [ 5]   75 	leas	-13,s
   1059 E7 62         [ 5]   76 	stb	2,s
   105B AF E4         [ 5]   77 	stx	,s
   105D E6 62         [ 5]   78 	ldb	2,s
   105F 58            [ 2]   79 	aslb
   1060 E7 63         [ 5]   80 	stb	3,s
   1062 EC E4         [ 5]   81 	ldd	,s
   1064 E7 64         [ 5]   82 	stb	4,s	;movlsbqihi: R:d -> 4,s
   1066 E6 63         [ 5]   83 	ldb	3,s
   1068 6C 63         [ 7]   84 	inc	3,s
   106A E7 68         [ 5]   85 	stb	8,s
   106C E6 64         [ 5]   86 	ldb	4,s
   106E E7 67         [ 5]   87 	stb	7,s
   1070 E6 68         [ 5]   88 	ldb	8,s
   1072 E7 E2         [ 6]   89 	stb	,-s
   1074 E6 68         [ 5]   90 	ldb	8,s
   1076 BD 02 A9      [ 8]   91 	jsr	__Sound_Byte
   1079 32 61         [ 5]   92 	leas	1,s
   107B EC E4         [ 5]   93 	ldd	,s
   107D 1F 89         [ 6]   94 	tfr	a,b
   107F 4F            [ 2]   95 	clra		;zero_extendqihi: R:b -> R:d
   1080 E7 65         [ 5]   96 	stb	5,s	;movlsbqihi: R:d -> 5,s
   1082 E6 63         [ 5]   97 	ldb	3,s
   1084 E7 6A         [ 5]   98 	stb	10,s
   1086 E6 65         [ 5]   99 	ldb	5,s
   1088 E7 69         [ 5]  100 	stb	9,s
   108A E6 6A         [ 5]  101 	ldb	10,s
   108C E7 E2         [ 6]  102 	stb	,-s
   108E E6 6A         [ 5]  103 	ldb	10,s
   1090 BD 02 A9      [ 8]  104 	jsr	__Sound_Byte
   1093 32 61         [ 5]  105 	leas	1,s
   1095 E6 62         [ 5]  106 	ldb	2,s
   1097 CB 08         [ 2]  107 	addb	#8
   1099 E7 66         [ 5]  108 	stb	6,s
                            109 	; ldb	6,s	; optimization 5
   109B E7 6C         [ 5]  110 	stb	12,s
   109D E6 6F         [ 5]  111 	ldb	15,s
   109F E7 6B         [ 5]  112 	stb	11,s
   10A1 E6 6C         [ 5]  113 	ldb	12,s
   10A3 E7 E2         [ 6]  114 	stb	,-s
   10A5 E6 6C         [ 5]  115 	ldb	12,s
   10A7 BD 02 A9      [ 8]  116 	jsr	__Sound_Byte
   10AA 32 61         [ 5]  117 	leas	1,s
   10AC C6 07         [ 2]  118 	ldb	#7
   10AE E7 E2         [ 6]  119 	stb	,-s
   10B0 C6 38         [ 2]  120 	ldb	#56
   10B2 BD 02 A9      [ 8]  121 	jsr	__Sound_Byte
   10B5 32 61         [ 5]  122 	leas	1,s
   10B7 32 6D         [ 5]  123 	leas	13,s
   10B9 39            [ 5]  124 	rts
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
    _Vec_ADSR_FADE     **** GX  |     _Vec_Expl_Flag     **** GX
    _Vec_Expl_Time     **** GX  |     _Vec_Music_Fla     **** GX
    _Vec_TWANG_VIB     **** GX  |     __Sound_Byte       **** GX
    ___Stop_Sound      **** GX  |   3 _current_explo     0002 GR
  3 _current_music     0000 GR  |   2 _explosion_off     0008 GR
  2 _music_off         0000 GR  |   2 _play_explosio     0044 GR
  2 _play_music        0030 GR  |   2 _play_tune         005B GR
  2 _sound_init        000C GR  |   2 _stop_explosio     0019 GR
  2 _stop_music        0026 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size   BE   flags  100
   3 .data            size    4   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

