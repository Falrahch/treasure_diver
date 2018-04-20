
;;; gcc for m6809 : Feb 15 2016 21:40:10
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	rocks.c
	.globl _vectors_rock_1t
	.area .text
_vectors_rock_1t:
	.byte	-1
	.byte	20
	.byte	0
	.byte	-1
	.byte	0
	.byte	20
	.byte	-1
	.byte	-20
	.byte	0
	.byte	-1
	.byte	0
	.byte	-20
	.byte	1
	.byte	0
	.byte	0
	.globl _shape_rock_1t
_shape_rock_1t:
	.byte	0
	.byte	5
	.word	_vectors_rock_1t
	.globl _rock_1t_1
	.area .data
_rock_1t_1:
	.byte	63
	.byte	-128
	.byte	-106
	.word	_shape_rock_1t
	.globl _rock_1t_2
_rock_1t_2:
	.byte	90
	.byte	-128
	.byte	-106
	.word	_shape_rock_1t
	.globl _rock_1t_3
_rock_1t_3:
	.byte	90
	.byte	-101
	.byte	-106
	.word	_shape_rock_1t
	.globl _rock_1t_4
_rock_1t_4:
	.byte	63
	.byte	-101
	.byte	-106
	.word	_shape_rock_1t
	.globl _vectors_rock_2t_h
	.area .text
_vectors_rock_2t_h:
	.byte	-1
	.byte	20
	.byte	0
	.byte	-1
	.byte	0
	.byte	40
	.byte	-1
	.byte	-20
	.byte	0
	.byte	-1
	.byte	0
	.byte	-40
	.byte	0
	.byte	0
	.byte	20
	.byte	-1
	.byte	20
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.globl _shape_rock_2t_h
_shape_rock_2t_h:
	.byte	0
	.byte	7
	.word	_vectors_rock_2t_h
	.globl _rock_2t_h
	.area .data
_rock_2t_h:
	.byte	-70
	.byte	-128
	.byte	-106
	.word	_shape_rock_2t_h
	.globl _vectors_rock_3t_h
	.area .text
_vectors_rock_3t_h:
	.byte	-1
	.byte	20
	.byte	0
	.byte	-1
	.byte	0
	.byte	60
	.byte	-1
	.byte	-20
	.byte	0
	.byte	-1
	.byte	0
	.byte	-60
	.byte	0
	.byte	0
	.byte	20
	.byte	-1
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	20
	.byte	-1
	.byte	-20
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.globl _shape_rock_3t_h
_shape_rock_3t_h:
	.byte	0
	.byte	9
	.word	_vectors_rock_3t_h
	.globl _rock_3t_h
	.area .data
_rock_3t_h:
	.byte	0
	.byte	127
	.byte	-106
	.word	_shape_rock_3t_h
	.globl _vectors_rock_3t_c
	.area .text
_vectors_rock_3t_c:
	.byte	-1
	.byte	20
	.byte	0
	.byte	-1
	.byte	0
	.byte	40
	.byte	-1
	.byte	20
	.byte	0
	.byte	-1
	.byte	0
	.byte	-20
	.byte	-1
	.byte	-40
	.byte	0
	.byte	0
	.byte	20
	.byte	20
	.byte	-1
	.byte	-20
	.byte	0
	.byte	-1
	.byte	0
	.byte	-40
	.byte	1
	.byte	0
	.byte	0
	.globl _shape_rock_3t_c
_shape_rock_3t_c:
	.byte	0
	.byte	9
	.word	_vectors_rock_3t_c
	.globl _rock_3t_c
	.area .data
_rock_3t_c:
	.byte	0
	.byte	12
	.byte	-106
	.word	_shape_rock_3t_c
	.globl _vectors_rock4t_s
	.area .text
_vectors_rock4t_s:
	.byte	-1
	.byte	40
	.byte	0
	.byte	-1
	.byte	0
	.byte	40
	.byte	-1
	.byte	-40
	.byte	0
	.byte	-1
	.byte	0
	.byte	-40
	.byte	0
	.byte	20
	.byte	0
	.byte	-1
	.byte	0
	.byte	40
	.byte	0
	.byte	20
	.byte	-20
	.byte	-1
	.byte	-40
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.globl _shape_rock4t_s
_shape_rock4t_s:
	.byte	0
	.byte	9
	.word	_vectors_rock4t_s
	.globl _rock4t_s
	.area .data
_rock4t_s:
	.byte	70
	.byte	-128
	.byte	-106
	.word	_shape_rock4t_s
	.globl _vectors_rock_4t_L
	.area .text
_vectors_rock_4t_L:
	.byte	-1
	.byte	20
	.byte	0
	.byte	-1
	.byte	0
	.byte	20
	.byte	-1
	.byte	40
	.byte	0
	.byte	-1
	.byte	0
	.byte	20
	.byte	-1
	.byte	-60
	.byte	0
	.byte	-1
	.byte	0
	.byte	-40
	.byte	0
	.byte	0
	.byte	20
	.byte	-1
	.byte	20
	.byte	0
	.byte	-1
	.byte	0
	.byte	20
	.byte	0
	.byte	20
	.byte	0
	.byte	-1
	.byte	0
	.byte	-20
	.byte	1
	.byte	0
	.byte	0
	.globl _shape_rock_4t_L
_shape_rock_4t_L:
	.byte	0
	.byte	12
	.word	_vectors_rock_4t_L
	.globl _rock_4t_L
	.area .data
_rock_4t_L:
	.byte	0
	.byte	0
	.byte	-106
	.word	_shape_rock_4t_L
	.globl _vectors_rock_5t
	.area .text
_vectors_rock_5t:
	.byte	-1
	.byte	0
	.byte	40
	.byte	-1
	.byte	40
	.byte	0
	.byte	-1
	.byte	0
	.byte	-60
	.byte	-1
	.byte	-20
	.byte	0
	.byte	-1
	.byte	0
	.byte	60
	.byte	0
	.byte	20
	.byte	-20
	.byte	-1
	.byte	-40
	.byte	0
	.byte	0
	.byte	0
	.byte	-20
	.byte	-1
	.byte	40
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.globl _shape_rock_5t
_shape_rock_5t:
	.byte	0
	.byte	10
	.word	_vectors_rock_5t
	.globl _rock_5t
	.area .data
_rock_5t:
	.byte	-30
	.byte	50
	.byte	-106
	.word	_shape_rock_5t
	.globl _rocks
	.area .text
_rocks:
	.word	_rock_1t_1
	.word	_rock_1t_2
	.word	_rock_1t_3
	.word	_rock_1t_4
	.word	_rock_2t_h
	.word	_rock_5t
	.globl _move_rocks
_move_rocks:
	leas	-1,s
	clr	,s
	bra	L2
L3:
	inc	,s
L2:
	jsr	_get_num_option
	cmpb	,s	;cmpqi:
	bhi	L3
	leas	1,s
	rts
_get_num_option:
	ldb	_Vec_Num_Game
	rts
	.globl _draw_rocks
_draw_rocks:
	pshs	u
	leas	-1,s
	clr	,s
	bra	L8
L9:
	ldb	,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_rocks
	leax	d,u
	ldx	,x
	jsr	_draw_sprite
	inc	,s
L8:
	ldb	,s
	cmpb	#5	;cmpqi:
	bls	L9
	leas	1,s
	puls	u,pc
