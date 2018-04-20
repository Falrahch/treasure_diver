
;;; gcc for m6809 : Feb 15 2016 21:40:10
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	game.c
	.area .text
	.globl _game_options
_game_options:
	ldb	#3
	stb	,-s
	ldb	#1
	jsr	_game_menu
	leas	1,s
	rts
_game_menu:
	leas	-3,s
	stb	,s
	; ldb	,s	; optimization 5
	stb	2,s
	ldb	5,s
	stb	1,s
	ldb	2,s
	stb	,-s
	ldb	2,s
	jsr	__Select_Game
	leas	1,s
	leas	3,s
	rts
LC0:
	.ascii "GET READY\0"
	.globl _game_init
_game_init:
	leas	-1,s
	ldb	#1
	stb	_Vec_Joy_Mux_1_X
	ldb	#3
	stb	_Vec_Joy_Mux_1_Y
	clr	_Vec_Joy_Mux_2_X
	clr	_Vec_Joy_Mux_2_Y
	jsr	_init_player
	ldb	#75
	stb	,s
	bra	L6
L7:
	jsr	___Wait_Recal
	jsr	___Reset0Ref
	ldb	#-60
	stb	,-s
	ldx	#LC0
	clrb
	jsr	_print_str
	leas	1,s
L6:
	dec	,s
	; tst	,s	; optimization 1
	bne	L7
	leas	1,s
	rts
	.globl _game_loop
_game_loop:
	leas	-1,s
	ldb	#1
	stb	,s
	bra	L10
L11:
	jsr	___Wait_Recal
	jsr	_move_player
	jsr	_move_rocks
	jsr	_draw_player
	jsr	_draw_rocks
	jsr	_draw_crabs
	jsr	_draw_ether
	jsr	_animate_ether
	jsr	_check_ether_pickup
	jsr	_check_enemy_collision
	stb	,s
	jsr	___Intensity_5F
L10:
	tst	,s
	bne	L11
	leas	1,s
	rts
LC1:
	.ascii "GAME OVER\0"
	.globl _game_over
_game_over:
	leas	-1,s
	ldb	#-106
	stb	,s
	bra	L14
L15:
	jsr	___Wait_Recal
	jsr	___Reset0Ref
	ldb	#-70
	stb	,-s
	ldx	#LC1
	clrb
	jsr	_print_str
	leas	1,s
	jsr	_reset_ether
L14:
	dec	,s
	; tst	,s	; optimization 1
	bne	L15
	leas	1,s
	rts
	.globl _game
_game:
	jsr	_game_init
	jsr	_game_loop
	jsr	_game_over
	clrb
	rts
