                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	player.c
                              7 	.globl _vectors_player
                              8 	.area .text
   0A39                       9 _vectors_player:
   0A39 FF                   10 	.byte	-1
   0A3A 05                   11 	.byte	5
   0A3B 0A                   12 	.byte	10
   0A3C FF                   13 	.byte	-1
   0A3D 0A                   14 	.byte	10
   0A3E 05                   15 	.byte	5
   0A3F FF                   16 	.byte	-1
   0A40 00                   17 	.byte	0
   0A41 05                   18 	.byte	5
   0A42 FF                   19 	.byte	-1
   0A43 0F                   20 	.byte	15
   0A44 00                   21 	.byte	0
   0A45 FF                   22 	.byte	-1
   0A46 00                   23 	.byte	0
   0A47 FB                   24 	.byte	-5
   0A48 FF                   25 	.byte	-1
   0A49 0A                   26 	.byte	10
   0A4A FB                   27 	.byte	-5
   0A4B FF                   28 	.byte	-1
   0A4C 05                   29 	.byte	5
   0A4D F6                   30 	.byte	-10
   0A4E FF                   31 	.byte	-1
   0A4F 05                   32 	.byte	5
   0A50 00                   33 	.byte	0
   0A51 FF                   34 	.byte	-1
   0A52 00                   35 	.byte	0
   0A53 F1                   36 	.byte	-15
   0A54 FF                   37 	.byte	-1
   0A55 FB                   38 	.byte	-5
   0A56 00                   39 	.byte	0
   0A57 FF                   40 	.byte	-1
   0A58 FB                   41 	.byte	-5
   0A59 F6                   42 	.byte	-10
   0A5A FF                   43 	.byte	-1
   0A5B F6                   44 	.byte	-10
   0A5C FB                   45 	.byte	-5
   0A5D FF                   46 	.byte	-1
   0A5E 00                   47 	.byte	0
   0A5F FB                   48 	.byte	-5
   0A60 FF                   49 	.byte	-1
   0A61 F1                   50 	.byte	-15
   0A62 00                   51 	.byte	0
   0A63 FF                   52 	.byte	-1
   0A64 00                   53 	.byte	0
   0A65 05                   54 	.byte	5
   0A66 FF                   55 	.byte	-1
   0A67 F6                   56 	.byte	-10
   0A68 05                   57 	.byte	5
   0A69 FF                   58 	.byte	-1
   0A6A FB                   59 	.byte	-5
   0A6B 0A                   60 	.byte	10
   0A6C FF                   61 	.byte	-1
   0A6D 00                   62 	.byte	0
   0A6E 0F                   63 	.byte	15
   0A6F 00                   64 	.byte	0
   0A70 10                   65 	.byte	16
   0A71 02                   66 	.byte	2
   0A72 FF                   67 	.byte	-1
   0A73 0B                   68 	.byte	11
   0A74 00                   69 	.byte	0
   0A75 FF                   70 	.byte	-1
   0A76 04                   71 	.byte	4
   0A77 FC                   72 	.byte	-4
   0A78 FF                   73 	.byte	-1
   0A79 00                   74 	.byte	0
   0A7A F5                   75 	.byte	-11
   0A7B FF                   76 	.byte	-1
   0A7C FC                   77 	.byte	-4
   0A7D FC                   78 	.byte	-4
   0A7E FF                   79 	.byte	-1
   0A7F F5                   80 	.byte	-11
   0A80 00                   81 	.byte	0
   0A81 FF                   82 	.byte	-1
   0A82 FC                   83 	.byte	-4
   0A83 04                   84 	.byte	4
   0A84 FF                   85 	.byte	-1
   0A85 00                   86 	.byte	0
   0A86 0B                   87 	.byte	11
   0A87 FF                   88 	.byte	-1
   0A88 04                   89 	.byte	4
   0A89 04                   90 	.byte	4
   0A8A 01                   91 	.byte	1
   0A8B 00                   92 	.byte	0
   0A8C 00                   93 	.byte	0
                             94 	.globl _shape_player
   0A8D                      95 _shape_player:
   0A8D 00                   96 	.byte	0
   0A8E 1C                   97 	.byte	28
   0A8F 0A 39                98 	.word	_vectors_player
                             99 	.globl _player
                            100 	.area .data
   C89C                     101 _player:
   C89C 00                  102 	.byte	0
   C89D 00                  103 	.byte	0
   C89E 00                  104 	.byte	0
   C89F 0A 8D               105 	.word	_shape_player
                            106 	.area .text
                            107 	.globl _init_player
   0A91                     108 _init_player:
   0A91 C6 64         [ 2]  109 	ldb	#100
   0A93 F7 C8 9C      [ 5]  110 	stb	_player
   0A96 7F C8 9D      [ 7]  111 	clr	_player+1
   0A99 C6 32         [ 2]  112 	ldb	#50
   0A9B F7 C8 9E      [ 5]  113 	stb	_player+2
   0A9E 39            [ 5]  114 	rts
                            115 	.globl _move_player
   0A9F                     116 _move_player:
   0A9F 32 7A         [ 5]  117 	leas	-6,s
   0AA1 BD F1 F8      [ 8]  118 	jsr	___Joy_Digital
   0AA4 F6 C8 1B      [ 5]  119 	ldb	_Vec_Joy_1_X
   0AA7 6F 62         [ 7]  120 	clr	2,s
   0AA9 5D            [ 2]  121 	tstb
   0AAA 2C 04         [ 3]  122 	bge	L4
   0AAC C6 01         [ 2]  123 	ldb	#1
   0AAE E7 62         [ 5]  124 	stb	2,s
   0AB0                     125 L4:
   0AB0 E6 62         [ 5]  126 	ldb	2,s
                            127 	; tstb	; optimization 6
   0AB2 27 21         [ 3]  128 	beq	L5
   0AB4 BD 0C BC      [ 8]  129 	jsr	_check_rock_collision
   0AB7 5D            [ 2]  130 	tstb
   0AB8 27 11         [ 3]  131 	beq	L6
   0ABA F6 C8 9D      [ 5]  132 	ldb	_player+1
   0ABD C1 88         [ 2]  133 	cmpb	#-120	;cmpqi:
   0ABF 2D 0A         [ 3]  134 	blt	L6
   0AC1 F6 C8 9D      [ 5]  135 	ldb	_player+1
   0AC4 CB FE         [ 2]  136 	addb	#-2
   0AC6 F7 C8 9D      [ 5]  137 	stb	_player+1
   0AC9 20 39         [ 3]  138 	bra	L8
   0ACB                     139 L6:
   0ACB F6 C8 9D      [ 5]  140 	ldb	_player+1
   0ACE CB 02         [ 2]  141 	addb	#2
   0AD0 F7 C8 9D      [ 5]  142 	stb	_player+1
   0AD3 20 2F         [ 3]  143 	bra	L8
   0AD5                     144 L5:
   0AD5 F6 C8 1B      [ 5]  145 	ldb	_Vec_Joy_1_X
   0AD8 6F 63         [ 7]  146 	clr	3,s
   0ADA 5D            [ 2]  147 	tstb
   0ADB 2F 04         [ 3]  148 	ble	L9
   0ADD C6 01         [ 2]  149 	ldb	#1
   0ADF E7 63         [ 5]  150 	stb	3,s
   0AE1                     151 L9:
   0AE1 E6 63         [ 5]  152 	ldb	3,s
                            153 	; tstb	; optimization 6
   0AE3 27 1F         [ 3]  154 	beq	L8
   0AE5 BD 0C BC      [ 8]  155 	jsr	_check_rock_collision
   0AE8 5D            [ 2]  156 	tstb
   0AE9 27 11         [ 3]  157 	beq	L10
   0AEB F6 C8 9D      [ 5]  158 	ldb	_player+1
   0AEE C1 7D         [ 2]  159 	cmpb	#125	;cmpqi:
   0AF0 2E 0A         [ 3]  160 	bgt	L10
   0AF2 F6 C8 9D      [ 5]  161 	ldb	_player+1
   0AF5 CB 02         [ 2]  162 	addb	#2
   0AF7 F7 C8 9D      [ 5]  163 	stb	_player+1
   0AFA 20 08         [ 3]  164 	bra	L8
   0AFC                     165 L10:
   0AFC F6 C8 9D      [ 5]  166 	ldb	_player+1
   0AFF CB FE         [ 2]  167 	addb	#-2
   0B01 F7 C8 9D      [ 5]  168 	stb	_player+1
   0B04                     169 L8:
   0B04 F6 C8 1C      [ 5]  170 	ldb	_Vec_Joy_1_Y
   0B07 6F 64         [ 7]  171 	clr	4,s
   0B09 5D            [ 2]  172 	tstb
   0B0A 2F 04         [ 3]  173 	ble	L11
   0B0C C6 01         [ 2]  174 	ldb	#1
   0B0E E7 64         [ 5]  175 	stb	4,s
   0B10                     176 L11:
   0B10 E6 64         [ 5]  177 	ldb	4,s
                            178 	; tstb	; optimization 6
   0B12 27 21         [ 3]  179 	beq	L12
   0B14 BD 0C BC      [ 8]  180 	jsr	_check_rock_collision
   0B17 5D            [ 2]  181 	tstb
   0B18 27 11         [ 3]  182 	beq	L13
   0B1A F6 C8 9C      [ 5]  183 	ldb	_player
   0B1D C1 64         [ 2]  184 	cmpb	#100	;cmpqi:
   0B1F 2E 0A         [ 3]  185 	bgt	L13
   0B21 F6 C8 9C      [ 5]  186 	ldb	_player
   0B24 CB 02         [ 2]  187 	addb	#2
   0B26 F7 C8 9C      [ 5]  188 	stb	_player
   0B29 20 39         [ 3]  189 	bra	L15
   0B2B                     190 L13:
   0B2B F6 C8 9C      [ 5]  191 	ldb	_player
   0B2E CB FE         [ 2]  192 	addb	#-2
   0B30 F7 C8 9C      [ 5]  193 	stb	_player
   0B33 20 2F         [ 3]  194 	bra	L15
   0B35                     195 L12:
   0B35 F6 C8 1C      [ 5]  196 	ldb	_Vec_Joy_1_Y
   0B38 6F 65         [ 7]  197 	clr	5,s
   0B3A 5D            [ 2]  198 	tstb
   0B3B 2C 04         [ 3]  199 	bge	L16
   0B3D C6 01         [ 2]  200 	ldb	#1
   0B3F E7 65         [ 5]  201 	stb	5,s
   0B41                     202 L16:
   0B41 E6 65         [ 5]  203 	ldb	5,s
                            204 	; tstb	; optimization 6
   0B43 27 1F         [ 3]  205 	beq	L15
   0B45 BD 0C BC      [ 8]  206 	jsr	_check_rock_collision
   0B48 5D            [ 2]  207 	tstb
   0B49 27 11         [ 3]  208 	beq	L17
   0B4B F6 C8 9C      [ 5]  209 	ldb	_player
   0B4E C1 82         [ 2]  210 	cmpb	#-126	;cmpqi:
   0B50 2D 0A         [ 3]  211 	blt	L17
   0B52 F6 C8 9C      [ 5]  212 	ldb	_player
   0B55 CB FE         [ 2]  213 	addb	#-2
   0B57 F7 C8 9C      [ 5]  214 	stb	_player
   0B5A 20 08         [ 3]  215 	bra	L15
   0B5C                     216 L17:
   0B5C F6 C8 9C      [ 5]  217 	ldb	_player
   0B5F CB 02         [ 2]  218 	addb	#2
   0B61 F7 C8 9C      [ 5]  219 	stb	_player
   0B64                     220 L15:
   0B64 BD F1 BA      [ 8]  221 	jsr	___Read_Btns
   0B67 F6 C8 0F      [ 5]  222 	ldb	_Vec_Btn_State
   0B6A C4 08         [ 2]  223 	andb	#8
   0B6C E7 E4         [ 4]  224 	stb	,s
   0B6E F6 C8 0F      [ 5]  225 	ldb	_Vec_Btn_State
   0B71 C4 02         [ 2]  226 	andb	#2
   0B73 E7 61         [ 5]  227 	stb	1,s
   0B75 32 66         [ 5]  228 	leas	6,s
   0B77 39            [ 5]  229 	rts
                            230 	.globl _draw_player
   0B78                     231 _draw_player:
   0B78 8E C8 9C      [ 3]  232 	ldx	#_player
   0B7B BD 10 BB      [ 8]  233 	jsr	_draw_sprite
   0B7E 39            [ 5]  234 	rts
                            235 	.globl _throw_grappling_hook
   0B7F                     236 _throw_grappling_hook:
   0B7F 32 7F         [ 5]  237 	leas	-1,s
   0B81 C6 01         [ 2]  238 	ldb	#1
   0B83 E7 E4         [ 4]  239 	stb	,s
   0B85 20 02         [ 3]  240 	bra	L24
   0B87                     241 L25:
   0B87 6C E4         [ 6]  242 	inc	,s
   0B89                     243 L24:
   0B89 E6 E4         [ 4]  244 	ldb	,s
   0B8B C1 1E         [ 2]  245 	cmpb	#30	;cmpqi:
   0B8D 23 F8         [ 3]  246 	bls	L25
   0B8F 32 61         [ 5]  247 	leas	1,s
   0B91 39            [ 5]  248 	rts
                            249 	.globl _check_ether_pickup
   0B92                     250 _check_ether_pickup:
   0B92 34 40         [ 6]  251 	pshs	u
   0B94 32 7A         [ 5]  252 	leas	-6,s
   0B96 6F 65         [ 7]  253 	clr	5,s
   0B98 7E 0C 1F      [ 4]  254 	jmp	L28
   0B9B                     255 L30:
   0B9B F6 C8 9D      [ 5]  256 	ldb	_player+1
   0B9E E7 E4         [ 4]  257 	stb	,s
                            258 	; ldb	,s	; optimization 5
   0BA0 CB EA         [ 2]  259 	addb	#-22
   0BA2 E7 61         [ 5]  260 	stb	1,s
   0BA4 E6 65         [ 5]  261 	ldb	5,s
   0BA6 4F            [ 2]  262 	clra		;zero_extendqihi: R:b -> R:d
   0BA7 58            [ 2]  263 	aslb
   0BA8 49            [ 2]  264 	rola
   0BA9 CE 04 55      [ 3]  265 	ldu	#_ether
   0BAC 30 CB         [ 8]  266 	leax	d,u
   0BAE AE 84         [ 5]  267 	ldx	,x
   0BB0 E6 01         [ 5]  268 	ldb	1,x
   0BB2 CB 03         [ 2]  269 	addb	#3
   0BB4 E1 61         [ 5]  270 	cmpb	1,s	;cmpqi:(R)
   0BB6 10 2F 00 63   [ 6]  271 	lble	L29
   0BBA F6 C8 9D      [ 5]  272 	ldb	_player+1
   0BBD E7 E4         [ 4]  273 	stb	,s
                            274 	; ldb	,s	; optimization 5
   0BBF CB 08         [ 2]  275 	addb	#8
   0BC1 E7 62         [ 5]  276 	stb	2,s
   0BC3 E6 65         [ 5]  277 	ldb	5,s
   0BC5 4F            [ 2]  278 	clra		;zero_extendqihi: R:b -> R:d
   0BC6 58            [ 2]  279 	aslb
   0BC7 49            [ 2]  280 	rola
   0BC8 CE 04 55      [ 3]  281 	ldu	#_ether
   0BCB 30 CB         [ 8]  282 	leax	d,u
   0BCD AE 84         [ 5]  283 	ldx	,x
   0BCF E6 01         [ 5]  284 	ldb	1,x
   0BD1 CB FD         [ 2]  285 	addb	#-3
   0BD3 E1 62         [ 5]  286 	cmpb	2,s	;cmpqi:(R)
   0BD5 2C 46         [ 3]  287 	bge	L29
   0BD7 F6 C8 9C      [ 5]  288 	ldb	_player
   0BDA E7 E4         [ 4]  289 	stb	,s
                            290 	; ldb	,s	; optimization 5
   0BDC CB F3         [ 2]  291 	addb	#-13
   0BDE E7 63         [ 5]  292 	stb	3,s
   0BE0 E6 65         [ 5]  293 	ldb	5,s
   0BE2 4F            [ 2]  294 	clra		;zero_extendqihi: R:b -> R:d
   0BE3 58            [ 2]  295 	aslb
   0BE4 49            [ 2]  296 	rola
   0BE5 CE 04 55      [ 3]  297 	ldu	#_ether
   0BE8 30 CB         [ 8]  298 	leax	d,u
   0BEA AE 84         [ 5]  299 	ldx	,x
   0BEC E6 84         [ 4]  300 	ldb	,x
   0BEE CB 0C         [ 2]  301 	addb	#12
   0BF0 E1 63         [ 5]  302 	cmpb	3,s	;cmpqi:(R)
   0BF2 2F 29         [ 3]  303 	ble	L29
   0BF4 F6 C8 9C      [ 5]  304 	ldb	_player
   0BF7 E7 E4         [ 4]  305 	stb	,s
                            306 	; ldb	,s	; optimization 5
   0BF9 CB 19         [ 2]  307 	addb	#25
   0BFB E7 64         [ 5]  308 	stb	4,s
   0BFD E6 65         [ 5]  309 	ldb	5,s
   0BFF 4F            [ 2]  310 	clra		;zero_extendqihi: R:b -> R:d
   0C00 58            [ 2]  311 	aslb
   0C01 49            [ 2]  312 	rola
   0C02 CE 04 55      [ 3]  313 	ldu	#_ether
   0C05 30 CB         [ 8]  314 	leax	d,u
   0C07 AE 84         [ 5]  315 	ldx	,x
   0C09 E6 84         [ 4]  316 	ldb	,x
   0C0B E1 64         [ 5]  317 	cmpb	4,s	;cmpqi:(R)
   0C0D 2C 0E         [ 3]  318 	bge	L29
   0C0F E6 65         [ 5]  319 	ldb	5,s
   0C11 4F            [ 2]  320 	clra		;zero_extendqihi: R:b -> R:d
   0C12 58            [ 2]  321 	aslb
   0C13 49            [ 2]  322 	rola
   0C14 CE 04 55      [ 3]  323 	ldu	#_ether
   0C17 30 CB         [ 8]  324 	leax	d,u
   0C19 AE 84         [ 5]  325 	ldx	,x
   0C1B 6F 02         [ 7]  326 	clr	2,x
   0C1D                     327 L29:
   0C1D 6C 65         [ 7]  328 	inc	5,s
   0C1F                     329 L28:
   0C1F E6 65         [ 5]  330 	ldb	5,s
   0C21 C1 03         [ 2]  331 	cmpb	#3	;cmpqi:
   0C23 10 23 FF 74   [ 6]  332 	lbls	L30
   0C27 32 66         [ 5]  333 	leas	6,s
   0C29 35 C0         [ 7]  334 	puls	u,pc
                            335 	.globl _check_enemy_collision
   0C2B                     336 _check_enemy_collision:
   0C2B 34 40         [ 6]  337 	pshs	u
   0C2D 32 79         [ 5]  338 	leas	-7,s
   0C2F 6F 66         [ 7]  339 	clr	6,s
   0C31 7E 0C AC      [ 4]  340 	jmp	L33
   0C34                     341 L36:
   0C34 F6 C8 9D      [ 5]  342 	ldb	_player+1
   0C37 E7 E4         [ 4]  343 	stb	,s
                            344 	; ldb	,s	; optimization 5
   0C39 CB E9         [ 2]  345 	addb	#-23
   0C3B E7 61         [ 5]  346 	stb	1,s
   0C3D E6 66         [ 5]  347 	ldb	6,s
   0C3F 4F            [ 2]  348 	clra		;zero_extendqihi: R:b -> R:d
   0C40 58            [ 2]  349 	aslb
   0C41 49            [ 2]  350 	rola
   0C42 CE 04 10      [ 3]  351 	ldu	#_crabs
   0C45 30 CB         [ 8]  352 	leax	d,u
   0C47 AE 84         [ 5]  353 	ldx	,x
   0C49 E6 01         [ 5]  354 	ldb	1,x
   0C4B CB 14         [ 2]  355 	addb	#20
   0C4D E1 61         [ 5]  356 	cmpb	1,s	;cmpqi:(R)
   0C4F 10 2F 00 57   [ 6]  357 	lble	L34
   0C53 F6 C8 9D      [ 5]  358 	ldb	_player+1
   0C56 E7 E4         [ 4]  359 	stb	,s
                            360 	; ldb	,s	; optimization 5
   0C58 CB 08         [ 2]  361 	addb	#8
   0C5A E7 62         [ 5]  362 	stb	2,s
   0C5C E6 66         [ 5]  363 	ldb	6,s
   0C5E 4F            [ 2]  364 	clra		;zero_extendqihi: R:b -> R:d
   0C5F 58            [ 2]  365 	aslb
   0C60 49            [ 2]  366 	rola
   0C61 CE 04 10      [ 3]  367 	ldu	#_crabs
   0C64 30 CB         [ 8]  368 	leax	d,u
   0C66 AE 84         [ 5]  369 	ldx	,x
   0C68 E6 01         [ 5]  370 	ldb	1,x
   0C6A E1 62         [ 5]  371 	cmpb	2,s	;cmpqi:(R)
   0C6C 2C 3C         [ 3]  372 	bge	L34
   0C6E F6 C8 9C      [ 5]  373 	ldb	_player
   0C71 E7 E4         [ 4]  374 	stb	,s
                            375 	; ldb	,s	; optimization 5
   0C73 CB F6         [ 2]  376 	addb	#-10
   0C75 E7 63         [ 5]  377 	stb	3,s
   0C77 E6 66         [ 5]  378 	ldb	6,s
   0C79 4F            [ 2]  379 	clra		;zero_extendqihi: R:b -> R:d
   0C7A 58            [ 2]  380 	aslb
   0C7B 49            [ 2]  381 	rola
   0C7C CE 04 10      [ 3]  382 	ldu	#_crabs
   0C7F 30 CB         [ 8]  383 	leax	d,u
   0C81 AE 84         [ 5]  384 	ldx	,x
   0C83 E6 84         [ 4]  385 	ldb	,x
   0C85 CB 14         [ 2]  386 	addb	#20
   0C87 E1 63         [ 5]  387 	cmpb	3,s	;cmpqi:(R)
   0C89 2F 1F         [ 3]  388 	ble	L34
   0C8B F6 C8 9C      [ 5]  389 	ldb	_player
   0C8E E7 E4         [ 4]  390 	stb	,s
                            391 	; ldb	,s	; optimization 5
   0C90 CB 16         [ 2]  392 	addb	#22
   0C92 E7 64         [ 5]  393 	stb	4,s
   0C94 E6 66         [ 5]  394 	ldb	6,s
   0C96 4F            [ 2]  395 	clra		;zero_extendqihi: R:b -> R:d
   0C97 58            [ 2]  396 	aslb
   0C98 49            [ 2]  397 	rola
   0C99 CE 04 10      [ 3]  398 	ldu	#_crabs
   0C9C 30 CB         [ 8]  399 	leax	d,u
   0C9E AE 84         [ 5]  400 	ldx	,x
   0CA0 E6 84         [ 4]  401 	ldb	,x
   0CA2 E1 64         [ 5]  402 	cmpb	4,s	;cmpqi:(R)
   0CA4 2C 04         [ 3]  403 	bge	L34
   0CA6 6F 65         [ 7]  404 	clr	5,s
   0CA8 20 0C         [ 3]  405 	bra	L35
   0CAA                     406 L34:
   0CAA 6C 66         [ 7]  407 	inc	6,s
   0CAC                     408 L33:
   0CAC 6D 66         [ 7]  409 	tst	6,s
   0CAE 10 27 FF 82   [ 6]  410 	lbeq	L36
   0CB2 C6 01         [ 2]  411 	ldb	#1
   0CB4 E7 65         [ 5]  412 	stb	5,s
   0CB6                     413 L35:
   0CB6 E6 65         [ 5]  414 	ldb	5,s
   0CB8 32 67         [ 5]  415 	leas	7,s
   0CBA 35 C0         [ 7]  416 	puls	u,pc
                            417 	.globl _check_rock_collision
   0CBC                     418 _check_rock_collision:
   0CBC 34 40         [ 6]  419 	pshs	u
   0CBE 32 79         [ 5]  420 	leas	-7,s
   0CC0 6F 66         [ 7]  421 	clr	6,s
   0CC2 7E 0D 3D      [ 4]  422 	jmp	L39
   0CC5                     423 L42:
   0CC5 F6 C8 9D      [ 5]  424 	ldb	_player+1
   0CC8 E7 E4         [ 4]  425 	stb	,s
                            426 	; ldb	,s	; optimization 5
   0CCA CB E6         [ 2]  427 	addb	#-26
   0CCC E7 61         [ 5]  428 	stb	1,s
   0CCE E6 66         [ 5]  429 	ldb	6,s
   0CD0 4F            [ 2]  430 	clra		;zero_extendqihi: R:b -> R:d
   0CD1 58            [ 2]  431 	aslb
   0CD2 49            [ 2]  432 	rola
   0CD3 CE 0F B7      [ 3]  433 	ldu	#_rocks
   0CD6 30 CB         [ 8]  434 	leax	d,u
   0CD8 AE 84         [ 5]  435 	ldx	,x
   0CDA E6 01         [ 5]  436 	ldb	1,x
   0CDC CB 14         [ 2]  437 	addb	#20
   0CDE E1 61         [ 5]  438 	cmpb	1,s	;cmpqi:(R)
   0CE0 10 2F 00 57   [ 6]  439 	lble	L40
   0CE4 F6 C8 9D      [ 5]  440 	ldb	_player+1
   0CE7 E7 E4         [ 4]  441 	stb	,s
                            442 	; ldb	,s	; optimization 5
   0CE9 CB 0C         [ 2]  443 	addb	#12
   0CEB E7 62         [ 5]  444 	stb	2,s
   0CED E6 66         [ 5]  445 	ldb	6,s
   0CEF 4F            [ 2]  446 	clra		;zero_extendqihi: R:b -> R:d
   0CF0 58            [ 2]  447 	aslb
   0CF1 49            [ 2]  448 	rola
   0CF2 CE 0F B7      [ 3]  449 	ldu	#_rocks
   0CF5 30 CB         [ 8]  450 	leax	d,u
   0CF7 AE 84         [ 5]  451 	ldx	,x
   0CF9 E6 01         [ 5]  452 	ldb	1,x
   0CFB E1 62         [ 5]  453 	cmpb	2,s	;cmpqi:(R)
   0CFD 2C 3C         [ 3]  454 	bge	L40
   0CFF F6 C8 9C      [ 5]  455 	ldb	_player
   0D02 E7 E4         [ 4]  456 	stb	,s
                            457 	; ldb	,s	; optimization 5
   0D04 CB F6         [ 2]  458 	addb	#-10
   0D06 E7 63         [ 5]  459 	stb	3,s
   0D08 E6 66         [ 5]  460 	ldb	6,s
   0D0A 4F            [ 2]  461 	clra		;zero_extendqihi: R:b -> R:d
   0D0B 58            [ 2]  462 	aslb
   0D0C 49            [ 2]  463 	rola
   0D0D CE 0F B7      [ 3]  464 	ldu	#_rocks
   0D10 30 CB         [ 8]  465 	leax	d,u
   0D12 AE 84         [ 5]  466 	ldx	,x
   0D14 E6 84         [ 4]  467 	ldb	,x
   0D16 CB 14         [ 2]  468 	addb	#20
   0D18 E1 63         [ 5]  469 	cmpb	3,s	;cmpqi:(R)
   0D1A 2F 1F         [ 3]  470 	ble	L40
   0D1C F6 C8 9C      [ 5]  471 	ldb	_player
   0D1F E7 E4         [ 4]  472 	stb	,s
                            473 	; ldb	,s	; optimization 5
   0D21 CB 16         [ 2]  474 	addb	#22
   0D23 E7 64         [ 5]  475 	stb	4,s
   0D25 E6 66         [ 5]  476 	ldb	6,s
   0D27 4F            [ 2]  477 	clra		;zero_extendqihi: R:b -> R:d
   0D28 58            [ 2]  478 	aslb
   0D29 49            [ 2]  479 	rola
   0D2A CE 0F B7      [ 3]  480 	ldu	#_rocks
   0D2D 30 CB         [ 8]  481 	leax	d,u
   0D2F AE 84         [ 5]  482 	ldx	,x
   0D31 E6 84         [ 4]  483 	ldb	,x
   0D33 E1 64         [ 5]  484 	cmpb	4,s	;cmpqi:(R)
   0D35 2C 04         [ 3]  485 	bge	L40
   0D37 6F 65         [ 7]  486 	clr	5,s
   0D39 20 0E         [ 3]  487 	bra	L41
   0D3B                     488 L40:
   0D3B 6C 66         [ 7]  489 	inc	6,s
   0D3D                     490 L39:
   0D3D E6 66         [ 5]  491 	ldb	6,s
   0D3F C1 05         [ 2]  492 	cmpb	#5	;cmpqi:
   0D41 10 23 FF 80   [ 6]  493 	lbls	L42
   0D45 C6 01         [ 2]  494 	ldb	#1
   0D47 E7 65         [ 5]  495 	stb	5,s
   0D49                     496 L41:
   0D49 E6 65         [ 5]  497 	ldb	5,s
   0D4B 32 67         [ 5]  498 	leas	7,s
   0D4D 35 C0         [ 7]  499 	puls	u,pc
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 L10                00C3 R   |   2 L11                00D7 R
  2 L12                00FC R   |   2 L13                00F2 R
  2 L15                012B R   |   2 L16                0108 R
  2 L17                0123 R   |   2 L24                0150 R
  2 L25                014E R   |   2 L28                01E6 R
  2 L29                01E4 R   |   2 L30                0162 R
  2 L33                0273 R   |   2 L34                0271 R
  2 L35                027D R   |   2 L36                01FB R
  2 L39                0304 R   |   2 L4                 0077 R
  2 L40                0302 R   |   2 L41                0310 R
  2 L42                028C R   |   2 L5                 009C R
  2 L6                 0092 R   |   2 L8                 00CB R
  2 L9                 00A8 R   |     _Vec_Btn_State     **** GX
    _Vec_Joy_1_X       **** GX  |     _Vec_Joy_1_Y       **** GX
    ___Joy_Digital     **** GX  |     ___Read_Btns       **** GX
  2 _check_enemy_c     01F2 GR  |   2 _check_ether_p     0159 GR
  2 _check_rock_co     0283 GR  |     _crabs             **** GX
  2 _draw_player       013F GR  |     _draw_sprite       **** GX
    _ether             **** GX  |   2 _init_player       0058 GR
  2 _move_player       0066 GR  |   3 _player            0000 GR
    _rocks             **** GX  |   2 _shape_player      0054 GR
  2 _throw_grappli     0146 GR  |   2 _vectors_playe     0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  316   flags  100
   3 .data            size    5   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

