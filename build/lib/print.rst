                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	print.c
                              7 	.area .text
                              8 	.globl _print_str
   0D4F                       9 _print_str:
   0D4F 32 E8 E3      [ 5]   10 	leas	-29,s
   0D52 E7 67         [ 5]   11 	stb	7,s
   0D54 AF 65         [ 6]   12 	stx	5,s
   0D56 E6 67         [ 5]   13 	ldb	7,s
   0D58 E7 68         [ 5]   14 	stb	8,s
   0D5A E6 E8 1F      [ 5]   15 	ldb	31,s
   0D5D E7 69         [ 5]   16 	stb	9,s
   0D5F C6 02         [ 2]   17 	ldb	#2
   0D61 E7 E8 1C      [ 5]   18 	stb	28,s
   0D64                      19 L3:
   0D64 E6 E8 1C      [ 5]   20 	ldb	28,s
   0D67 E7 62         [ 5]   21 	stb	2,s
   0D69 E6 F8 05      [ 8]   22 	ldb	[5,s]
   0D6C E7 64         [ 5]   23 	stb	4,s
   0D6E E6 62         [ 5]   24 	ldb	2,s
   0D70 4F            [ 2]   25 	clra		;zero_extendqihi: R:b -> R:d
   0D71 ED E4         [ 5]   26 	std	,s
   0D73 30 68         [ 5]   27 	leax	8,s
   0D75 1E 01         [ 8]   28 	exg	d,x
   0D77 E3 E4         [ 6]   29 	addd	,s
   0D79 1E 01         [ 8]   30 	exg	d,x
   0D7B E6 64         [ 5]   31 	ldb	4,s
   0D7D E7 84         [ 4]   32 	stb	,x
   0D7F 6C E8 1C      [ 7]   33 	inc	28,s
   0D82 E6 F8 05      [ 8]   34 	ldb	[5,s]
   0D85 E7 63         [ 5]   35 	stb	3,s
                             36 	; tst	3,s	; optimization 3
   0D87 27 04         [ 3]   37 	beq	L2
   0D89 C6 01         [ 2]   38 	ldb	#1
   0D8B E7 63         [ 5]   39 	stb	3,s
   0D8D                      40 L2:
   0D8D E6 63         [ 5]   41 	ldb	3,s
   0D8F E7 62         [ 5]   42 	stb	2,s
   0D91 EC 65         [ 6]   43 	ldd	5,s
   0D93 C3 00 01      [ 4]   44 	addd	#1
   0D96 ED 65         [ 6]   45 	std	5,s
   0D98 6D 62         [ 7]   46 	tst	2,s
   0D9A 26 C8         [ 3]   47 	bne	L3
   0D9C E6 E8 1C      [ 5]   48 	ldb	28,s
   0D9F 5A            [ 2]   49 	decb
   0DA0 4F            [ 2]   50 	clra		;zero_extendqihi: R:b -> R:d
   0DA1 30 68         [ 5]   51 	leax	8,s
   0DA3 30 8B         [ 8]   52 	leax	d,x
   0DA5 C6 80         [ 2]   53 	ldb	#-128
   0DA7 E7 84         [ 4]   54 	stb	,x
   0DA9 BD F3 4A      [ 8]   55 	jsr	___Reset0Ref_D0
   0DAC 30 68         [ 5]   56 	leax	8,s
   0DAE BD 01 6F      [ 8]   57 	jsr	__Print_Str_yx
   0DB1 32 E8 1D      [ 5]   58 	leas	29,s
   0DB4 39            [ 5]   59 	rts
                             60 	.globl _print_int
   0DB5                      61 _print_int:
   0DB5 32 73         [ 5]   62 	leas	-13,s
   0DB7 E7 65         [ 5]   63 	stb	5,s
                             64 	; ldb	5,s	; optimization 5
   0DB9 E7 66         [ 5]   65 	stb	6,s
   0DBB E6 6F         [ 5]   66 	ldb	15,s
   0DBD E7 67         [ 5]   67 	stb	7,s
   0DBF C6 80         [ 2]   68 	ldb	#-128
   0DC1 E7 6B         [ 5]   69 	stb	11,s
   0DC3 C6 04         [ 2]   70 	ldb	#4
   0DC5 E7 6C         [ 5]   71 	stb	12,s
   0DC7                      72 L6:
   0DC7 E6 6C         [ 5]   73 	ldb	12,s
   0DC9 E7 63         [ 5]   74 	stb	3,s
   0DCB E6 E8 10      [ 5]   75 	ldb	16,s
   0DCE 4F            [ 2]   76 	clra		;zero_extendqihi: R:b -> R:d
   0DCF ED E4         [ 5]   77 	std	,s
   0DD1 8E 00 0A      [ 3]   78 	ldx	#10
   0DD4 34 10         [ 6]   79 	pshs	x
   0DD6 AE 62         [ 6]   80 	ldx	2,s
   0DD8 BD 11 98      [ 8]   81 	jsr	_umodhi3
   0DDB 32 62         [ 5]   82 	leas	2,s
   0DDD 1F 10         [ 6]   83 	tfr	x,d	;movlsbqihi: R:x -> R:b
   0DDF E7 62         [ 5]   84 	stb	2,s
                             85 	; ldb	2,s	; optimization 5
   0DE1 CB 30         [ 2]   86 	addb	#48
   0DE3 E7 64         [ 5]   87 	stb	4,s
   0DE5 E6 63         [ 5]   88 	ldb	3,s
   0DE7 4F            [ 2]   89 	clra		;zero_extendqihi: R:b -> R:d
   0DE8 ED E4         [ 5]   90 	std	,s
   0DEA 30 66         [ 5]   91 	leax	6,s
   0DEC 1E 01         [ 8]   92 	exg	d,x
   0DEE E3 E4         [ 6]   93 	addd	,s
   0DF0 1E 01         [ 8]   94 	exg	d,x
   0DF2 E6 64         [ 5]   95 	ldb	4,s
   0DF4 E7 84         [ 4]   96 	stb	,x
   0DF6 6A 6C         [ 7]   97 	dec	12,s
   0DF8 E6 E8 10      [ 5]   98 	ldb	16,s
   0DFB 4F            [ 2]   99 	clra		;zero_extendqihi: R:b -> R:d
   0DFC ED E4         [ 5]  100 	std	,s
   0DFE 8E 00 0A      [ 3]  101 	ldx	#10
   0E01 34 10         [ 6]  102 	pshs	x
   0E03 AE 62         [ 6]  103 	ldx	2,s
   0E05 BD 11 A9      [ 8]  104 	jsr	_udivhi3
   0E08 32 62         [ 5]  105 	leas	2,s
   0E0A 1F 10         [ 6]  106 	tfr	x,d
   0E0C E7 E8 10      [ 5]  107 	stb	16,s	;movlsbqihi: R:d -> 16,s
   0E0F E6 6C         [ 5]  108 	ldb	12,s
   0E11 C1 01         [ 2]  109 	cmpb	#1	;cmpqi:
   0E13 22 B2         [ 3]  110 	bhi	L6
   0E15 BD F3 4A      [ 8]  111 	jsr	___Reset0Ref_D0
   0E18 30 66         [ 5]  112 	leax	6,s
   0E1A BD 01 6F      [ 8]  113 	jsr	__Print_Str_yx
   0E1D 32 6D         [ 5]  114 	leas	13,s
   0E1F 39            [ 5]  115 	rts
                            116 	.globl _print_bin
   0E20                     117 _print_bin:
   0E20 32 E8 EE      [ 5]  118 	leas	-18,s
   0E23 E7 65         [ 5]  119 	stb	5,s
                            120 	; ldb	5,s	; optimization 5
   0E25 E7 66         [ 5]  121 	stb	6,s
   0E27 E6 E8 14      [ 5]  122 	ldb	20,s
   0E2A E7 67         [ 5]  123 	stb	7,s
   0E2C C6 80         [ 2]  124 	ldb	#-128
   0E2E E7 E8 10      [ 5]  125 	stb	16,s
   0E31 C6 09         [ 2]  126 	ldb	#9
   0E33 E7 E8 11      [ 5]  127 	stb	17,s
   0E36                     128 L9:
   0E36 E6 E8 11      [ 5]  129 	ldb	17,s
   0E39 E7 63         [ 5]  130 	stb	3,s
   0E3B E6 E8 15      [ 5]  131 	ldb	21,s
   0E3E E7 E4         [ 4]  132 	stb	,s
   0E40 C6 01         [ 2]  133 	ldb	#1
   0E42 E4 E4         [ 4]  134 	andb	,s
   0E44 E7 62         [ 5]  135 	stb	2,s
                            136 	; ldb	2,s	; optimization 5
   0E46 CB 30         [ 2]  137 	addb	#48
   0E48 E7 64         [ 5]  138 	stb	4,s
   0E4A E6 63         [ 5]  139 	ldb	3,s
   0E4C 4F            [ 2]  140 	clra		;zero_extendqihi: R:b -> R:d
   0E4D ED E4         [ 5]  141 	std	,s
   0E4F 30 66         [ 5]  142 	leax	6,s
   0E51 1E 01         [ 8]  143 	exg	d,x
   0E53 E3 E4         [ 6]  144 	addd	,s
   0E55 1E 01         [ 8]  145 	exg	d,x
   0E57 E6 64         [ 5]  146 	ldb	4,s
   0E59 E7 84         [ 4]  147 	stb	,x
   0E5B 6A E8 11      [ 7]  148 	dec	17,s
   0E5E 64 E8 15      [ 7]  149 	lsr	21,s
   0E61 E6 E8 11      [ 5]  150 	ldb	17,s
   0E64 C1 01         [ 2]  151 	cmpb	#1	;cmpqi:
   0E66 22 CE         [ 3]  152 	bhi	L9
   0E68 BD F3 4A      [ 8]  153 	jsr	___Reset0Ref_D0
   0E6B 30 66         [ 5]  154 	leax	6,s
   0E6D BD 01 6F      [ 8]  155 	jsr	__Print_Str_yx
   0E70 32 E8 12      [ 5]  156 	leas	18,s
   0E73 39            [ 5]  157 	rts
                            158 	.globl _print_long_int
   0E74                     159 _print_long_int:
   0E74 34 20         [ 6]  160 	pshs	y
   0E76 32 E8 EF      [ 5]  161 	leas	-17,s
   0E79 E7 67         [ 5]  162 	stb	7,s
   0E7B AF 65         [ 6]  163 	stx	5,s
   0E7D E6 67         [ 5]  164 	ldb	7,s
   0E7F E7 68         [ 5]  165 	stb	8,s
   0E81 E6 E8 15      [ 5]  166 	ldb	21,s
   0E84 E7 69         [ 5]  167 	stb	9,s
   0E86 C6 80         [ 2]  168 	ldb	#-128
   0E88 E7 6F         [ 5]  169 	stb	15,s
   0E8A C6 06         [ 2]  170 	ldb	#6
   0E8C E7 E8 10      [ 5]  171 	stb	16,s
   0E8F                     172 L12:
   0E8F E6 E8 10      [ 5]  173 	ldb	16,s
   0E92 E7 63         [ 5]  174 	stb	3,s
   0E94 10 AE 65      [ 7]  175 	ldy	5,s
   0E97 8E 00 0A      [ 3]  176 	ldx	#10
   0E9A 34 10         [ 6]  177 	pshs	x
   0E9C 30 A4         [ 4]  178 	leax	,y
   0E9E BD 11 98      [ 8]  179 	jsr	_umodhi3
   0EA1 32 62         [ 5]  180 	leas	2,s
   0EA3 1F 10         [ 6]  181 	tfr	x,d	;movlsbqihi: R:x -> R:b
   0EA5 E7 62         [ 5]  182 	stb	2,s
                            183 	; ldb	2,s	; optimization 5
   0EA7 CB 30         [ 2]  184 	addb	#48
   0EA9 E7 64         [ 5]  185 	stb	4,s
   0EAB E6 63         [ 5]  186 	ldb	3,s
   0EAD 4F            [ 2]  187 	clra		;zero_extendqihi: R:b -> R:d
   0EAE ED E4         [ 5]  188 	std	,s
   0EB0 30 68         [ 5]  189 	leax	8,s
   0EB2 1E 01         [ 8]  190 	exg	d,x
   0EB4 E3 E4         [ 6]  191 	addd	,s
   0EB6 1E 01         [ 8]  192 	exg	d,x
   0EB8 E6 64         [ 5]  193 	ldb	4,s
   0EBA E7 84         [ 4]  194 	stb	,x
   0EBC 6A E8 10      [ 7]  195 	dec	16,s
   0EBF 10 AE 65      [ 7]  196 	ldy	5,s
   0EC2 8E 00 0A      [ 3]  197 	ldx	#10
   0EC5 34 10         [ 6]  198 	pshs	x
   0EC7 30 A4         [ 4]  199 	leax	,y
   0EC9 BD 11 A9      [ 8]  200 	jsr	_udivhi3
   0ECC 32 62         [ 5]  201 	leas	2,s
   0ECE AF 65         [ 6]  202 	stx	5,s
   0ED0 E6 E8 10      [ 5]  203 	ldb	16,s
   0ED3 C1 01         [ 2]  204 	cmpb	#1	;cmpqi:
   0ED5 22 B8         [ 3]  205 	bhi	L12
   0ED7 BD F3 4A      [ 8]  206 	jsr	___Reset0Ref_D0
   0EDA 30 68         [ 5]  207 	leax	8,s
   0EDC BD 01 6F      [ 8]  208 	jsr	__Print_Str_yx
   0EDF 32 E8 11      [ 5]  209 	leas	17,s
   0EE2 35 A0         [ 7]  210 	puls	y,pc
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 L12                0140 R   |   2 L2                 003E R
  2 L3                 0015 R   |   2 L6                 0078 R
  2 L9                 00E7 R   |     __Print_Str_yx     **** GX
    ___Reset0Ref_D     **** GX  |   2 _print_bin         00D1 GR
  2 _print_int         0066 GR  |   2 _print_long_in     0125 GR
  2 _print_str         0000 GR  |     _udivhi3           **** GX
    _umodhi3           **** GX

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  195   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

