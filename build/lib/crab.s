
;;; gcc for m6809 : Feb 15 2016 21:40:10
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	crab.c
	.globl _vectors_crab
	.area .text
_vectors_crab:
	.byte	-1
	.byte	5
	.byte	7
	.byte	-1
	.byte	-2
	.byte	3
	.byte	-1
	.byte	2
	.byte	3
	.byte	-1
	.byte	-5
	.byte	7
	.byte	-1
	.byte	7
	.byte	-5
	.byte	-1
	.byte	3
	.byte	2
	.byte	-1
	.byte	3
	.byte	-2
	.byte	-1
	.byte	7
	.byte	5
	.byte	-1
	.byte	-5
	.byte	-7
	.byte	-1
	.byte	2
	.byte	-3
	.byte	-1
	.byte	-2
	.byte	-3
	.byte	-1
	.byte	5
	.byte	-7
	.byte	-1
	.byte	-7
	.byte	5
	.byte	-1
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-3
	.byte	2
	.byte	-1
	.byte	-7
	.byte	-5
	.byte	1
	.byte	0
	.byte	0
	.globl _shape_crab_1
_shape_crab_1:
	.byte	0
	.byte	17
	.word	_vectors_crab
	.globl _crab_1
	.area .data
_crab_1:
	.byte	-42
	.byte	-128
	.byte	-106
	.word	_shape_crab_1
	.globl _crabs
	.area .text
_crabs:
	.word	_crab_1
	.globl _move_crabs
_move_crabs:
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
	.globl _draw_crabs
_draw_crabs:
	pshs	u
	leas	-1,s
	clr	,s
	bra	L8
L9:
	ldb	,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_crabs
	leax	d,u
	ldx	,x
	jsr	_draw_sprite
	inc	,s
L8:
	tst	,s
	beq	L9
	leas	1,s
	puls	u,pc
