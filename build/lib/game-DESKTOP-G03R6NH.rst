                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	game.c
                              7 	.area .text
                              8 	.globl _game_options
   0521                       9 _game_options:
   0521 C6 03         [ 2]   10 	ldb	#3
   0523 E7 E2         [ 6]   11 	stb	,-s
   0525 C6 01         [ 2]   12 	ldb	#1
   0527 BD 05 2D      [ 8]   13 	jsr	_game_menu
   052A 32 61         [ 5]   14 	leas	1,s
   052C 39            [ 5]   15 	rts
   052D                      16 _game_menu:
   052D 32 7D         [ 5]   17 	leas	-3,s
   052F E7 E4         [ 4]   18 	stb	,s
                             19 	; ldb	,s	; optimization 5
   0531 E7 62         [ 5]   20 	stb	2,s
   0533 E6 65         [ 5]   21 	ldb	5,s
   0535 E7 61         [ 5]   22 	stb	1,s
   0537 E6 62         [ 5]   23 	ldb	2,s
   0539 E7 E2         [ 6]   24 	stb	,-s
   053B E6 62         [ 5]   25 	ldb	2,s
   053D BD 02 73      [ 8]   26 	jsr	__Select_Game
   0540 32 61         [ 5]   27 	leas	1,s
   0542 32 63         [ 5]   28 	leas	3,s
   0544 39            [ 5]   29 	rts
   0545                      30 LC0:
   0545 47 45 54 20 52 45    31 	.ascii "GET READY\0"
        41 44 59 00
                             32 	.globl _game_init
   054F                      33 _game_init:
   054F 32 7F         [ 5]   34 	leas	-1,s
   0551 BD 05 8E      [ 8]   35 	jsr	_enable_controller_1_x
   0554 BD 05 88      [ 8]   36 	jsr	_enable_controller_1_y
   0557 BD 05 84      [ 8]   37 	jsr	_disable_controller_2_x
   055A BD 05 80      [ 8]   38 	jsr	_disable_controller_2_y
   055D BD 06 5D      [ 8]   39 	jsr	_init_player
   0560 C6 4B         [ 2]   40 	ldb	#75
   0562 E7 E4         [ 4]   41 	stb	,s
   0564 20 13         [ 3]   42 	bra	L6
   0566                      43 L7:
   0566 BD F1 92      [ 8]   44 	jsr	___Wait_Recal
   0569 BD F3 54      [ 8]   45 	jsr	___Reset0Ref
   056C C6 C4         [ 2]   46 	ldb	#-60
   056E E7 E2         [ 6]   47 	stb	,-s
   0570 8E 05 45      [ 3]   48 	ldx	#LC0
   0573 5F            [ 2]   49 	clrb
   0574 BD 07 E8      [ 8]   50 	jsr	_print_str
   0577 32 61         [ 5]   51 	leas	1,s
   0579                      52 L6:
   0579 6A E4         [ 6]   53 	dec	,s
                             54 	; tst	,s	; optimization 1
   057B 26 E9         [ 3]   55 	bne	L7
   057D 32 61         [ 5]   56 	leas	1,s
   057F 39            [ 5]   57 	rts
   0580                      58 _disable_controller_2_y:
   0580 7F C8 22      [ 7]   59 	clr	_Vec_Joy_Mux_2_Y
   0583 39            [ 5]   60 	rts
   0584                      61 _disable_controller_2_x:
   0584 7F C8 21      [ 7]   62 	clr	_Vec_Joy_Mux_2_X
   0587 39            [ 5]   63 	rts
   0588                      64 _enable_controller_1_y:
   0588 C6 03         [ 2]   65 	ldb	#3
   058A F7 C8 20      [ 5]   66 	stb	_Vec_Joy_Mux_1_Y
   058D 39            [ 5]   67 	rts
   058E                      68 _enable_controller_1_x:
   058E C6 01         [ 2]   69 	ldb	#1
   0590 F7 C8 1F      [ 5]   70 	stb	_Vec_Joy_Mux_1_X
   0593 39            [ 5]   71 	rts
                             72 	.globl _game_loop
   0594                      73 _game_loop:
   0594 32 7F         [ 5]   74 	leas	-1,s
   0596 C6 01         [ 2]   75 	ldb	#1
   0598 E7 E4         [ 4]   76 	stb	,s
   059A 20 1D         [ 3]   77 	bra	L18
   059C                      78 L19:
   059C BD F1 92      [ 8]   79 	jsr	___Wait_Recal
   059F BD 06 6B      [ 8]   80 	jsr	_move_player
   05A2 BD 0A 56      [ 8]   81 	jsr	_move_rocks
   05A5 BD 07 54      [ 8]   82 	jsr	_draw_player
   05A8 BD 0A 6C      [ 8]   83 	jsr	_draw_rocks
   05AB BD 04 28      [ 8]   84 	jsr	_draw_crabs
   05AE BD 04 FE      [ 8]   85 	jsr	_draw_ether
   05B1 BD 04 64      [ 8]   86 	jsr	_animate_ether
   05B4 BD 07 5B      [ 8]   87 	jsr	_check_player
   05B7 E7 E4         [ 4]   88 	stb	,s
   05B9                      89 L18:
   05B9 6D E4         [ 6]   90 	tst	,s
   05BB 26 DF         [ 3]   91 	bne	L19
   05BD 32 61         [ 5]   92 	leas	1,s
   05BF 39            [ 5]   93 	rts
   05C0                      94 LC1:
   05C0 47 41 4D 45 20 4F    95 	.ascii "GAME OVER\0"
        56 45 52 00
                             96 	.globl _game_over
   05CA                      97 _game_over:
   05CA 32 7F         [ 5]   98 	leas	-1,s
   05CC C6 96         [ 2]   99 	ldb	#-106
   05CE E7 E4         [ 4]  100 	stb	,s
   05D0 20 13         [ 3]  101 	bra	L22
   05D2                     102 L23:
   05D2 BD F1 92      [ 8]  103 	jsr	___Wait_Recal
   05D5 BD F3 54      [ 8]  104 	jsr	___Reset0Ref
   05D8 C6 BA         [ 2]  105 	ldb	#-70
   05DA E7 E2         [ 6]  106 	stb	,-s
   05DC 8E 05 C0      [ 3]  107 	ldx	#LC1
   05DF 5F            [ 2]  108 	clrb
   05E0 BD 07 E8      [ 8]  109 	jsr	_print_str
   05E3 32 61         [ 5]  110 	leas	1,s
   05E5                     111 L22:
   05E5 6A E4         [ 6]  112 	dec	,s
                            113 	; tst	,s	; optimization 1
   05E7 26 E9         [ 3]  114 	bne	L23
   05E9 32 61         [ 5]  115 	leas	1,s
   05EB 39            [ 5]  116 	rts
                            117 	.globl _game
   05EC                     118 _game:
   05EC BD 05 4F      [ 8]  119 	jsr	_game_init
   05EF BD 05 94      [ 8]  120 	jsr	_game_loop
   05F2 BD 05 CA      [ 8]  121 	jsr	_game_over
   05F5 5F            [ 2]  122 	clrb
   05F6 39            [ 5]  123 	rts
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 L18                0098 R   |   2 L19                007B R
  2 L22                00C4 R   |   2 L23                00B1 R
  2 L6                 0058 R   |   2 L7                 0045 R
  2 LC0                0024 R   |   2 LC1                009F R
    _Vec_Joy_Mux_1     **** GX  |     _Vec_Joy_Mux_1     **** GX
    _Vec_Joy_Mux_2     **** GX  |     _Vec_Joy_Mux_2     **** GX
    __Select_Game      **** GX  |     ___Reset0Ref       **** GX
    ___Wait_Recal      **** GX  |     _animate_ether     **** GX
    _check_player      **** GX  |   2 _disable_contr     0063 R
  2 _disable_contr     005F R   |     _draw_crabs        **** GX
    _draw_ether        **** GX  |     _draw_player       **** GX
    _draw_rocks        **** GX  |   2 _enable_contro     006D R
  2 _enable_contro     0067 R   |   2 _game              00CB GR
  2 _game_init         002E GR  |   2 _game_loop         0073 GR
  2 _game_menu         000C R   |   2 _game_options      0000 GR
  2 _game_over         00A9 GR  |     _init_player       **** GX
    _move_player       **** GX  |     _move_rocks        **** GX
    _print_str         **** GX

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size   D6   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

