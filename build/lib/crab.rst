                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	crab.c
                              7 	.globl _vectors_crab
                              8 	.area .text
   03D9                       9 _vectors_crab:
   03D9 FF                   10 	.byte	-1
   03DA 05                   11 	.byte	5
   03DB 07                   12 	.byte	7
   03DC FF                   13 	.byte	-1
   03DD FE                   14 	.byte	-2
   03DE 03                   15 	.byte	3
   03DF FF                   16 	.byte	-1
   03E0 02                   17 	.byte	2
   03E1 03                   18 	.byte	3
   03E2 FF                   19 	.byte	-1
   03E3 FB                   20 	.byte	-5
   03E4 07                   21 	.byte	7
   03E5 FF                   22 	.byte	-1
   03E6 07                   23 	.byte	7
   03E7 FB                   24 	.byte	-5
   03E8 FF                   25 	.byte	-1
   03E9 03                   26 	.byte	3
   03EA 02                   27 	.byte	2
   03EB FF                   28 	.byte	-1
   03EC 03                   29 	.byte	3
   03ED FE                   30 	.byte	-2
   03EE FF                   31 	.byte	-1
   03EF 07                   32 	.byte	7
   03F0 05                   33 	.byte	5
   03F1 FF                   34 	.byte	-1
   03F2 FB                   35 	.byte	-5
   03F3 F9                   36 	.byte	-7
   03F4 FF                   37 	.byte	-1
   03F5 02                   38 	.byte	2
   03F6 FD                   39 	.byte	-3
   03F7 FF                   40 	.byte	-1
   03F8 FE                   41 	.byte	-2
   03F9 FD                   42 	.byte	-3
   03FA FF                   43 	.byte	-1
   03FB 05                   44 	.byte	5
   03FC F9                   45 	.byte	-7
   03FD FF                   46 	.byte	-1
   03FE F9                   47 	.byte	-7
   03FF 05                   48 	.byte	5
   0400 FF                   49 	.byte	-1
   0401 FD                   50 	.byte	-3
   0402 FE                   51 	.byte	-2
   0403 FF                   52 	.byte	-1
   0404 FD                   53 	.byte	-3
   0405 02                   54 	.byte	2
   0406 FF                   55 	.byte	-1
   0407 F9                   56 	.byte	-7
   0408 FB                   57 	.byte	-5
   0409 01                   58 	.byte	1
   040A 00                   59 	.byte	0
   040B 00                   60 	.byte	0
                             61 	.globl _shape_crab_1
   040C                      62 _shape_crab_1:
   040C 00                   63 	.byte	0
   040D 11                   64 	.byte	17
   040E 03 D9                65 	.word	_vectors_crab
                             66 	.globl _crab_1
                             67 	.area .data
   C880                      68 _crab_1:
   C880 D6                   69 	.byte	-42
   C881 80                   70 	.byte	-128
   C882 96                   71 	.byte	-106
   C883 04 0C                72 	.word	_shape_crab_1
                             73 	.globl _crabs
                             74 	.area .text
   0410                      75 _crabs:
   0410 C8 80                76 	.word	_crab_1
                             77 	.globl _move_crabs
   0412                      78 _move_crabs:
   0412 32 7F         [ 5]   79 	leas	-1,s
   0414 6F E4         [ 6]   80 	clr	,s
   0416 20 02         [ 3]   81 	bra	L2
   0418                      82 L3:
   0418 6C E4         [ 6]   83 	inc	,s
   041A                      84 L2:
   041A BD 04 24      [ 8]   85 	jsr	_get_num_option
   041D E1 E4         [ 4]   86 	cmpb	,s	;cmpqi:
   041F 22 F7         [ 3]   87 	bhi	L3
   0421 32 61         [ 5]   88 	leas	1,s
   0423 39            [ 5]   89 	rts
   0424                      90 _get_num_option:
   0424 F6 C8 7A      [ 5]   91 	ldb	_Vec_Num_Game
   0427 39            [ 5]   92 	rts
                             93 	.globl _draw_crabs
   0428                      94 _draw_crabs:
   0428 34 40         [ 6]   95 	pshs	u
   042A 32 7F         [ 5]   96 	leas	-1,s
   042C 6F E4         [ 6]   97 	clr	,s
   042E 20 11         [ 3]   98 	bra	L8
   0430                      99 L9:
   0430 E6 E4         [ 4]  100 	ldb	,s
   0432 4F            [ 2]  101 	clra		;zero_extendqihi: R:b -> R:d
   0433 58            [ 2]  102 	aslb
   0434 49            [ 2]  103 	rola
   0435 CE 04 10      [ 3]  104 	ldu	#_crabs
   0438 30 CB         [ 8]  105 	leax	d,u
   043A AE 84         [ 5]  106 	ldx	,x
   043C BD 10 BB      [ 8]  107 	jsr	_draw_sprite
   043F 6C E4         [ 6]  108 	inc	,s
   0441                     109 L8:
   0441 6D E4         [ 6]  110 	tst	,s
   0443 27 EB         [ 3]  111 	beq	L9
   0445 32 61         [ 5]  112 	leas	1,s
   0447 35 C0         [ 7]  113 	puls	u,pc
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 L2                 0041 R   |   2 L3                 003F R
  2 L8                 0068 R   |   2 L9                 0057 R
    _Vec_Num_Game      **** GX  |   3 _crab_1            0000 GR
  2 _crabs             0037 GR  |   2 _draw_crabs        004F GR
    _draw_sprite       **** GX  |   2 _get_num_optio     004B R
  2 _move_crabs        0039 GR  |   2 _shape_crab_1      0033 GR
  2 _vectors_crab      0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size   70   flags  100
   3 .data            size    5   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

