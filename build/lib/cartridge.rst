                              1 
                              2 ;;; gcc for m6809 : Feb 15 2016 21:40:10
                              3 ;;; 4.3.6 (gcc6809)
                              4 ;;; ABI version 1
                              5 ;;; -mint8
                              6 	.module	cartridge.c
                              7 	.globl _game_header
                              8 	.area	.cartridge
   0000                       9 _game_header:
   0000 67                   10 	.byte	0x67
   0001 20                   11 	.byte	0x20
   0002 47                   12 	.byte	0x47
   0003 43                   13 	.byte	0x43
   0004 45                   14 	.byte	0x45
   0005 20                   15 	.byte	0x20
   0006 32                   16 	.byte	0x32
   0007 30                   17 	.byte	0x30
   0008 31                   18 	.byte	0x31
   0009 38                   19 	.byte	0x38
   000A 80                   20 	.byte	0x80
   000B FF 44                21 	.word	_Vec_Music_a
   000D F8                   22 	.byte	-8
   000E 50                   23 	.byte	80
   000F 10                   24 	.byte	16
   0010 A6                   25 	.byte	-90
   0011 54                   26 	.byte	0x54
   0012 52                   27 	.byte	0x52
   0013 45                   28 	.byte	0x45
   0014 41                   29 	.byte	0x41
   0015 53                   30 	.byte	0x53
   0016 55                   31 	.byte	0x55
   0017 52                   32 	.byte	0x52
   0018 45                   33 	.byte	0x45
   0019 20                   34 	.byte	0x20
   001A 44                   35 	.byte	0x44
   001B 49                   36 	.byte	0x49
   001C 56                   37 	.byte	0x56
   001D 45                   38 	.byte	0x45
   001E 52                   39 	.byte	0x52
   001F 80                   40 	.byte	0x80
   0020 00                   41 	.byte	0x00
ASxxxx Assembler V05.00  (Motorola 6809), page 1.
Hexidecimal [16-Bits]

Symbol Table

    .__.$$$.       =   2710 L   |     .__.ABS.       =   0000 G
    .__.CPU.       =   0000 L   |     .__.H$L.       =   0001 L
    _Vec_Music_a       **** GX  |   2 _game_header       0000 GR

ASxxxx Assembler V05.00  (Motorola 6809), page 2.
Hexidecimal [16-Bits]

Area Table

[_CSEG]
   0 _CODE            size    0   flags C080
   2 .cartridge       size   21   flags  100
[_DSEG]
   1 _DATA            size    0   flags C0C0

