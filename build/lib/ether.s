
;;; gcc for m6809 : Feb 15 2016 21:40:10
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	ether.c
	.globl _position
	.area .data
_position:
	.byte	1
	.globl _frame_cnt
_frame_cnt:
	.byte	0	;skip space
	.globl _cycle_cnt
_cycle_cnt:
	.byte	0	;skip space
	.globl _vectors_ether
	.area .text
_vectors_ether:
	.byte	6
	.byte	3
	.byte	6
	.byte	-3
	.byte	-6
	.byte	-3
	.byte	-6
	.byte	3
	.globl _shape_ether
_shape_ether:
	.byte	1
	.byte	4
	.word	_vectors_ether
	.globl _ether_1
	.area .data
_ether_1:
	.byte	10
	.byte	-110
	.byte	-106
	.word	_shape_ether
	.globl _ether_2
_ether_2:
	.byte	20
	.byte	-90
	.byte	-106
	.word	_shape_ether
	.globl _ether_3
_ether_3:
	.byte	10
	.byte	-70
	.byte	-106
	.word	_shape_ether
	.globl _ether_4
_ether_4:
	.byte	20
	.byte	-50
	.byte	-106
	.word	_shape_ether
	.globl _ether
	.area .text
_ether:
	.word	_ether_1
	.word	_ether_2
	.word	_ether_3
	.word	_ether_4
	.globl _animate_ether
_animate_ether:
	pshs	y,u
	leas	-1,s
	ldb	_cycle_cnt
	cmpb	#10	;cmpqi:
	lbne	L2
	ldb	_position
	; tstb	; optimization 6
	beq	L3
	ldb	_frame_cnt
	incb
	stb	_frame_cnt
	clr	,s
	bra	L4
L5:
	ldb	,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_ether
	leax	d,u
	ldy	,x
	ldb	,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_ether
	leax	d,u
	ldx	,x
	ldb	,x
	incb
	stb	,y
	inc	,s
L4:
	ldb	,s
	cmpb	#3	;cmpqi:
	bls	L5
	ldb	_frame_cnt
	cmpb	#5	;cmpqi:
	bne	L7
	clr	_position
	bra	L7
L3:
	ldb	_frame_cnt
	decb
	stb	_frame_cnt
	clr	,s
	bra	L8
L9:
	ldb	,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_ether
	leax	d,u
	ldy	,x
	ldb	,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_ether
	leax	d,u
	ldx	,x
	ldb	,x
	decb
	stb	,y
	inc	,s
L8:
	ldb	,s
	cmpb	#3	;cmpqi:
	bls	L9
	ldb	_frame_cnt
	; tstb	; optimization 6
	bne	L7
	ldb	#1
	stb	_position
L7:
	clr	_cycle_cnt
	bra	L11
L2:
	ldb	_cycle_cnt
	incb
	stb	_cycle_cnt
L11:
	leas	1,s
	puls	y,u,pc
	.globl _draw_ether
_draw_ether:
	pshs	u
	leas	-1,s
	clr	,s
	bra	L13
L15:
	ldb	,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_ether
	leax	d,u
	ldx	,x
	ldb	2,x
	cmpb	#-106	;cmpqi:
	bne	L14
	ldb	,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_ether
	leax	d,u
	ldx	,x
	jsr	_draw_sprite
L14:
	inc	,s
L13:
	ldb	,s
	cmpb	#3	;cmpqi:
	bls	L15
	leas	1,s
	puls	u,pc
	.globl _reset_ether
_reset_ether:
	pshs	u
	leas	-1,s
	clr	,s
	bra	L18
L19:
	ldb	,s
	clra		;zero_extendqihi: R:b -> R:d
	aslb
	rola
	ldu	#_ether
	leax	d,u
	ldx	,x
	ldb	#-106
	stb	2,x
	inc	,s
L18:
	ldb	,s
	cmpb	#3	;cmpqi:
	bls	L19
	leas	1,s
	puls	u,pc
