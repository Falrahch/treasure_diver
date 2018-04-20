
;;; gcc for m6809 : Feb 15 2016 21:40:10
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	player.c
	.globl _vectors_player
	.area .text
_vectors_player:
	.byte	-1
	.byte	5
	.byte	10
	.byte	-1
	.byte	10
	.byte	5
	.byte	-1
	.byte	0
	.byte	5
	.byte	-1
	.byte	15
	.byte	0
	.byte	-1
	.byte	0
	.byte	-5
	.byte	-1
	.byte	10
	.byte	-5
	.byte	-1
	.byte	5
	.byte	-10
	.byte	-1
	.byte	5
	.byte	0
	.byte	-1
	.byte	0
	.byte	-15
	.byte	-1
	.byte	-5
	.byte	0
	.byte	-1
	.byte	-5
	.byte	-10
	.byte	-1
	.byte	-10
	.byte	-5
	.byte	-1
	.byte	0
	.byte	-5
	.byte	-1
	.byte	-15
	.byte	0
	.byte	-1
	.byte	0
	.byte	5
	.byte	-1
	.byte	-10
	.byte	5
	.byte	-1
	.byte	-5
	.byte	10
	.byte	-1
	.byte	0
	.byte	15
	.byte	0
	.byte	16
	.byte	2
	.byte	-1
	.byte	11
	.byte	0
	.byte	-1
	.byte	4
	.byte	-4
	.byte	-1
	.byte	0
	.byte	-11
	.byte	-1
	.byte	-4
	.byte	-4
	.byte	-1
	.byte	-11
	.byte	0
	.byte	-1
	.byte	-4
	.byte	4
	.byte	-1
	.byte	0
	.byte	11
	.byte	-1
	.byte	4
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.globl _shape_player
_shape_player:
	.byte	0
	.byte	28
	.word	_vectors_player
	.globl _player
	.area .data
_player:
	.byte	0
	.byte	0
	.byte	0
	.word	_shape_player
	.area .text
	.globl _init_player
_init_player:
	ldb	#100
	stb	_player
	clr	_player+1
	ldb	#50
	stb	_player+2
	rts
	.globl _move_player
_move_player:
	leas	-6,s
	jsr	___Joy_Digital
	ldb	_Vec_Joy_1_X
	clr	2,s
	tstb
	bge	L4
	ldb	#1
	stb	2,s
L4:
	ldb	2,s
	; tstb	; optimization 6
	beq	L5
	jsr	_check_rock_collision
	tstb
	beq	L6
	ldb	_player+1
	cmpb	#-120	;cmpqi:
	blt	L6
	ldb	_player+1
	addb	#-2
	stb	_player+1
	bra	L8
L6:
	ldb	_player+1
	addb	#2
	stb	_player+1
	bra	L8
L5:
	ldb	_Vec_Joy_1_X
	clr	3,s
	tstb
	ble	L9
	ldb	#1
	stb	3,s
L9:
	ldb	3,s
	; tstb	; optimization 6
	beq	L8
	jsr	_check_rock_collision
	tstb
	beq	L10
	ldb	_player+1
	cmpb	#125	;cmpqi:
	bgt	L10
	ldb	_player+1
	addb	#2
	stb	_player+1
	bra	L8
L10:
	ldb	_player+1
	addb	#-2
	stb	_player+1
L8:
	ldb	_Vec_Joy_1_Y
	clr	4,s
	tstb
	ble	L11
	ldb	#1
	stb	4,s
L11:
	ldb	4,s
	; tstb	; optimization 6
	beq	L12
	jsr	_check_rock_collision
	tstb
	beq	L13
	ldb	_player
	cmpb	#100	;cmpqi:
	bgt	L13
	ldb	_player
	addb	#2
	stb	_player
	bra	L15
L13:
	ldb	_player
	addb	#-2
	stb	_player
	bra	L15
L12:
	ldb	_Vec_Joy_1_Y
	clr	5,s
	tstb
	bge	L16
	ldb	#1
	stb	5,s
L16:
	ldb	5,s
	; tstb	; optimization 6
	beq	L15
	jsr	_check_rock_collision
	tstb
	beq	L17
	ldb	_player
	cmpb	#-126	;cmpqi:
	blt	L17
	ldb	_player
	addb	#-2
	stb	_player
	bra	L15
L17:
	ldb	_player
	addb	#2
	stb	_player
L15:
	jsr	___Read_Btns
	ldb	_Vec_Btn_State
	andb	#8
	stb	,s
	ldb	_Vec_Btn_State
	andb	#2
	stb	1,s
	leas	6,s
	rts
	.globl _draw_player
_draw_player:
	ldx	#_player
	jsr	_draw_sprite
	rts
	.globl _throw_grappling_hook
_throw_grappling_hook:
	leas	-1,s
	ldb	#1
	stb	,s
	bra	L24
L25:
	inc	,s
