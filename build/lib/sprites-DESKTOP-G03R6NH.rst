                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	sprites.c
                              7 	.globl _grid_scale
                              8 	.area .text
   0A8F                       9 _grid_scale:
   0A8F 6E                   10 	.byte	110
                             11 	.globl _draw_sprite
   0A90                      12 _draw_sprite:
   0A90 34 20         [ 6]   13 	pshs	y
   0A92 32 E8 EE      [ 5]   14 	leas	-18,s
   0A95 AF 65         [ 6]   15 	stx	5,s
                             16 	; ldx	5,s	; optimization 5
   0A97 E6 01         [ 5]   17 	ldb	1,x
   0A99 E7 E4         [ 4]   18 	stb	,s
   0A9B E6 F8 05      [ 8]   19 	ldb	[5,s]
   0A9E E7 61         [ 5]   20 	stb	1,s
   0AA0 E6 E4         [ 4]   21 	ldb	,s
   0AA2 34 04         [ 6]   22 	pshs	b
   0AA4 E6 62         [ 5]   23 	ldb	2,s
   0AA6 BD 0B 36      [ 8]   24 	jsr	_position_beam
   0AA9 32 61         [ 5]   25 	leas	1,s
   0AAB AE 65         [ 6]   26 	ldx	5,s
   0AAD AE 03         [ 6]   27 	ldx	3,x
   0AAF E6 84         [ 4]   28 	ldb	,x
   0AB1 E7 62         [ 5]   29 	stb	2,s
                             30 	; tst	2,s	; optimization 3
   0AB3 27 08         [ 3]   31 	beq	L3
   0AB5 E6 62         [ 5]   32 	ldb	2,s
   0AB7 C1 01         [ 2]   33 	cmpb	#1	;cmpqi:
   0AB9 27 1C         [ 3]   34 	beq	L4
   0ABB 20 46         [ 3]   35 	bra	L7
   0ABD                      36 L3:
   0ABD AE 65         [ 6]   37 	ldx	5,s
   0ABF AE 03         [ 6]   38 	ldx	3,x
   0AC1 10 AE 02      [ 7]   39 	ldy	2,x
   0AC4 AE 65         [ 6]   40 	ldx	5,s
   0AC6 E6 02         [ 5]   41 	ldb	2,x
   0AC8 E7 69         [ 5]   42 	stb	9,s
   0ACA 10 AF 67      [ 7]   43 	sty	7,s
   0ACD AE 67         [ 6]   44 	ldx	7,s
   0ACF E6 69         [ 5]   45 	ldb	9,s
   0AD1 BD F4 0E      [ 8]   46 	jsr	___Draw_VLp_b
   0AD4 7E 0B 31      [ 4]   47 	jmp	L6
   0AD7                      48 L4:
   0AD7 AE 65         [ 6]   49 	ldx	5,s
   0AD9 AE 03         [ 6]   50 	ldx	3,x
   0ADB 10 AE 02      [ 7]   51 	ldy	2,x
   0ADE AE 65         [ 6]   52 	ldx	5,s
   0AE0 E6 02         [ 5]   53 	ldb	2,x
   0AE2 E7 63         [ 5]   54 	stb	3,s
   0AE4 AE 65         [ 6]   55 	ldx	5,s
   0AE6 AE 03         [ 6]   56 	ldx	3,x
   0AE8 E6 01         [ 5]   57 	ldb	1,x
   0AEA 5A            [ 2]   58 	decb
   0AEB E7 6D         [ 5]   59 	stb	13,s
   0AED E6 63         [ 5]   60 	ldb	3,s
   0AEF E7 6C         [ 5]   61 	stb	12,s
   0AF1 10 AF 6A      [ 7]   62 	sty	10,s
   0AF4 E6 6D         [ 5]   63 	ldb	13,s
   0AF6 E7 E2         [ 6]   64 	stb	,-s
   0AF8 AE 6B         [ 6]   65 	ldx	11,s
   0AFA E6 6D         [ 5]   66 	ldb	13,s
   0AFC BD 01 D2      [ 8]   67 	jsr	__Draw_VL_ab
   0AFF 32 61         [ 5]   68 	leas	1,s
   0B01 20 2E         [ 3]   69 	bra	L6
   0B03                      70 L7:
   0B03 AE 65         [ 6]   71 	ldx	5,s
   0B05 AE 03         [ 6]   72 	ldx	3,x
   0B07 10 AE 02      [ 7]   73 	ldy	2,x
   0B0A AE 65         [ 6]   74 	ldx	5,s
   0B0C E6 02         [ 5]   75 	ldb	2,x
   0B0E E7 64         [ 5]   76 	stb	4,s
   0B10 AE 65         [ 6]   77 	ldx	5,s
   0B12 AE 03         [ 6]   78 	ldx	3,x
   0B14 E6 01         [ 5]   79 	ldb	1,x
   0B16 5A            [ 2]   80 	decb
   0B17 E7 E8 11      [ 5]   81 	stb	17,s
   0B1A E6 64         [ 5]   82 	ldb	4,s
   0B1C E7 E8 10      [ 5]   83 	stb	16,s
   0B1F 10 AF 6E      [ 7]   84 	sty	14,s
   0B22 E6 E8 11      [ 5]   85 	ldb	17,s
   0B25 E7 E2         [ 6]   86 	stb	,-s
   0B27 AE 6F         [ 6]   87 	ldx	15,s
   0B29 E6 E8 11      [ 5]   88 	ldb	17,s
   0B2C BD 01 DC      [ 8]   89 	jsr	__Mov_Draw_VL_ab
   0B2F 32 61         [ 5]   90 	leas	1,s
   0B31                      91 L6:
   0B31 32 E8 12      [ 5]   92 	leas	18,s
   0B34 35 A0         [ 7]   93 	puls	y,pc
   0B36                      94 _position_beam:
   0B36 32 7F         [ 5]   95 	leas	-1,s
   0B38 E7 E4         [ 4]   96 	stb	,s
   0B3A BD 0B 50      [ 8]   97 	jsr	_reset_beam
   0B3D F6 0A 8F      [ 5]   98 	ldb	_grid_scale
   0B40 34 04         [ 6]   99 	pshs	b
   0B42 E6 64         [ 5]  100 	ldb	4,s
   0B44 E7 E2         [ 6]  101 	stb	,-s
   0B46 E6 62         [ 5]  102 	ldb	2,s
   0B48 BD 0B 54      [ 8]  103 	jsr	_move_beam
   0B4B 32 62         [ 5]  104 	leas	2,s
   0B4D 32 61         [ 5]  105 	leas	1,s
   0B4F 39            [ 5]  106 	rts
   0B50                     107 _reset_beam:
   0B50 BD F3 54      [ 8]  108 	jsr	___Reset0Ref
   0B53 39            [ 5]  109 	rts
   0B54                     110 _move_beam:
   0B54 32 7D         [ 5]  111 	leas	-3,s
   0B56 E7 E4         [ 4]  112 	stb	,s
   0B58 E6 66         [ 5]  113 	ldb	6,s
   0B5A F7 D0 04      [ 5]  114 	stb	_VIA_t1_cnt_lo
   0B5D E6 E4         [ 4]  115 	ldb	,s
   0B5F E7 62         [ 5]  116 	stb	2,s
   0B61 E6 65         [ 5]  117 	ldb	5,s
   0B63 E7 61         [ 5]  118 	stb	1,s
   0B65 E6 62         [ 5]  119 	ldb	2,s
   0B67 E7 E2         [ 6]  120 	stb	,-s
   0B69 E6 62         [ 5]  121 	ldb	2,s
   0B6B BD 03 03      [ 8]  122 	jsr	__Moveto_d
   0B6E 32 61         [ 5]  123 	leas	1,s
   0B70 32 63         [ 5]  124 	leas	3,s
   0B72 39            [ 5]  125 	rts
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 L3                 002E R   |   2 L4                 0048 R
  2 L6                 00A2 R   |   2 L7                 0074 R
    _VIA_t1_cnt_lo     **** GX  |     __Draw_VL_ab       **** GX
    __Mov_Draw_VL_     **** GX  |     __Moveto_d         **** GX
    ___Draw_VLp_b      **** GX  |     ___Reset0Ref       **** GX
  2 _draw_sprite       0001 GR  |   2 _grid_scale        0000 GR
  2 _move_beam         00C5 R   |   2 _position_beam     00A7 R
  2 _reset_beam        00C1 R

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size   E4   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

