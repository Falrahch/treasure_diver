                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	main.c
                              7 	.area .text
                              8 	.globl _main
   05F7                       9 _main:
   05F7 32 7F         [ 5]   10 	leas	-1,s
   05F9                      11 L2:
   05F9 BD 05 EC      [ 8]   12 	jsr	_game
   05FC E7 E4         [ 4]   13 	stb	,s
                             14 	; tst	,s	; optimization 3
   05FE 27 F9         [ 3]   15 	beq	L2
   0600 E6 E4         [ 4]   16 	ldb	,s
   0602 32 61         [ 5]   17 	leas	1,s
   0604 39            [ 5]   18 	rts
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 L2                 0002 R   |     _game              **** GX
  2 _main              0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size    E   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

