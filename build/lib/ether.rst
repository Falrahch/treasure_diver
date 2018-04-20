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
   0449 06                   20 	.byte	6
   044A 03                   21 	.byte	3
   044B 06                   22 	.byte	6
   044C FD                   23 	.byte	-3
   044D FA                   24 	.byte	-6
   044E FD                   25 	.byte	-3
   044F FA                   26 	.byte	-6
   0450 03                   27 	.byte	3
                             28 	.globl _shape_ether
   0451                      29 _shape_ether:
   0451 01                   30 	.byte	1
   0452 04                   31 	.byte	4
   0453 04 49                32 	.word	_vectors_ether
                             33 	.globl _ether_1
                             34 	.area .data
   C888                      35 _ether_1:
   C888 0A                   36 	.byte	10
   C889 92                   37 	.byte	-110
   C88A 96                   38 	.byte	-106
   C88B 04 51                39 	.word	_shape_ether
                             40 	.globl _ether_2
   C88D                      41 _ether_2:
   C88D 14                   42 	.byte	20
   C88E A6                   43 	.byte	-90
   C88F 96                   44 	.byte	-106
   C890 04 51                45 	.word	_shape_ether
                             46 	.globl _ether_3
   C892                      47 _ether_3:
   C892 0A                   48 	.byte	10
   C893 BA                   49 	.byte	-70
   C894 96                   50 	.byte	-106
   C895 04 51                51 	.word	_shape_ether
                             52 	.globl _ether_4
   C897                      53 _ether_4:
   C897 14                   54 	.byte	20
   C898 CE                   55 	.byte	-50
   C899 96                   56 	.byte	-106
   C89A 04 51                57 	.word	_shape_ether
                             58 	.globl _ether
                             59 	.area .text
   0455                      60 _ether:
   0455 C8 88                61 	.word	_ether_1
   0457 C8 8D                62 	.word	_ether_2
   0459 C8 92                63 	.word	_ether_3
   045B C8 97                64 	.word	_ether_4
                             65 	.globl _animate_ether
   045D                      66 _animate_ether:
   045D 34 60         [ 7]   67 	pshs	y,u
   045F 32 7F         [ 5]   68 	leas	-1,s
   0461 F6 C8 87      [ 5]   69 	ldb	_cycle_cnt
   0464 C1 0A         [ 2]   70 	cmpb	#10	;cmpqi:
   0466 10 26 00 82   [ 6]   71 	lbne	L2
   046A F6 C8 85      [ 5]   72 	ldb	_position
                             73 	; tstb	; optimization 6
   046D 27 3D         [ 3]   74 	beq	L3
   046F F6 C8 86      [ 5]   75 	ldb	_frame_cnt
   0472 5C            [ 2]   76 	incb
   0473 F7 C8 86      [ 5]   77 	stb	_frame_cnt
   0476 6F E4         [ 6]   78 	clr	,s
   0478 20 20         [ 3]   79 	bra	L4
   047A                      80 L5:
   047A E6 E4         [ 4]   81 	ldb	,s
   047C 4F            [ 2]   82 	clra		;zero_extendqihi: R:b -> R:d
   047D 58            [ 2]   83 	aslb
   047E 49            [ 2]   84 	rola
   047F CE 04 55      [ 3]   85 	ldu	#_ether
   0482 30 CB         [ 8]   86 	leax	d,u
   0484 10 AE 84      [ 6]   87 	ldy	,x
   0487 E6 E4         [ 4]   88 	ldb	,s
   0489 4F            [ 2]   89 	clra		;zero_extendqihi: R:b -> R:d
   048A 58            [ 2]   90 	aslb
   048B 49            [ 2]   91 	rola
   048C CE 04 55      [ 3]   92 	ldu	#_ether
   048F 30 CB         [ 8]   93 	leax	d,u
   0491 AE 84         [ 5]   94 	ldx	,x
   0493 E6 84         [ 4]   95 	ldb	,x
   0495 5C            [ 2]   96 	incb
   0496 E7 A4         [ 4]   97 	stb	,y
   0498 6C E4         [ 6]   98 	inc	,s
   049A                      99 L4:
   049A E6 E4         [ 4]  100 	ldb	,s
   049C C1 03         [ 2]  101 	cmpb	#3	;cmpqi:
   049E 23 DA         [ 3]  102 	bls	L5
   04A0 F6 C8 86      [ 5]  103 	ldb	_frame_cnt
   04A3 C1 05         [ 2]  104 	cmpb	#5	;cmpqi:
   04A5 26 40         [ 3]  105 	bne	L7
   04A7 7F C8 85      [ 7]  106 	clr	_position
   04AA 20 3B         [ 3]  107 	bra	L7
   04AC                     108 L3:
   04AC F6 C8 86      [ 5]  109 	ldb	_frame_cnt
   04AF 5A            [ 2]  110 	decb
   04B0 F7 C8 86      [ 5]  111 	stb	_frame_cnt
   04B3 6F E4         [ 6]  112 	clr	,s
   04B5 20 20         [ 3]  113 	bra	L8
   04B7                     114 L9:
   04B7 E6 E4         [ 4]  115 	ldb	,s
   04B9 4F            [ 2]  116 	clra		;zero_extendqihi: R:b -> R:d
   04BA 58            [ 2]  117 	aslb
   04BB 49            [ 2]  118 	rola
   04BC CE 04 55      [ 3]  119 	ldu	#_ether
   04BF 30 CB         [ 8]  120 	leax	d,u
   04C1 10 AE 84      [ 6]  121 	ldy	,x
   04C4 E6 E4         [ 4]  122 	ldb	,s
   04C6 4F            [ 2]  123 	clra		;zero_extendqihi: R:b -> R:d
   04C7 58            [ 2]  124 	aslb
   04C8 49            [ 2]  125 	rola
   04C9 CE 04 55      [ 3]  126 	ldu	#_ether
   04CC 30 CB         [ 8]  127 	leax	d,u
   04CE AE 84         [ 5]  128 	ldx	,x
   04D0 E6 84         [ 4]  129 	ldb	,x
   04D2 5A            [ 2]  130 	decb
   04D3 E7 A4         [ 4]  131 	stb	,y
   04D5 6C E4         [ 6]  132 	inc	,s
   04D7                     133 L8:
   04D7 E6 E4         [ 4]  134 	ldb	,s
   04D9 C1 03         [ 2]  135 	cmpb	#3	;cmpqi:
   04DB 23 DA         [ 3]  136 	bls	L9
   04DD F6 C8 86      [ 5]  137 	ldb	_frame_cnt
                            138 	; tstb	; optimization 6
   04E0 26 05         [ 3]  139 	bne	L7
   04E2 C6 01         [ 2]  140 	ldb	#1
   04E4 F7 C8 85      [ 5]  141 	stb	_position
   04E7                     142 L7:
   04E7 7F C8 87      [ 7]  143 	clr	_cycle_cnt
   04EA 20 07         [ 3]  144 	bra	L11
   04EC                     145 L2:
   04EC F6 C8 87      [ 5]  146 	ldb	_cycle_cnt
   04EF 5C            [ 2]  147 	incb
   04F0 F7 C8 87      [ 5]  148 	stb	_cycle_cnt
   04F3                     149 L11:
   04F3 32 61         [ 5]  150 	leas	1,s
   04F5 35 E0         [ 8]  151 	puls	y,u,pc
                            152 	.globl _draw_ether
   04F7                     153 _draw_ether:
   04F7 34 40         [ 6]  154 	pshs	u
   04F9 32 7F         [ 5]  155 	leas	-1,s
   04FB 6F E4         [ 6]  156 	clr	,s
   04FD 20 23         [ 3]  157 	bra	L13
   04FF                     158 L15:
   04FF E6 E4         [ 4]  159 	ldb	,s
   0501 4F            [ 2]  160 	clra		;zero_extendqihi: R:b -> R:d
   0502 58            [ 2]  161 	aslb
   0503 49            [ 2]  162 	rola
   0504 CE 04 55      [ 3]  163 	ldu	#_ether
   0507 30 CB         [ 8]  164 	leax	d,u
   0509 AE 84         [ 5]  165 	ldx	,x
   050B E6 02         [ 5]  166 	ldb	2,x
   050D C1 96         [ 2]  167 	cmpb	#-106	;cmpqi:
   050F 26 0F         [ 3]  168 	bne	L14
   0511 E6 E4         [ 4]  169 	ldb	,s
   0513 4F            [ 2]  170 	clra		;zero_extendqihi: R:b -> R:d
   0514 58            [ 2]  171 	aslb
   0515 49            [ 2]  172 	rola
   0516 CE 04 55      [ 3]  173 	ldu	#_ether
   0519 30 CB         [ 8]  174 	leax	d,u
   051B AE 84         [ 5]  175 	ldx	,x
   051D BD 10 BB      [ 8]  176 	jsr	_draw_sprite
   0520                     177 L14:
   0520 6C E4         [ 6]  178 	inc	,s
   0522                     179 L13:
   0522 E6 E4         [ 4]  180 	ldb	,s
   0524 C1 03         [ 2]  181 	cmpb	#3	;cmpqi:
   0526 23 D7         [ 3]  182 	bls	L15
   0528 32 61         [ 5]  183 	leas	1,s
   052A 35 C0         [ 7]  184 	puls	u,pc
                            185 	.globl _reset_ether
   052C                     186 _reset_ether:
   052C 34 40         [ 6]  187 	pshs	u
   052E 32 7F         [ 5]  188 	leas	-1,s
   0530 6F E4         [ 6]  189 	clr	,s
   0532 20 12         [ 3]  190 	bra	L18
   0534                     191 L19:
   0534 E6 E4         [ 4]  192 	ldb	,s
   0536 4F            [ 2]  193 	clra		;zero_extendqihi: R:b -> R:d
   0537 58            [ 2]  194 	aslb
   0538 49            [ 2]  195 	rola
   0539 CE 04 55      [ 3]  196 	ldu	#_ether
   053C 30 CB         [ 8]  197 	leax	d,u
   053E AE 84         [ 5]  198 	ldx	,x
   0540 C6 96         [ 2]  199 	ldb	#-106
   0542 E7 02         [ 5]  200 	stb	2,x
   0544 6C E4         [ 6]  201 	inc	,s
   0546                     202 L18:
   0546 E6 E4         [ 4]  203 	ldb	,s
   0548 C1 03         [ 2]  204 	cmpb	#3	;cmpqi:
   054A 23 E8         [ 3]  205 	bls	L19
   054C 32 61         [ 5]  206 	leas	1,s
   054E 35 C0         [ 7]  207 	puls	u,pc
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  3 L11                00AA R   |   3 L13                00D9 R
  3 L14                00D7 R   |   3 L15                00B6 R
  3 L18                00FD R   |   3 L19                00EB R
  3 L2                 00A3 R   |   3 L3                 0063 R
  3 L4                 0051 R   |   3 L5                 0031 R
  3 L7                 009E R   |   3 L8                 008E R
  3 L9                 006E R   |   3 _animate_ether     0014 GR
  2 _cycle_cnt         0002 GR  |   3 _draw_ether        00AE GR
    _draw_sprite       **** GX  |   3 _ether             000C GR
  2 _ether_1           0003 GR  |   2 _ether_2           0008 GR
  2 _ether_3           000D GR  |   2 _ether_4           0012 GR
  2 _frame_cnt         0001 GR  |   2 _position          0000 GR
  3 _reset_ether       00E3 GR  |   3 _shape_ether       0008 GR
  3 _vectors_ether     0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .data            size   17   flags  100
   3 .text            size  107   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

