                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	sprites.c
                              7 	.globl _grid_scale
                              8 	.area .text
   10BA                       9 _grid_scale:
   10BA 6E                   10 	.byte	110
                             11 	.globl _draw_sprite
   10BB                      12 _draw_sprite:
   10BB 34 20         [ 6]   13 	pshs	y
   10BD 32 E8 EB      [ 5]   14 	leas	-21,s
   10C0 AF 64         [ 6]   15 	stx	4,s
                             16 	; ldx	4,s	; optimization 5
   10C2 E6 01         [ 5]   17 	ldb	1,x
   10C4 E7 E4         [ 4]   18 	stb	,s
   10C6 E6 F8 04      [ 8]   19 	ldb	[4,s]
   10C9 E7 67         [ 5]   20 	stb	7,s
   10CB E6 E4         [ 4]   21 	ldb	,s
   10CD E7 66         [ 5]   22 	stb	6,s
   10CF C6 CC         [ 2]   23 	ldb	#-52
   10D1 D7 0C         [ 4]   24 	stb	*_dp_VIA_cntl
   10D3 C6 6E         [ 2]   25 	ldb	#110
   10D5 D7 04         [ 4]   26 	stb	*_dp_VIA_t1_cnt_lo
   10D7 E6 67         [ 5]   27 	ldb	7,s
   10D9 E7 69         [ 5]   28 	stb	9,s
   10DB E6 66         [ 5]   29 	ldb	6,s
   10DD E7 68         [ 5]   30 	stb	8,s
   10DF E6 69         [ 5]   31 	ldb	9,s
   10E1 E7 E2         [ 6]   32 	stb	,-s
   10E3 E6 69         [ 5]   33 	ldb	9,s
   10E5 BD 03 03      [ 8]   34 	jsr	__Moveto_d
   10E8 32 61         [ 5]   35 	leas	1,s
   10EA AE 64         [ 6]   36 	ldx	4,s
   10EC AE 03         [ 6]   37 	ldx	3,x
   10EE E6 84         [ 4]   38 	ldb	,x
   10F0 E7 61         [ 5]   39 	stb	1,s
                             40 	; tst	1,s	; optimization 3
   10F2 27 08         [ 3]   41 	beq	L3
   10F4 E6 61         [ 5]   42 	ldb	1,s
   10F6 C1 01         [ 2]   43 	cmpb	#1	;cmpqi:
   10F8 27 1C         [ 3]   44 	beq	L4
   10FA 20 49         [ 3]   45 	bra	L7
   10FC                      46 L3:
   10FC AE 64         [ 6]   47 	ldx	4,s
   10FE AE 03         [ 6]   48 	ldx	3,x
   1100 10 AE 02      [ 7]   49 	ldy	2,x
   1103 AE 64         [ 6]   50 	ldx	4,s
   1105 E6 02         [ 5]   51 	ldb	2,x
   1107 E7 6C         [ 5]   52 	stb	12,s
   1109 10 AF 6A      [ 7]   53 	sty	10,s
   110C AE 6A         [ 6]   54 	ldx	10,s
   110E E6 6C         [ 5]   55 	ldb	12,s
   1110 BD F4 0E      [ 8]   56 	jsr	___Draw_VLp_b
   1113 7E 11 75      [ 4]   57 	jmp	L6
   1116                      58 L4:
   1116 AE 64         [ 6]   59 	ldx	4,s
   1118 AE 03         [ 6]   60 	ldx	3,x
   111A 10 AE 02      [ 7]   61 	ldy	2,x
   111D AE 64         [ 6]   62 	ldx	4,s
   111F E6 02         [ 5]   63 	ldb	2,x
   1121 E7 62         [ 5]   64 	stb	2,s
   1123 AE 64         [ 6]   65 	ldx	4,s
   1125 AE 03         [ 6]   66 	ldx	3,x
   1127 E6 01         [ 5]   67 	ldb	1,x
   1129 5A            [ 2]   68 	decb
   112A E7 E8 10      [ 5]   69 	stb	16,s
   112D E6 62         [ 5]   70 	ldb	2,s
   112F E7 6F         [ 5]   71 	stb	15,s
   1131 10 AF 6D      [ 7]   72 	sty	13,s
   1134 E6 E8 10      [ 5]   73 	ldb	16,s
   1137 E7 E2         [ 6]   74 	stb	,-s
   1139 AE 6E         [ 6]   75 	ldx	14,s
   113B E6 E8 10      [ 5]   76 	ldb	16,s
   113E BD 01 D2      [ 8]   77 	jsr	__Draw_VL_ab
   1141 32 61         [ 5]   78 	leas	1,s
   1143 20 30         [ 3]   79 	bra	L6
   1145                      80 L7:
   1145 AE 64         [ 6]   81 	ldx	4,s
   1147 AE 03         [ 6]   82 	ldx	3,x
   1149 10 AE 02      [ 7]   83 	ldy	2,x
   114C AE 64         [ 6]   84 	ldx	4,s
   114E E6 02         [ 5]   85 	ldb	2,x
   1150 E7 63         [ 5]   86 	stb	3,s
   1152 AE 64         [ 6]   87 	ldx	4,s
   1154 AE 03         [ 6]   88 	ldx	3,x
   1156 E6 01         [ 5]   89 	ldb	1,x
   1158 5A            [ 2]   90 	decb
   1159 E7 E8 14      [ 5]   91 	stb	20,s
   115C E6 63         [ 5]   92 	ldb	3,s
   115E E7 E8 13      [ 5]   93 	stb	19,s
   1161 10 AF E8 11   [ 7]   94 	sty	17,s
   1165 E6 E8 14      [ 5]   95 	ldb	20,s
   1168 E7 E2         [ 6]   96 	stb	,-s
   116A AE E8 12      [ 6]   97 	ldx	18,s
   116D E6 E8 14      [ 5]   98 	ldb	20,s
   1170 BD 01 DC      [ 8]   99 	jsr	__Mov_Draw_VL_ab
   1173 32 61         [ 5]  100 	leas	1,s
   1175                     101 L6:
   1175 32 E8 15      [ 5]  102 	leas	21,s
   1178 35 A0         [ 7]  103 	puls	y,pc
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 L3                 0042 R   |   2 L4                 005C R
  2 L6                 00BB R   |   2 L7                 008B R
    __Draw_VL_ab       **** GX  |     __Mov_Draw_VL_     **** GX
    __Moveto_d         **** GX  |     ___Draw_VLp_b      **** GX
    _dp_VIA_cntl       **** GX  |     _dp_VIA_t1_cnt     **** GX
  2 _draw_sprite       0001 GR  |   2 _grid_scale        0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size   C0   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

