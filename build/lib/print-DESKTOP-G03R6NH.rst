                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	print.c
                              7 	.area .text
                              8 	.globl _print_str
   07E8                       9 _print_str:
   07E8 32 E8 E3      [ 5]   10 	leas	-29,s
   07EB E7 67         [ 5]   11 	stb	7,s
   07ED AF 65         [ 6]   12 	stx	5,s
   07EF E6 67         [ 5]   13 	ldb	7,s
   07F1 E7 68         [ 5]   14 	stb	8,s
   07F3 E6 E8 1F      [ 5]   15 	ldb	31,s
   07F6 E7 69         [ 5]   16 	stb	9,s
   07F8 C6 02         [ 2]   17 	ldb	#2
   07FA E7 E8 1C      [ 5]   18 	stb	28,s
   07FD                      19 L3:
   07FD E6 E8 1C      [ 5]   20 	ldb	28,s
   0800 E7 62         [ 5]   21 	stb	2,s
   0802 E6 F8 05      [ 8]   22 	ldb	[5,s]
   0805 E7 64         [ 5]   23 	stb	4,s
   0807 E6 62         [ 5]   24 	ldb	2,s
   0809 4F            [ 2]   25 	clra		;zero_extendqihi: R:b -> R:d
   080A ED E4         [ 5]   26 	std	,s
   080C 30 68         [ 5]   27 	leax	8,s
   080E 1E 01         [ 8]   28 	exg	d,x
   0810 E3 E4         [ 6]   29 	addd	,s
   0812 1E 01         [ 8]   30 	exg	d,x
   0814 E6 64         [ 5]   31 	ldb	4,s
   0816 E7 84         [ 4]   32 	stb	,x
   0818 6C E8 1C      [ 7]   33 	inc	28,s
   081B E6 F8 05      [ 8]   34 	ldb	[5,s]
   081E E7 63         [ 5]   35 	stb	3,s
                             36 	; tst	3,s	; optimization 3
   0820 27 04         [ 3]   37 	beq	L2
   0822 C6 01         [ 2]   38 	ldb	#1
   0824 E7 63         [ 5]   39 	stb	3,s
   0826                      40 L2:
   0826 E6 63         [ 5]   41 	ldb	3,s
   0828 E7 62         [ 5]   42 	stb	2,s
   082A EC 65         [ 6]   43 	ldd	5,s
   082C C3 00 01      [ 4]   44 	addd	#1
   082F ED 65         [ 6]   45 	std	5,s
   0831 6D 62         [ 7]   46 	tst	2,s
   0833 26 C8         [ 3]   47 	bne	L3
   0835 E6 E8 1C      [ 5]   48 	ldb	28,s
   0838 5A            [ 2]   49 	decb
   0839 4F            [ 2]   50 	clra		;zero_extendqihi: R:b -> R:d
   083A 30 68         [ 5]   51 	leax	8,s
   083C 30 8B         [ 8]   52 	leax	d,x
   083E C6 80         [ 2]   53 	ldb	#-128
   0840 E7 84         [ 4]   54 	stb	,x
   0842 BD F3 4A      [ 8]   55 	jsr	___Reset0Ref_D0
   0845 30 68         [ 5]   56 	leax	8,s
   0847 BD 01 6F      [ 8]   57 	jsr	__Print_Str_yx
   084A 32 E8 1D      [ 5]   58 	leas	29,s
   084D 39            [ 5]   59 	rts
                             60 	.globl _print_int
   084E                      61 _print_int:
   084E 32 73         [ 5]   62 	leas	-13,s
   0850 E7 65         [ 5]   63 	stb	5,s
                             64 	; ldb	5,s	; optimization 5
   0852 E7 66         [ 5]   65 	stb	6,s
   0854 E6 6F         [ 5]   66 	ldb	15,s
   0856 E7 67         [ 5]   67 	stb	7,s
   0858 C6 80         [ 2]   68 	ldb	#-128
   085A E7 6B         [ 5]   69 	stb	11,s
   085C C6 04         [ 2]   70 	ldb	#4
   085E E7 6C         [ 5]   71 	stb	12,s
   0860                      72 L6:
   0860 E6 6C         [ 5]   73 	ldb	12,s
   0862 E7 63         [ 5]   74 	stb	3,s
   0864 E6 E8 10      [ 5]   75 	ldb	16,s
   0867 4F            [ 2]   76 	clra		;zero_extendqihi: R:b -> R:d
   0868 ED E4         [ 5]   77 	std	,s
   086A 8E 00 0A      [ 3]   78 	ldx	#10
   086D 34 10         [ 6]   79 	pshs	x
   086F AE 62         [ 6]   80 	ldx	2,s
   0871 BD 0B 73      [ 8]   81 	jsr	_umodhi3
   0874 32 62         [ 5]   82 	leas	2,s
   0876 1F 10         [ 6]   83 	tfr	x,d	;movlsbqihi: R:x -> R:b
   0878 E7 62         [ 5]   84 	stb	2,s
                             85 	; ldb	2,s	; optimization 5
   087A CB 30         [ 2]   86 	addb	#48
   087C E7 64         [ 5]   87 	stb	4,s
   087E E6 63         [ 5]   88 	ldb	3,s
   0880 4F            [ 2]   89 	clra		;zero_extendqihi: R:b -> R:d
   0881 ED E4         [ 5]   90 	std	,s
   0883 30 66         [ 5]   91 	leax	6,s
   0885 1E 01         [ 8]   92 	exg	d,x
   0887 E3 E4         [ 6]   93 	addd	,s
   0889 1E 01         [ 8]   94 	exg	d,x
   088B E6 64         [ 5]   95 	ldb	4,s
   088D E7 84         [ 4]   96 	stb	,x
   088F 6A 6C         [ 7]   97 	dec	12,s
   0891 E6 E8 10      [ 5]   98 	ldb	16,s
   0894 4F            [ 2]   99 	clra		;zero_extendqihi: R:b -> R:d
   0895 ED E4         [ 5]  100 	std	,s
   0897 8E 00 0A      [ 3]  101 	ldx	#10
   089A 34 10         [ 6]  102 	pshs	x
   089C AE 62         [ 6]  103 	ldx	2,s
   089E BD 0B 84      [ 8]  104 	jsr	_udivhi3
   08A1 32 62         [ 5]  105 	leas	2,s
   08A3 1F 10         [ 6]  106 	tfr	x,d
   08A5 E7 E8 10      [ 5]  107 	stb	16,s	;movlsbqihi: R:d -> 16,s
   08A8 E6 6C         [ 5]  108 	ldb	12,s
   08AA C1 01         [ 2]  109 	cmpb	#1	;cmpqi:
   08AC 22 B2         [ 3]  110 	bhi	L6
   08AE BD F3 4A      [ 8]  111 	jsr	___Reset0Ref_D0
   08B1 30 66         [ 5]  112 	leax	6,s
   08B3 BD 01 6F      [ 8]  113 	jsr	__Print_Str_yx
   08B6 32 6D         [ 5]  114 	leas	13,s
   08B8 39            [ 5]  115 	rts
                            116 	.globl _print_bin
   08B9                     117 _print_bin:
   08B9 32 E8 EE      [ 5]  118 	leas	-18,s
   08BC E7 65         [ 5]  119 	stb	5,s
                            120 	; ldb	5,s	; optimization 5
   08BE E7 66         [ 5]  121 	stb	6,s
   08C0 E6 E8 14      [ 5]  122 	ldb	20,s
   08C3 E7 67         [ 5]  123 	stb	7,s
   08C5 C6 80         [ 2]  124 	ldb	#-128
   08C7 E7 E8 10      [ 5]  125 	stb	16,s
   08CA C6 09         [ 2]  126 	ldb	#9
   08CC E7 E8 11      [ 5]  127 	stb	17,s
   08CF                     128 L9:
   08CF E6 E8 11      [ 5]  129 	ldb	17,s
   08D2 E7 63         [ 5]  130 	stb	3,s
   08D4 E6 E8 15      [ 5]  131 	ldb	21,s
   08D7 E7 E4         [ 4]  132 	stb	,s
   08D9 C6 01         [ 2]  133 	ldb	#1
   08DB E4 E4         [ 4]  134 	andb	,s
   08DD E7 62         [ 5]  135 	stb	2,s
                            136 	; ldb	2,s	; optimization 5
   08DF CB 30         [ 2]  137 	addb	#48
   08E1 E7 64         [ 5]  138 	stb	4,s
   08E3 E6 63         [ 5]  139 	ldb	3,s
   08E5 4F            [ 2]  140 	clra		;zero_extendqihi: R:b -> R:d
   08E6 ED E4         [ 5]  141 	std	,s
   08E8 30 66         [ 5]  142 	leax	6,s
   08EA 1E 01         [ 8]  143 	exg	d,x
   08EC E3 E4         [ 6]  144 	addd	,s
   08EE 1E 01         [ 8]  145 	exg	d,x
   08F0 E6 64         [ 5]  146 	ldb	4,s
   08F2 E7 84         [ 4]  147 	stb	,x
   08F4 6A E8 11      [ 7]  148 	dec	17,s
   08F7 64 E8 15      [ 7]  149 	lsr	21,s
   08FA E6 E8 11      [ 5]  150 	ldb	17,s
   08FD C1 01         [ 2]  151 	cmpb	#1	;cmpqi:
   08FF 22 CE         [ 3]  152 	bhi	L9
   0901 BD F3 4A      [ 8]  153 	jsr	___Reset0Ref_D0
   0904 30 66         [ 5]  154 	leax	6,s
   0906 BD 01 6F      [ 8]  155 	jsr	__Print_Str_yx
   0909 32 E8 12      [ 5]  156 	leas	18,s
   090C 39            [ 5]  157 	rts
                            158 	.globl _print_long_int
   090D                     159 _print_long_int:
   090D 34 20         [ 6]  160 	pshs	y
   090F 32 E8 EF      [ 5]  161 	leas	-17,s
   0912 E7 67         [ 5]  162 	stb	7,s
   0914 AF 65         [ 6]  163 	stx	5,s
   0916 E6 67         [ 5]  164 	ldb	7,s
   0918 E7 68         [ 5]  165 	stb	8,s
   091A E6 E8 15      [ 5]  166 	ldb	21,s
   091D E7 69         [ 5]  167 	stb	9,s
   091F C6 80         [ 2]  168 	ldb	#-128
   0921 E7 6F         [ 5]  169 	stb	15,s
   0923 C6 06         [ 2]  170 	ldb	#6
   0925 E7 E8 10      [ 5]  171 	stb	16,s
   0928                     172 L12:
   0928 E6 E8 10      [ 5]  173 	ldb	16,s
   092B E7 63         [ 5]  174 	stb	3,s
   092D 10 AE 65      [ 7]  175 	ldy	5,s
   0930 8E 00 0A      [ 3]  176 	ldx	#10
   0933 34 10         [ 6]  177 	pshs	x
   0935 30 A4         [ 4]  178 	leax	,y
   0937 BD 0B 73      [ 8]  179 	jsr	_umodhi3
   093A 32 62         [ 5]  180 	leas	2,s
   093C 1F 10         [ 6]  181 	tfr	x,d	;movlsbqihi: R:x -> R:b
   093E E7 62         [ 5]  182 	stb	2,s
                            183 	; ldb	2,s	; optimization 5
   0940 CB 30         [ 2]  184 	addb	#48
   0942 E7 64         [ 5]  185 	stb	4,s
   0944 E6 63         [ 5]  186 	ldb	3,s
   0946 4F            [ 2]  187 	clra		;zero_extendqihi: R:b -> R:d
   0947 ED E4         [ 5]  188 	std	,s
   0949 30 68         [ 5]  189 	leax	8,s
   094B 1E 01         [ 8]  190 	exg	d,x
   094D E3 E4         [ 6]  191 	addd	,s
   094F 1E 01         [ 8]  192 	exg	d,x
   0951 E6 64         [ 5]  193 	ldb	4,s
   0953 E7 84         [ 4]  194 	stb	,x
   0955 6A E8 10      [ 7]  195 	dec	16,s
   0958 10 AE 65      [ 7]  196 	ldy	5,s
   095B 8E 00 0A      [ 3]  197 	ldx	#10
   095E 34 10         [ 6]  198 	pshs	x
   0960 30 A4         [ 4]  199 	leax	,y
   0962 BD 0B 84      [ 8]  200 	jsr	_udivhi3
   0965 32 62         [ 5]  201 	leas	2,s
   0967 AF 65         [ 6]  202 	stx	5,s
   0969 E6 E8 10      [ 5]  203 	ldb	16,s
   096C C1 01         [ 2]  204 	cmpb	#1	;cmpqi:
   096E 22 B8         [ 3]  205 	bhi	L12
   0970 BD F3 4A      [ 8]  206 	jsr	___Reset0Ref_D0
   0973 30 68         [ 5]  207 	leax	8,s
   0975 BD 01 6F      [ 8]  208 	jsr	__Print_Str_yx
   0978 32 E8 11      [ 5]  209 	leas	17,s
   097B 35 A0         [ 7]  210 	puls	y,pc
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

