                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	ether.c
                              7 	.globl _position
                              8 	.area .data
   C885                       9 _position:
   C885 01                   10 	.byte	1
                             11 	.globl _frame_cnt
   C886                      12 _frame_cnt:
   C886 00                   13 	.byte	0	;skip space
                             14 	.globl _cycle_cnt
   C887                      15 _cycle_cnt:
   C887 00                   16 	.byte	0	;skip space
                             17 	.globl _vectors_ether
                             18 	.area .text
   0449                      19 _vectors_ether:
   0449 FF                   20 	.byte	-1
   044A 06                   21 	.byte	6
   044B 03                   22 	.byte	3
   044C FF                   23 	.byte	-1
   044D 06                   24 	.byte	6
   044E FD                   25 	.byte	-3
   044F FF                   26 	.byte	-1
   0450 FA                   27 	.byte	-6
   0451 FD                   28 	.byte	-3
   0452 FF                   29 	.byte	-1
   0453 FA                   30 	.byte	-6
   0454 03                   31 	.byte	3
   0455 01                   32 	.byte	1
   0456 00                   33 	.byte	0
   0457 00                   34 	.byte	0
                             35 	.globl _shape_ether
   0458                      36 _shape_ether:
   0458 00                   37 	.byte	0
   0459 05                   38 	.byte	5
   045A 04 49                39 	.word	_vectors_ether
                             40 	.globl _ether_1
                             41 	.area .data
   C888                      42 _ether_1:
   C888 0A                   43 	.byte	10
   C889 92                   44 	.byte	-110
   C88A 96                   45 	.byte	-106
   C88B 04 58                46 	.word	_shape_ether
                             47 	.globl _ether_2
   C88D                      48 _ether_2:
   C88D 14                   49 	.byte	20
   C88E A6                   50 	.byte	-90
   C88F 96                   51 	.byte	-106
   C890 04 58                52 	.word	_shape_ether
                             53 	.globl _ether_3
   C892                      54 _ether_3:
   C892 0A                   55 	.byte	10
   C893 BA                   56 	.byte	-70
   C894 96                   57 	.byte	-106
   C895 04 58                58 	.word	_shape_ether
                             59 	.globl _ether_4
   C897                      60 _ether_4:
   C897 14                   61 	.byte	20
   C898 CE                   62 	.byte	-50
   C899 96                   63 	.byte	-106
   C89A 04 58                64 	.word	_shape_ether
                             65 	.globl _ether
                             66 	.area .text
   045C                      67 _ether:
   045C C8 88                68 	.word	_ether_1
   045E C8 8D                69 	.word	_ether_2
   0460 C8 92                70 	.word	_ether_3
   0462 C8 97                71 	.word	_ether_4
                             72 	.globl _animate_ether
   0464                      73 _animate_ether:
   0464 34 60         [ 7]   74 	pshs	y,u
   0466 32 7F         [ 5]   75 	leas	-1,s
   0468 F6 C8 87      [ 5]   76 	ldb	_cycle_cnt
   046B C1 0A         [ 2]   77 	cmpb	#10	;cmpqi:
   046D 10 26 00 82   [ 6]   78 	lbne	L2
   0471 F6 C8 85      [ 5]   79 	ldb	_position
                             80 	; tstb	; optimization 6
   0474 27 3D         [ 3]   81 	beq	L3
   0476 F6 C8 86      [ 5]   82 	ldb	_frame_cnt
   0479 5C            [ 2]   83 	incb
   047A F7 C8 86      [ 5]   84 	stb	_frame_cnt
   047D 6F E4         [ 6]   85 	clr	,s
   047F 20 20         [ 3]   86 	bra	L4
   0481                      87 L5:
   0481 E6 E4         [ 4]   88 	ldb	,s
   0483 4F            [ 2]   89 	clra		;zero_extendqihi: R:b -> R:d
   0484 58            [ 2]   90 	aslb
   0485 49            [ 2]   91 	rola
   0486 CE 04 5C      [ 3]   92 	ldu	#_ether
   0489 30 CB         [ 8]   93 	leax	d,u
   048B 10 AE 84      [ 6]   94 	ldy	,x
   048E E6 E4         [ 4]   95 	ldb	,s
   0490 4F            [ 2]   96 	clra		;zero_extendqihi: R:b -> R:d
   0491 58            [ 2]   97 	aslb
   0492 49            [ 2]   98 	rola
   0493 CE 04 5C      [ 3]   99 	ldu	#_ether
   0496 30 CB         [ 8]  100 	leax	d,u
   0498 AE 84         [ 5]  101 	ldx	,x
   049A E6 84         [ 4]  102 	ldb	,x
   049C 5C            [ 2]  103 	incb
   049D E7 A4         [ 4]  104 	stb	,y
   049F 6C E4         [ 6]  105 	inc	,s
   04A1                     106 L4:
   04A1 E6 E4         [ 4]  107 	ldb	,s
   04A3 C1 03         [ 2]  108 	cmpb	#3	;cmpqi:
   04A5 23 DA         [ 3]  109 	bls	L5
   04A7 F6 C8 86      [ 5]  110 	ldb	_frame_cnt
   04AA C1 05         [ 2]  111 	cmpb	#5	;cmpqi:
   04AC 26 40         [ 3]  112 	bne	L7
   04AE 7F C8 85      [ 7]  113 	clr	_position
   04B1 20 3B         [ 3]  114 	bra	L7
   04B3                     115 L3:
   04B3 F6 C8 86      [ 5]  116 	ldb	_frame_cnt
   04B6 5A            [ 2]  117 	decb
   04B7 F7 C8 86      [ 5]  118 	stb	_frame_cnt
   04BA 6F E4         [ 6]  119 	clr	,s
   04BC 20 20         [ 3]  120 	bra	L8
   04BE                     121 L9:
   04BE E6 E4         [ 4]  122 	ldb	,s
   04C0 4F            [ 2]  123 	clra		;zero_extendqihi: R:b -> R:d
   04C1 58            [ 2]  124 	aslb
   04C2 49            [ 2]  125 	rola
   04C3 CE 04 5C      [ 3]  126 	ldu	#_ether
   04C6 30 CB         [ 8]  127 	leax	d,u
   04C8 10 AE 84      [ 6]  128 	ldy	,x
   04CB E6 E4         [ 4]  129 	ldb	,s
   04CD 4F            [ 2]  130 	clra		;zero_extendqihi: R:b -> R:d
   04CE 58            [ 2]  131 	aslb
   04CF 49            [ 2]  132 	rola
   04D0 CE 04 5C      [ 3]  133 	ldu	#_ether
   04D3 30 CB         [ 8]  134 	leax	d,u
   04D5 AE 84         [ 5]  135 	ldx	,x
   04D7 E6 84         [ 4]  136 	ldb	,x
   04D9 5A            [ 2]  137 	decb
   04DA E7 A4         [ 4]  138 	stb	,y
   04DC 6C E4         [ 6]  139 	inc	,s
   04DE                     140 L8:
   04DE E6 E4         [ 4]  141 	ldb	,s
   04E0 C1 03         [ 2]  142 	cmpb	#3	;cmpqi:
   04E2 23 DA         [ 3]  143 	bls	L9
   04E4 F6 C8 86      [ 5]  144 	ldb	_frame_cnt
                            145 	; tstb	; optimization 6
   04E7 26 05         [ 3]  146 	bne	L7
   04E9 C6 01         [ 2]  147 	ldb	#1
   04EB F7 C8 85      [ 5]  148 	stb	_position
   04EE                     149 L7:
   04EE 7F C8 87      [ 7]  150 	clr	_cycle_cnt
   04F1 20 07         [ 3]  151 	bra	L11
   04F3                     152 L2:
   04F3 F6 C8 87      [ 5]  153 	ldb	_cycle_cnt
   04F6 5C            [ 2]  154 	incb
   04F7 F7 C8 87      [ 5]  155 	stb	_cycle_cnt
   04FA                     156 L11:
   04FA 32 61         [ 5]  157 	leas	1,s
   04FC 35 E0         [ 8]  158 	puls	y,u,pc
                            159 	.globl _draw_ether
   04FE                     160 _draw_ether:
   04FE 34 40         [ 6]  161 	pshs	u
   0500 32 7F         [ 5]  162 	leas	-1,s
   0502 6F E4         [ 6]  163 	clr	,s
   0504 20 11         [ 3]  164 	bra	L13
   0506                     165 L14:
   0506 E6 E4         [ 4]  166 	ldb	,s
   0508 4F            [ 2]  167 	clra		;zero_extendqihi: R:b -> R:d
   0509 58            [ 2]  168 	aslb
   050A 49            [ 2]  169 	rola
   050B CE 04 5C      [ 3]  170 	ldu	#_ether
   050E 30 CB         [ 8]  171 	leax	d,u
   0510 AE 84         [ 5]  172 	ldx	,x
   0512 BD 0A 90      [ 8]  173 	jsr	_draw_sprite
   0515 6C E4         [ 6]  174 	inc	,s
   0517                     175 L13:
   0517 E6 E4         [ 4]  176 	ldb	,s
   0519 C1 03         [ 2]  177 	cmpb	#3	;cmpqi:
   051B 23 E9         [ 3]  178 	bls	L14
   051D 32 61         [ 5]  179 	leas	1,s
   051F 35 C0         [ 7]  180 	puls	u,pc
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  3 L11                00B1 R   |   3 L13                00CE R
  3 L14                00BD R   |   3 L2                 00AA R
  3 L3                 006A R   |   3 L4                 0058 R
  3 L5                 0038 R   |   3 L7                 00A5 R
  3 L8                 0095 R   |   3 L9                 0075 R
  3 _animate_ether     001B GR  |   2 _cycle_cnt         0002 GR
  3 _draw_ether        00B5 GR  |     _draw_sprite       **** GX
  3 _ether             0013 GR  |   2 _ether_1           0003 GR
  2 _ether_2           0008 GR  |   2 _ether_3           000D GR
  2 _ether_4           0012 GR  |   2 _frame_cnt         0001 GR
  2 _position          0000 GR  |   3 _shape_ether       000F GR
  3 _vectors_ether     0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .data            size   17   flags  100
   3 .text            size   D8   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

