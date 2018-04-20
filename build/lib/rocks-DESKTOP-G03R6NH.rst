                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	rocks.c
                              7 	.globl _vectors_rock_1t
                              8 	.area .text
   097D                       9 _vectors_rock_1t:
   097D FF                   10 	.byte	-1
   097E 14                   11 	.byte	20
   097F 00                   12 	.byte	0
   0980 FF                   13 	.byte	-1
   0981 00                   14 	.byte	0
   0982 14                   15 	.byte	20
   0983 FF                   16 	.byte	-1
   0984 EC                   17 	.byte	-20
   0985 00                   18 	.byte	0
   0986 FF                   19 	.byte	-1
   0987 00                   20 	.byte	0
   0988 EC                   21 	.byte	-20
   0989 01                   22 	.byte	1
   098A 00                   23 	.byte	0
   098B 00                   24 	.byte	0
                             25 	.globl _shape_rock_1t
   098C                      26 _shape_rock_1t:
   098C 00                   27 	.byte	0
   098D 05                   28 	.byte	5
   098E 09 7D                29 	.word	_vectors_rock_1t
                             30 	.globl _rock_1t_1
                             31 	.area .data
   C8A1                      32 _rock_1t_1:
   C8A1 80                   33 	.byte	-128
   C8A2 80                   34 	.byte	-128
   C8A3 96                   35 	.byte	-106
   C8A4 09 8C                36 	.word	_shape_rock_1t
                             37 	.globl _rock_1t_2
   C8A6                      38 _rock_1t_2:
   C8A6 C0                   39 	.byte	-64
   C8A7 80                   40 	.byte	-128
   C8A8 96                   41 	.byte	-106
   C8A9 09 8C                42 	.word	_shape_rock_1t
                             43 	.globl _vectors_rock_2t_h
                             44 	.area .text
   0990                      45 _vectors_rock_2t_h:
   0990 FF                   46 	.byte	-1
   0991 14                   47 	.byte	20
   0992 00                   48 	.byte	0
   0993 FF                   49 	.byte	-1
   0994 00                   50 	.byte	0
   0995 28                   51 	.byte	40
   0996 FF                   52 	.byte	-1
   0997 EC                   53 	.byte	-20
   0998 00                   54 	.byte	0
   0999 FF                   55 	.byte	-1
   099A 00                   56 	.byte	0
   099B D8                   57 	.byte	-40
   099C 00                   58 	.byte	0
   099D 00                   59 	.byte	0
   099E 14                   60 	.byte	20
   099F FF                   61 	.byte	-1
   09A0 14                   62 	.byte	20
   09A1 00                   63 	.byte	0
   09A2 01                   64 	.byte	1
   09A3 00                   65 	.byte	0
   09A4 00                   66 	.byte	0
                             67 	.globl _shape_rock_2t_h
   09A5                      68 _shape_rock_2t_h:
   09A5 00                   69 	.byte	0
   09A6 07                   70 	.byte	7
   09A7 09 90                71 	.word	_vectors_rock_2t_h
                             72 	.globl _rock_2t_h
                             73 	.area .data
   C8AB                      74 _rock_2t_h:
   C8AB BA                   75 	.byte	-70
   C8AC 80                   76 	.byte	-128
   C8AD 96                   77 	.byte	-106
   C8AE 09 A5                78 	.word	_shape_rock_2t_h
                             79 	.globl _vectors_rock_3t_h
                             80 	.area .text
   09A9                      81 _vectors_rock_3t_h:
   09A9 FF                   82 	.byte	-1
   09AA 14                   83 	.byte	20
   09AB 00                   84 	.byte	0
   09AC FF                   85 	.byte	-1
   09AD 00                   86 	.byte	0
   09AE 3C                   87 	.byte	60
   09AF FF                   88 	.byte	-1
   09B0 EC                   89 	.byte	-20
   09B1 00                   90 	.byte	0
   09B2 FF                   91 	.byte	-1
   09B3 00                   92 	.byte	0
   09B4 C4                   93 	.byte	-60
   09B5 00                   94 	.byte	0
   09B6 00                   95 	.byte	0
   09B7 14                   96 	.byte	20
   09B8 FF                   97 	.byte	-1
   09B9 14                   98 	.byte	20
   09BA 00                   99 	.byte	0
   09BB 00                  100 	.byte	0
   09BC 00                  101 	.byte	0
   09BD 14                  102 	.byte	20
   09BE FF                  103 	.byte	-1
   09BF EC                  104 	.byte	-20
   09C0 00                  105 	.byte	0
   09C1 01                  106 	.byte	1
   09C2 00                  107 	.byte	0
   09C3 00                  108 	.byte	0
                            109 	.globl _shape_rock_3t_h
   09C4                     110 _shape_rock_3t_h:
   09C4 00                  111 	.byte	0
   09C5 09                  112 	.byte	9
   09C6 09 A9               113 	.word	_vectors_rock_3t_h
                            114 	.globl _rock_3t_h
                            115 	.area .data
   C8B0                     116 _rock_3t_h:
   C8B0 00                  117 	.byte	0
   C8B1 7F                  118 	.byte	127
   C8B2 96                  119 	.byte	-106
   C8B3 09 C4               120 	.word	_shape_rock_3t_h
                            121 	.globl _vectors_rock_3t_c
                            122 	.area .text
   09C8                     123 _vectors_rock_3t_c:
   09C8 FF                  124 	.byte	-1
   09C9 14                  125 	.byte	20
   09CA 00                  126 	.byte	0
   09CB FF                  127 	.byte	-1
   09CC 00                  128 	.byte	0
   09CD 28                  129 	.byte	40
   09CE FF                  130 	.byte	-1
   09CF 14                  131 	.byte	20
   09D0 00                  132 	.byte	0
   09D1 FF                  133 	.byte	-1
   09D2 00                  134 	.byte	0
   09D3 EC                  135 	.byte	-20
   09D4 FF                  136 	.byte	-1
   09D5 D8                  137 	.byte	-40
   09D6 00                  138 	.byte	0
   09D7 00                  139 	.byte	0
   09D8 14                  140 	.byte	20
   09D9 14                  141 	.byte	20
   09DA FF                  142 	.byte	-1
   09DB EC                  143 	.byte	-20
   09DC 00                  144 	.byte	0
   09DD FF                  145 	.byte	-1
   09DE 00                  146 	.byte	0
   09DF D8                  147 	.byte	-40
   09E0 01                  148 	.byte	1
   09E1 00                  149 	.byte	0
   09E2 00                  150 	.byte	0
                            151 	.globl _shape_rock_3t_c
   09E3                     152 _shape_rock_3t_c:
   09E3 00                  153 	.byte	0
   09E4 09                  154 	.byte	9
   09E5 09 C8               155 	.word	_vectors_rock_3t_c
                            156 	.globl _rock_3t_c
                            157 	.area .data
   C8B5                     158 _rock_3t_c:
   C8B5 00                  159 	.byte	0
   C8B6 0C                  160 	.byte	12
   C8B7 96                  161 	.byte	-106
   C8B8 09 E3               162 	.word	_shape_rock_3t_c
                            163 	.globl _vectors_rock4t_s
                            164 	.area .text
   09E7                     165 _vectors_rock4t_s:
   09E7 FF                  166 	.byte	-1
   09E8 28                  167 	.byte	40
   09E9 00                  168 	.byte	0
   09EA FF                  169 	.byte	-1
   09EB 00                  170 	.byte	0
   09EC 28                  171 	.byte	40
   09ED FF                  172 	.byte	-1
   09EE D8                  173 	.byte	-40
   09EF 00                  174 	.byte	0
   09F0 FF                  175 	.byte	-1
   09F1 00                  176 	.byte	0
   09F2 D8                  177 	.byte	-40
   09F3 00                  178 	.byte	0
   09F4 14                  179 	.byte	20
   09F5 00                  180 	.byte	0
   09F6 FF                  181 	.byte	-1
   09F7 00                  182 	.byte	0
   09F8 28                  183 	.byte	40
   09F9 00                  184 	.byte	0
   09FA 14                  185 	.byte	20
   09FB EC                  186 	.byte	-20
   09FC FF                  187 	.byte	-1
   09FD D8                  188 	.byte	-40
   09FE 00                  189 	.byte	0
   09FF 01                  190 	.byte	1
   0A00 00                  191 	.byte	0
   0A01 00                  192 	.byte	0
                            193 	.globl _shape_rock4t_s
   0A02                     194 _shape_rock4t_s:
   0A02 00                  195 	.byte	0
   0A03 09                  196 	.byte	9
   0A04 09 E7               197 	.word	_vectors_rock4t_s
                            198 	.globl _rock4t_s
                            199 	.area .data
   C8BA                     200 _rock4t_s:
   C8BA 46                  201 	.byte	70
   C8BB 80                  202 	.byte	-128
   C8BC 96                  203 	.byte	-106
   C8BD 0A 02               204 	.word	_shape_rock4t_s
                            205 	.globl _vectors_rock_4t_L
                            206 	.area .text
   0A06                     207 _vectors_rock_4t_L:
   0A06 FF                  208 	.byte	-1
   0A07 14                  209 	.byte	20
   0A08 00                  210 	.byte	0
   0A09 FF                  211 	.byte	-1
   0A0A 00                  212 	.byte	0
   0A0B 14                  213 	.byte	20
   0A0C FF                  214 	.byte	-1
   0A0D 28                  215 	.byte	40
   0A0E 00                  216 	.byte	0
   0A0F FF                  217 	.byte	-1
   0A10 00                  218 	.byte	0
   0A11 14                  219 	.byte	20
   0A12 FF                  220 	.byte	-1
   0A13 C4                  221 	.byte	-60
   0A14 00                  222 	.byte	0
   0A15 FF                  223 	.byte	-1
   0A16 00                  224 	.byte	0
   0A17 D8                  225 	.byte	-40
   0A18 00                  226 	.byte	0
   0A19 00                  227 	.byte	0
   0A1A 14                  228 	.byte	20
   0A1B FF                  229 	.byte	-1
   0A1C 14                  230 	.byte	20
   0A1D 00                  231 	.byte	0
   0A1E FF                  232 	.byte	-1
   0A1F 00                  233 	.byte	0
   0A20 14                  234 	.byte	20
   0A21 00                  235 	.byte	0
   0A22 14                  236 	.byte	20
   0A23 00                  237 	.byte	0
   0A24 FF                  238 	.byte	-1
   0A25 00                  239 	.byte	0
   0A26 EC                  240 	.byte	-20
   0A27 01                  241 	.byte	1
   0A28 00                  242 	.byte	0
   0A29 00                  243 	.byte	0
                            244 	.globl _shape_rock_4t_L
   0A2A                     245 _shape_rock_4t_L:
   0A2A 00                  246 	.byte	0
   0A2B 0C                  247 	.byte	12
   0A2C 0A 06               248 	.word	_vectors_rock_4t_L
                            249 	.globl _rock_4t_L
                            250 	.area .data
   C8BF                     251 _rock_4t_L:
   C8BF 00                  252 	.byte	0
   C8C0 00                  253 	.byte	0
   C8C1 96                  254 	.byte	-106
   C8C2 0A 2A               255 	.word	_shape_rock_4t_L
                            256 	.globl _vectors_rock_5t
                            257 	.area .text
   0A2E                     258 _vectors_rock_5t:
   0A2E FF                  259 	.byte	-1
   0A2F 00                  260 	.byte	0
   0A30 28                  261 	.byte	40
   0A31 FF                  262 	.byte	-1
   0A32 28                  263 	.byte	40
   0A33 00                  264 	.byte	0
   0A34 FF                  265 	.byte	-1
   0A35 00                  266 	.byte	0
   0A36 C4                  267 	.byte	-60
   0A37 FF                  268 	.byte	-1
   0A38 EC                  269 	.byte	-20
   0A39 00                  270 	.byte	0
   0A3A FF                  271 	.byte	-1
   0A3B 00                  272 	.byte	0
   0A3C 3C                  273 	.byte	60
   0A3D 00                  274 	.byte	0
   0A3E 14                  275 	.byte	20
   0A3F EC                  276 	.byte	-20
   0A40 FF                  277 	.byte	-1
   0A41 D8                  278 	.byte	-40
   0A42 00                  279 	.byte	0
   0A43 00                  280 	.byte	0
   0A44 00                  281 	.byte	0
   0A45 EC                  282 	.byte	-20
   0A46 FF                  283 	.byte	-1
   0A47 28                  284 	.byte	40
   0A48 00                  285 	.byte	0
   0A49 01                  286 	.byte	1
   0A4A 00                  287 	.byte	0
   0A4B 00                  288 	.byte	0
                            289 	.globl _shape_rock_5t
   0A4C                     290 _shape_rock_5t:
   0A4C 00                  291 	.byte	0
   0A4D 0A                  292 	.byte	10
   0A4E 0A 2E               293 	.word	_vectors_rock_5t
                            294 	.globl _rock_5t
                            295 	.area .data
   C8C4                     296 _rock_5t:
   C8C4 E2                  297 	.byte	-30
   C8C5 32                  298 	.byte	50
   C8C6 96                  299 	.byte	-106
   C8C7 0A 4C               300 	.word	_shape_rock_5t
                            301 	.globl _rocks
                            302 	.area .text
   0A50                     303 _rocks:
   0A50 C8 BA               304 	.word	_rock4t_s
   0A52 C8 AB               305 	.word	_rock_2t_h
   0A54 C8 C4               306 	.word	_rock_5t
                            307 	.globl _move_rocks
   0A56                     308 _move_rocks:
   0A56 32 7F         [ 5]  309 	leas	-1,s
   0A58 6F E4         [ 6]  310 	clr	,s
   0A5A 20 02         [ 3]  311 	bra	L2
   0A5C                     312 L3:
   0A5C 6C E4         [ 6]  313 	inc	,s
   0A5E                     314 L2:
   0A5E BD 0A 68      [ 8]  315 	jsr	_get_num_option
   0A61 E1 E4         [ 4]  316 	cmpb	,s	;cmpqi:
   0A63 22 F7         [ 3]  317 	bhi	L3
   0A65 32 61         [ 5]  318 	leas	1,s
   0A67 39            [ 5]  319 	rts
   0A68                     320 _get_num_option:
   0A68 F6 C8 7A      [ 5]  321 	ldb	_Vec_Num_Game
   0A6B 39            [ 5]  322 	rts
                            323 	.globl _draw_rocks
   0A6C                     324 _draw_rocks:
   0A6C 34 40         [ 6]  325 	pshs	u
   0A6E 32 7F         [ 5]  326 	leas	-1,s
   0A70 6F E4         [ 6]  327 	clr	,s
   0A72 20 11         [ 3]  328 	bra	L8
   0A74                     329 L9:
   0A74 E6 E4         [ 4]  330 	ldb	,s
   0A76 4F            [ 2]  331 	clra		;zero_extendqihi: R:b -> R:d
   0A77 58            [ 2]  332 	aslb
   0A78 49            [ 2]  333 	rola
   0A79 CE 0A 50      [ 3]  334 	ldu	#_rocks
   0A7C 30 CB         [ 8]  335 	leax	d,u
   0A7E AE 84         [ 5]  336 	ldx	,x
   0A80 BD 0A 90      [ 8]  337 	jsr	_draw_sprite
   0A83 6C E4         [ 6]  338 	inc	,s
   0A85                     339 L8:
   0A85 E6 E4         [ 4]  340 	ldb	,s
   0A87 C1 02         [ 2]  341 	cmpb	#2	;cmpqi:
   0A89 23 E9         [ 3]  342 	bls	L9
   0A8B 32 61         [ 5]  343 	leas	1,s
   0A8D 35 C0         [ 7]  344 	puls	u,pc
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 L2                 00E1 R   |   2 L3                 00DF R
  2 L8                 0108 R   |   2 L9                 00F7 R
    _Vec_Num_Game      **** GX  |   2 _draw_rocks        00EF GR
    _draw_sprite       **** GX  |   2 _get_num_optio     00EB R
  2 _move_rocks        00D9 GR  |   3 _rock4t_s          0019 GR
  3 _rock_1t_1         0000 GR  |   3 _rock_1t_2         0005 GR
  3 _rock_2t_h         000A GR  |   3 _rock_3t_c         0014 GR
  3 _rock_3t_h         000F GR  |   3 _rock_4t_L         001E GR
  3 _rock_5t           0023 GR  |   2 _rocks             00D3 GR
  2 _shape_rock4t_     0085 GR  |   2 _shape_rock_1t     000F GR
  2 _shape_rock_2t     0028 GR  |   2 _shape_rock_3t     0066 GR
  2 _shape_rock_3t     0047 GR  |   2 _shape_rock_4t     00AD GR
  2 _shape_rock_5t     00CF GR  |   2 _vectors_rock4     006A GR
  2 _vectors_rock_     0000 GR  |   2 _vectors_rock_     0013 GR
  2 _vectors_rock_     004B GR  |   2 _vectors_rock_     002C GR
  2 _vectors_rock_     0089 GR  |   2 _vectors_rock_     00B1 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  112   flags  100
   3 .data            size   28   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

