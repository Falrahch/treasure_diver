
;;; gcc for m6809 : Feb 15 2016 21:40:10
;;; 4.3.6 (gcc6809)
;;; ABI version 1
;;; -mint8
	.module	sprites.c
	.globl _grid_scale
	.area .text
_grid_scale:
	.byte	110
	.globl _draw_sprite
_draw_sprite:
	pshs	y
	leas	-21,s
	stx	4,s
	; ldx	4,s	; optimization 5
	ldb	1,x
	stb	,s
	ldb	[4,s]
	stb	7,s
	ldb	,s
	stb	6,s
	ldb	#-52
	stb	*_dp_VIA_cntl
	ldb	#110
	stb	*_dp_VIA_t1_cnt_lo
	ldb	7,s
	stb	9,s
	ldb	6,s
	stb	8,s
	ldb	9,s
	stb	,-s
	ldb	9,s
	jsr	__Moveto_d
	leas	1,s
	ldx	4,s
	ldx	3,x
	ldb	,x
	stb	1,s
	; tst	1,s	; optimization 3
	beq	L3
	ldb	1,s
	cmpb	#1	;cmpqi:
	beq	L4
	bra	L7
L3:
	ldx	4,s
	ldx	3,x
	ldy	2,x
	ldx	4,s
	ldb	2,x
	stb	12,s
	sty	10,s
	ldx	10,s
	ldb	12,s
	jsr	___Draw_VLp_b
	jmp	L6
L4:
	ldx	4,s
	ldx	3,x
	ldy	2,x
	ldx	4,s
	ldb	2,x
	stb	2,s
	ldx	4,s
	ldx	3,x
	ldb	1,x
	decb
	stb	16,s
	ldb	2,s
	stb	15,s
	sty	13,s
	ldb	16,s
	stb	,-s
	ldx	14,s
	ldb	16,s
	jsr	__Draw_VL_ab
	leas	1,s
	bra	L6
L7:
	ldx	4,s
	ldx	3,x
	ldy	2,x
	ldx	4,s
	ldb	2,x
	stb	3,s
	ldx	4,s
	ldx	3,x
	ldb	1,x
	decb
	stb	20,s
	ldb	3,s
	stb	19,s
	sty	17,s
	ldb	20,s
	stb	,-s
	ldx	18,s
	ldb	20,s
	jsr	__Mov_Draw_VL_ab
	leas	1,s
L6:
	leas	21,s
	puls	y,pc