L24:
	ldb	,s
	cmpb	#30	;cmpqi:
	bls	L25
	leas	1,s
	rts
	.globl _check_ether_pickup
_check_ether_pickup:
	pshs	u
	leas	-6,s
	clr	5,s
	jmp	L28
L30:
	ldb	_player+1
	stb	,s
	; ldb	,s	; optimization 5
	addb	#-22
	stb	1,s
	ldb	5,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_ether
	leax	d,u
	ldx	,x
	ldb	1,x
	addb	#3
	cmpb	1,s	;cmpqi:(R)
	lble	L29
	ldb	_player+1
	stb	,s
	; ldb	,s	; optimization 5
	addb	#8
	stb	2,s
	ldb	5,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_ether
	leax	d,u
	ldx	,x
	ldb	1,x
	addb	#-3
	cmpb	2,s	;cmpqi:(R)
	bge	L29
	ldb	_player
	stb	,s
	; ldb	,s	; optimization 5
	addb	#-13
	stb	3,s
	ldb	5,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_ether
	leax	d,u
	ldx	,x
	ldb	,x
	addb	#12
	cmpb	3,s	;cmpqi:(R)
	ble	L29
	ldb	_player
	stb	,s
	; ldb	,s	; optimization 5
	addb	#25
	stb	4,s
	ldb	5,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_ether
	leax	d,u
	ldx	,x
	ldb	,x
	cmpb	4,s	;cmpqi:(R)
	bge	L29
	ldb	5,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_ether
	leax	d,u
	ldx	,x
	clr	2,x
L29:
	inc	5,s
L28:
	ldb	5,s
	cmpb	#3	;cmpqi:
	lbls	L30
	leas	6,s
	puls	u,pc
	.globl _check_enemy_collision
_check_enemy_collision:
	pshs	u
	leas	-7,s
	clr	6,s
	jmp	L33
L36:
	ldb	_player+1
	stb	,s
	; ldb	,s	; optimization 5
	addb	#-23
	stb	1,s
	ldb	6,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_crabs
	leax	d,u
	ldx	,x
	ldb	1,x
	addb	#20
	cmpb	1,s	;cmpqi:(R)
	lble	L34
	ldb	_player+1
	stb	,s
	; ldb	,s	; optimization 5
	addb	#8
	stb	2,s
	ldb	6,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_crabs
	leax	d,u
	ldx	,x
	ldb	1,x
	cmpb	2,s	;cmpqi:(R)
	bge	L34
	ldb	_player
	stb	,s
	; ldb	,s	; optimization 5
	addb	#-10
	stb	3,s
	ldb	6,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_crabs
	leax	d,u
	ldx	,x
	ldb	,x
	addb	#20
	cmpb	3,s	;cmpqi:(R)
	ble	L34
	ldb	_player
	stb	,s
	; ldb	,s	; optimization 5
	addb	#22
	stb	4,s
	ldb	6,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_crabs
	leax	d,u
	ldx	,x
	ldb	,x
	cmpb	4,s	;cmpqi:(R)
	bge	L34
	clr	5,s
	bra	L35
L34:
	inc	6,s
L33:
	tst	6,s
	lbeq	L36
	ldb	#1
	stb	5,s
L35:
	ldb	5,s
	leas	7,s
	puls	u,pc
	.globl _check_rock_collision
_check_rock_collision:
	pshs	u
	leas	-7,s
	clr	6,s
	jmp	L39
L42:
	ldb	_player+1
	stb	,s
	; ldb	,s	; optimization 5
	addb	#-26
	stb	1,s
	ldb	6,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_rocks
	leax	d,u
	ldx	,x
	ldb	1,x
	addb	#20
	cmpb	1,s	;cmpqi:(R)
	lble	L40
	ldb	_player+1
	stb	,s
	; ldb	,s	; optimization 5
	addb	#12
	stb	2,s
	ldb	6,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_rocks
	leax	d,u
	ldx	,x
	ldb	1,x
	cmpb	2,s	;cmpqi:(R)
	bge	L40
	ldb	_player
	stb	,s
	; ldb	,s	; optimization 5
	addb	#-10
	stb	3,s
	ldb	6,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_rocks
	leax	d,u
	ldx	,x
	ldb	,x
	addb	#20
	cmpb	3,s	;cmpqi:(R)
	ble	L40
	ldb	_player
	stb	,s
	; ldb	,s	; optimization 5
	addb	#22
	stb	4,s
	ldb	6,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_rocks
	leax	d,u
	ldx	,x
	ldb	,x
	cmpb	4,s	;cmpqi:(R)
	bge	L40
	clr	5,s
	bra	L41
L40:
	inc	6,s
L39:
	ldb	6,s
	cmpb	#5	;cmpqi:
	lbls	L42
	ldb	#1
	stb	5,s
L41:
	ldb	5,s
	leas	7,s
	puls	u,pc
