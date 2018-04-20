                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	player.c
                              7 	.globl _vectors_player
                              8 	.area .text
   0605                       9 _vectors_player:
   0605 FF                   10 	.byte	-1
   0606 05                   11 	.byte	5
   0607 0A                   12 	.byte	10
   0608 FF                   13 	.byte	-1
   0609 0A                   14 	.byte	10
   060A 05                   15 	.byte	5
   060B FF                   16 	.byte	-1
   060C 00                   17 	.byte	0
   060D 05                   18 	.byte	5
   060E FF                   19 	.byte	-1
   060F 0F                   20 	.byte	15
   0610 00                   21 	.byte	0
   0611 FF                   22 	.byte	-1
   0612 00                   23 	.byte	0
   0613 FB                   24 	.byte	-5
   0614 FF                   25 	.byte	-1
   0615 0A                   26 	.byte	10
   0616 FB                   27 	.byte	-5
   0617 FF                   28 	.byte	-1
   0618 05                   29 	.byte	5
   0619 F6                   30 	.byte	-10
   061A FF                   31 	.byte	-1
   061B 05                   32 	.byte	5
   061C 00                   33 	.byte	0
   061D FF                   34 	.byte	-1
   061E 00                   35 	.byte	0
   061F F1                   36 	.byte	-15
   0620 FF                   37 	.byte	-1
   0621 FB                   38 	.byte	-5
   0622 00                   39 	.byte	0
   0623 FF                   40 	.byte	-1
   0624 FB                   41 	.byte	-5
   0625 F6                   42 	.byte	-10
   0626 FF                   43 	.byte	-1
   0627 F6                   44 	.byte	-10
   0628 FB                   45 	.byte	-5
   0629 FF                   46 	.byte	-1
   062A 00                   47 	.byte	0
   062B FB                   48 	.byte	-5
   062C FF                   49 	.byte	-1
   062D F1                   50 	.byte	-15
   062E 00                   51 	.byte	0
   062F FF                   52 	.byte	-1
   0630 00                   53 	.byte	0
   0631 05                   54 	.byte	5
   0632 FF                   55 	.byte	-1
   0633 F6                   56 	.byte	-10
   0634 05                   57 	.byte	5
   0635 FF                   58 	.byte	-1
   0636 FB                   59 	.byte	-5
   0637 0A                   60 	.byte	10
   0638 FF                   61 	.byte	-1
   0639 00                   62 	.byte	0
   063A 0F                   63 	.byte	15
   063B 00                   64 	.byte	0
   063C 10                   65 	.byte	16
   063D 02                   66 	.byte	2
   063E FF                   67 	.byte	-1
   063F 0B                   68 	.byte	11
   0640 00                   69 	.byte	0
   0641 FF                   70 	.byte	-1
   0642 04                   71 	.byte	4
   0643 FC                   72 	.byte	-4
   0644 FF                   73 	.byte	-1
   0645 00                   74 	.byte	0
   0646 F5                   75 	.byte	-11
   0647 FF                   76 	.byte	-1
   0648 FC                   77 	.byte	-4
   0649 FC                   78 	.byte	-4
   064A FF                   79 	.byte	-1
   064B F5                   80 	.byte	-11
   064C 00                   81 	.byte	0
   064D FF                   82 	.byte	-1
   064E FC                   83 	.byte	-4
   064F 04                   84 	.byte	4
   0650 FF                   85 	.byte	-1
   0651 00                   86 	.byte	0
   0652 0B                   87 	.byte	11
   0653 FF                   88 	.byte	-1
   0654 04                   89 	.byte	4
   0655 04                   90 	.byte	4
   0656 01                   91 	.byte	1
   0657 00                   92 	.byte	0
   0658 00                   93 	.byte	0
                             94 	.globl _shape_player
   0659                      95 _shape_player:
   0659 00                   96 	.byte	0
   065A 1C                   97 	.byte	28
   065B 06 05                98 	.word	_vectors_player
                             99 	.globl _player
                            100 	.area .data
   C89C                     101 _player:
   C89C 00                  102 	.byte	0
   C89D 00                  103 	.byte	0
   C89E 00                  104 	.byte	0
   C89F 06 59               105 	.word	_shape_player
                            106 	.area .text
                            107 	.globl _init_player
   065D                     108 _init_player:
   065D C6 64         [ 2]  109 	ldb	#100
   065F F7 C8 9C      [ 5]  110 	stb	_player
   0662 7F C8 9D      [ 7]  111 	clr	_player+1
   0665 C6 32         [ 2]  112 	ldb	#50
   0667 F7 C8 9E      [ 5]  113 	stb	_player+2
   066A 39            [ 5]  114 	rts
                            115 	.globl _move_player
   066B                     116 _move_player:
   066B BD 06 DC      [ 8]  117 	jsr	_check_joysticks
   066E BD 06 E0      [ 8]  118 	jsr	_joystick_1_left
   0671 5D            [ 2]  119 	tstb
   0672 27 11         [ 3]  120 	beq	L4
   0674 F6 C8 9D      [ 5]  121 	ldb	_player+1
   0677 C1 88         [ 2]  122 	cmpb	#-120	;cmpqi:
   0679 2D 1F         [ 3]  123 	blt	L6
   067B F6 C8 9D      [ 5]  124 	ldb	_player+1
   067E CB FE         [ 2]  125 	addb	#-2
   0680 F7 C8 9D      [ 5]  126 	stb	_player+1
   0683 20 15         [ 3]  127 	bra	L6
   0685                     128 L4:
   0685 BD 06 F7      [ 8]  129 	jsr	_joystick_1_right
   0688 5D            [ 2]  130 	tstb
   0689 27 0F         [ 3]  131 	beq	L6
   068B F6 C8 9D      [ 5]  132 	ldb	_player+1
   068E C1 7D         [ 2]  133 	cmpb	#125	;cmpqi:
   0690 2E 08         [ 3]  134 	bgt	L6
   0692 F6 C8 9D      [ 5]  135 	ldb	_player+1
   0695 CB 02         [ 2]  136 	addb	#2
   0697 F7 C8 9D      [ 5]  137 	stb	_player+1
   069A                     138 L6:
   069A BD 07 0A      [ 8]  139 	jsr	_joystick_1_up
   069D 5D            [ 2]  140 	tstb
   069E 27 11         [ 3]  141 	beq	L7
   06A0 F6 C8 9C      [ 5]  142 	ldb	_player
   06A3 C1 64         [ 2]  143 	cmpb	#100	;cmpqi:
   06A5 2E 1F         [ 3]  144 	bgt	L9
   06A7 F6 C8 9C      [ 5]  145 	ldb	_player
   06AA CB 02         [ 2]  146 	addb	#2
   06AC F7 C8 9C      [ 5]  147 	stb	_player
   06AF 20 15         [ 3]  148 	bra	L9
   06B1                     149 L7:
   06B1 BD 07 21      [ 8]  150 	jsr	_joystick_1_down
   06B4 5D            [ 2]  151 	tstb
   06B5 27 0F         [ 3]  152 	beq	L9
   06B7 F6 C8 9C      [ 5]  153 	ldb	_player
   06BA C1 82         [ 2]  154 	cmpb	#-126	;cmpqi:
   06BC 2D 08         [ 3]  155 	blt	L9
   06BE F6 C8 9C      [ 5]  156 	ldb	_player
   06C1 CB FE         [ 2]  157 	addb	#-2
   06C3 F7 C8 9C      [ 5]  158 	stb	_player
   06C6                     159 L9:
   06C6 BD 07 34      [ 8]  160 	jsr	_check_buttons
   06C9 BD 07 38      [ 8]  161 	jsr	_button_1_4_held
   06CC 5D            [ 2]  162 	tstb
   06CD 26 03         [ 3]  163 	bne	L10
   06CF BD 07 42      [ 8]  164 	jsr	_button_1_3_held
   06D2                     165 L10:
   06D2 BD 07 48      [ 8]  166 	jsr	_button_1_2_held
   06D5 5D            [ 2]  167 	tstb
   06D6 26 03         [ 3]  168 	bne	L12
   06D8 BD 07 4E      [ 8]  169 	jsr	_button_1_1_held
   06DB                     170 L12:
   06DB 39            [ 5]  171 	rts
   06DC                     172 _check_joysticks:
   06DC BD F1 F8      [ 8]  173 	jsr	___Joy_Digital
   06DF 39            [ 5]  174 	rts
   06E0                     175 _joystick_1_left:
   06E0 32 7F         [ 5]  176 	leas	-1,s
   06E2 BD 06 F3      [ 8]  177 	jsr	_joystick_1_x
   06E5 6F E4         [ 6]  178 	clr	,s
   06E7 5D            [ 2]  179 	tstb
   06E8 2C 04         [ 3]  180 	bge	L16
   06EA C6 01         [ 2]  181 	ldb	#1
   06EC E7 E4         [ 4]  182 	stb	,s
   06EE                     183 L16:
   06EE E6 E4         [ 4]  184 	ldb	,s
   06F0 32 61         [ 5]  185 	leas	1,s
   06F2 39            [ 5]  186 	rts
   06F3                     187 _joystick_1_x:
   06F3 F6 C8 1B      [ 5]  188 	ldb	_Vec_Joy_1_X
   06F6 39            [ 5]  189 	rts
   06F7                     190 _joystick_1_right:
   06F7 32 7F         [ 5]  191 	leas	-1,s
   06F9 BD 06 F3      [ 8]  192 	jsr	_joystick_1_x
   06FC 6F E4         [ 6]  193 	clr	,s
   06FE 5D            [ 2]  194 	tstb
   06FF 2F 04         [ 3]  195 	ble	L21
   0701 C6 01         [ 2]  196 	ldb	#1
   0703 E7 E4         [ 4]  197 	stb	,s
   0705                     198 L21:
   0705 E6 E4         [ 4]  199 	ldb	,s
   0707 32 61         [ 5]  200 	leas	1,s
   0709 39            [ 5]  201 	rts
   070A                     202 _joystick_1_up:
   070A 32 7F         [ 5]  203 	leas	-1,s
   070C BD 07 1D      [ 8]  204 	jsr	_joystick_1_y
   070F 6F E4         [ 6]  205 	clr	,s
   0711 5D            [ 2]  206 	tstb
   0712 2F 04         [ 3]  207 	ble	L24
   0714 C6 01         [ 2]  208 	ldb	#1
   0716 E7 E4         [ 4]  209 	stb	,s
   0718                     210 L24:
   0718 E6 E4         [ 4]  211 	ldb	,s
   071A 32 61         [ 5]  212 	leas	1,s
   071C 39            [ 5]  213 	rts
   071D                     214 _joystick_1_y:
   071D F6 C8 1C      [ 5]  215 	ldb	_Vec_Joy_1_Y
   0720 39            [ 5]  216 	rts
   0721                     217 _joystick_1_down:
   0721 32 7F         [ 5]  218 	leas	-1,s
   0723 BD 07 1D      [ 8]  219 	jsr	_joystick_1_y
   0726 6F E4         [ 6]  220 	clr	,s
   0728 5D            [ 2]  221 	tstb
   0729 2C 04         [ 3]  222 	bge	L29
   072B C6 01         [ 2]  223 	ldb	#1
   072D E7 E4         [ 4]  224 	stb	,s
   072F                     225 L29:
   072F E6 E4         [ 4]  226 	ldb	,s
   0731 32 61         [ 5]  227 	leas	1,s
   0733 39            [ 5]  228 	rts
   0734                     229 _check_buttons:
   0734 BD F1 BA      [ 8]  230 	jsr	___Read_Btns
   0737 39            [ 5]  231 	rts
   0738                     232 _button_1_4_held:
   0738 BD 07 3E      [ 8]  233 	jsr	_buttons_held
   073B C4 08         [ 2]  234 	andb	#8
   073D 39            [ 5]  235 	rts
   073E                     236 _buttons_held:
   073E F6 C8 0F      [ 5]  237 	ldb	_Vec_Btn_State
   0741 39            [ 5]  238 	rts
   0742                     239 _button_1_3_held:
   0742 BD 07 3E      [ 8]  240 	jsr	_buttons_held
   0745 C4 04         [ 2]  241 	andb	#4
   0747 39            [ 5]  242 	rts
   0748                     243 _button_1_2_held:
   0748 BD 07 3E      [ 8]  244 	jsr	_buttons_held
   074B C4 02         [ 2]  245 	andb	#2
   074D 39            [ 5]  246 	rts
   074E                     247 _button_1_1_held:
   074E BD 07 3E      [ 8]  248 	jsr	_buttons_held
   0751 C4 01         [ 2]  249 	andb	#1
   0753 39            [ 5]  250 	rts
                            251 	.globl _draw_player
   0754                     252 _draw_player:
   0754 8E C8 9C      [ 3]  253 	ldx	#_player
   0757 BD 0A 90      [ 8]  254 	jsr	_draw_sprite
   075A 39            [ 5]  255 	rts
                            256 	.globl _check_player
   075B                     257 _check_player:
   075B 34 40         [ 6]  258 	pshs	u
   075D 32 79         [ 5]  259 	leas	-7,s
   075F 6F 66         [ 7]  260 	clr	6,s
   0761 7E 07 D8      [ 4]  261 	jmp	L46
   0764                     262 L49:
   0764 F6 C8 9D      [ 5]  263 	ldb	_player+1
   0767 E7 E4         [ 4]  264 	stb	,s
                            265 	; ldb	,s	; optimization 5
   0769 CB DD         [ 2]  266 	addb	#-35
   076B E7 61         [ 5]  267 	stb	1,s
   076D E6 66         [ 5]  268 	ldb	6,s
   076F 4F            [ 2]  269 	clra		;zero_extendqihi: R:b -> R:d
   0770 58            [ 2]  270 	aslb
   0771 49            [ 2]  271 	rola
   0772 CE 04 10      [ 3]  272 	ldu	#_crabs
   0775 30 CB         [ 8]  273 	leax	d,u
   0777 AE 84         [ 5]  274 	ldx	,x
   0779 E6 01         [ 5]  275 	ldb	1,x
   077B CB 14         [ 2]  276 	addb	#20
   077D E1 61         [ 5]  277 	cmpb	1,s	;cmpqi:(R)
   077F 10 2F 00 53   [ 6]  278 	lble	L47
   0783 F6 C8 9D      [ 5]  279 	ldb	_player+1
   0786 E7 E4         [ 4]  280 	stb	,s
                            281 	; ldb	,s	; optimization 5
   0788 CB 14         [ 2]  282 	addb	#20
   078A E7 62         [ 5]  283 	stb	2,s
   078C E6 66         [ 5]  284 	ldb	6,s
   078E 4F            [ 2]  285 	clra		;zero_extendqihi: R:b -> R:d
   078F 58            [ 2]  286 	aslb
   0790 49            [ 2]  287 	rola
   0791 CE 04 10      [ 3]  288 	ldu	#_crabs
   0794 30 CB         [ 8]  289 	leax	d,u
   0796 AE 84         [ 5]  290 	ldx	,x
   0798 E6 01         [ 5]  291 	ldb	1,x
   079A E1 62         [ 5]  292 	cmpb	2,s	;cmpqi:(R)
   079C 2C 38         [ 3]  293 	bge	L47
   079E F6 C8 9C      [ 5]  294 	ldb	_player
   07A1 E7 63         [ 5]  295 	stb	3,s
   07A3 E6 66         [ 5]  296 	ldb	6,s
   07A5 4F            [ 2]  297 	clra		;zero_extendqihi: R:b -> R:d
   07A6 58            [ 2]  298 	aslb
   07A7 49            [ 2]  299 	rola
   07A8 CE 04 10      [ 3]  300 	ldu	#_crabs
   07AB 30 CB         [ 8]  301 	leax	d,u
   07AD AE 84         [ 5]  302 	ldx	,x
   07AF E6 84         [ 4]  303 	ldb	,x
   07B1 CB 14         [ 2]  304 	addb	#20
   07B3 E1 63         [ 5]  305 	cmpb	3,s	;cmpqi:(R)
   07B5 2F 1F         [ 3]  306 	ble	L47
   07B7 F6 C8 9C      [ 5]  307 	ldb	_player
   07BA E7 E4         [ 4]  308 	stb	,s
                            309 	; ldb	,s	; optimization 5
   07BC CB 32         [ 2]  310 	addb	#50
   07BE E7 64         [ 5]  311 	stb	4,s
   07C0 E6 66         [ 5]  312 	ldb	6,s
   07C2 4F            [ 2]  313 	clra		;zero_extendqihi: R:b -> R:d
   07C3 58            [ 2]  314 	aslb
   07C4 49            [ 2]  315 	rola
   07C5 CE 04 10      [ 3]  316 	ldu	#_crabs
   07C8 30 CB         [ 8]  317 	leax	d,u
   07CA AE 84         [ 5]  318 	ldx	,x
   07CC E6 84         [ 4]  319 	ldb	,x
   07CE E1 64         [ 5]  320 	cmpb	4,s	;cmpqi:(R)
   07D0 2C 04         [ 3]  321 	bge	L47
   07D2 6F 65         [ 7]  322 	clr	5,s
   07D4 20 0C         [ 3]  323 	bra	L48
   07D6                     324 L47:
   07D6 6C 66         [ 7]  325 	inc	6,s
   07D8                     326 L46:
   07D8 6D 66         [ 7]  327 	tst	6,s
   07DA 10 27 FF 86   [ 6]  328 	lbeq	L49
   07DE C6 01         [ 2]  329 	ldb	#1
   07E0 E7 65         [ 5]  330 	stb	5,s
   07E2                     331 L48:
   07E2 E6 65         [ 5]  332 	ldb	5,s
   07E4 32 67         [ 5]  333 	leas	7,s
   07E6 35 C0         [ 7]  334 	puls	u,pc
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
  2 L10                00CD R   |   2 L12                00D6 R
  2 L16                00E9 R   |   2 L21                0100 R
  2 L24                0113 R   |   2 L29                012A R
  2 L4                 0080 R   |   2 L46                01D3 R
  2 L47                01D1 R   |   2 L48                01DD R
  2 L49                015F R   |   2 L6                 0095 R
  2 L7                 00AC R   |   2 L9                 00C1 R
    _Vec_Btn_State     **** GX  |     _Vec_Joy_1_X       **** GX
    _Vec_Joy_1_Y       **** GX  |     ___Joy_Digital     **** GX
    ___Read_Btns       **** GX  |   2 _button_1_1_he     0149 R
  2 _button_1_2_he     0143 R   |   2 _button_1_3_he     013D R
  2 _button_1_4_he     0133 R   |   2 _buttons_held      0139 R
  2 _check_buttons     012F R   |   2 _check_joystic     00D7 R
  2 _check_player      0156 GR  |     _crabs             **** GX
  2 _draw_player       014F GR  |     _draw_sprite       **** GX
  2 _init_player       0058 GR  |   2 _joystick_1_do     011C R
  2 _joystick_1_le     00DB R   |   2 _joystick_1_ri     00F2 R
  2 _joystick_1_up     0105 R   |   2 _joystick_1_x      00EE R
  2 _joystick_1_y      0118 R   |   2 _move_player       0066 GR
  3 _player            0000 GR  |   2 _shape_player      0054 GR
  2 _vectors_playe     0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .text            size  1E3   flags  100
   3 .data            size    5   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

