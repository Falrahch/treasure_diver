                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	game.c
                              7 	.area .text
                              8 	.globl _game_options
   0550                       9 _game_options:
   0550 C6 03         [ 2]   10 	ldb	#3
   0552 E7 E2         [ 6]   11 	stb	,-s
   0554 C6 01         [ 2]   12 	ldb	#1
   0556 BD 05 5C      [ 8]   13 	jsr	_game_menu
   0559 32 61         [ 5]   14 	leas	1,s
   055B 39            [ 5]   15 	rts
   055C                      16 _game_menu:
   055C 32 7D         [ 5]   17 	leas	-3,s
   055E E7 E4         [ 4]   18 	stb	,s
                             19 	; ldb	,s	; optimization 5
   0560 E7 62         [ 5]   20 	stb	2,s
   0562 E6 65         [ 5]   21 	ldb	5,s
   0564 E7 61         [ 5]   22 	stb	1,s
   0566 E6 62         [ 5]   23 	ldb	2,s
   0568 E7 E2         [ 6]   24 	stb	,-s
   056A E6 62         [ 5]   25 	ldb	2,s
   056C BD 02 73      [ 8]   26 	jsr	__Select_Game
   056F 32 61         [ 5]   27 	leas	1,s
   0571 32 63         [ 5]   28 	leas	3,s
   0573 39            [ 5]   29 	rts
   0574                      30 LC0:
   0574 47 45 54 20 52 45    31 	.ascii "GET READY\0"
        41 44 59 00
                             32 	.globl _game_init
   057E                      33 _game_init:
   057E 32 7F         [ 5]   34 	leas	-1,s
   0580 C6 01         [ 2]   35 	ldb	#1
   0582 F7 C8 1F      [ 5]   36 	stb	_Vec_Joy_Mux_1_X
   0585 C6 03         [ 2]   37 	ldb	#3
   0587 F7 C8 20      [ 5]   38 	stb	_Vec_Joy_Mux_1_Y
   058A 7F C8 21      [ 7]   39 	clr	_Vec_Joy_Mux_2_X
   058D 7F C8 22      [ 7]   40 	clr	_Vec_Joy_Mux_2_Y
   0590 BD 0A 91      [ 8]   41 	jsr	_init_player
   0593 C6 4B         [ 2]   42 	ldb	#75
   0595 E7 E4         [ 4]   43 	stb	,s
   0597 20 13         [ 3]   44 	bra	L6
   0599                      45 L7:
   0599 BD F1 92      [ 8]   46 	jsr	___Wait_Recal
   059C BD F3 54      [ 8]   47 	jsr	___Reset0Ref
   059F C6 C4         [ 2]   48 	ldb	#-60
   05A1 E7 E2         [ 6]   49 	stb	,-s
   05A3 8E 05 74      [ 3]   50 	ldx	#LC0
   05A6 5F            [ 2]   51 	clrb
   05A7 BD 0D 4F      [ 8]   52 	jsr	_print_str
   05AA 32 61         [ 5]   53 	leas	1,s
   05AC                      54 L6:
   05AC 6A E4         [ 6]   55 	dec	,s
                             56 	; tst	,s	; optimization 1
   05AE 26 E9         [ 3]   57 	bne	L7
   05B0 32 61         [ 5]   58 	leas	1,s
   05B2 39            [ 5]   59 	rts
                             60 	.globl _game_loop
   05B3                      61 _game_loop:
   05B3 32 7F         [ 5]   62 	leas	-1,s
   05B5 C6 01         [ 2]   63 	ldb	#1
   05B7 E7 E4         [ 4]   64 	stb	,s
   05B9 20 23         [ 3]   65 	bra	L10
   05BB                      66 L11:
   05BB BD F1 92      [ 8]   67 	jsr	___Wait_Recal
   05BE BD 0A 9F      [ 8]   68 	jsr	_move_player
   05C1 BD 0F C3      [ 8]   69 	jsr	_move_rocks
   05C4 BD 0B 78      [ 8]   70 	jsr	_draw_player
   05C7 BD 0F D9      [ 8]   71 	jsr	_draw_rocks
   05CA BD 04 28      [ 8]   72 	jsr	_draw_crabs
   05CD BD 04 F7      [ 8]   73 	jsr	_draw_ether
   05D0 BD 04 5D      [ 8]   74 	jsr	_animate_ether
   05D3 BD 0B 92      [ 8]   75 	jsr	_check_ether_pickup
   05D6 BD 0C 2B      [ 8]   76 	jsr	_check_enemy_collision
   05D9 E7 E4         [ 4]   77 	stb	,s
   05DB BD F2 A5      [ 8]   78 	jsr	___Intensity_5F
   05DE                      79 L10:
   05DE 6D E4         [ 6]   80 	tst	,s
   05E0 26 D9         [ 3]   81 	bne	L11
   05E2 32 61         [ 5]   82 	leas	1,s
   05E4 39            [ 5]   83 	rts
   05E5                      84 LC1:
   05E5 47 41 4D 45 20 4F    85 	.ascii "GAME OVER\0"
        56 45 52 00
                             86 	.globl _game_over
   05EF                      87 _game_over:
   05EF 32 7F         [ 5]   88 	leas	-1,s
   05F1 C6 96         [ 2]   89 	ldb	#-106
   05F3 E7 E4         [ 4]   90 	stb	,s
   05F5 20 16         [ 3]   91 	bra	L14
   05F7                      92 L15:
   05F7 BD F1 92      [ 8]   93 	jsr	___Wait_Recal
   05FA BD F3 54      [ 8]   94 	jsr	___Reset0Ref
   05FD C6 BA         [ 2]   95 	ldb	#-70
   05FF E7 E2         [ 6]   96 	stb	,-s
   0601 8E 05 E5      [ 3]   97 	ldx	#LC1
   0604 5F            [ 2]   98 	clrb
   0605 BD 0D 4F      [ 8]   99 	jsr	_print_str
   0608 32 61         [ 5]  100 	leas	1,s
   060A BD 05 2C      [ 8]  101 	jsr	_reset_ether
   060D                     102 L14:
   060D 6A E4         [ 6]  103 	dec	,s
                            104 	; tst	,s	; optimization 1
   060F 26 E6         [ 3]  105 	bne	L15
   0611 32 61         [ 5]  106 	leas	1,s
   0613 39            [ 5]  107 	rts
                            108 	.globl _game
   0614                     109 _game:
   0614 BD 05 7E      [ 8]  110 	jsr	_game_init
   0617 BD 05 B3      [ 8]  111 	jsr	_game_loop
   061A BD 05 EF      [ 8]  112 	jsr	_game_over
   061D 5F            [ 2]  113 	clrb
   061E 39            [ 5]  114 	rts
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 L10                008E R   |   2 L11                006B R
  2 L14                00BD R   |   2 L15                00A7 R
  2 L6                 005C R   |   2 L7                 0049 R
  2 LC0                0024 R   |   2 LC1                0095 R
    _Vec_Joy_Mux_1     **** GX  |     _Vec_Joy_Mux_1     **** GX
    _Vec_Joy_Mux_2     **** GX  |     _Vec_Joy_Mux_2     **** GX
    __Select_Game      **** GX  |     ___Intensity_5     **** GX
    ___Reset0Ref       **** GX  |     ___Wait_Recal      **** GX
    _animate_ether     **** GX  |     _check_enemy_c     **** GX
    _check_ether_p     **** GX  |     _draw_crabs        **** GX
    _draw_ether        **** GX  |     _draw_player       **** GX
    _draw_rocks        **** GX  |   2 _game              00C4 GR
  2 _game_init         002E GR  |   2 _game_loop         0063 GR
  2 _game_menu         000C R   |   2 _game_options      0000 GR
  2 _game_over         009F GR  |     _init_player       **** GX
    _move_player       **** GX  |     _move_rocks        **** GX
    _print_str         **** GX  |     _reset_ether       **** GX

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size   CF   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

