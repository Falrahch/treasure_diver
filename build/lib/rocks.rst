                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	rocks.c
                              7 	.globl _vectors_rock_1t
                              8 	.area .text
   0EE4                       9 _vectors_rock_1t:
   0EE4 FF                   10 	.byte	-1
   0EE5 14                   11 	.byte	20
   0EE6 00                   12 	.byte	0
   0EE7 FF                   13 	.byte	-1
   0EE8 00                   14 	.byte	0
   0EE9 14                   15 	.byte	20
   0EEA FF                   16 	.byte	-1
   0EEB EC                   17 	.byte	-20
   0EEC 00                   18 	.byte	0
   0EED FF                   19 	.byte	-1
   0EEE 00                   20 	.byte	0
   0EEF EC                   21 	.byte	-20
   0EF0 01                   22 	.byte	1
   0EF1 00                   23 	.byte	0
   0EF2 00                   24 	.byte	0
                             25 	.globl _shape_rock_1t
   0EF3                      26 _shape_rock_1t:
   0EF3 00                   27 	.byte	0
   0EF4 05                   28 	.byte	5
   0EF5 0E E4                29 	.word	_vectors_rock_1t
                             30 	.globl _rock_1t_1
                             31 	.area .data
   C8A1                      32 _rock_1t_1:
   C8A1 3F                   33 	.byte	63
   C8A2 80                   34 	.byte	-128
   C8A3 96                   35 	.byte	-106
   C8A4 0E F3                36 	.word	_shape_rock_1t
                             37 	.globl _rock_1t_2
   C8A6                      38 _rock_1t_2:
   C8A6 5A                   39 	.byte	90
   C8A7 80                   40 	.byte	-128
   C8A8 96                   41 	.byte	-106
   C8A9 0E F3                42 	.word	_shape_rock_1t
                             43 	.globl _rock_1t_3
   C8AB                      44 _rock_1t_3:
   C8AB 5A                   45 	.byte	90
   C8AC 9B                   46 	.byte	-101
   C8AD 96                   47 	.byte	-106
   C8AE 0E F3                48 	.word	_shape_rock_1t
                             49 	.globl _rock_1t_4
   C8B0                      50 _rock_1t_4:
   C8B0 3F                   51 	.byte	63
   C8B1 9B                   52 	.byte	-101
   C8B2 96                   53 	.byte	-106
   C8B3 0E F3                54 	.word	_shape_rock_1t
                             55 	.globl _vectors_rock_2t_h
                             56 	.area .text
   0EF7                      57 _vectors_rock_2t_h:
   0EF7 FF                   58 	.byte	-1
   0EF8 14                   59 	.byte	20
   0EF9 00                   60 	.byte	0
   0EFA FF                   61 	.byte	-1
   0EFB 00                   62 	.byte	0
   0EFC 28                   63 	.byte	40
   0EFD FF                   64 	.byte	-1
   0EFE EC                   65 	.byte	-20
   0EFF 00                   66 	.byte	0
   0F00 FF                   67 	.byte	-1
   0F01 00                   68 	.byte	0
   0F02 D8                   69 	.byte	-40
   0F03 00                   70 	.byte	0
   0F04 00                   71 	.byte	0
   0F05 14                   72 	.byte	20
   0F06 FF                   73 	.byte	-1
   0F07 14                   74 	.byte	20
   0F08 00                   75 	.byte	0
   0F09 01                   76 	.byte	1
   0F0A 00                   77 	.byte	0
   0F0B 00                   78 	.byte	0
                             79 	.globl _shape_rock_2t_h
   0F0C                      80 _shape_rock_2t_h:
   0F0C 00                   81 	.byte	0
   0F0D 07                   82 	.byte	7
   0F0E 0E F7                83 	.word	_vectors_rock_2t_h
                             84 	.globl _rock_2t_h
                             85 	.area .data
   C8B5                      86 _rock_2t_h:
   C8B5 BA                   87 	.byte	-70
   C8B6 80                   88 	.byte	-128
   C8B7 96                   89 	.byte	-106
   C8B8 0F 0C                90 	.word	_shape_rock_2t_h
                             91 	.globl _vectors_rock_3t_h
                             92 	.area .text
   0F10                      93 _vectors_rock_3t_h:
   0F10 FF                   94 	.byte	-1
   0F11 14                   95 	.byte	20
   0F12 00                   96 	.byte	0
   0F13 FF                   97 	.byte	-1
   0F14 00                   98 	.byte	0
   0F15 3C                   99 	.byte	60
   0F16 FF                  100 	.byte	-1
   0F17 EC                  101 	.byte	-20
   0F18 00                  102 	.byte	0
   0F19 FF                  103 	.byte	-1
   0F1A 00                  104 	.byte	0
   0F1B C4                  105 	.byte	-60
   0F1C 00                  106 	.byte	0
   0F1D 00                  107 	.byte	0
   0F1E 14                  108 	.byte	20
   0F1F FF                  109 	.byte	-1
   0F20 14                  110 	.byte	20
   0F21 00                  111 	.byte	0
   0F22 00                  112 	.byte	0
   0F23 00                  113 	.byte	0
   0F24 14                  114 	.byte	20
   0F25 FF                  115 	.byte	-1
   0F26 EC                  116 	.byte	-20
   0F27 00                  117 	.byte	0
   0F28 01                  118 	.byte	1
   0F29 00                  119 	.byte	0
   0F2A 00                  120 	.byte	0
                            121 	.globl _shape_rock_3t_h
   0F2B                     122 _shape_rock_3t_h:
   0F2B 00                  123 	.byte	0
   0F2C 09                  124 	.byte	9
   0F2D 0F 10               125 	.word	_vectors_rock_3t_h
                            126 	.globl _rock_3t_h
                            127 	.area .data
   C8BA                     128 _rock_3t_h:
   C8BA 00                  129 	.byte	0
   C8BB 7F                  130 	.byte	127
   C8BC 96                  131 	.byte	-106
   C8BD 0F 2B               132 	.word	_shape_rock_3t_h
                            133 	.globl _vectors_rock_3t_c
                            134 	.area .text
   0F2F                     135 _vectors_rock_3t_c:
   0F2F FF                  136 	.byte	-1
   0F30 14                  137 	.byte	20
   0F31 00                  138 	.byte	0
   0F32 FF                  139 	.byte	-1
   0F33 00                  140 	.byte	0
   0F34 28                  141 	.byte	40
   0F35 FF                  142 	.byte	-1
   0F36 14                  143 	.byte	20
   0F37 00                  144 	.byte	0
   0F38 FF                  145 	.byte	-1
   0F39 00                  146 	.byte	0
   0F3A EC                  147 	.byte	-20
   0F3B FF                  148 	.byte	-1
   0F3C D8                  149 	.byte	-40
   0F3D 00                  150 	.byte	0
   0F3E 00                  151 	.byte	0
   0F3F 14                  152 	.byte	20
   0F40 14                  153 	.byte	20
   0F41 FF                  154 	.byte	-1
   0F42 EC                  155 	.byte	-20
   0F43 00                  156 	.byte	0
   0F44 FF                  157 	.byte	-1
   0F45 00                  158 	.byte	0
   0F46 D8                  159 	.byte	-40
   0F47 01                  160 	.byte	1
   0F48 00                  161 	.byte	0
   0F49 00                  162 	.byte	0
                            163 	.globl _shape_rock_3t_c
   0F4A                     164 _shape_rock_3t_c:
   0F4A 00                  165 	.byte	0
   0F4B 09                  166 	.byte	9
   0F4C 0F 2F               167 	.word	_vectors_rock_3t_c
                            168 	.globl _rock_3t_c
                            169 	.area .data
   C8BF                     170 _rock_3t_c:
   C8BF 00                  171 	.byte	0
   C8C0 0C                  172 	.byte	12
   C8C1 96                  173 	.byte	-106
   C8C2 0F 4A               174 	.word	_shape_rock_3t_c
                            175 	.globl _vectors_rock4t_s
                            176 	.area .text
   0F4E                     177 _vectors_rock4t_s:
   0F4E FF                  178 	.byte	-1
   0F4F 28                  179 	.byte	40
   0F50 00                  180 	.byte	0
   0F51 FF                  181 	.byte	-1
   0F52 00                  182 	.byte	0
   0F53 28                  183 	.byte	40
   0F54 FF                  184 	.byte	-1
   0F55 D8                  185 	.byte	-40
   0F56 00                  186 	.byte	0
   0F57 FF                  187 	.byte	-1
   0F58 00                  188 	.byte	0
   0F59 D8                  189 	.byte	-40
   0F5A 00                  190 	.byte	0
   0F5B 14                  191 	.byte	20
   0F5C 00                  192 	.byte	0
   0F5D FF                  193 	.byte	-1
   0F5E 00                  194 	.byte	0
   0F5F 28                  195 	.byte	40
   0F60 00                  196 	.byte	0
   0F61 14                  197 	.byte	20
   0F62 EC                  198 	.byte	-20
   0F63 FF                  199 	.byte	-1
   0F64 D8                  200 	.byte	-40
   0F65 00                  201 	.byte	0
   0F66 01                  202 	.byte	1
   0F67 00                  203 	.byte	0
   0F68 00                  204 	.byte	0
                            205 	.globl _shape_rock4t_s
   0F69                     206 _shape_rock4t_s:
   0F69 00                  207 	.byte	0
   0F6A 09                  208 	.byte	9
   0F6B 0F 4E               209 	.word	_vectors_rock4t_s
                            210 	.globl _rock4t_s
                            211 	.area .data
   C8C4                     212 _rock4t_s:
   C8C4 46                  213 	.byte	70
   C8C5 80                  214 	.byte	-128
   C8C6 96                  215 	.byte	-106
   C8C7 0F 69               216 	.word	_shape_rock4t_s
                            217 	.globl _vectors_rock_4t_L
                            218 	.area .text
   0F6D                     219 _vectors_rock_4t_L:
   0F6D FF                  220 	.byte	-1
   0F6E 14                  221 	.byte	20
   0F6F 00                  222 	.byte	0
   0F70 FF                  223 	.byte	-1
   0F71 00                  224 	.byte	0
   0F72 14                  225 	.byte	20
   0F73 FF                  226 	.byte	-1
   0F74 28                  227 	.byte	40
   0F75 00                  228 	.byte	0
   0F76 FF                  229 	.byte	-1
   0F77 00                  230 	.byte	0
   0F78 14                  231 	.byte	20
   0F79 FF                  232 	.byte	-1
   0F7A C4                  233 	.byte	-60
   0F7B 00                  234 	.byte	0
   0F7C FF                  235 	.byte	-1
   0F7D 00                  236 	.byte	0
   0F7E D8                  237 	.byte	-40
   0F7F 00                  238 	.byte	0
   0F80 00                  239 	.byte	0
   0F81 14                  240 	.byte	20
   0F82 FF                  241 	.byte	-1
   0F83 14                  242 	.byte	20
   0F84 00                  243 	.byte	0
   0F85 FF                  244 	.byte	-1
   0F86 00                  245 	.byte	0
   0F87 14                  246 	.byte	20
   0F88 00                  247 	.byte	0
   0F89 14                  248 	.byte	20
   0F8A 00                  249 	.byte	0
   0F8B FF                  250 	.byte	-1
   0F8C 00                  251 	.byte	0
   0F8D EC                  252 	.byte	-20
   0F8E 01                  253 	.byte	1
   0F8F 00                  254 	.byte	0
   0F90 00                  255 	.byte	0
                            256 	.globl _shape_rock_4t_L
   0F91                     257 _shape_rock_4t_L:
   0F91 00                  258 	.byte	0
   0F92 0C                  259 	.byte	12
   0F93 0F 6D               260 	.word	_vectors_rock_4t_L
                            261 	.globl _rock_4t_L
                            262 	.area .data
   C8C9                     263 _rock_4t_L:
   C8C9 00                  264 	.byte	0
   C8CA 00                  265 	.byte	0
   C8CB 96                  266 	.byte	-106
   C8CC 0F 91               267 	.word	_shape_rock_4t_L
                            268 	.globl _vectors_rock_5t
                            269 	.area .text
   0F95                     270 _vectors_rock_5t:
   0F95 FF                  271 	.byte	-1
   0F96 00                  272 	.byte	0
   0F97 28                  273 	.byte	40
   0F98 FF                  274 	.byte	-1
   0F99 28                  275 	.byte	40
   0F9A 00                  276 	.byte	0
   0F9B FF                  277 	.byte	-1
   0F9C 00                  278 	.byte	0
   0F9D C4                  279 	.byte	-60
   0F9E FF                  280 	.byte	-1
   0F9F EC                  281 	.byte	-20
   0FA0 00                  282 	.byte	0
   0FA1 FF                  283 	.byte	-1
   0FA2 00                  284 	.byte	0
   0FA3 3C                  285 	.byte	60
   0FA4 00                  286 	.byte	0
   0FA5 14                  287 	.byte	20
   0FA6 EC                  288 	.byte	-20
   0FA7 FF                  289 	.byte	-1
   0FA8 D8                  290 	.byte	-40
   0FA9 00                  291 	.byte	0
   0FAA 00                  292 	.byte	0
   0FAB 00                  293 	.byte	0
   0FAC EC                  294 	.byte	-20
   0FAD FF                  295 	.byte	-1
   0FAE 28                  296 	.byte	40
   0FAF 00                  297 	.byte	0
   0FB0 01                  298 	.byte	1
   0FB1 00                  299 	.byte	0
   0FB2 00                  300 	.byte	0
                            301 	.globl _shape_rock_5t
   0FB3                     302 _shape_rock_5t:
   0FB3 00                  303 	.byte	0
   0FB4 0A                  304 	.byte	10
   0FB5 0F 95               305 	.word	_vectors_rock_5t
                            306 	.globl _rock_5t
                            307 	.area .data
   C8CE                     308 _rock_5t:
   C8CE E2                  309 	.byte	-30
   C8CF 32                  310 	.byte	50
   C8D0 96                  311 	.byte	-106
   C8D1 0F B3               312 	.word	_shape_rock_5t
                            313 	.globl _rocks
                            314 	.area .text
   0FB7                     315 _rocks:
   0FB7 C8 A1               316 	.word	_rock_1t_1
   0FB9 C8 A6               317 	.word	_rock_1t_2
   0FBB C8 AB               318 	.word	_rock_1t_3
   0FBD C8 B0               319 	.word	_rock_1t_4
   0FBF C8 B5               320 	.word	_rock_2t_h
   0FC1 C8 CE               321 	.word	_rock_5t
                            322 	.globl _move_rocks
   0FC3                     323 _move_rocks:
   0FC3 32 7F         [ 5]  324 	leas	-1,s
   0FC5 6F E4         [ 6]  325 	clr	,s
   0FC7 20 02         [ 3]  326 	bra	L2
   0FC9                     327 L3:
   0FC9 6C E4         [ 6]  328 	inc	,s
   0FCB                     329 L2:
   0FCB BD 0F D5      [ 8]  330 	jsr	_get_num_option
   0FCE E1 E4         [ 4]  331 	cmpb	,s	;cmpqi:
   0FD0 22 F7         [ 3]  332 	bhi	L3
   0FD2 32 61         [ 5]  333 	leas	1,s
   0FD4 39            [ 5]  334 	rts
   0FD5                     335 _get_num_option:
   0FD5 F6 C8 7A      [ 5]  336 	ldb	_Vec_Num_Game
   0FD8 39            [ 5]  337 	rts
                            338 	.globl _draw_rocks
   0FD9                     339 _draw_rocks:
   0FD9 34 40         [ 6]  340 	pshs	u
   0FDB 32 7F         [ 5]  341 	leas	-1,s
   0FDD 6F E4         [ 6]  342 	clr	,s
   0FDF 20 11         [ 3]  343 	bra	L8
   0FE1                     344 L9:
   0FE1 E6 E4         [ 4]  345 	ldb	,s
   0FE3 4F            [ 2]  346 	clra		;zero_extendqihi: R:b -> R:d
   0FE4 58            [ 2]  347 	aslb
   0FE5 49            [ 2]  348 	rola
   0FE6 CE 0F B7      [ 3]  349 	ldu	#_rocks
   0FE9 30 CB         [ 8]  350 	leax	d,u
   0FEB AE 84         [ 5]  351 	ldx	,x
   0FED BD 10 BB      [ 8]  352 	jsr	_draw_sprite
   0FF0 6C E4         [ 6]  353 	inc	,s
   0FF2                     354 L8:
   0FF2 E6 E4         [ 4]  355 	ldb	,s
   0FF4 C1 05         [ 2]  356 	cmpb	#5	;cmpqi:
   0FF6 23 E9         [ 3]  357 	bls	L9
   0FF8 32 61         [ 5]  358 	leas	1,s
   0FFA 35 C0         [ 7]  359 	puls	u,pc
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 L2                 00E7 R   |   2 L3                 00E5 R
  2 L8                 010E R   |   2 L9                 00FD R
    _Vec_Num_Game      **** GX  |   2 _draw_rocks        00F5 GR
    _draw_sprite       **** GX  |   2 _get_num_optio     00F1 R
  2 _move_rocks        00DF GR  |   3 _rock4t_s          0023 GR
  3 _rock_1t_1         0000 GR  |   3 _rock_1t_2         0005 GR
  3 _rock_1t_3         000A GR  |   3 _rock_1t_4         000F GR
  3 _rock_2t_h         0014 GR  |   3 _rock_3t_c         001E GR
  3 _rock_3t_h         0019 GR  |   3 _rock_4t_L         0028 GR
  3 _rock_5t           002D GR  |   2 _rocks             00D3 GR
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
   2 .text            size  118   flags  100
   3 .data            size   32   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

