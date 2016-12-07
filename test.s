   1              		.syntax unified
   2              		.arch armv6-m
   3              		.fpu softvfp
   4              		.eabi_attribute 20, 1
   5              		.eabi_attribute 21, 1
   6              		.eabi_attribute 23, 3
   7              		.eabi_attribute 24, 1
   8              		.eabi_attribute 25, 1
   9              		.eabi_attribute 26, 1
  10              		.eabi_attribute 30, 6
  11              		.eabi_attribute 34, 0
  12              		.eabi_attribute 18, 4
  13              		.thumb
  14              		.syntax unified
  15              		.file	"startup.c"
  16              		.text
  17              	.Ltext0:
  18              		.cfi_sections	.debug_frame
  19              		.section	.start_section,"ax",%progbits
  20              		.align	2
  21              		.global	startup
  22              		.code	16
  23              		.thumb_func
  25              	startup:
  26              	.LFB0:
  27              		.file 1 "X:/C/graphics/startup.c"
   1:X:/C/graphics\startup.c **** /*
   2:X:/C/graphics\startup.c ****  * 	startup.c
   3:X:/C/graphics\startup.c ****  *
   4:X:/C/graphics\startup.c ****  */
   5:X:/C/graphics\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:X:/C/graphics\startup.c **** 
   7:X:/C/graphics\startup.c **** void startup ( void )
   8:X:/C/graphics\startup.c **** {
  28              		.loc 1 8 0
  29              		.cfi_startproc
   9:X:/C/graphics\startup.c **** asm volatile(
  30              		.loc 1 9 0
  31              		.syntax divided
  32              	@ 9 "X:/C/graphics/startup.c" 1
  33 0000 0248     		 LDR R0,=0x2001C000
  34 0002 8546     	 MOV SP,R0
  35 0004 FFF7FEFF 	 BL main
  36 0008 FEE7     	.L1: B .L1
  37              	
  38              	@ 0 "" 2
  10:X:/C/graphics\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  11:X:/C/graphics\startup.c **** 	" MOV SP,R0\n"
  12:X:/C/graphics\startup.c **** 	" BL main\n"				/* call main */
  13:X:/C/graphics\startup.c **** 	".L1: B .L1\n"				/* never return */
  14:X:/C/graphics\startup.c **** 	) ;
  15:X:/C/graphics\startup.c **** }
  39              		.loc 1 15 0
  40              		.thumb
  41              		.syntax unified
  42 000a C046     		nop
  43              		.cfi_endproc
  44              	.LFE0:
  46              		.global	d
  47              		.data
  48              		.align	2
  51              	d:
  52 0000 000C0240 		.word	1073875968
  53              		.global	e
  54              		.align	2
  57              	e:
  58 0004 00100240 		.word	1073876992
  59              		.global	sys_tick
  60              		.align	2
  63              	sys_tick:
  64 0008 10E000E0 		.word	-536813552
  65              		.global	B_CS1
  68              	B_CS1:
  69 000c 08       		.byte	8
  70              		.global	B_CS2
  73              	B_CS2:
  74 000d 10       		.byte	16
  75              		.global	B_RST
  78              	B_RST:
  79 000e 20       		.byte	32
  80              		.global	LCD_OFF
  83              	LCD_OFF:
  84 000f 3E       		.byte	62
  85              		.global	LCD_ON
  88              	LCD_ON:
  89 0010 1F       		.byte	31
  90              		.global	LCD_SET_ADD
  93              	LCD_SET_ADD:
  94 0011 40       		.byte	64
  95              		.global	LCD_SET_PAGE
  98              	LCD_SET_PAGE:
  99 0012 B8       		.byte	-72
 100              		.global	LCD_DISP_START
 103              	LCD_DISP_START:
 104 0013 C0       		.byte	-64
 105              		.global	LCD_BUSY
 108              	LCD_BUSY:
 109 0014 80       		.byte	-128
 110              		.text
 111              		.align	2
 112              		.global	delay250xns
 113              		.code	16
 114              		.thumb_func
 116              	delay250xns:
 117              	.LFB1:
  16:X:/C/graphics\startup.c **** 
  17:X:/C/graphics\startup.c **** #define FORI(limit)for(int i = 0; i < limit; i++)
  18:X:/C/graphics\startup.c **** #define MAX_POINTS 20
  19:X:/C/graphics\startup.c **** 
  20:X:/C/graphics\startup.c **** typedef unsigned char  u8;
  21:X:/C/graphics\startup.c **** typedef unsigned short u16;
  22:X:/C/graphics\startup.c **** typedef unsigned long  u32;
  23:X:/C/graphics\startup.c **** typedef signed char    s8;
  24:X:/C/graphics\startup.c **** typedef signed short   s16 ;
  25:X:/C/graphics\startup.c **** typedef signed long    s32 ;
  26:X:/C/graphics\startup.c **** 
  27:X:/C/graphics\startup.c **** typedef enum{
  28:X:/C/graphics\startup.c ****     false = 0,
  29:X:/C/graphics\startup.c ****     true = 1,
  30:X:/C/graphics\startup.c **** }bool;
  31:X:/C/graphics\startup.c **** 
  32:X:/C/graphics\startup.c **** typedef struct
  33:X:/C/graphics\startup.c **** {
  34:X:/C/graphics\startup.c ****     volatile u32 MODER;
  35:X:/C/graphics\startup.c ****     volatile u32 OTYPER;
  36:X:/C/graphics\startup.c ****     volatile u32 OSPEEDER;
  37:X:/C/graphics\startup.c ****     volatile u32 PUPDR;
  38:X:/C/graphics\startup.c ****     volatile u32 IDR;
  39:X:/C/graphics\startup.c ****     volatile u32 ODR;
  40:X:/C/graphics\startup.c ****     volatile u32 BSRR;
  41:X:/C/graphics\startup.c ****     volatile u32 LCKR;
  42:X:/C/graphics\startup.c ****     volatile u32 AFRL;
  43:X:/C/graphics\startup.c ****     volatile u32 AFRH;
  44:X:/C/graphics\startup.c **** } GPIO_REG;
  45:X:/C/graphics\startup.c **** 
  46:X:/C/graphics\startup.c **** typedef struct
  47:X:/C/graphics\startup.c **** {
  48:X:/C/graphics\startup.c ****     volatile u32 STK_CTRL;
  49:X:/C/graphics\startup.c ****     volatile u32 STK_LOAD;
  50:X:/C/graphics\startup.c ****     volatile u32 STK_VAL;
  51:X:/C/graphics\startup.c ****     volatile u32 STK_CALIB;
  52:X:/C/graphics\startup.c **** } SysTick;
  53:X:/C/graphics\startup.c **** 
  54:X:/C/graphics\startup.c **** 
  55:X:/C/graphics\startup.c **** typedef unsigned char uint8_t;
  56:X:/C/graphics\startup.c **** 
  57:X:/C/graphics\startup.c **** GPIO_REG *d = (GPIO_REG *)0x40020C00;
  58:X:/C/graphics\startup.c **** GPIO_REG *e = (GPIO_REG *)0x40021000;
  59:X:/C/graphics\startup.c **** SysTick *sys_tick = (SysTick *)0xe000e010;
  60:X:/C/graphics\startup.c **** 
  61:X:/C/graphics\startup.c **** uint8_t B_CS1 = 0x8;
  62:X:/C/graphics\startup.c **** uint8_t	B_CS2 = 0x10;
  63:X:/C/graphics\startup.c **** uint8_t B_RST = 0x20;
  64:X:/C/graphics\startup.c **** 
  65:X:/C/graphics\startup.c **** uint8_t LCD_OFF = 0b00111110;
  66:X:/C/graphics\startup.c **** uint8_t LCD_ON = 0b00011111;
  67:X:/C/graphics\startup.c **** uint8_t LCD_SET_ADD = 0b01000000;
  68:X:/C/graphics\startup.c **** uint8_t LCD_SET_PAGE = 0b010111000;
  69:X:/C/graphics\startup.c **** uint8_t LCD_DISP_START =  0b11000000;
  70:X:/C/graphics\startup.c **** uint8_t LCD_BUSY = 0b10000000;
  71:X:/C/graphics\startup.c **** 
  72:X:/C/graphics\startup.c **** #define SIMULATOR
  73:X:/C/graphics\startup.c **** void delay250xns(u32 num)
  74:X:/C/graphics\startup.c **** {
 118              		.loc 1 74 0
 119              		.cfi_startproc
 120 0000 80B5     		push	{r7, lr}
 121              		.cfi_def_cfa_offset 8
 122              		.cfi_offset 7, -8
 123              		.cfi_offset 14, -4
 124 0002 82B0     		sub	sp, sp, #8
 125              		.cfi_def_cfa_offset 16
 126 0004 00AF     		add	r7, sp, #0
 127              		.cfi_def_cfa_register 7
 128 0006 7860     		str	r0, [r7, #4]
  75:X:/C/graphics\startup.c ****     #ifndef SIMULATOR
  76:X:/C/graphics\startup.c ****     sys_tick->STK_CTRL = 0;
  77:X:/C/graphics\startup.c ****     sys_tick->STK_LOAD = num*168/4-1;
  78:X:/C/graphics\startup.c ****     sys_tick->STK_VAL = 0;
  79:X:/C/graphics\startup.c ****     sys_tick->STK_CTRL = 5;
  80:X:/C/graphics\startup.c ****     while(!(sys_tick->STK_CTRL & 0x10000));
  81:X:/C/graphics\startup.c ****     sys_tick->STK_CTRL = 0;
  82:X:/C/graphics\startup.c ****     #endif
  83:X:/C/graphics\startup.c **** }
 129              		.loc 1 83 0
 130 0008 C046     		nop
 131 000a BD46     		mov	sp, r7
 132 000c 02B0     		add	sp, sp, #8
 133              		@ sp needed
 134 000e 80BD     		pop	{r7, pc}
 135              		.cfi_endproc
 136              	.LFE1:
 138              		.align	2
 139              		.global	delay250ns
 140              		.code	16
 141              		.thumb_func
 143              	delay250ns:
 144              	.LFB2:
  84:X:/C/graphics\startup.c **** 
  85:X:/C/graphics\startup.c **** void delay250ns(void)
  86:X:/C/graphics\startup.c **** {
 145              		.loc 1 86 0
 146              		.cfi_startproc
 147 0010 80B5     		push	{r7, lr}
 148              		.cfi_def_cfa_offset 8
 149              		.cfi_offset 7, -8
 150              		.cfi_offset 14, -4
 151 0012 00AF     		add	r7, sp, #0
 152              		.cfi_def_cfa_register 7
  87:X:/C/graphics\startup.c ****     delay250xns(1);
 153              		.loc 1 87 0
 154 0014 0120     		movs	r0, #1
 155 0016 FFF7FEFF 		bl	delay250xns
  88:X:/C/graphics\startup.c **** }
 156              		.loc 1 88 0
 157 001a C046     		nop
 158 001c BD46     		mov	sp, r7
 159              		@ sp needed
 160 001e 80BD     		pop	{r7, pc}
 161              		.cfi_endproc
 162              	.LFE2:
 164              		.align	2
 165              		.global	delay500ns
 166              		.code	16
 167              		.thumb_func
 169              	delay500ns:
 170              	.LFB3:
  89:X:/C/graphics\startup.c **** 
  90:X:/C/graphics\startup.c **** void delay500ns(void)
  91:X:/C/graphics\startup.c **** {
 171              		.loc 1 91 0
 172              		.cfi_startproc
 173 0020 80B5     		push	{r7, lr}
 174              		.cfi_def_cfa_offset 8
 175              		.cfi_offset 7, -8
 176              		.cfi_offset 14, -4
 177 0022 00AF     		add	r7, sp, #0
 178              		.cfi_def_cfa_register 7
  92:X:/C/graphics\startup.c ****     delay250xns(2);
 179              		.loc 1 92 0
 180 0024 0220     		movs	r0, #2
 181 0026 FFF7FEFF 		bl	delay250xns
  93:X:/C/graphics\startup.c **** }
 182              		.loc 1 93 0
 183 002a C046     		nop
 184 002c BD46     		mov	sp, r7
 185              		@ sp needed
 186 002e 80BD     		pop	{r7, pc}
 187              		.cfi_endproc
 188              	.LFE3:
 190              		.align	2
 191              		.global	delay_micro
 192              		.code	16
 193              		.thumb_func
 195              	delay_micro:
 196              	.LFB4:
  94:X:/C/graphics\startup.c **** 
  95:X:/C/graphics\startup.c **** void delay_micro(u32 num)
  96:X:/C/graphics\startup.c **** {
 197              		.loc 1 96 0
 198              		.cfi_startproc
 199 0030 80B5     		push	{r7, lr}
 200              		.cfi_def_cfa_offset 8
 201              		.cfi_offset 7, -8
 202              		.cfi_offset 14, -4
 203 0032 82B0     		sub	sp, sp, #8
 204              		.cfi_def_cfa_offset 16
 205 0034 00AF     		add	r7, sp, #0
 206              		.cfi_def_cfa_register 7
 207 0036 7860     		str	r0, [r7, #4]
  97:X:/C/graphics\startup.c **** 
  98:X:/C/graphics\startup.c ****     delay250xns(4*num);
 208              		.loc 1 98 0
 209 0038 7B68     		ldr	r3, [r7, #4]
 210 003a 9B00     		lsls	r3, r3, #2
 211 003c 1800     		movs	r0, r3
 212 003e FFF7FEFF 		bl	delay250xns
  99:X:/C/graphics\startup.c **** }
 213              		.loc 1 99 0
 214 0042 C046     		nop
 215 0044 BD46     		mov	sp, r7
 216 0046 02B0     		add	sp, sp, #8
 217              		@ sp needed
 218 0048 80BD     		pop	{r7, pc}
 219              		.cfi_endproc
 220              	.LFE4:
 222 004a C046     		.align	2
 223              		.global	delay_milli
 224              		.code	16
 225              		.thumb_func
 227              	delay_milli:
 228              	.LFB5:
 100:X:/C/graphics\startup.c **** 
 101:X:/C/graphics\startup.c **** void delay_milli(u32 num)
 102:X:/C/graphics\startup.c **** {
 229              		.loc 1 102 0
 230              		.cfi_startproc
 231 004c 80B5     		push	{r7, lr}
 232              		.cfi_def_cfa_offset 8
 233              		.cfi_offset 7, -8
 234              		.cfi_offset 14, -4
 235 004e 84B0     		sub	sp, sp, #16
 236              		.cfi_def_cfa_offset 24
 237 0050 00AF     		add	r7, sp, #0
 238              		.cfi_def_cfa_register 7
 239 0052 7860     		str	r0, [r7, #4]
 240              	.LBB2:
 103:X:/C/graphics\startup.c ****     for(int i = 0;i<num;i++)
 241              		.loc 1 103 0
 242 0054 0023     		movs	r3, #0
 243 0056 FB60     		str	r3, [r7, #12]
 244 0058 07E0     		b	.L7
 245              	.L8:
 104:X:/C/graphics\startup.c ****     {
 105:X:/C/graphics\startup.c ****         delay_micro(1000);
 246              		.loc 1 105 0 discriminator 3
 247 005a FA23     		movs	r3, #250
 248 005c 9B00     		lsls	r3, r3, #2
 249 005e 1800     		movs	r0, r3
 250 0060 FFF7FEFF 		bl	delay_micro
 103:X:/C/graphics\startup.c ****     for(int i = 0;i<num;i++)
 251              		.loc 1 103 0 discriminator 3
 252 0064 FB68     		ldr	r3, [r7, #12]
 253 0066 0133     		adds	r3, r3, #1
 254 0068 FB60     		str	r3, [r7, #12]
 255              	.L7:
 103:X:/C/graphics\startup.c ****     for(int i = 0;i<num;i++)
 256              		.loc 1 103 0 is_stmt 0 discriminator 1
 257 006a FA68     		ldr	r2, [r7, #12]
 258 006c 7B68     		ldr	r3, [r7, #4]
 259 006e 9A42     		cmp	r2, r3
 260 0070 F3D3     		bcc	.L8
 261              	.LBE2:
 106:X:/C/graphics\startup.c ****     }
 107:X:/C/graphics\startup.c **** }
 262              		.loc 1 107 0 is_stmt 1
 263 0072 C046     		nop
 264 0074 BD46     		mov	sp, r7
 265 0076 04B0     		add	sp, sp, #16
 266              		@ sp needed
 267 0078 80BD     		pop	{r7, pc}
 268              		.cfi_endproc
 269              	.LFE5:
 271              		.global	bit_E
 272              		.data
 275              	bit_E:
 276 0015 40       		.byte	64
 277              		.global	bit_SELECT
 280              	bit_SELECT:
 281 0016 04       		.byte	4
 282              		.global	bit_RW
 285              	bit_RW:
 286 0017 02       		.byte	2
 287              		.global	bit_RS
 290              	bit_RS:
 291 0018 01       		.byte	1
 292              		.text
 293 007a C046     		.align	2
 294              		.global	ascii_set_bit
 295              		.code	16
 296              		.thumb_func
 298              	ascii_set_bit:
 299              	.LFB6:
 108:X:/C/graphics\startup.c **** 
 109:X:/C/graphics\startup.c **** u8 bit_E = 0b01000000;
 110:X:/C/graphics\startup.c **** u8 bit_SELECT = 0b100;
 111:X:/C/graphics\startup.c **** u8 bit_RW = 0b10;
 112:X:/C/graphics\startup.c **** u8 bit_RS = 0b1;
 113:X:/C/graphics\startup.c **** 
 114:X:/C/graphics\startup.c **** void ascii_set_bit(u8 byte)
 115:X:/C/graphics\startup.c **** {
 300              		.loc 1 115 0
 301              		.cfi_startproc
 302 007c 80B5     		push	{r7, lr}
 303              		.cfi_def_cfa_offset 8
 304              		.cfi_offset 7, -8
 305              		.cfi_offset 14, -4
 306 007e 82B0     		sub	sp, sp, #8
 307              		.cfi_def_cfa_offset 16
 308 0080 00AF     		add	r7, sp, #0
 309              		.cfi_def_cfa_register 7
 310 0082 0200     		movs	r2, r0
 311 0084 FB1D     		adds	r3, r7, #7
 312 0086 1A70     		strb	r2, [r3]
 116:X:/C/graphics\startup.c ****     e->ODR |= byte & 0b1111111111111011;
 313              		.loc 1 116 0
 314 0088 074B     		ldr	r3, .L10
 315 008a 1B68     		ldr	r3, [r3]
 316 008c 064A     		ldr	r2, .L10
 317 008e 1268     		ldr	r2, [r2]
 318 0090 5169     		ldr	r1, [r2, #20]
 319 0092 FA1D     		adds	r2, r7, #7
 320 0094 1278     		ldrb	r2, [r2]
 321 0096 0548     		ldr	r0, .L10+4
 322 0098 0240     		ands	r2, r0
 323 009a 0A43     		orrs	r2, r1
 324 009c 5A61     		str	r2, [r3, #20]
 117:X:/C/graphics\startup.c **** }
 325              		.loc 1 117 0
 326 009e C046     		nop
 327 00a0 BD46     		mov	sp, r7
 328 00a2 02B0     		add	sp, sp, #8
 329              		@ sp needed
 330 00a4 80BD     		pop	{r7, pc}
 331              	.L11:
 332 00a6 C046     		.align	2
 333              	.L10:
 334 00a8 00000000 		.word	e
 335 00ac FBFF0000 		.word	65531
 336              		.cfi_endproc
 337              	.LFE6:
 339              		.align	2
 340              		.global	ascii_clear_bit
 341              		.code	16
 342              		.thumb_func
 344              	ascii_clear_bit:
 345              	.LFB7:
 118:X:/C/graphics\startup.c **** 
 119:X:/C/graphics\startup.c **** void ascii_clear_bit(u8 byte)
 120:X:/C/graphics\startup.c **** {
 346              		.loc 1 120 0
 347              		.cfi_startproc
 348 00b0 80B5     		push	{r7, lr}
 349              		.cfi_def_cfa_offset 8
 350              		.cfi_offset 7, -8
 351              		.cfi_offset 14, -4
 352 00b2 82B0     		sub	sp, sp, #8
 353              		.cfi_def_cfa_offset 16
 354 00b4 00AF     		add	r7, sp, #0
 355              		.cfi_def_cfa_register 7
 356 00b6 0200     		movs	r2, r0
 357 00b8 FB1D     		adds	r3, r7, #7
 358 00ba 1A70     		strb	r2, [r3]
 121:X:/C/graphics\startup.c ****     //e->ODR &= 0xff0|~byte;
 122:X:/C/graphics\startup.c **** 	e->ODR &= 0xffff-byte;
 359              		.loc 1 122 0
 360 00bc 0B4B     		ldr	r3, .L13
 361 00be 1B68     		ldr	r3, [r3]
 362 00c0 0A4A     		ldr	r2, .L13
 363 00c2 1268     		ldr	r2, [r2]
 364 00c4 5269     		ldr	r2, [r2, #20]
 365 00c6 F91D     		adds	r1, r7, #7
 366 00c8 0978     		ldrb	r1, [r1]
 367 00ca 0948     		ldr	r0, .L13+4
 368 00cc 411A     		subs	r1, r0, r1
 369 00ce 0A40     		ands	r2, r1
 370 00d0 5A61     		str	r2, [r3, #20]
 123:X:/C/graphics\startup.c **** 	e->ODR &= 0b1111111111111011; //reset bit clear
 371              		.loc 1 123 0
 372 00d2 064B     		ldr	r3, .L13
 373 00d4 1B68     		ldr	r3, [r3]
 374 00d6 054A     		ldr	r2, .L13
 375 00d8 1268     		ldr	r2, [r2]
 376 00da 5269     		ldr	r2, [r2, #20]
 377 00dc 0549     		ldr	r1, .L13+8
 378 00de 0A40     		ands	r2, r1
 379 00e0 5A61     		str	r2, [r3, #20]
 124:X:/C/graphics\startup.c **** }
 380              		.loc 1 124 0
 381 00e2 C046     		nop
 382 00e4 BD46     		mov	sp, r7
 383 00e6 02B0     		add	sp, sp, #8
 384              		@ sp needed
 385 00e8 80BD     		pop	{r7, pc}
 386              	.L14:
 387 00ea C046     		.align	2
 388              	.L13:
 389 00ec 00000000 		.word	e
 390 00f0 FFFF0000 		.word	65535
 391 00f4 FBFF0000 		.word	65531
 392              		.cfi_endproc
 393              	.LFE7:
 395              		.align	2
 396              		.global	select_controller
 397              		.code	16
 398              		.thumb_func
 400              	select_controller:
 401              	.LFB8:
 125:X:/C/graphics\startup.c **** 
 126:X:/C/graphics\startup.c **** void select_controller(uint8_t controller)
 127:X:/C/graphics\startup.c **** {
 402              		.loc 1 127 0
 403              		.cfi_startproc
 404 00f8 80B5     		push	{r7, lr}
 405              		.cfi_def_cfa_offset 8
 406              		.cfi_offset 7, -8
 407              		.cfi_offset 14, -4
 408 00fa 82B0     		sub	sp, sp, #8
 409              		.cfi_def_cfa_offset 16
 410 00fc 00AF     		add	r7, sp, #0
 411              		.cfi_def_cfa_register 7
 412 00fe 0200     		movs	r2, r0
 413 0100 FB1D     		adds	r3, r7, #7
 414 0102 1A70     		strb	r2, [r3]
 128:X:/C/graphics\startup.c **** 	e->ODR &= 0b1111111111100011;
 415              		.loc 1 128 0
 416 0104 0A4B     		ldr	r3, .L16
 417 0106 1B68     		ldr	r3, [r3]
 418 0108 094A     		ldr	r2, .L16
 419 010a 1268     		ldr	r2, [r2]
 420 010c 5269     		ldr	r2, [r2, #20]
 421 010e 0949     		ldr	r1, .L16+4
 422 0110 0A40     		ands	r2, r1
 423 0112 5A61     		str	r2, [r3, #20]
 129:X:/C/graphics\startup.c ****     e->ODR |= controller;
 424              		.loc 1 129 0
 425 0114 064B     		ldr	r3, .L16
 426 0116 1B68     		ldr	r3, [r3]
 427 0118 054A     		ldr	r2, .L16
 428 011a 1268     		ldr	r2, [r2]
 429 011c 5169     		ldr	r1, [r2, #20]
 430 011e FA1D     		adds	r2, r7, #7
 431 0120 1278     		ldrb	r2, [r2]
 432 0122 0A43     		orrs	r2, r1
 433 0124 5A61     		str	r2, [r3, #20]
 130:X:/C/graphics\startup.c **** 	//scii_clear_bit(bit_SELECT | B_CS1 | B_CS2);
 131:X:/C/graphics\startup.c **** }
 434              		.loc 1 131 0
 435 0126 C046     		nop
 436 0128 BD46     		mov	sp, r7
 437 012a 02B0     		add	sp, sp, #8
 438              		@ sp needed
 439 012c 80BD     		pop	{r7, pc}
 440              	.L17:
 441 012e C046     		.align	2
 442              	.L16:
 443 0130 00000000 		.word	e
 444 0134 E3FF0000 		.word	65507
 445              		.cfi_endproc
 446              	.LFE8:
 448              		.align	2
 449              		.global	graphics_wait_ready
 450              		.code	16
 451              		.thumb_func
 453              	graphics_wait_ready:
 454              	.LFB9:
 132:X:/C/graphics\startup.c **** 
 133:X:/C/graphics\startup.c **** void graphics_wait_ready()
 134:X:/C/graphics\startup.c **** {
 455              		.loc 1 134 0
 456              		.cfi_startproc
 457 0138 80B5     		push	{r7, lr}
 458              		.cfi_def_cfa_offset 8
 459              		.cfi_offset 7, -8
 460              		.cfi_offset 14, -4
 461 013a 82B0     		sub	sp, sp, #8
 462              		.cfi_def_cfa_offset 16
 463 013c 00AF     		add	r7, sp, #0
 464              		.cfi_def_cfa_register 7
 135:X:/C/graphics\startup.c **** 	ascii_clear_bit(bit_E); //ascii_clear_bit(B_E | B_RS); possible?
 465              		.loc 1 135 0
 466 013e 244B     		ldr	r3, .L22
 467 0140 1B78     		ldrb	r3, [r3]
 468 0142 1800     		movs	r0, r3
 469 0144 FFF7FEFF 		bl	ascii_clear_bit
 136:X:/C/graphics\startup.c **** 	e->MODER = 0x00005555;
 470              		.loc 1 136 0
 471 0148 224B     		ldr	r3, .L22+4
 472 014a 1B68     		ldr	r3, [r3]
 473 014c 224A     		ldr	r2, .L22+8
 474 014e 1A60     		str	r2, [r3]
 137:X:/C/graphics\startup.c **** 	ascii_clear_bit(bit_RS);
 475              		.loc 1 137 0
 476 0150 224B     		ldr	r3, .L22+12
 477 0152 1B78     		ldrb	r3, [r3]
 478 0154 1800     		movs	r0, r3
 479 0156 FFF7FEFF 		bl	ascii_clear_bit
 138:X:/C/graphics\startup.c **** 	delay500ns();
 480              		.loc 1 138 0
 481 015a FFF7FEFF 		bl	delay500ns
 139:X:/C/graphics\startup.c **** 	
 140:X:/C/graphics\startup.c **** 	bool done = false;
 482              		.loc 1 140 0
 483 015e FB1D     		adds	r3, r7, #7
 484 0160 0022     		movs	r2, #0
 485 0162 1A70     		strb	r2, [r3]
 141:X:/C/graphics\startup.c **** 	
 142:X:/C/graphics\startup.c **** 	while(!done)
 486              		.loc 1 142 0
 487 0164 22E0     		b	.L19
 488              	.L21:
 489              	.LBB3:
 143:X:/C/graphics\startup.c **** 	{
 144:X:/C/graphics\startup.c **** 		ascii_set_bit(bit_E);
 490              		.loc 1 144 0
 491 0166 1A4B     		ldr	r3, .L22
 492 0168 1B78     		ldrb	r3, [r3]
 493 016a 1800     		movs	r0, r3
 494 016c FFF7FEFF 		bl	ascii_set_bit
 145:X:/C/graphics\startup.c **** 		delay500ns();
 495              		.loc 1 145 0
 496 0170 FFF7FEFF 		bl	delay500ns
 146:X:/C/graphics\startup.c **** 		ascii_clear_bit(bit_E);
 497              		.loc 1 146 0
 498 0174 164B     		ldr	r3, .L22
 499 0176 1B78     		ldrb	r3, [r3]
 500 0178 1800     		movs	r0, r3
 501 017a FFF7FEFF 		bl	ascii_clear_bit
 147:X:/C/graphics\startup.c **** 		ascii_set_bit(bit_RW);
 502              		.loc 1 147 0
 503 017e 184B     		ldr	r3, .L22+16
 504 0180 1B78     		ldrb	r3, [r3]
 505 0182 1800     		movs	r0, r3
 506 0184 FFF7FEFF 		bl	ascii_set_bit
 148:X:/C/graphics\startup.c **** 		
 149:X:/C/graphics\startup.c **** 		bool lcd_busy = e->IDR & LCD_BUSY;
 507              		.loc 1 149 0
 508 0188 124B     		ldr	r3, .L22+4
 509 018a 1B68     		ldr	r3, [r3]
 510 018c 1B69     		ldr	r3, [r3, #16]
 511 018e DAB2     		uxtb	r2, r3
 512 0190 144B     		ldr	r3, .L22+20
 513 0192 1978     		ldrb	r1, [r3]
 514 0194 BB1D     		adds	r3, r7, #6
 515 0196 0A40     		ands	r2, r1
 516 0198 1A70     		strb	r2, [r3]
 150:X:/C/graphics\startup.c **** 		
 151:X:/C/graphics\startup.c **** 		if(lcd_busy == false)
 517              		.loc 1 151 0
 518 019a BB1D     		adds	r3, r7, #6
 519 019c 1B78     		ldrb	r3, [r3]
 520 019e 002B     		cmp	r3, #0
 521 01a0 02D1     		bne	.L20
 152:X:/C/graphics\startup.c **** 			done = true;
 522              		.loc 1 152 0
 523 01a2 FB1D     		adds	r3, r7, #7
 524 01a4 0122     		movs	r2, #1
 525 01a6 1A70     		strb	r2, [r3]
 526              	.L20:
 153:X:/C/graphics\startup.c **** 		delay500ns();
 527              		.loc 1 153 0
 528 01a8 FFF7FEFF 		bl	delay500ns
 529              	.L19:
 530              	.LBE3:
 142:X:/C/graphics\startup.c **** 	{
 531              		.loc 1 142 0
 532 01ac FB1D     		adds	r3, r7, #7
 533 01ae 1B78     		ldrb	r3, [r3]
 534 01b0 002B     		cmp	r3, #0
 535 01b2 D8D0     		beq	.L21
 154:X:/C/graphics\startup.c **** 	}
 155:X:/C/graphics\startup.c **** 	ascii_set_bit(bit_E);
 536              		.loc 1 155 0
 537 01b4 064B     		ldr	r3, .L22
 538 01b6 1B78     		ldrb	r3, [r3]
 539 01b8 1800     		movs	r0, r3
 540 01ba FFF7FEFF 		bl	ascii_set_bit
 156:X:/C/graphics\startup.c **** 	e->MODER = 0x55555555;
 541              		.loc 1 156 0
 542 01be 054B     		ldr	r3, .L22+4
 543 01c0 1B68     		ldr	r3, [r3]
 544 01c2 094A     		ldr	r2, .L22+24
 545 01c4 1A60     		str	r2, [r3]
 157:X:/C/graphics\startup.c **** }
 546              		.loc 1 157 0
 547 01c6 C046     		nop
 548 01c8 BD46     		mov	sp, r7
 549 01ca 02B0     		add	sp, sp, #8
 550              		@ sp needed
 551 01cc 80BD     		pop	{r7, pc}
 552              	.L23:
 553 01ce C046     		.align	2
 554              	.L22:
 555 01d0 00000000 		.word	bit_E
 556 01d4 00000000 		.word	e
 557 01d8 55550000 		.word	21845
 558 01dc 00000000 		.word	bit_RS
 559 01e0 00000000 		.word	bit_RW
 560 01e4 00000000 		.word	LCD_BUSY
 561 01e8 55555555 		.word	1431655765
 562              		.cfi_endproc
 563              	.LFE9:
 565              		.align	2
 566              		.global	graphics_read
 567              		.code	16
 568              		.thumb_func
 570              	graphics_read:
 571              	.LFB10:
 158:X:/C/graphics\startup.c **** 
 159:X:/C/graphics\startup.c **** unsigned char graphics_read(uint8_t controller)
 160:X:/C/graphics\startup.c **** {
 572              		.loc 1 160 0
 573              		.cfi_startproc
 574 01ec 80B5     		push	{r7, lr}
 575              		.cfi_def_cfa_offset 8
 576              		.cfi_offset 7, -8
 577              		.cfi_offset 14, -4
 578 01ee 84B0     		sub	sp, sp, #16
 579              		.cfi_def_cfa_offset 24
 580 01f0 00AF     		add	r7, sp, #0
 581              		.cfi_def_cfa_register 7
 582 01f2 0200     		movs	r2, r0
 583 01f4 FB1D     		adds	r3, r7, #7
 584 01f6 1A70     		strb	r2, [r3]
 161:X:/C/graphics\startup.c **** 	ascii_clear_bit(bit_E); //ascii_clear_bit(bit_E | bit_RS); possible?
 585              		.loc 1 161 0
 586 01f8 244B     		ldr	r3, .L28
 587 01fa 1B78     		ldrb	r3, [r3]
 588 01fc 1800     		movs	r0, r3
 589 01fe FFF7FEFF 		bl	ascii_clear_bit
 162:X:/C/graphics\startup.c **** 	e->MODER = 0x00005555;
 590              		.loc 1 162 0
 591 0202 234B     		ldr	r3, .L28+4
 592 0204 1B68     		ldr	r3, [r3]
 593 0206 234A     		ldr	r2, .L28+8
 594 0208 1A60     		str	r2, [r3]
 163:X:/C/graphics\startup.c **** 	ascii_set_bit(bit_RS);
 595              		.loc 1 163 0
 596 020a 234B     		ldr	r3, .L28+12
 597 020c 1B78     		ldrb	r3, [r3]
 598 020e 1800     		movs	r0, r3
 599 0210 FFF7FEFF 		bl	ascii_set_bit
 164:X:/C/graphics\startup.c **** 	ascii_set_bit(bit_RW);
 600              		.loc 1 164 0
 601 0214 214B     		ldr	r3, .L28+16
 602 0216 1B78     		ldrb	r3, [r3]
 603 0218 1800     		movs	r0, r3
 604 021a FFF7FEFF 		bl	ascii_set_bit
 165:X:/C/graphics\startup.c **** 	
 166:X:/C/graphics\startup.c **** 	select_controller(controller);
 605              		.loc 1 166 0
 606 021e FB1D     		adds	r3, r7, #7
 607 0220 1B78     		ldrb	r3, [r3]
 608 0222 1800     		movs	r0, r3
 609 0224 FFF7FEFF 		bl	select_controller
 167:X:/C/graphics\startup.c **** 	
 168:X:/C/graphics\startup.c **** 	delay500ns();
 610              		.loc 1 168 0
 611 0228 FFF7FEFF 		bl	delay500ns
 169:X:/C/graphics\startup.c **** 	
 170:X:/C/graphics\startup.c **** 	ascii_set_bit(bit_E);
 612              		.loc 1 170 0
 613 022c 174B     		ldr	r3, .L28
 614 022e 1B78     		ldrb	r3, [r3]
 615 0230 1800     		movs	r0, r3
 616 0232 FFF7FEFF 		bl	ascii_set_bit
 171:X:/C/graphics\startup.c **** 	delay500ns();
 617              		.loc 1 171 0
 618 0236 FFF7FEFF 		bl	delay500ns
 172:X:/C/graphics\startup.c **** 	
 173:X:/C/graphics\startup.c **** 	unsigned char RV = e->IDR >> 8;
 619              		.loc 1 173 0
 620 023a 154B     		ldr	r3, .L28+4
 621 023c 1B68     		ldr	r3, [r3]
 622 023e 1B69     		ldr	r3, [r3, #16]
 623 0240 1A0A     		lsrs	r2, r3, #8
 624 0242 0F23     		movs	r3, #15
 625 0244 FB18     		adds	r3, r7, r3
 626 0246 1A70     		strb	r2, [r3]
 174:X:/C/graphics\startup.c **** 	
 175:X:/C/graphics\startup.c **** 	if(controller == B_CS1)
 627              		.loc 1 175 0
 628 0248 154B     		ldr	r3, .L28+20
 629 024a 1B78     		ldrb	r3, [r3]
 630 024c FA1D     		adds	r2, r7, #7
 631 024e 1278     		ldrb	r2, [r2]
 632 0250 9A42     		cmp	r2, r3
 633 0252 07D1     		bne	.L25
 176:X:/C/graphics\startup.c **** 	{
 177:X:/C/graphics\startup.c **** 		select_controller(B_CS1);
 634              		.loc 1 177 0
 635 0254 124B     		ldr	r3, .L28+20
 636 0256 1B78     		ldrb	r3, [r3]
 637 0258 1800     		movs	r0, r3
 638 025a FFF7FEFF 		bl	select_controller
 178:X:/C/graphics\startup.c **** 		graphics_wait_ready();
 639              		.loc 1 178 0
 640 025e FFF7FEFF 		bl	graphics_wait_ready
 641 0262 0CE0     		b	.L26
 642              	.L25:
 179:X:/C/graphics\startup.c **** 	}
 180:X:/C/graphics\startup.c **** 	else if(controller == B_CS2)
 643              		.loc 1 180 0
 644 0264 0F4B     		ldr	r3, .L28+24
 645 0266 1B78     		ldrb	r3, [r3]
 646 0268 FA1D     		adds	r2, r7, #7
 647 026a 1278     		ldrb	r2, [r2]
 648 026c 9A42     		cmp	r2, r3
 649 026e 06D1     		bne	.L26
 181:X:/C/graphics\startup.c **** 	{
 182:X:/C/graphics\startup.c **** 		select_controller(B_CS2);
 650              		.loc 1 182 0
 651 0270 0C4B     		ldr	r3, .L28+24
 652 0272 1B78     		ldrb	r3, [r3]
 653 0274 1800     		movs	r0, r3
 654 0276 FFF7FEFF 		bl	select_controller
 183:X:/C/graphics\startup.c **** 		graphics_wait_ready();
 655              		.loc 1 183 0
 656 027a FFF7FEFF 		bl	graphics_wait_ready
 657              	.L26:
 184:X:/C/graphics\startup.c **** 	}
 185:X:/C/graphics\startup.c **** 	
 186:X:/C/graphics\startup.c **** 	return RV;
 658              		.loc 1 186 0
 659 027e 0F23     		movs	r3, #15
 660 0280 FB18     		adds	r3, r7, r3
 661 0282 1B78     		ldrb	r3, [r3]
 187:X:/C/graphics\startup.c **** }
 662              		.loc 1 187 0
 663 0284 1800     		movs	r0, r3
 664 0286 BD46     		mov	sp, r7
 665 0288 04B0     		add	sp, sp, #16
 666              		@ sp needed
 667 028a 80BD     		pop	{r7, pc}
 668              	.L29:
 669              		.align	2
 670              	.L28:
 671 028c 00000000 		.word	bit_E
 672 0290 00000000 		.word	e
 673 0294 55550000 		.word	21845
 674 0298 00000000 		.word	bit_RS
 675 029c 00000000 		.word	bit_RW
 676 02a0 00000000 		.word	B_CS1
 677 02a4 00000000 		.word	B_CS2
 678              		.cfi_endproc
 679              	.LFE10:
 681              		.align	2
 682              		.global	graphics_write
 683              		.code	16
 684              		.thumb_func
 686              	graphics_write:
 687              	.LFB11:
 188:X:/C/graphics\startup.c **** 
 189:X:/C/graphics\startup.c **** void graphics_write(uint8_t value, uint8_t controller) {
 688              		.loc 1 189 0
 689              		.cfi_startproc
 690 02a8 80B5     		push	{r7, lr}
 691              		.cfi_def_cfa_offset 8
 692              		.cfi_offset 7, -8
 693              		.cfi_offset 14, -4
 694 02aa 82B0     		sub	sp, sp, #8
 695              		.cfi_def_cfa_offset 16
 696 02ac 00AF     		add	r7, sp, #0
 697              		.cfi_def_cfa_register 7
 698 02ae 0200     		movs	r2, r0
 699 02b0 FB1D     		adds	r3, r7, #7
 700 02b2 1A70     		strb	r2, [r3]
 701 02b4 BB1D     		adds	r3, r7, #6
 702 02b6 0A1C     		adds	r2, r1, #0
 703 02b8 1A70     		strb	r2, [r3]
 190:X:/C/graphics\startup.c **** 	
 191:X:/C/graphics\startup.c **** 	e->ODR = value << 8 | (e->ODR & 0xf);
 704              		.loc 1 191 0
 705 02ba 174B     		ldr	r3, .L31
 706 02bc 1B68     		ldr	r3, [r3]
 707 02be FA1D     		adds	r2, r7, #7
 708 02c0 1278     		ldrb	r2, [r2]
 709 02c2 1202     		lsls	r2, r2, #8
 710 02c4 1000     		movs	r0, r2
 711 02c6 144A     		ldr	r2, .L31
 712 02c8 1268     		ldr	r2, [r2]
 713 02ca 5269     		ldr	r2, [r2, #20]
 714 02cc 0F21     		movs	r1, #15
 715 02ce 0A40     		ands	r2, r1
 716 02d0 0243     		orrs	r2, r0
 717 02d2 5A61     		str	r2, [r3, #20]
 192:X:/C/graphics\startup.c **** 	select_controller(controller);
 718              		.loc 1 192 0
 719 02d4 BB1D     		adds	r3, r7, #6
 720 02d6 1B78     		ldrb	r3, [r3]
 721 02d8 1800     		movs	r0, r3
 722 02da FFF7FEFF 		bl	select_controller
 193:X:/C/graphics\startup.c ****     delay500ns();
 723              		.loc 1 193 0
 724 02de FFF7FEFF 		bl	delay500ns
 194:X:/C/graphics\startup.c **** 	ascii_set_bit(bit_E);
 725              		.loc 1 194 0
 726 02e2 0E4B     		ldr	r3, .L31+4
 727 02e4 1B78     		ldrb	r3, [r3]
 728 02e6 1800     		movs	r0, r3
 729 02e8 FFF7FEFF 		bl	ascii_set_bit
 195:X:/C/graphics\startup.c **** 	delay500ns();
 730              		.loc 1 195 0
 731 02ec FFF7FEFF 		bl	delay500ns
 196:X:/C/graphics\startup.c **** 	#ifndef SIMULATOR
 197:X:/C/graphics\startup.c ****     ascii_clear_bit(bit_E);
 198:X:/C/graphics\startup.c **** 	
 199:X:/C/graphics\startup.c **** 	if(controller == B_CS1)
 200:X:/C/graphics\startup.c **** 	{
 201:X:/C/graphics\startup.c **** 		select_controller(B_CS1);
 202:X:/C/graphics\startup.c **** 		graphics_wait_ready();
 203:X:/C/graphics\startup.c **** 	}
 204:X:/C/graphics\startup.c **** 	else if(controller == B_CS2)
 205:X:/C/graphics\startup.c **** 	{
 206:X:/C/graphics\startup.c **** 		select_controller(B_CS2);
 207:X:/C/graphics\startup.c **** 		graphics_wait_ready();
 208:X:/C/graphics\startup.c **** 	}
 209:X:/C/graphics\startup.c **** 	#endif
 210:X:/C/graphics\startup.c ****     
 211:X:/C/graphics\startup.c **** 	e->ODR &= 0x0f;
 732              		.loc 1 211 0
 733 02f0 094B     		ldr	r3, .L31
 734 02f2 1B68     		ldr	r3, [r3]
 735 02f4 084A     		ldr	r2, .L31
 736 02f6 1268     		ldr	r2, [r2]
 737 02f8 5269     		ldr	r2, [r2, #20]
 738 02fa 0F21     		movs	r1, #15
 739 02fc 0A40     		ands	r2, r1
 740 02fe 5A61     		str	r2, [r3, #20]
 212:X:/C/graphics\startup.c **** 	
 213:X:/C/graphics\startup.c **** 	ascii_set_bit(bit_E);
 741              		.loc 1 213 0
 742 0300 064B     		ldr	r3, .L31+4
 743 0302 1B78     		ldrb	r3, [r3]
 744 0304 1800     		movs	r0, r3
 745 0306 FFF7FEFF 		bl	ascii_set_bit
 214:X:/C/graphics\startup.c **** 	select_controller(0);
 746              		.loc 1 214 0
 747 030a 0020     		movs	r0, #0
 748 030c FFF7FEFF 		bl	select_controller
 215:X:/C/graphics\startup.c **** }
 749              		.loc 1 215 0
 750 0310 C046     		nop
 751 0312 BD46     		mov	sp, r7
 752 0314 02B0     		add	sp, sp, #8
 753              		@ sp needed
 754 0316 80BD     		pop	{r7, pc}
 755              	.L32:
 756              		.align	2
 757              	.L31:
 758 0318 00000000 		.word	e
 759 031c 00000000 		.word	bit_E
 760              		.cfi_endproc
 761              	.LFE11:
 763              		.align	2
 764              		.global	graphics_write_command
 765              		.code	16
 766              		.thumb_func
 768              	graphics_write_command:
 769              	.LFB12:
 216:X:/C/graphics\startup.c **** 
 217:X:/C/graphics\startup.c **** void graphics_write_command(uint8_t command, uint8_t controller)
 218:X:/C/graphics\startup.c **** {
 770              		.loc 1 218 0
 771              		.cfi_startproc
 772 0320 80B5     		push	{r7, lr}
 773              		.cfi_def_cfa_offset 8
 774              		.cfi_offset 7, -8
 775              		.cfi_offset 14, -4
 776 0322 82B0     		sub	sp, sp, #8
 777              		.cfi_def_cfa_offset 16
 778 0324 00AF     		add	r7, sp, #0
 779              		.cfi_def_cfa_register 7
 780 0326 0200     		movs	r2, r0
 781 0328 FB1D     		adds	r3, r7, #7
 782 032a 1A70     		strb	r2, [r3]
 783 032c BB1D     		adds	r3, r7, #6
 784 032e 0A1C     		adds	r2, r1, #0
 785 0330 1A70     		strb	r2, [r3]
 219:X:/C/graphics\startup.c **** #ifndef SIMULATOR
 220:X:/C/graphics\startup.c **** 	ascii_clear_bit(bit_E);
 221:X:/C/graphics\startup.c **** 	select_controller(controller);
 222:X:/C/graphics\startup.c **** #endif
 223:X:/C/graphics\startup.c ****     ascii_clear_bit(bit_RS);
 786              		.loc 1 223 0
 787 0332 0B4B     		ldr	r3, .L34
 788 0334 1B78     		ldrb	r3, [r3]
 789 0336 1800     		movs	r0, r3
 790 0338 FFF7FEFF 		bl	ascii_clear_bit
 224:X:/C/graphics\startup.c **** 	ascii_clear_bit(bit_RW);
 791              		.loc 1 224 0
 792 033c 094B     		ldr	r3, .L34+4
 793 033e 1B78     		ldrb	r3, [r3]
 794 0340 1800     		movs	r0, r3
 795 0342 FFF7FEFF 		bl	ascii_clear_bit
 225:X:/C/graphics\startup.c **** 	graphics_write(command, controller);
 796              		.loc 1 225 0
 797 0346 BB1D     		adds	r3, r7, #6
 798 0348 1A78     		ldrb	r2, [r3]
 799 034a FB1D     		adds	r3, r7, #7
 800 034c 1B78     		ldrb	r3, [r3]
 801 034e 1100     		movs	r1, r2
 802 0350 1800     		movs	r0, r3
 803 0352 FFF7FEFF 		bl	graphics_write
 226:X:/C/graphics\startup.c **** }
 804              		.loc 1 226 0
 805 0356 C046     		nop
 806 0358 BD46     		mov	sp, r7
 807 035a 02B0     		add	sp, sp, #8
 808              		@ sp needed
 809 035c 80BD     		pop	{r7, pc}
 810              	.L35:
 811 035e C046     		.align	2
 812              	.L34:
 813 0360 00000000 		.word	bit_RS
 814 0364 00000000 		.word	bit_RW
 815              		.cfi_endproc
 816              	.LFE12:
 818              		.align	2
 819              		.global	graphics_write_data
 820              		.code	16
 821              		.thumb_func
 823              	graphics_write_data:
 824              	.LFB13:
 227:X:/C/graphics\startup.c **** 
 228:X:/C/graphics\startup.c **** void graphics_write_data(uint8_t write_data, uint8_t controller)
 229:X:/C/graphics\startup.c **** {
 825              		.loc 1 229 0
 826              		.cfi_startproc
 827 0368 80B5     		push	{r7, lr}
 828              		.cfi_def_cfa_offset 8
 829              		.cfi_offset 7, -8
 830              		.cfi_offset 14, -4
 831 036a 82B0     		sub	sp, sp, #8
 832              		.cfi_def_cfa_offset 16
 833 036c 00AF     		add	r7, sp, #0
 834              		.cfi_def_cfa_register 7
 835 036e 0200     		movs	r2, r0
 836 0370 FB1D     		adds	r3, r7, #7
 837 0372 1A70     		strb	r2, [r3]
 838 0374 BB1D     		adds	r3, r7, #6
 839 0376 0A1C     		adds	r2, r1, #0
 840 0378 1A70     		strb	r2, [r3]
 230:X:/C/graphics\startup.c **** #ifndef SIMULATOR
 231:X:/C/graphics\startup.c **** 	ascii_clear_bit(bit_E);
 232:X:/C/graphics\startup.c **** 	select_controller(controller);
 233:X:/C/graphics\startup.c **** #endif
 234:X:/C/graphics\startup.c **** 	ascii_set_bit(bit_RS);
 841              		.loc 1 234 0
 842 037a 0B4B     		ldr	r3, .L37
 843 037c 1B78     		ldrb	r3, [r3]
 844 037e 1800     		movs	r0, r3
 845 0380 FFF7FEFF 		bl	ascii_set_bit
 235:X:/C/graphics\startup.c **** 	ascii_clear_bit(bit_RW);
 846              		.loc 1 235 0
 847 0384 094B     		ldr	r3, .L37+4
 848 0386 1B78     		ldrb	r3, [r3]
 849 0388 1800     		movs	r0, r3
 850 038a FFF7FEFF 		bl	ascii_clear_bit
 236:X:/C/graphics\startup.c **** 	graphics_write(write_data, controller);
 851              		.loc 1 236 0
 852 038e BB1D     		adds	r3, r7, #6
 853 0390 1A78     		ldrb	r2, [r3]
 854 0392 FB1D     		adds	r3, r7, #7
 855 0394 1B78     		ldrb	r3, [r3]
 856 0396 1100     		movs	r1, r2
 857 0398 1800     		movs	r0, r3
 858 039a FFF7FEFF 		bl	graphics_write
 237:X:/C/graphics\startup.c **** }
 859              		.loc 1 237 0
 860 039e C046     		nop
 861 03a0 BD46     		mov	sp, r7
 862 03a2 02B0     		add	sp, sp, #8
 863              		@ sp needed
 864 03a4 80BD     		pop	{r7, pc}
 865              	.L38:
 866 03a6 C046     		.align	2
 867              	.L37:
 868 03a8 00000000 		.word	bit_RS
 869 03ac 00000000 		.word	bit_RW
 870              		.cfi_endproc
 871              	.LFE13:
 873              		.align	2
 874              		.global	graphics_read_data
 875              		.code	16
 876              		.thumb_func
 878              	graphics_read_data:
 879              	.LFB14:
 238:X:/C/graphics\startup.c **** 
 239:X:/C/graphics\startup.c **** uint8_t graphics_read_data(uint8_t controller)
 240:X:/C/graphics\startup.c **** {
 880              		.loc 1 240 0
 881              		.cfi_startproc
 882 03b0 80B5     		push	{r7, lr}
 883              		.cfi_def_cfa_offset 8
 884              		.cfi_offset 7, -8
 885              		.cfi_offset 14, -4
 886 03b2 82B0     		sub	sp, sp, #8
 887              		.cfi_def_cfa_offset 16
 888 03b4 00AF     		add	r7, sp, #0
 889              		.cfi_def_cfa_register 7
 890 03b6 0200     		movs	r2, r0
 891 03b8 FB1D     		adds	r3, r7, #7
 892 03ba 1A70     		strb	r2, [r3]
 241:X:/C/graphics\startup.c **** 	(void) graphics_read(controller);
 893              		.loc 1 241 0
 894 03bc FB1D     		adds	r3, r7, #7
 895 03be 1B78     		ldrb	r3, [r3]
 896 03c0 1800     		movs	r0, r3
 897 03c2 FFF7FEFF 		bl	graphics_read
 242:X:/C/graphics\startup.c **** 	return graphics_read(controller);
 898              		.loc 1 242 0
 899 03c6 FB1D     		adds	r3, r7, #7
 900 03c8 1B78     		ldrb	r3, [r3]
 901 03ca 1800     		movs	r0, r3
 902 03cc FFF7FEFF 		bl	graphics_read
 903 03d0 0300     		movs	r3, r0
 243:X:/C/graphics\startup.c **** }
 904              		.loc 1 243 0
 905 03d2 1800     		movs	r0, r3
 906 03d4 BD46     		mov	sp, r7
 907 03d6 02B0     		add	sp, sp, #8
 908              		@ sp needed
 909 03d8 80BD     		pop	{r7, pc}
 910              		.cfi_endproc
 911              	.LFE14:
 913 03da C046     		.align	2
 914              		.global	graphics_initialize
 915              		.code	16
 916              		.thumb_func
 918              	graphics_initialize:
 919              	.LFB15:
 244:X:/C/graphics\startup.c **** 
 245:X:/C/graphics\startup.c **** void graphics_initialize()
 246:X:/C/graphics\startup.c **** {
 920              		.loc 1 246 0
 921              		.cfi_startproc
 922 03dc 80B5     		push	{r7, lr}
 923              		.cfi_def_cfa_offset 8
 924              		.cfi_offset 7, -8
 925              		.cfi_offset 14, -4
 926 03de 00AF     		add	r7, sp, #0
 927              		.cfi_def_cfa_register 7
 247:X:/C/graphics\startup.c **** 	ascii_set_bit(bit_E);
 928              		.loc 1 247 0
 929 03e0 304B     		ldr	r3, .L42
 930 03e2 1B78     		ldrb	r3, [r3]
 931 03e4 1800     		movs	r0, r3
 932 03e6 FFF7FEFF 		bl	ascii_set_bit
 248:X:/C/graphics\startup.c **** 	delay_micro(10);
 933              		.loc 1 248 0
 934 03ea 0A20     		movs	r0, #10
 935 03ec FFF7FEFF 		bl	delay_micro
 249:X:/C/graphics\startup.c **** 	ascii_clear_bit(B_CS1);
 936              		.loc 1 249 0
 937 03f0 2D4B     		ldr	r3, .L42+4
 938 03f2 1B78     		ldrb	r3, [r3]
 939 03f4 1800     		movs	r0, r3
 940 03f6 FFF7FEFF 		bl	ascii_clear_bit
 250:X:/C/graphics\startup.c **** 	ascii_clear_bit(B_CS2);
 941              		.loc 1 250 0
 942 03fa 2C4B     		ldr	r3, .L42+8
 943 03fc 1B78     		ldrb	r3, [r3]
 944 03fe 1800     		movs	r0, r3
 945 0400 FFF7FEFF 		bl	ascii_clear_bit
 251:X:/C/graphics\startup.c **** 	ascii_clear_bit(B_RST);
 946              		.loc 1 251 0
 947 0404 2A4B     		ldr	r3, .L42+12
 948 0406 1B78     		ldrb	r3, [r3]
 949 0408 1800     		movs	r0, r3
 950 040a FFF7FEFF 		bl	ascii_clear_bit
 252:X:/C/graphics\startup.c **** 	ascii_clear_bit(bit_E);
 951              		.loc 1 252 0
 952 040e 254B     		ldr	r3, .L42
 953 0410 1B78     		ldrb	r3, [r3]
 954 0412 1800     		movs	r0, r3
 955 0414 FFF7FEFF 		bl	ascii_clear_bit
 253:X:/C/graphics\startup.c **** 	delay_milli(30);
 956              		.loc 1 253 0
 957 0418 1E20     		movs	r0, #30
 958 041a FFF7FEFF 		bl	delay_milli
 254:X:/C/graphics\startup.c **** 	ascii_set_bit(B_RST);
 959              		.loc 1 254 0
 960 041e 244B     		ldr	r3, .L42+12
 961 0420 1B78     		ldrb	r3, [r3]
 962 0422 1800     		movs	r0, r3
 963 0424 FFF7FEFF 		bl	ascii_set_bit
 255:X:/C/graphics\startup.c **** 	graphics_write_command(LCD_OFF , B_CS1 | B_CS2);
 964              		.loc 1 255 0
 965 0428 224B     		ldr	r3, .L42+16
 966 042a 1878     		ldrb	r0, [r3]
 967 042c 1E4B     		ldr	r3, .L42+4
 968 042e 1A78     		ldrb	r2, [r3]
 969 0430 1E4B     		ldr	r3, .L42+8
 970 0432 1B78     		ldrb	r3, [r3]
 971 0434 1343     		orrs	r3, r2
 972 0436 DBB2     		uxtb	r3, r3
 973 0438 1900     		movs	r1, r3
 974 043a FFF7FEFF 		bl	graphics_write_command
 256:X:/C/graphics\startup.c **** 	graphics_write_command(LCD_ON , B_CS1 | B_CS2);
 975              		.loc 1 256 0
 976 043e 1E4B     		ldr	r3, .L42+20
 977 0440 1878     		ldrb	r0, [r3]
 978 0442 194B     		ldr	r3, .L42+4
 979 0444 1A78     		ldrb	r2, [r3]
 980 0446 194B     		ldr	r3, .L42+8
 981 0448 1B78     		ldrb	r3, [r3]
 982 044a 1343     		orrs	r3, r2
 983 044c DBB2     		uxtb	r3, r3
 984 044e 1900     		movs	r1, r3
 985 0450 FFF7FEFF 		bl	graphics_write_command
 257:X:/C/graphics\startup.c **** 	graphics_write_command(LCD_DISP_START , B_CS1 | B_CS2);
 986              		.loc 1 257 0
 987 0454 194B     		ldr	r3, .L42+24
 988 0456 1878     		ldrb	r0, [r3]
 989 0458 134B     		ldr	r3, .L42+4
 990 045a 1A78     		ldrb	r2, [r3]
 991 045c 134B     		ldr	r3, .L42+8
 992 045e 1B78     		ldrb	r3, [r3]
 993 0460 1343     		orrs	r3, r2
 994 0462 DBB2     		uxtb	r3, r3
 995 0464 1900     		movs	r1, r3
 996 0466 FFF7FEFF 		bl	graphics_write_command
 258:X:/C/graphics\startup.c **** 	graphics_write_command(LCD_SET_ADD , B_CS1 | B_CS2);
 997              		.loc 1 258 0
 998 046a 154B     		ldr	r3, .L42+28
 999 046c 1878     		ldrb	r0, [r3]
 1000 046e 0E4B     		ldr	r3, .L42+4
 1001 0470 1A78     		ldrb	r2, [r3]
 1002 0472 0E4B     		ldr	r3, .L42+8
 1003 0474 1B78     		ldrb	r3, [r3]
 1004 0476 1343     		orrs	r3, r2
 1005 0478 DBB2     		uxtb	r3, r3
 1006 047a 1900     		movs	r1, r3
 1007 047c FFF7FEFF 		bl	graphics_write_command
 259:X:/C/graphics\startup.c **** 	graphics_write_command(LCD_SET_PAGE , B_CS1 | B_CS2);
 1008              		.loc 1 259 0
 1009 0480 104B     		ldr	r3, .L42+32
 1010 0482 1878     		ldrb	r0, [r3]
 1011 0484 084B     		ldr	r3, .L42+4
 1012 0486 1A78     		ldrb	r2, [r3]
 1013 0488 084B     		ldr	r3, .L42+8
 1014 048a 1B78     		ldrb	r3, [r3]
 1015 048c 1343     		orrs	r3, r2
 1016 048e DBB2     		uxtb	r3, r3
 1017 0490 1900     		movs	r1, r3
 1018 0492 FFF7FEFF 		bl	graphics_write_command
 260:X:/C/graphics\startup.c **** 	select_controller(0);
 1019              		.loc 1 260 0
 1020 0496 0020     		movs	r0, #0
 1021 0498 FFF7FEFF 		bl	select_controller
 261:X:/C/graphics\startup.c **** }
 1022              		.loc 1 261 0
 1023 049c C046     		nop
 1024 049e BD46     		mov	sp, r7
 1025              		@ sp needed
 1026 04a0 80BD     		pop	{r7, pc}
 1027              	.L43:
 1028 04a2 C046     		.align	2
 1029              	.L42:
 1030 04a4 00000000 		.word	bit_E
 1031 04a8 00000000 		.word	B_CS1
 1032 04ac 00000000 		.word	B_CS2
 1033 04b0 00000000 		.word	B_RST
 1034 04b4 00000000 		.word	LCD_OFF
 1035 04b8 00000000 		.word	LCD_ON
 1036 04bc 00000000 		.word	LCD_DISP_START
 1037 04c0 00000000 		.word	LCD_SET_ADD
 1038 04c4 00000000 		.word	LCD_SET_PAGE
 1039              		.cfi_endproc
 1040              	.LFE15:
 1042              		.align	2
 1043              		.global	graphics_clear_screen
 1044              		.code	16
 1045              		.thumb_func
 1047              	graphics_clear_screen:
 1048              	.LFB16:
 262:X:/C/graphics\startup.c **** 
 263:X:/C/graphics\startup.c **** void graphics_clear_screen()
 264:X:/C/graphics\startup.c **** {
 1049              		.loc 1 264 0
 1050              		.cfi_startproc
 1051 04c8 80B5     		push	{r7, lr}
 1052              		.cfi_def_cfa_offset 8
 1053              		.cfi_offset 7, -8
 1054              		.cfi_offset 14, -4
 1055 04ca 82B0     		sub	sp, sp, #8
 1056              		.cfi_def_cfa_offset 16
 1057 04cc 00AF     		add	r7, sp, #0
 1058              		.cfi_def_cfa_register 7
 1059              	.LBB4:
 265:X:/C/graphics\startup.c **** 	for(int page = 0; page < 8; page++)
 1060              		.loc 1 265 0
 1061 04ce 0023     		movs	r3, #0
 1062 04d0 7B60     		str	r3, [r7, #4]
 1063 04d2 31E0     		b	.L45
 1064              	.L48:
 266:X:/C/graphics\startup.c **** 	{
 267:X:/C/graphics\startup.c **** 		graphics_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
 1065              		.loc 1 267 0
 1066 04d4 7B68     		ldr	r3, [r7, #4]
 1067 04d6 DAB2     		uxtb	r2, r3
 1068 04d8 1B4B     		ldr	r3, .L49
 1069 04da 1B78     		ldrb	r3, [r3]
 1070 04dc DBB2     		uxtb	r3, r3
 1071 04de 1343     		orrs	r3, r2
 1072 04e0 DBB2     		uxtb	r3, r3
 1073 04e2 D8B2     		uxtb	r0, r3
 1074 04e4 194B     		ldr	r3, .L49+4
 1075 04e6 1A78     		ldrb	r2, [r3]
 1076 04e8 194B     		ldr	r3, .L49+8
 1077 04ea 1B78     		ldrb	r3, [r3]
 1078 04ec 1343     		orrs	r3, r2
 1079 04ee DBB2     		uxtb	r3, r3
 1080 04f0 1900     		movs	r1, r3
 1081 04f2 FFF7FEFF 		bl	graphics_write_command
 268:X:/C/graphics\startup.c **** 		graphics_write_command(LCD_SET_ADD | 0, B_CS1 | B_CS2);
 1082              		.loc 1 268 0
 1083 04f6 174B     		ldr	r3, .L49+12
 1084 04f8 1878     		ldrb	r0, [r3]
 1085 04fa 144B     		ldr	r3, .L49+4
 1086 04fc 1A78     		ldrb	r2, [r3]
 1087 04fe 144B     		ldr	r3, .L49+8
 1088 0500 1B78     		ldrb	r3, [r3]
 1089 0502 1343     		orrs	r3, r2
 1090 0504 DBB2     		uxtb	r3, r3
 1091 0506 1900     		movs	r1, r3
 1092 0508 FFF7FEFF 		bl	graphics_write_command
 1093              	.LBB5:
 269:X:/C/graphics\startup.c **** 		for(int add = 0; add < 64; add++)
 1094              		.loc 1 269 0
 1095 050c 0023     		movs	r3, #0
 1096 050e 3B60     		str	r3, [r7]
 1097 0510 0CE0     		b	.L46
 1098              	.L47:
 270:X:/C/graphics\startup.c **** 		{
 271:X:/C/graphics\startup.c ****             graphics_write_data(0, B_CS1 | B_CS2);
 1099              		.loc 1 271 0 discriminator 3
 1100 0512 0E4B     		ldr	r3, .L49+4
 1101 0514 1A78     		ldrb	r2, [r3]
 1102 0516 0E4B     		ldr	r3, .L49+8
 1103 0518 1B78     		ldrb	r3, [r3]
 1104 051a 1343     		orrs	r3, r2
 1105 051c DBB2     		uxtb	r3, r3
 1106 051e 1900     		movs	r1, r3
 1107 0520 0020     		movs	r0, #0
 1108 0522 FFF7FEFF 		bl	graphics_write_data
 269:X:/C/graphics\startup.c **** 		for(int add = 0; add < 64; add++)
 1109              		.loc 1 269 0 discriminator 3
 1110 0526 3B68     		ldr	r3, [r7]
 1111 0528 0133     		adds	r3, r3, #1
 1112 052a 3B60     		str	r3, [r7]
 1113              	.L46:
 269:X:/C/graphics\startup.c **** 		for(int add = 0; add < 64; add++)
 1114              		.loc 1 269 0 is_stmt 0 discriminator 1
 1115 052c 3B68     		ldr	r3, [r7]
 1116 052e 3F2B     		cmp	r3, #63
 1117 0530 EFDD     		ble	.L47
 1118              	.LBE5:
 265:X:/C/graphics\startup.c **** 	{
 1119              		.loc 1 265 0 is_stmt 1 discriminator 2
 1120 0532 7B68     		ldr	r3, [r7, #4]
 1121 0534 0133     		adds	r3, r3, #1
 1122 0536 7B60     		str	r3, [r7, #4]
 1123              	.L45:
 265:X:/C/graphics\startup.c **** 	{
 1124              		.loc 1 265 0 is_stmt 0 discriminator 1
 1125 0538 7B68     		ldr	r3, [r7, #4]
 1126 053a 072B     		cmp	r3, #7
 1127 053c CADD     		ble	.L48
 1128              	.LBE4:
 272:X:/C/graphics\startup.c **** 		}
 273:X:/C/graphics\startup.c **** 	}
 274:X:/C/graphics\startup.c **** }
 1129              		.loc 1 274 0 is_stmt 1
 1130 053e C046     		nop
 1131 0540 BD46     		mov	sp, r7
 1132 0542 02B0     		add	sp, sp, #8
 1133              		@ sp needed
 1134 0544 80BD     		pop	{r7, pc}
 1135              	.L50:
 1136 0546 C046     		.align	2
 1137              	.L49:
 1138 0548 00000000 		.word	LCD_SET_PAGE
 1139 054c 00000000 		.word	B_CS1
 1140 0550 00000000 		.word	B_CS2
 1141 0554 00000000 		.word	LCD_SET_ADD
 1142              		.cfi_endproc
 1143              	.LFE16:
 1145              		.comm	off_screen_buffer,1024,4
 1146              		.bss
 1147              		.align	2
 1148              	modified:
 1149 0000 00000000 		.space	1024
 1149      00000000 
 1149      00000000 
 1149      00000000 
 1149      00000000 
 1150              		.text
 1151              		.align	2
 1152              		.global	flush_screen
 1153              		.code	16
 1154              		.thumb_func
 1156              	flush_screen:
 1157              	.LFB17:
 275:X:/C/graphics\startup.c **** 
 276:X:/C/graphics\startup.c **** uint8_t off_screen_buffer[8][128];
 277:X:/C/graphics\startup.c **** static uint8_t modified[8][128];
 278:X:/C/graphics\startup.c **** 
 279:X:/C/graphics\startup.c **** void flush_screen()
 280:X:/C/graphics\startup.c **** {
 1158              		.loc 1 280 0
 1159              		.cfi_startproc
 1160 0558 80B5     		push	{r7, lr}
 1161              		.cfi_def_cfa_offset 8
 1162              		.cfi_offset 7, -8
 1163              		.cfi_offset 14, -4
 1164 055a 84B0     		sub	sp, sp, #16
 1165              		.cfi_def_cfa_offset 24
 1166 055c 00AF     		add	r7, sp, #0
 1167              		.cfi_def_cfa_register 7
 1168              	.LBB6:
 281:X:/C/graphics\startup.c **** 	for (int x = 0; x < 8; x++)
 1169              		.loc 1 281 0
 1170 055e 0023     		movs	r3, #0
 1171 0560 FB60     		str	r3, [r7, #12]
 1172 0562 A6E0     		b	.L52
 1173              	.L60:
 282:X:/C/graphics\startup.c **** 	{
 283:X:/C/graphics\startup.c **** 		graphics_write_command(LCD_SET_PAGE | x, B_CS1 | B_CS2);
 1174              		.loc 1 283 0
 1175 0564 FB68     		ldr	r3, [r7, #12]
 1176 0566 DAB2     		uxtb	r2, r3
 1177 0568 564B     		ldr	r3, .L61
 1178 056a 1B78     		ldrb	r3, [r3]
 1179 056c DBB2     		uxtb	r3, r3
 1180 056e 1343     		orrs	r3, r2
 1181 0570 DBB2     		uxtb	r3, r3
 1182 0572 D8B2     		uxtb	r0, r3
 1183 0574 544B     		ldr	r3, .L61+4
 1184 0576 1A78     		ldrb	r2, [r3]
 1185 0578 544B     		ldr	r3, .L61+8
 1186 057a 1B78     		ldrb	r3, [r3]
 1187 057c 1343     		orrs	r3, r2
 1188 057e DBB2     		uxtb	r3, r3
 1189 0580 1900     		movs	r1, r3
 1190 0582 FFF7FEFF 		bl	graphics_write_command
 1191              	.LBB7:
 284:X:/C/graphics\startup.c **** 		for(int y = 0; y < 64; y++)
 1192              		.loc 1 284 0
 1193 0586 0023     		movs	r3, #0
 1194 0588 BB60     		str	r3, [r7, #8]
 1195 058a 8BE0     		b	.L53
 1196              	.L59:
 1197              	.LBB8:
 285:X:/C/graphics\startup.c **** 		{
 286:X:/C/graphics\startup.c **** 			bool set=false;
 1198              		.loc 1 286 0
 1199 058c FB1D     		adds	r3, r7, #7
 1200 058e 0022     		movs	r2, #0
 1201 0590 1A70     		strb	r2, [r3]
 287:X:/C/graphics\startup.c **** 			if (modified[x][y] && modified[x][y + 64])
 1202              		.loc 1 287 0
 1203 0592 4F4A     		ldr	r2, .L61+12
 1204 0594 FB68     		ldr	r3, [r7, #12]
 1205 0596 DB01     		lsls	r3, r3, #7
 1206 0598 D218     		adds	r2, r2, r3
 1207 059a BB68     		ldr	r3, [r7, #8]
 1208 059c D318     		adds	r3, r2, r3
 1209 059e 1B78     		ldrb	r3, [r3]
 1210 05a0 002B     		cmp	r3, #0
 1211 05a2 1CD0     		beq	.L54
 1212              		.loc 1 287 0 is_stmt 0 discriminator 1
 1213 05a4 BB68     		ldr	r3, [r7, #8]
 1214 05a6 4033     		adds	r3, r3, #64
 1215 05a8 4949     		ldr	r1, .L61+12
 1216 05aa FA68     		ldr	r2, [r7, #12]
 1217 05ac D201     		lsls	r2, r2, #7
 1218 05ae 8A18     		adds	r2, r1, r2
 1219 05b0 D35C     		ldrb	r3, [r2, r3]
 1220 05b2 002B     		cmp	r3, #0
 1221 05b4 13D0     		beq	.L54
 288:X:/C/graphics\startup.c **** 			{
 289:X:/C/graphics\startup.c **** 				graphics_write_command(LCD_SET_ADD | y, B_CS1|B_CS2);
 1222              		.loc 1 289 0 is_stmt 1
 1223 05b6 BB68     		ldr	r3, [r7, #8]
 1224 05b8 DAB2     		uxtb	r2, r3
 1225 05ba 464B     		ldr	r3, .L61+16
 1226 05bc 1B78     		ldrb	r3, [r3]
 1227 05be DBB2     		uxtb	r3, r3
 1228 05c0 1343     		orrs	r3, r2
 1229 05c2 DBB2     		uxtb	r3, r3
 1230 05c4 D8B2     		uxtb	r0, r3
 1231 05c6 404B     		ldr	r3, .L61+4
 1232 05c8 1A78     		ldrb	r2, [r3]
 1233 05ca 404B     		ldr	r3, .L61+8
 1234 05cc 1B78     		ldrb	r3, [r3]
 1235 05ce 1343     		orrs	r3, r2
 1236 05d0 DBB2     		uxtb	r3, r3
 1237 05d2 1900     		movs	r1, r3
 1238 05d4 FFF7FEFF 		bl	graphics_write_command
 290:X:/C/graphics\startup.c **** 				set = true;
 1239              		.loc 1 290 0
 1240 05d8 FB1D     		adds	r3, r7, #7
 1241 05da 0122     		movs	r2, #1
 1242 05dc 1A70     		strb	r2, [r3]
 1243              	.L54:
 291:X:/C/graphics\startup.c **** 			}
 292:X:/C/graphics\startup.c **** 
 293:X:/C/graphics\startup.c ****             if(modified[x][y])
 1244              		.loc 1 293 0
 1245 05de 3C4A     		ldr	r2, .L61+12
 1246 05e0 FB68     		ldr	r3, [r7, #12]
 1247 05e2 DB01     		lsls	r3, r3, #7
 1248 05e4 D218     		adds	r2, r2, r3
 1249 05e6 BB68     		ldr	r3, [r7, #8]
 1250 05e8 D318     		adds	r3, r2, r3
 1251 05ea 1B78     		ldrb	r3, [r3]
 1252 05ec 002B     		cmp	r3, #0
 1253 05ee 26D0     		beq	.L55
 294:X:/C/graphics\startup.c ****             {
 295:X:/C/graphics\startup.c ****                 if(!set)graphics_write_command(LCD_SET_ADD | y, B_CS1);
 1254              		.loc 1 295 0
 1255 05f0 FB1D     		adds	r3, r7, #7
 1256 05f2 1B78     		ldrb	r3, [r3]
 1257 05f4 002B     		cmp	r3, #0
 1258 05f6 0DD1     		bne	.L56
 1259              		.loc 1 295 0 is_stmt 0 discriminator 1
 1260 05f8 BB68     		ldr	r3, [r7, #8]
 1261 05fa DAB2     		uxtb	r2, r3
 1262 05fc 354B     		ldr	r3, .L61+16
 1263 05fe 1B78     		ldrb	r3, [r3]
 1264 0600 DBB2     		uxtb	r3, r3
 1265 0602 1343     		orrs	r3, r2
 1266 0604 DBB2     		uxtb	r3, r3
 1267 0606 DAB2     		uxtb	r2, r3
 1268 0608 2F4B     		ldr	r3, .L61+4
 1269 060a 1B78     		ldrb	r3, [r3]
 1270 060c 1900     		movs	r1, r3
 1271 060e 1000     		movs	r0, r2
 1272 0610 FFF7FEFF 		bl	graphics_write_command
 1273              	.L56:
 296:X:/C/graphics\startup.c ****                 graphics_write_data(off_screen_buffer[x][y], B_CS1);
 1274              		.loc 1 296 0 is_stmt 1
 1275 0614 304A     		ldr	r2, .L61+20
 1276 0616 FB68     		ldr	r3, [r7, #12]
 1277 0618 DB01     		lsls	r3, r3, #7
 1278 061a D218     		adds	r2, r2, r3
 1279 061c BB68     		ldr	r3, [r7, #8]
 1280 061e D318     		adds	r3, r2, r3
 1281 0620 1A78     		ldrb	r2, [r3]
 1282 0622 294B     		ldr	r3, .L61+4
 1283 0624 1B78     		ldrb	r3, [r3]
 1284 0626 1900     		movs	r1, r3
 1285 0628 1000     		movs	r0, r2
 1286 062a FFF7FEFF 		bl	graphics_write_data
 297:X:/C/graphics\startup.c ****                 modified[x][y]=0;
 1287              		.loc 1 297 0
 1288 062e 284A     		ldr	r2, .L61+12
 1289 0630 FB68     		ldr	r3, [r7, #12]
 1290 0632 DB01     		lsls	r3, r3, #7
 1291 0634 D218     		adds	r2, r2, r3
 1292 0636 BB68     		ldr	r3, [r7, #8]
 1293 0638 D318     		adds	r3, r2, r3
 1294 063a 0022     		movs	r2, #0
 1295 063c 1A70     		strb	r2, [r3]
 1296              	.L55:
 298:X:/C/graphics\startup.c ****             }
 299:X:/C/graphics\startup.c ****             if(modified[x][y + 64])
 1297              		.loc 1 299 0
 1298 063e BB68     		ldr	r3, [r7, #8]
 1299 0640 4033     		adds	r3, r3, #64
 1300 0642 2349     		ldr	r1, .L61+12
 1301 0644 FA68     		ldr	r2, [r7, #12]
 1302 0646 D201     		lsls	r2, r2, #7
 1303 0648 8A18     		adds	r2, r1, r2
 1304 064a D35C     		ldrb	r3, [r2, r3]
 1305 064c 002B     		cmp	r3, #0
 1306 064e 26D0     		beq	.L57
 300:X:/C/graphics\startup.c ****             {
 301:X:/C/graphics\startup.c **** 				if (!set)graphics_write_command(LCD_SET_ADD | y, B_CS2);
 1307              		.loc 1 301 0
 1308 0650 FB1D     		adds	r3, r7, #7
 1309 0652 1B78     		ldrb	r3, [r3]
 1310 0654 002B     		cmp	r3, #0
 1311 0656 0DD1     		bne	.L58
 1312              		.loc 1 301 0 is_stmt 0 discriminator 1
 1313 0658 BB68     		ldr	r3, [r7, #8]
 1314 065a DAB2     		uxtb	r2, r3
 1315 065c 1D4B     		ldr	r3, .L61+16
 1316 065e 1B78     		ldrb	r3, [r3]
 1317 0660 DBB2     		uxtb	r3, r3
 1318 0662 1343     		orrs	r3, r2
 1319 0664 DBB2     		uxtb	r3, r3
 1320 0666 DAB2     		uxtb	r2, r3
 1321 0668 184B     		ldr	r3, .L61+8
 1322 066a 1B78     		ldrb	r3, [r3]
 1323 066c 1900     		movs	r1, r3
 1324 066e 1000     		movs	r0, r2
 1325 0670 FFF7FEFF 		bl	graphics_write_command
 1326              	.L58:
 302:X:/C/graphics\startup.c ****                 graphics_write_data(off_screen_buffer[x][y + 64], B_CS2);
 1327              		.loc 1 302 0 is_stmt 1
 1328 0674 BB68     		ldr	r3, [r7, #8]
 1329 0676 4033     		adds	r3, r3, #64
 1330 0678 1749     		ldr	r1, .L61+20
 1331 067a FA68     		ldr	r2, [r7, #12]
 1332 067c D201     		lsls	r2, r2, #7
 1333 067e 8A18     		adds	r2, r1, r2
 1334 0680 D25C     		ldrb	r2, [r2, r3]
 1335 0682 124B     		ldr	r3, .L61+8
 1336 0684 1B78     		ldrb	r3, [r3]
 1337 0686 1900     		movs	r1, r3
 1338 0688 1000     		movs	r0, r2
 1339 068a FFF7FEFF 		bl	graphics_write_data
 303:X:/C/graphics\startup.c ****                 modified[x][y+64]=0;
 1340              		.loc 1 303 0
 1341 068e BB68     		ldr	r3, [r7, #8]
 1342 0690 4033     		adds	r3, r3, #64
 1343 0692 0F49     		ldr	r1, .L61+12
 1344 0694 FA68     		ldr	r2, [r7, #12]
 1345 0696 D201     		lsls	r2, r2, #7
 1346 0698 8A18     		adds	r2, r1, r2
 1347 069a 0021     		movs	r1, #0
 1348 069c D154     		strb	r1, [r2, r3]
 1349              	.L57:
 1350              	.LBE8:
 284:X:/C/graphics\startup.c **** 		{
 1351              		.loc 1 284 0 discriminator 2
 1352 069e BB68     		ldr	r3, [r7, #8]
 1353 06a0 0133     		adds	r3, r3, #1
 1354 06a2 BB60     		str	r3, [r7, #8]
 1355              	.L53:
 284:X:/C/graphics\startup.c **** 		{
 1356              		.loc 1 284 0 is_stmt 0 discriminator 1
 1357 06a4 BB68     		ldr	r3, [r7, #8]
 1358 06a6 3F2B     		cmp	r3, #63
 1359 06a8 00DC     		bgt	.LCB1106
 1360 06aa 6FE7     		b	.L59	@long jump
 1361              	.LCB1106:
 1362              	.LBE7:
 281:X:/C/graphics\startup.c **** 	{
 1363              		.loc 1 281 0 is_stmt 1 discriminator 2
 1364 06ac FB68     		ldr	r3, [r7, #12]
 1365 06ae 0133     		adds	r3, r3, #1
 1366 06b0 FB60     		str	r3, [r7, #12]
 1367              	.L52:
 281:X:/C/graphics\startup.c **** 	{
 1368              		.loc 1 281 0 is_stmt 0 discriminator 1
 1369 06b2 FB68     		ldr	r3, [r7, #12]
 1370 06b4 072B     		cmp	r3, #7
 1371 06b6 00DC     		bgt	.LCB1115
 1372 06b8 54E7     		b	.L60	@long jump
 1373              	.LCB1115:
 1374              	.LBE6:
 304:X:/C/graphics\startup.c ****             }
 305:X:/C/graphics\startup.c **** 		}
 306:X:/C/graphics\startup.c **** 	}  
 307:X:/C/graphics\startup.c **** }
 1375              		.loc 1 307 0 is_stmt 1
 1376 06ba C046     		nop
 1377 06bc BD46     		mov	sp, r7
 1378 06be 04B0     		add	sp, sp, #16
 1379              		@ sp needed
 1380 06c0 80BD     		pop	{r7, pc}
 1381              	.L62:
 1382 06c2 C046     		.align	2
 1383              	.L61:
 1384 06c4 00000000 		.word	LCD_SET_PAGE
 1385 06c8 00000000 		.word	B_CS1
 1386 06cc 00000000 		.word	B_CS2
 1387 06d0 00000000 		.word	modified
 1388 06d4 00000000 		.word	LCD_SET_ADD
 1389 06d8 00000000 		.word	off_screen_buffer
 1390              		.cfi_endproc
 1391              	.LFE17:
 1393              		.align	2
 1394              		.global	set_all
 1395              		.code	16
 1396              		.thumb_func
 1398              	set_all:
 1399              	.LFB18:
 308:X:/C/graphics\startup.c **** 
 309:X:/C/graphics\startup.c **** void set_all(uint8_t value)
 310:X:/C/graphics\startup.c **** {
 1400              		.loc 1 310 0
 1401              		.cfi_startproc
 1402 06dc 80B5     		push	{r7, lr}
 1403              		.cfi_def_cfa_offset 8
 1404              		.cfi_offset 7, -8
 1405              		.cfi_offset 14, -4
 1406 06de 84B0     		sub	sp, sp, #16
 1407              		.cfi_def_cfa_offset 24
 1408 06e0 00AF     		add	r7, sp, #0
 1409              		.cfi_def_cfa_register 7
 1410 06e2 0200     		movs	r2, r0
 1411 06e4 FB1D     		adds	r3, r7, #7
 1412 06e6 1A70     		strb	r2, [r3]
 1413              	.LBB9:
 311:X:/C/graphics\startup.c **** 	for (int x = 0; x < 8; x++)
 1414              		.loc 1 311 0
 1415 06e8 0023     		movs	r3, #0
 1416 06ea FB60     		str	r3, [r7, #12]
 1417 06ec 33E0     		b	.L64
 1418              	.L67:
 312:X:/C/graphics\startup.c **** 	{
 313:X:/C/graphics\startup.c **** 		graphics_write_command(LCD_SET_PAGE | x, B_CS1 | B_CS2);
 1419              		.loc 1 313 0
 1420 06ee FB68     		ldr	r3, [r7, #12]
 1421 06f0 DAB2     		uxtb	r2, r3
 1422 06f2 1C4B     		ldr	r3, .L68
 1423 06f4 1B78     		ldrb	r3, [r3]
 1424 06f6 DBB2     		uxtb	r3, r3
 1425 06f8 1343     		orrs	r3, r2
 1426 06fa DBB2     		uxtb	r3, r3
 1427 06fc D8B2     		uxtb	r0, r3
 1428 06fe 1A4B     		ldr	r3, .L68+4
 1429 0700 1A78     		ldrb	r2, [r3]
 1430 0702 1A4B     		ldr	r3, .L68+8
 1431 0704 1B78     		ldrb	r3, [r3]
 1432 0706 1343     		orrs	r3, r2
 1433 0708 DBB2     		uxtb	r3, r3
 1434 070a 1900     		movs	r1, r3
 1435 070c FFF7FEFF 		bl	graphics_write_command
 314:X:/C/graphics\startup.c **** 		graphics_write_command(LCD_SET_ADD | 0, B_CS1 | B_CS2);
 1436              		.loc 1 314 0
 1437 0710 174B     		ldr	r3, .L68+12
 1438 0712 1878     		ldrb	r0, [r3]
 1439 0714 144B     		ldr	r3, .L68+4
 1440 0716 1A78     		ldrb	r2, [r3]
 1441 0718 144B     		ldr	r3, .L68+8
 1442 071a 1B78     		ldrb	r3, [r3]
 1443 071c 1343     		orrs	r3, r2
 1444 071e DBB2     		uxtb	r3, r3
 1445 0720 1900     		movs	r1, r3
 1446 0722 FFF7FEFF 		bl	graphics_write_command
 1447              	.LBB10:
 315:X:/C/graphics\startup.c **** 		for (int y = 0; y < 64; y++)
 1448              		.loc 1 315 0
 1449 0726 0023     		movs	r3, #0
 1450 0728 BB60     		str	r3, [r7, #8]
 1451 072a 0EE0     		b	.L65
 1452              	.L66:
 316:X:/C/graphics\startup.c **** 			graphics_write_data(value, B_CS1|B_CS2);
 1453              		.loc 1 316 0 discriminator 3
 1454 072c 0E4B     		ldr	r3, .L68+4
 1455 072e 1A78     		ldrb	r2, [r3]
 1456 0730 0E4B     		ldr	r3, .L68+8
 1457 0732 1B78     		ldrb	r3, [r3]
 1458 0734 1343     		orrs	r3, r2
 1459 0736 DAB2     		uxtb	r2, r3
 1460 0738 FB1D     		adds	r3, r7, #7
 1461 073a 1B78     		ldrb	r3, [r3]
 1462 073c 1100     		movs	r1, r2
 1463 073e 1800     		movs	r0, r3
 1464 0740 FFF7FEFF 		bl	graphics_write_data
 315:X:/C/graphics\startup.c **** 		for (int y = 0; y < 64; y++)
 1465              		.loc 1 315 0 discriminator 3
 1466 0744 BB68     		ldr	r3, [r7, #8]
 1467 0746 0133     		adds	r3, r3, #1
 1468 0748 BB60     		str	r3, [r7, #8]
 1469              	.L65:
 315:X:/C/graphics\startup.c **** 		for (int y = 0; y < 64; y++)
 1470              		.loc 1 315 0 is_stmt 0 discriminator 1
 1471 074a BB68     		ldr	r3, [r7, #8]
 1472 074c 3F2B     		cmp	r3, #63
 1473 074e EDDD     		ble	.L66
 1474              	.LBE10:
 311:X:/C/graphics\startup.c **** 	{
 1475              		.loc 1 311 0 is_stmt 1 discriminator 2
 1476 0750 FB68     		ldr	r3, [r7, #12]
 1477 0752 0133     		adds	r3, r3, #1
 1478 0754 FB60     		str	r3, [r7, #12]
 1479              	.L64:
 311:X:/C/graphics\startup.c **** 	{
 1480              		.loc 1 311 0 is_stmt 0 discriminator 1
 1481 0756 FB68     		ldr	r3, [r7, #12]
 1482 0758 072B     		cmp	r3, #7
 1483 075a C8DD     		ble	.L67
 1484              	.LBE9:
 317:X:/C/graphics\startup.c **** 	}
 318:X:/C/graphics\startup.c **** }
 1485              		.loc 1 318 0 is_stmt 1
 1486 075c C046     		nop
 1487 075e BD46     		mov	sp, r7
 1488 0760 04B0     		add	sp, sp, #16
 1489              		@ sp needed
 1490 0762 80BD     		pop	{r7, pc}
 1491              	.L69:
 1492              		.align	2
 1493              	.L68:
 1494 0764 00000000 		.word	LCD_SET_PAGE
 1495 0768 00000000 		.word	B_CS1
 1496 076c 00000000 		.word	B_CS2
 1497 0770 00000000 		.word	LCD_SET_ADD
 1498              		.cfi_endproc
 1499              	.LFE18:
 1501              		.align	2
 1502              		.global	write_px
 1503              		.code	16
 1504              		.thumb_func
 1506              	write_px:
 1507              	.LFB19:
 319:X:/C/graphics\startup.c **** 
 320:X:/C/graphics\startup.c **** void write_px(int x, int y, bool set)
 321:X:/C/graphics\startup.c **** {
 1508              		.loc 1 321 0
 1509              		.cfi_startproc
 1510 0774 80B5     		push	{r7, lr}
 1511              		.cfi_def_cfa_offset 8
 1512              		.cfi_offset 7, -8
 1513              		.cfi_offset 14, -4
 1514 0776 86B0     		sub	sp, sp, #24
 1515              		.cfi_def_cfa_offset 32
 1516 0778 00AF     		add	r7, sp, #0
 1517              		.cfi_def_cfa_register 7
 1518 077a F860     		str	r0, [r7, #12]
 1519 077c B960     		str	r1, [r7, #8]
 1520 077e FB1D     		adds	r3, r7, #7
 1521 0780 1A70     		strb	r2, [r3]
 322:X:/C/graphics\startup.c ****     x = 63-x;
 1522              		.loc 1 322 0
 1523 0782 FB68     		ldr	r3, [r7, #12]
 1524 0784 3F22     		movs	r2, #63
 1525 0786 D31A     		subs	r3, r2, r3
 1526 0788 FB60     		str	r3, [r7, #12]
 323:X:/C/graphics\startup.c ****     y = 127-y;
 1527              		.loc 1 323 0
 1528 078a BB68     		ldr	r3, [r7, #8]
 1529 078c 7F22     		movs	r2, #127
 1530 078e D31A     		subs	r3, r2, r3
 1531 0790 BB60     		str	r3, [r7, #8]
 324:X:/C/graphics\startup.c ****     uint8_t old_values = off_screen_buffer[x>>3][y];
 1532              		.loc 1 324 0
 1533 0792 FB68     		ldr	r3, [r7, #12]
 1534 0794 DA10     		asrs	r2, r3, #3
 1535 0796 1723     		movs	r3, #23
 1536 0798 FB18     		adds	r3, r7, r3
 1537 079a 2D49     		ldr	r1, .L73
 1538 079c D201     		lsls	r2, r2, #7
 1539 079e 8918     		adds	r1, r1, r2
 1540 07a0 BA68     		ldr	r2, [r7, #8]
 1541 07a2 8A18     		adds	r2, r1, r2
 1542 07a4 1278     		ldrb	r2, [r2]
 1543 07a6 1A70     		strb	r2, [r3]
 325:X:/C/graphics\startup.c ****     uint8_t shift = x&0x7;
 1544              		.loc 1 325 0
 1545 07a8 FB68     		ldr	r3, [r7, #12]
 1546 07aa DAB2     		uxtb	r2, r3
 1547 07ac 1623     		movs	r3, #22
 1548 07ae FB18     		adds	r3, r7, r3
 1549 07b0 0721     		movs	r1, #7
 1550 07b2 0A40     		ands	r2, r1
 1551 07b4 1A70     		strb	r2, [r3]
 326:X:/C/graphics\startup.c ****     if(((old_values>>(shift))&0x1)!=set)
 1552              		.loc 1 326 0
 1553 07b6 1723     		movs	r3, #23
 1554 07b8 FB18     		adds	r3, r7, r3
 1555 07ba 1A78     		ldrb	r2, [r3]
 1556 07bc 1623     		movs	r3, #22
 1557 07be FB18     		adds	r3, r7, r3
 1558 07c0 1B78     		ldrb	r3, [r3]
 1559 07c2 1A41     		asrs	r2, r2, r3
 1560 07c4 1300     		movs	r3, r2
 1561 07c6 0122     		movs	r2, #1
 1562 07c8 1A40     		ands	r2, r3
 1563 07ca FB1D     		adds	r3, r7, #7
 1564 07cc 1B78     		ldrb	r3, [r3]
 1565 07ce 9A42     		cmp	r2, r3
 1566 07d0 39D0     		beq	.L72
 327:X:/C/graphics\startup.c ****     {
 328:X:/C/graphics\startup.c ****         modified[x>>3][y] ^= (1<<shift);
 1567              		.loc 1 328 0
 1568 07d2 FB68     		ldr	r3, [r7, #12]
 1569 07d4 DB10     		asrs	r3, r3, #3
 1570 07d6 FA68     		ldr	r2, [r7, #12]
 1571 07d8 D210     		asrs	r2, r2, #3
 1572 07da 1E49     		ldr	r1, .L73+4
 1573 07dc D201     		lsls	r2, r2, #7
 1574 07de 8918     		adds	r1, r1, r2
 1575 07e0 BA68     		ldr	r2, [r7, #8]
 1576 07e2 8A18     		adds	r2, r1, r2
 1577 07e4 1278     		ldrb	r2, [r2]
 1578 07e6 D0B2     		uxtb	r0, r2
 1579 07e8 1622     		movs	r2, #22
 1580 07ea BA18     		adds	r2, r7, r2
 1581 07ec 1278     		ldrb	r2, [r2]
 1582 07ee 0121     		movs	r1, #1
 1583 07f0 9140     		lsls	r1, r1, r2
 1584 07f2 0A00     		movs	r2, r1
 1585 07f4 D2B2     		uxtb	r2, r2
 1586 07f6 011C     		adds	r1, r0, #0
 1587 07f8 4A40     		eors	r2, r1
 1588 07fa D2B2     		uxtb	r2, r2
 1589 07fc D1B2     		uxtb	r1, r2
 1590 07fe 154A     		ldr	r2, .L73+4
 1591 0800 DB01     		lsls	r3, r3, #7
 1592 0802 D218     		adds	r2, r2, r3
 1593 0804 BB68     		ldr	r3, [r7, #8]
 1594 0806 D318     		adds	r3, r2, r3
 1595 0808 0A1C     		adds	r2, r1, #0
 1596 080a 1A70     		strb	r2, [r3]
 329:X:/C/graphics\startup.c ****         off_screen_buffer[x>>3][y] ^= (1<<shift);
 1597              		.loc 1 329 0
 1598 080c FB68     		ldr	r3, [r7, #12]
 1599 080e DB10     		asrs	r3, r3, #3
 1600 0810 FA68     		ldr	r2, [r7, #12]
 1601 0812 D210     		asrs	r2, r2, #3
 1602 0814 0E49     		ldr	r1, .L73
 1603 0816 D201     		lsls	r2, r2, #7
 1604 0818 8918     		adds	r1, r1, r2
 1605 081a BA68     		ldr	r2, [r7, #8]
 1606 081c 8A18     		adds	r2, r1, r2
 1607 081e 1278     		ldrb	r2, [r2]
 1608 0820 D0B2     		uxtb	r0, r2
 1609 0822 1622     		movs	r2, #22
 1610 0824 BA18     		adds	r2, r7, r2
 1611 0826 1278     		ldrb	r2, [r2]
 1612 0828 0121     		movs	r1, #1
 1613 082a 9140     		lsls	r1, r1, r2
 1614 082c 0A00     		movs	r2, r1
 1615 082e D2B2     		uxtb	r2, r2
 1616 0830 011C     		adds	r1, r0, #0
 1617 0832 4A40     		eors	r2, r1
 1618 0834 D2B2     		uxtb	r2, r2
 1619 0836 D1B2     		uxtb	r1, r2
 1620 0838 054A     		ldr	r2, .L73
 1621 083a DB01     		lsls	r3, r3, #7
 1622 083c D218     		adds	r2, r2, r3
 1623 083e BB68     		ldr	r3, [r7, #8]
 1624 0840 D318     		adds	r3, r2, r3
 1625 0842 0A1C     		adds	r2, r1, #0
 1626 0844 1A70     		strb	r2, [r3]
 1627              	.L72:
 330:X:/C/graphics\startup.c ****     }
 331:X:/C/graphics\startup.c **** }
 1628              		.loc 1 331 0
 1629 0846 C046     		nop
 1630 0848 BD46     		mov	sp, r7
 1631 084a 06B0     		add	sp, sp, #24
 1632              		@ sp needed
 1633 084c 80BD     		pop	{r7, pc}
 1634              	.L74:
 1635 084e C046     		.align	2
 1636              	.L73:
 1637 0850 00000000 		.word	off_screen_buffer
 1638 0854 00000000 		.word	modified
 1639              		.cfi_endproc
 1640              	.LFE19:
 1642              		.align	2
 1643              		.global	slow_clear
 1644              		.code	16
 1645              		.thumb_func
 1647              	slow_clear:
 1648              	.LFB20:
 332:X:/C/graphics\startup.c **** 
 333:X:/C/graphics\startup.c **** void slow_clear()
 334:X:/C/graphics\startup.c **** {
 1649              		.loc 1 334 0
 1650              		.cfi_startproc
 1651 0858 80B5     		push	{r7, lr}
 1652              		.cfi_def_cfa_offset 8
 1653              		.cfi_offset 7, -8
 1654              		.cfi_offset 14, -4
 1655 085a 82B0     		sub	sp, sp, #8
 1656              		.cfi_def_cfa_offset 16
 1657 085c 00AF     		add	r7, sp, #0
 1658              		.cfi_def_cfa_register 7
 1659              	.LBB11:
 335:X:/C/graphics\startup.c ****     for(int i = 0; i<64;i++)
 1660              		.loc 1 335 0
 1661 085e 0023     		movs	r3, #0
 1662 0860 7B60     		str	r3, [r7, #4]
 1663 0862 11E0     		b	.L76
 1664              	.L77:
 336:X:/C/graphics\startup.c ****     {
 337:X:/C/graphics\startup.c **** 		write_px(i, i * 2, false);
 1665              		.loc 1 337 0 discriminator 3
 1666 0864 7B68     		ldr	r3, [r7, #4]
 1667 0866 5900     		lsls	r1, r3, #1
 1668 0868 7B68     		ldr	r3, [r7, #4]
 1669 086a 0022     		movs	r2, #0
 1670 086c 1800     		movs	r0, r3
 1671 086e FFF7FEFF 		bl	write_px
 338:X:/C/graphics\startup.c **** 		write_px(i, i * 2 + 1, false);
 1672              		.loc 1 338 0 discriminator 3
 1673 0872 7B68     		ldr	r3, [r7, #4]
 1674 0874 5B00     		lsls	r3, r3, #1
 1675 0876 591C     		adds	r1, r3, #1
 1676 0878 7B68     		ldr	r3, [r7, #4]
 1677 087a 0022     		movs	r2, #0
 1678 087c 1800     		movs	r0, r3
 1679 087e FFF7FEFF 		bl	write_px
 335:X:/C/graphics\startup.c ****     for(int i = 0; i<64;i++)
 1680              		.loc 1 335 0 discriminator 3
 1681 0882 7B68     		ldr	r3, [r7, #4]
 1682 0884 0133     		adds	r3, r3, #1
 1683 0886 7B60     		str	r3, [r7, #4]
 1684              	.L76:
 335:X:/C/graphics\startup.c ****     for(int i = 0; i<64;i++)
 1685              		.loc 1 335 0 is_stmt 0 discriminator 1
 1686 0888 7B68     		ldr	r3, [r7, #4]
 1687 088a 3F2B     		cmp	r3, #63
 1688 088c EADD     		ble	.L77
 1689              	.LBE11:
 339:X:/C/graphics\startup.c ****     }
 340:X:/C/graphics\startup.c ****     flush_screen();
 1690              		.loc 1 340 0 is_stmt 1
 1691 088e FFF7FEFF 		bl	flush_screen
 341:X:/C/graphics\startup.c **** }
 1692              		.loc 1 341 0
 1693 0892 C046     		nop
 1694 0894 BD46     		mov	sp, r7
 1695 0896 02B0     		add	sp, sp, #8
 1696              		@ sp needed
 1697 0898 80BD     		pop	{r7, pc}
 1698              		.cfi_endproc
 1699              	.LFE20:
 1701 089a C046     		.align	2
 1702              		.global	slow_fill
 1703              		.code	16
 1704              		.thumb_func
 1706              	slow_fill:
 1707              	.LFB21:
 342:X:/C/graphics\startup.c **** void slow_fill()
 343:X:/C/graphics\startup.c **** {
 1708              		.loc 1 343 0
 1709              		.cfi_startproc
 1710 089c 80B5     		push	{r7, lr}
 1711              		.cfi_def_cfa_offset 8
 1712              		.cfi_offset 7, -8
 1713              		.cfi_offset 14, -4
 1714 089e 82B0     		sub	sp, sp, #8
 1715              		.cfi_def_cfa_offset 16
 1716 08a0 00AF     		add	r7, sp, #0
 1717              		.cfi_def_cfa_register 7
 1718              	.LBB12:
 344:X:/C/graphics\startup.c ****     for(int i = 0; i<64;i++)
 1719              		.loc 1 344 0
 1720 08a2 0023     		movs	r3, #0
 1721 08a4 7B60     		str	r3, [r7, #4]
 1722 08a6 11E0     		b	.L79
 1723              	.L80:
 345:X:/C/graphics\startup.c ****     {
 346:X:/C/graphics\startup.c **** 		write_px(i, i * 2, true);
 1724              		.loc 1 346 0 discriminator 3
 1725 08a8 7B68     		ldr	r3, [r7, #4]
 1726 08aa 5900     		lsls	r1, r3, #1
 1727 08ac 7B68     		ldr	r3, [r7, #4]
 1728 08ae 0122     		movs	r2, #1
 1729 08b0 1800     		movs	r0, r3
 1730 08b2 FFF7FEFF 		bl	write_px
 347:X:/C/graphics\startup.c **** 		write_px(i, i * 2 + 1, true);
 1731              		.loc 1 347 0 discriminator 3
 1732 08b6 7B68     		ldr	r3, [r7, #4]
 1733 08b8 5B00     		lsls	r3, r3, #1
 1734 08ba 591C     		adds	r1, r3, #1
 1735 08bc 7B68     		ldr	r3, [r7, #4]
 1736 08be 0122     		movs	r2, #1
 1737 08c0 1800     		movs	r0, r3
 1738 08c2 FFF7FEFF 		bl	write_px
 344:X:/C/graphics\startup.c ****     for(int i = 0; i<64;i++)
 1739              		.loc 1 344 0 discriminator 3
 1740 08c6 7B68     		ldr	r3, [r7, #4]
 1741 08c8 0133     		adds	r3, r3, #1
 1742 08ca 7B60     		str	r3, [r7, #4]
 1743              	.L79:
 344:X:/C/graphics\startup.c ****     for(int i = 0; i<64;i++)
 1744              		.loc 1 344 0 is_stmt 0 discriminator 1
 1745 08cc 7B68     		ldr	r3, [r7, #4]
 1746 08ce 3F2B     		cmp	r3, #63
 1747 08d0 EADD     		ble	.L80
 1748              	.LBE12:
 348:X:/C/graphics\startup.c ****     }
 349:X:/C/graphics\startup.c **** 
 350:X:/C/graphics\startup.c ****     flush_screen();
 1749              		.loc 1 350 0 is_stmt 1
 1750 08d2 FFF7FEFF 		bl	flush_screen
 351:X:/C/graphics\startup.c **** }
 1751              		.loc 1 351 0
 1752 08d6 C046     		nop
 1753 08d8 BD46     		mov	sp, r7
 1754 08da 02B0     		add	sp, sp, #8
 1755              		@ sp needed
 1756 08dc 80BD     		pop	{r7, pc}
 1757              		.cfi_endproc
 1758              	.LFE21:
 1760              		.bss
 1761              		.align	2
 1762              	sprites:
 1763 0400 00000000 		.space	16576
 1763      00000000 
 1763      00000000 
 1763      00000000 
 1763      00000000 
 1764              		.align	2
 1765              	entities:
 1766 44c0 00000000 		.space	4608
 1766      00000000 
 1766      00000000 
 1766      00000000 
 1766      00000000 
 1767              		.align	2
 1768              	num_entities:
 1769 56c0 00000000 		.space	4
 1770              		.align	2
 1771              	num_sprites:
 1772 56c4 00000000 		.space	4
 1773              		.text
 1774 08de C046     		.align	2
 1775              		.global	make_entity
 1776              		.code	16
 1777              		.thumb_func
 1779              	make_entity:
 1780              	.LFB22:
 352:X:/C/graphics\startup.c **** 
 353:X:/C/graphics\startup.c **** typedef struct tPoint
 354:X:/C/graphics\startup.c **** {
 355:X:/C/graphics\startup.c **** 	uint8_t x;
 356:X:/C/graphics\startup.c **** 	uint8_t y;
 357:X:/C/graphics\startup.c **** }POINT;
 358:X:/C/graphics\startup.c **** 
 359:X:/C/graphics\startup.c **** typedef struct 
 360:X:/C/graphics\startup.c **** {
 361:X:/C/graphics\startup.c **** 	bool sprite[4][16][16];
 362:X:/C/graphics\startup.c **** 	int num_frames,h,w;
 363:X:/C/graphics\startup.c **** } Sprite;
 364:X:/C/graphics\startup.c **** 
 365:X:/C/graphics\startup.c **** 
 366:X:/C/graphics\startup.c **** typedef struct 
 367:X:/C/graphics\startup.c **** {
 368:X:/C/graphics\startup.c ****     int x;
 369:X:/C/graphics\startup.c ****     int y;
 370:X:/C/graphics\startup.c **** } Vec2;
 371:X:/C/graphics\startup.c **** 
 372:X:/C/graphics\startup.c **** typedef enum
 373:X:/C/graphics\startup.c **** {
 374:X:/C/graphics\startup.c **** 	entity_type_player,
 375:X:/C/graphics\startup.c **** 	entity_type_bullet,
 376:X:/C/graphics\startup.c **** 	entity_type_enemy,
 377:X:/C/graphics\startup.c ****     entity_type_fx,
 378:X:/C/graphics\startup.c **** } EntityType;
 379:X:/C/graphics\startup.c **** 
 380:X:/C/graphics\startup.c **** typedef struct 
 381:X:/C/graphics\startup.c **** {
 382:X:/C/graphics\startup.c ****     Sprite *sprite;
 383:X:/C/graphics\startup.c **** 	int id;
 384:X:/C/graphics\startup.c ****     Vec2 pos, velocity;
 385:X:/C/graphics\startup.c **** 	bool destroy;
 386:X:/C/graphics\startup.c **** 	int damage;
 387:X:/C/graphics\startup.c **** 	EntityType type;
 388:X:/C/graphics\startup.c **** } Entity;
 389:X:/C/graphics\startup.c **** 
 390:X:/C/graphics\startup.c **** static Sprite sprites[16];
 391:X:/C/graphics\startup.c **** static Entity entities[128];
 392:X:/C/graphics\startup.c **** static int num_entities=0;
 393:X:/C/graphics\startup.c **** static num_sprites = 0;
 394:X:/C/graphics\startup.c **** 
 395:X:/C/graphics\startup.c **** int make_entity(Sprite *sprite, EntityType type, Vec2 pos, Vec2 velocity)
 396:X:/C/graphics\startup.c **** {
 1781              		.loc 1 396 0
 1782              		.cfi_startproc
 1783 08e0 90B5     		push	{r4, r7, lr}
 1784              		.cfi_def_cfa_offset 12
 1785              		.cfi_offset 4, -12
 1786              		.cfi_offset 7, -8
 1787              		.cfi_offset 14, -4
 1788 08e2 8FB0     		sub	sp, sp, #60
 1789              		.cfi_def_cfa_offset 72
 1790 08e4 00AF     		add	r7, sp, #0
 1791              		.cfi_def_cfa_register 7
 1792 08e6 F860     		str	r0, [r7, #12]
 1793 08e8 0800     		movs	r0, r1
 1794 08ea 3900     		movs	r1, r7
 1795 08ec 0A60     		str	r2, [r1]
 1796 08ee 4B60     		str	r3, [r1, #4]
 1797 08f0 0B23     		movs	r3, #11
 1798 08f2 FB18     		adds	r3, r7, r3
 1799 08f4 021C     		adds	r2, r0, #0
 1800 08f6 1A70     		strb	r2, [r3]
 397:X:/C/graphics\startup.c **** 	static id_counter = 0;
 398:X:/C/graphics\startup.c **** 	Entity *ret = &entities[num_entities++];
 1801              		.loc 1 398 0
 1802 08f8 204B     		ldr	r3, .L83
 1803 08fa 1A68     		ldr	r2, [r3]
 1804 08fc 511C     		adds	r1, r2, #1
 1805 08fe 1F4B     		ldr	r3, .L83
 1806 0900 1960     		str	r1, [r3]
 1807 0902 1300     		movs	r3, r2
 1808 0904 DB00     		lsls	r3, r3, #3
 1809 0906 9B18     		adds	r3, r3, r2
 1810 0908 9B00     		lsls	r3, r3, #2
 1811 090a 1D4A     		ldr	r2, .L83+4
 1812 090c 9B18     		adds	r3, r3, r2
 1813 090e 7B63     		str	r3, [r7, #52]
 399:X:/C/graphics\startup.c **** 	Entity zeroed = {};
 1814              		.loc 1 399 0
 1815 0910 1023     		movs	r3, #16
 1816 0912 FB18     		adds	r3, r7, r3
 1817 0914 1800     		movs	r0, r3
 1818 0916 2423     		movs	r3, #36
 1819 0918 1A00     		movs	r2, r3
 1820 091a 0021     		movs	r1, #0
 1821 091c FFF7FEFF 		bl	memset
 400:X:/C/graphics\startup.c ****     *ret = zeroed;
 1822              		.loc 1 400 0
 1823 0920 7B6B     		ldr	r3, [r7, #52]
 1824 0922 1022     		movs	r2, #16
 1825 0924 BA18     		adds	r2, r7, r2
 1826 0926 13CA     		ldmia	r2!, {r0, r1, r4}
 1827 0928 13C3     		stmia	r3!, {r0, r1, r4}
 1828 092a 13CA     		ldmia	r2!, {r0, r1, r4}
 1829 092c 13C3     		stmia	r3!, {r0, r1, r4}
 1830 092e 13CA     		ldmia	r2!, {r0, r1, r4}
 1831 0930 13C3     		stmia	r3!, {r0, r1, r4}
 401:X:/C/graphics\startup.c **** 	ret->sprite = sprite;
 1832              		.loc 1 401 0
 1833 0932 7B6B     		ldr	r3, [r7, #52]
 1834 0934 FA68     		ldr	r2, [r7, #12]
 1835 0936 1A60     		str	r2, [r3]
 402:X:/C/graphics\startup.c **** 	ret->id = id_counter++;
 1836              		.loc 1 402 0
 1837 0938 124B     		ldr	r3, .L83+8
 1838 093a 1A68     		ldr	r2, [r3]
 1839 093c 511C     		adds	r1, r2, #1
 1840 093e 114B     		ldr	r3, .L83+8
 1841 0940 1960     		str	r1, [r3]
 1842 0942 7B6B     		ldr	r3, [r7, #52]
 1843 0944 5A60     		str	r2, [r3, #4]
 403:X:/C/graphics\startup.c ****     ret->pos = pos;
 1844              		.loc 1 403 0
 1845 0946 7B6B     		ldr	r3, [r7, #52]
 1846 0948 3A00     		movs	r2, r7
 1847 094a 0833     		adds	r3, r3, #8
 1848 094c 03CA     		ldmia	r2!, {r0, r1}
 1849 094e 03C3     		stmia	r3!, {r0, r1}
 404:X:/C/graphics\startup.c ****     ret->velocity = velocity;
 1850              		.loc 1 404 0
 1851 0950 7B6B     		ldr	r3, [r7, #52]
 1852 0952 4022     		movs	r2, #64
 1853 0954 0821     		movs	r1, #8
 1854 0956 8C46     		mov	ip, r1
 1855 0958 BC44     		add	ip, ip, r7
 1856 095a 6244     		add	r2, r2, ip
 1857 095c 1033     		adds	r3, r3, #16
 1858 095e 03CA     		ldmia	r2!, {r0, r1}
 1859 0960 03C3     		stmia	r3!, {r0, r1}
 405:X:/C/graphics\startup.c ****     ret->type = type;
 1860              		.loc 1 405 0
 1861 0962 7B6B     		ldr	r3, [r7, #52]
 1862 0964 0B22     		movs	r2, #11
 1863 0966 BA18     		adds	r2, r7, r2
 1864 0968 2021     		movs	r1, #32
 1865 096a 1278     		ldrb	r2, [r2]
 1866 096c 5A54     		strb	r2, [r3, r1]
 406:X:/C/graphics\startup.c **** 	return ret->id;
 1867              		.loc 1 406 0
 1868 096e 7B6B     		ldr	r3, [r7, #52]
 1869 0970 5B68     		ldr	r3, [r3, #4]
 407:X:/C/graphics\startup.c **** }
 1870              		.loc 1 407 0
 1871 0972 1800     		movs	r0, r3
 1872 0974 BD46     		mov	sp, r7
 1873 0976 0FB0     		add	sp, sp, #60
 1874              		@ sp needed
 1875 0978 90BD     		pop	{r4, r7, pc}
 1876              	.L84:
 1877 097a C046     		.align	2
 1878              	.L83:
 1879 097c C0560000 		.word	num_entities
 1880 0980 C0440000 		.word	entities
 1881 0984 C8560000 		.word	id_counter.4361
 1882              		.cfi_endproc
 1883              	.LFE22:
 1885              		.align	2
 1886              		.global	blit_sprite
 1887              		.code	16
 1888              		.thumb_func
 1890              	blit_sprite:
 1891              	.LFB23:
 408:X:/C/graphics\startup.c **** 
 409:X:/C/graphics\startup.c **** 
 410:X:/C/graphics\startup.c **** void blit_sprite(Sprite *sprite, int x, int y, int frame)
 411:X:/C/graphics\startup.c **** {
 1892              		.loc 1 411 0
 1893              		.cfi_startproc
 1894 0988 80B5     		push	{r7, lr}
 1895              		.cfi_def_cfa_offset 8
 1896              		.cfi_offset 7, -8
 1897              		.cfi_offset 14, -4
 1898 098a 88B0     		sub	sp, sp, #32
 1899              		.cfi_def_cfa_offset 40
 1900 098c 00AF     		add	r7, sp, #0
 1901              		.cfi_def_cfa_register 7
 1902 098e F860     		str	r0, [r7, #12]
 1903 0990 B960     		str	r1, [r7, #8]
 1904 0992 7A60     		str	r2, [r7, #4]
 1905 0994 3B60     		str	r3, [r7]
 1906              	.LBB13:
 412:X:/C/graphics\startup.c **** 	for (int x_ = 0; x_ < sprite->w; x_++)
 1907              		.loc 1 412 0
 1908 0996 0023     		movs	r3, #0
 1909 0998 FB61     		str	r3, [r7, #28]
 1910 099a 2AE0     		b	.L86
 1911              	.L90:
 1912              	.LBB14:
 413:X:/C/graphics\startup.c **** 	{
 414:X:/C/graphics\startup.c **** 		for (int y_ = 0; y_ < sprite->h; y_++)
 1913              		.loc 1 414 0
 1914 099c 0023     		movs	r3, #0
 1915 099e BB61     		str	r3, [r7, #24]
 1916 09a0 1EE0     		b	.L87
 1917              	.L89:
 1918              	.LBB15:
 415:X:/C/graphics\startup.c **** 		{
 416:X:/C/graphics\startup.c **** 			bool set = sprite->sprite[frame][x_][y_];
 1919              		.loc 1 416 0
 1920 09a2 1723     		movs	r3, #23
 1921 09a4 FB18     		adds	r3, r7, r3
 1922 09a6 F968     		ldr	r1, [r7, #12]
 1923 09a8 3A68     		ldr	r2, [r7]
 1924 09aa 1001     		lsls	r0, r2, #4
 1925 09ac FA69     		ldr	r2, [r7, #28]
 1926 09ae 8218     		adds	r2, r0, r2
 1927 09b0 1201     		lsls	r2, r2, #4
 1928 09b2 8918     		adds	r1, r1, r2
 1929 09b4 BA69     		ldr	r2, [r7, #24]
 1930 09b6 8A18     		adds	r2, r1, r2
 1931 09b8 1278     		ldrb	r2, [r2]
 1932 09ba 1A70     		strb	r2, [r3]
 417:X:/C/graphics\startup.c **** 			if (set)
 1933              		.loc 1 417 0
 1934 09bc 1723     		movs	r3, #23
 1935 09be FB18     		adds	r3, r7, r3
 1936 09c0 1B78     		ldrb	r3, [r3]
 1937 09c2 002B     		cmp	r3, #0
 1938 09c4 09D0     		beq	.L88
 418:X:/C/graphics\startup.c **** 				write_px(x + x_, y + y_, true);
 1939              		.loc 1 418 0
 1940 09c6 BA68     		ldr	r2, [r7, #8]
 1941 09c8 FB69     		ldr	r3, [r7, #28]
 1942 09ca D018     		adds	r0, r2, r3
 1943 09cc 7A68     		ldr	r2, [r7, #4]
 1944 09ce BB69     		ldr	r3, [r7, #24]
 1945 09d0 D318     		adds	r3, r2, r3
 1946 09d2 0122     		movs	r2, #1
 1947 09d4 1900     		movs	r1, r3
 1948 09d6 FFF7FEFF 		bl	write_px
 1949              	.L88:
 1950              	.LBE15:
 414:X:/C/graphics\startup.c **** 		{
 1951              		.loc 1 414 0 discriminator 2
 1952 09da BB69     		ldr	r3, [r7, #24]
 1953 09dc 0133     		adds	r3, r3, #1
 1954 09de BB61     		str	r3, [r7, #24]
 1955              	.L87:
 414:X:/C/graphics\startup.c **** 		{
 1956              		.loc 1 414 0 is_stmt 0 discriminator 1
 1957 09e0 FB68     		ldr	r3, [r7, #12]
 1958 09e2 094A     		ldr	r2, .L91
 1959 09e4 9A58     		ldr	r2, [r3, r2]
 1960 09e6 BB69     		ldr	r3, [r7, #24]
 1961 09e8 9A42     		cmp	r2, r3
 1962 09ea DADC     		bgt	.L89
 1963              	.LBE14:
 412:X:/C/graphics\startup.c **** 	{
 1964              		.loc 1 412 0 is_stmt 1 discriminator 2
 1965 09ec FB69     		ldr	r3, [r7, #28]
 1966 09ee 0133     		adds	r3, r3, #1
 1967 09f0 FB61     		str	r3, [r7, #28]
 1968              	.L86:
 412:X:/C/graphics\startup.c **** 	{
 1969              		.loc 1 412 0 is_stmt 0 discriminator 1
 1970 09f2 FA68     		ldr	r2, [r7, #12]
 1971 09f4 8123     		movs	r3, #129
 1972 09f6 DB00     		lsls	r3, r3, #3
 1973 09f8 D258     		ldr	r2, [r2, r3]
 1974 09fa FB69     		ldr	r3, [r7, #28]
 1975 09fc 9A42     		cmp	r2, r3
 1976 09fe CDDC     		bgt	.L90
 1977              	.LBE13:
 419:X:/C/graphics\startup.c **** 		}
 420:X:/C/graphics\startup.c **** 	}
 421:X:/C/graphics\startup.c **** }
 1978              		.loc 1 421 0 is_stmt 1
 1979 0a00 C046     		nop
 1980 0a02 BD46     		mov	sp, r7
 1981 0a04 08B0     		add	sp, sp, #32
 1982              		@ sp needed
 1983 0a06 80BD     		pop	{r7, pc}
 1984              	.L92:
 1985              		.align	2
 1986              	.L91:
 1987 0a08 04040000 		.word	1028
 1988              		.cfi_endproc
 1989              	.LFE23:
 1991              		.align	2
 1992              		.global	clear_sprite
 1993              		.code	16
 1994              		.thumb_func
 1996              	clear_sprite:
 1997              	.LFB24:
 422:X:/C/graphics\startup.c **** 
 423:X:/C/graphics\startup.c **** void clear_sprite(Sprite *sprite, int x, int y, int frame)
 424:X:/C/graphics\startup.c **** {
 1998              		.loc 1 424 0
 1999              		.cfi_startproc
 2000 0a0c 80B5     		push	{r7, lr}
 2001              		.cfi_def_cfa_offset 8
 2002              		.cfi_offset 7, -8
 2003              		.cfi_offset 14, -4
 2004 0a0e 88B0     		sub	sp, sp, #32
 2005              		.cfi_def_cfa_offset 40
 2006 0a10 00AF     		add	r7, sp, #0
 2007              		.cfi_def_cfa_register 7
 2008 0a12 F860     		str	r0, [r7, #12]
 2009 0a14 B960     		str	r1, [r7, #8]
 2010 0a16 7A60     		str	r2, [r7, #4]
 2011 0a18 3B60     		str	r3, [r7]
 2012              	.LBB16:
 425:X:/C/graphics\startup.c **** 	for (int x_ = 0; x_ < sprite->w; x_++)
 2013              		.loc 1 425 0
 2014 0a1a 0023     		movs	r3, #0
 2015 0a1c FB61     		str	r3, [r7, #28]
 2016 0a1e 2AE0     		b	.L94
 2017              	.L98:
 2018              	.LBB17:
 426:X:/C/graphics\startup.c **** 	{
 427:X:/C/graphics\startup.c **** 		for (int y_ = 0; y_ < sprite->h; y_++)
 2019              		.loc 1 427 0
 2020 0a20 0023     		movs	r3, #0
 2021 0a22 BB61     		str	r3, [r7, #24]
 2022 0a24 1EE0     		b	.L95
 2023              	.L97:
 2024              	.LBB18:
 428:X:/C/graphics\startup.c **** 		{
 429:X:/C/graphics\startup.c **** 			bool set = sprite->sprite[frame][x_][y_];
 2025              		.loc 1 429 0
 2026 0a26 1723     		movs	r3, #23
 2027 0a28 FB18     		adds	r3, r7, r3
 2028 0a2a F968     		ldr	r1, [r7, #12]
 2029 0a2c 3A68     		ldr	r2, [r7]
 2030 0a2e 1001     		lsls	r0, r2, #4
 2031 0a30 FA69     		ldr	r2, [r7, #28]
 2032 0a32 8218     		adds	r2, r0, r2
 2033 0a34 1201     		lsls	r2, r2, #4
 2034 0a36 8918     		adds	r1, r1, r2
 2035 0a38 BA69     		ldr	r2, [r7, #24]
 2036 0a3a 8A18     		adds	r2, r1, r2
 2037 0a3c 1278     		ldrb	r2, [r2]
 2038 0a3e 1A70     		strb	r2, [r3]
 430:X:/C/graphics\startup.c **** 			if (set)
 2039              		.loc 1 430 0
 2040 0a40 1723     		movs	r3, #23
 2041 0a42 FB18     		adds	r3, r7, r3
 2042 0a44 1B78     		ldrb	r3, [r3]
 2043 0a46 002B     		cmp	r3, #0
 2044 0a48 09D0     		beq	.L96
 431:X:/C/graphics\startup.c **** 				write_px(x + x_, y + y_, false);
 2045              		.loc 1 431 0
 2046 0a4a BA68     		ldr	r2, [r7, #8]
 2047 0a4c FB69     		ldr	r3, [r7, #28]
 2048 0a4e D018     		adds	r0, r2, r3
 2049 0a50 7A68     		ldr	r2, [r7, #4]
 2050 0a52 BB69     		ldr	r3, [r7, #24]
 2051 0a54 D318     		adds	r3, r2, r3
 2052 0a56 0022     		movs	r2, #0
 2053 0a58 1900     		movs	r1, r3
 2054 0a5a FFF7FEFF 		bl	write_px
 2055              	.L96:
 2056              	.LBE18:
 427:X:/C/graphics\startup.c **** 		{
 2057              		.loc 1 427 0 discriminator 2
 2058 0a5e BB69     		ldr	r3, [r7, #24]
 2059 0a60 0133     		adds	r3, r3, #1
 2060 0a62 BB61     		str	r3, [r7, #24]
 2061              	.L95:
 427:X:/C/graphics\startup.c **** 		{
 2062              		.loc 1 427 0 is_stmt 0 discriminator 1
 2063 0a64 FB68     		ldr	r3, [r7, #12]
 2064 0a66 094A     		ldr	r2, .L99
 2065 0a68 9A58     		ldr	r2, [r3, r2]
 2066 0a6a BB69     		ldr	r3, [r7, #24]
 2067 0a6c 9A42     		cmp	r2, r3
 2068 0a6e DADC     		bgt	.L97
 2069              	.LBE17:
 425:X:/C/graphics\startup.c **** 	{
 2070              		.loc 1 425 0 is_stmt 1 discriminator 2
 2071 0a70 FB69     		ldr	r3, [r7, #28]
 2072 0a72 0133     		adds	r3, r3, #1
 2073 0a74 FB61     		str	r3, [r7, #28]
 2074              	.L94:
 425:X:/C/graphics\startup.c **** 	{
 2075              		.loc 1 425 0 is_stmt 0 discriminator 1
 2076 0a76 FA68     		ldr	r2, [r7, #12]
 2077 0a78 8123     		movs	r3, #129
 2078 0a7a DB00     		lsls	r3, r3, #3
 2079 0a7c D258     		ldr	r2, [r2, r3]
 2080 0a7e FB69     		ldr	r3, [r7, #28]
 2081 0a80 9A42     		cmp	r2, r3
 2082 0a82 CDDC     		bgt	.L98
 2083              	.LBE16:
 432:X:/C/graphics\startup.c **** 		}
 433:X:/C/graphics\startup.c **** 	}
 434:X:/C/graphics\startup.c **** }
 2084              		.loc 1 434 0 is_stmt 1
 2085 0a84 C046     		nop
 2086 0a86 BD46     		mov	sp, r7
 2087 0a88 08B0     		add	sp, sp, #32
 2088              		@ sp needed
 2089 0a8a 80BD     		pop	{r7, pc}
 2090              	.L100:
 2091              		.align	2
 2092              	.L99:
 2093 0a8c 04040000 		.word	1028
 2094              		.cfi_endproc
 2095              	.LFE24:
 2097              		.align	2
 2098              		.global	make_sprite
 2099              		.code	16
 2100              		.thumb_func
 2102              	make_sprite:
 2103              	.LFB25:
 435:X:/C/graphics\startup.c **** 
 436:X:/C/graphics\startup.c **** Sprite *make_sprite(char *sprite, int w, int h, int num_frames)
 437:X:/C/graphics\startup.c **** {
 2104              		.loc 1 437 0
 2105              		.cfi_startproc
 2106 0a90 90B5     		push	{r4, r7, lr}
 2107              		.cfi_def_cfa_offset 12
 2108              		.cfi_offset 4, -12
 2109              		.cfi_offset 7, -8
 2110              		.cfi_offset 14, -4
 2111 0a92 89B0     		sub	sp, sp, #36
 2112              		.cfi_def_cfa_offset 48
 2113 0a94 00AF     		add	r7, sp, #0
 2114              		.cfi_def_cfa_register 7
 2115 0a96 F860     		str	r0, [r7, #12]
 2116 0a98 B960     		str	r1, [r7, #8]
 2117 0a9a 7A60     		str	r2, [r7, #4]
 2118 0a9c 3B60     		str	r3, [r7]
 438:X:/C/graphics\startup.c **** 	Sprite *ret = &sprites[num_sprites++];
 2119              		.loc 1 438 0
 2120 0a9e 284B     		ldr	r3, .L109
 2121 0aa0 1B68     		ldr	r3, [r3]
 2122 0aa2 591C     		adds	r1, r3, #1
 2123 0aa4 264A     		ldr	r2, .L109
 2124 0aa6 1160     		str	r1, [r2]
 2125 0aa8 264A     		ldr	r2, .L109+4
 2126 0aaa 5A43     		muls	r2, r3
 2127 0aac 264B     		ldr	r3, .L109+8
 2128 0aae D318     		adds	r3, r2, r3
 2129 0ab0 3B61     		str	r3, [r7, #16]
 439:X:/C/graphics\startup.c ****     ret->num_frames = num_frames;
 2130              		.loc 1 439 0
 2131 0ab2 3A69     		ldr	r2, [r7, #16]
 2132 0ab4 8023     		movs	r3, #128
 2133 0ab6 DB00     		lsls	r3, r3, #3
 2134 0ab8 3968     		ldr	r1, [r7]
 2135 0aba D150     		str	r1, [r2, r3]
 440:X:/C/graphics\startup.c ****     ret->w = w;
 2136              		.loc 1 440 0
 2137 0abc 3A69     		ldr	r2, [r7, #16]
 2138 0abe 8123     		movs	r3, #129
 2139 0ac0 DB00     		lsls	r3, r3, #3
 2140 0ac2 B968     		ldr	r1, [r7, #8]
 2141 0ac4 D150     		str	r1, [r2, r3]
 441:X:/C/graphics\startup.c ****     ret->h = h;
 2142              		.loc 1 441 0
 2143 0ac6 3B69     		ldr	r3, [r7, #16]
 2144 0ac8 2049     		ldr	r1, .L109+12
 2145 0aca 7A68     		ldr	r2, [r7, #4]
 2146 0acc 5A50     		str	r2, [r3, r1]
 2147              	.LBB19:
 442:X:/C/graphics\startup.c **** 	for (int frame = 0; frame < num_frames; frame++)
 2148              		.loc 1 442 0
 2149 0ace 0023     		movs	r3, #0
 2150 0ad0 FB61     		str	r3, [r7, #28]
 2151 0ad2 2CE0     		b	.L102
 2152              	.L107:
 2153              	.LBB20:
 443:X:/C/graphics\startup.c ****     {
 444:X:/C/graphics\startup.c ****         for (int y = 0; y < h; y++)
 2154              		.loc 1 444 0
 2155 0ad4 0023     		movs	r3, #0
 2156 0ad6 BB61     		str	r3, [r7, #24]
 2157 0ad8 22E0     		b	.L103
 2158              	.L106:
 2159              	.LBB21:
 445:X:/C/graphics\startup.c ****         {
 446:X:/C/graphics\startup.c ****             for (int x = 0; x < w; x++)
 2160              		.loc 1 446 0
 2161 0ada 0023     		movs	r3, #0
 2162 0adc 7B61     		str	r3, [r7, #20]
 2163 0ade 18E0     		b	.L104
 2164              	.L105:
 447:X:/C/graphics\startup.c ****             {
 448:X:/C/graphics\startup.c **** 		
 449:X:/C/graphics\startup.c **** 				ret->sprite[frame][x][h-y-1] = (*(sprite++)) == '#';
 2165              		.loc 1 449 0 discriminator 3
 2166 0ae0 7A68     		ldr	r2, [r7, #4]
 2167 0ae2 BB69     		ldr	r3, [r7, #24]
 2168 0ae4 D31A     		subs	r3, r2, r3
 2169 0ae6 5A1E     		subs	r2, r3, #1
 2170 0ae8 FB68     		ldr	r3, [r7, #12]
 2171 0aea 591C     		adds	r1, r3, #1
 2172 0aec F960     		str	r1, [r7, #12]
 2173 0aee 1B78     		ldrb	r3, [r3]
 2174 0af0 233B     		subs	r3, r3, #35
 2175 0af2 5942     		rsbs	r1, r3, #0
 2176 0af4 4B41     		adcs	r3, r3, r1
 2177 0af6 DBB2     		uxtb	r3, r3
 2178 0af8 1C00     		movs	r4, r3
 2179 0afa 3969     		ldr	r1, [r7, #16]
 2180 0afc FB69     		ldr	r3, [r7, #28]
 2181 0afe 1801     		lsls	r0, r3, #4
 2182 0b00 7B69     		ldr	r3, [r7, #20]
 2183 0b02 C318     		adds	r3, r0, r3
 2184 0b04 1B01     		lsls	r3, r3, #4
 2185 0b06 CB18     		adds	r3, r1, r3
 2186 0b08 211C     		adds	r1, r4, #0
 2187 0b0a 9954     		strb	r1, [r3, r2]
 446:X:/C/graphics\startup.c ****             {
 2188              		.loc 1 446 0 discriminator 3
 2189 0b0c 7B69     		ldr	r3, [r7, #20]
 2190 0b0e 0133     		adds	r3, r3, #1
 2191 0b10 7B61     		str	r3, [r7, #20]
 2192              	.L104:
 446:X:/C/graphics\startup.c ****             {
 2193              		.loc 1 446 0 is_stmt 0 discriminator 1
 2194 0b12 7A69     		ldr	r2, [r7, #20]
 2195 0b14 BB68     		ldr	r3, [r7, #8]
 2196 0b16 9A42     		cmp	r2, r3
 2197 0b18 E2DB     		blt	.L105
 2198              	.LBE21:
 444:X:/C/graphics\startup.c ****         {
 2199              		.loc 1 444 0 is_stmt 1 discriminator 2
 2200 0b1a BB69     		ldr	r3, [r7, #24]
 2201 0b1c 0133     		adds	r3, r3, #1
 2202 0b1e BB61     		str	r3, [r7, #24]
 2203              	.L103:
 444:X:/C/graphics\startup.c ****         {
 2204              		.loc 1 444 0 is_stmt 0 discriminator 1
 2205 0b20 BA69     		ldr	r2, [r7, #24]
 2206 0b22 7B68     		ldr	r3, [r7, #4]
 2207 0b24 9A42     		cmp	r2, r3
 2208 0b26 D8DB     		blt	.L106
 2209              	.LBE20:
 442:X:/C/graphics\startup.c ****     {
 2210              		.loc 1 442 0 is_stmt 1 discriminator 2
 2211 0b28 FB69     		ldr	r3, [r7, #28]
 2212 0b2a 0133     		adds	r3, r3, #1
 2213 0b2c FB61     		str	r3, [r7, #28]
 2214              	.L102:
 442:X:/C/graphics\startup.c ****     {
 2215              		.loc 1 442 0 is_stmt 0 discriminator 1
 2216 0b2e FA69     		ldr	r2, [r7, #28]
 2217 0b30 3B68     		ldr	r3, [r7]
 2218 0b32 9A42     		cmp	r2, r3
 2219 0b34 CEDB     		blt	.L107
 2220              	.LBE19:
 450:X:/C/graphics\startup.c **** 			}
 451:X:/C/graphics\startup.c **** 		}
 452:X:/C/graphics\startup.c **** 	}
 453:X:/C/graphics\startup.c **** 
 454:X:/C/graphics\startup.c **** 	return ret;
 2221              		.loc 1 454 0 is_stmt 1
 2222 0b36 3B69     		ldr	r3, [r7, #16]
 455:X:/C/graphics\startup.c **** }
 2223              		.loc 1 455 0
 2224 0b38 1800     		movs	r0, r3
 2225 0b3a BD46     		mov	sp, r7
 2226 0b3c 09B0     		add	sp, sp, #36
 2227              		@ sp needed
 2228 0b3e 90BD     		pop	{r4, r7, pc}
 2229              	.L110:
 2230              		.align	2
 2231              	.L109:
 2232 0b40 C4560000 		.word	num_sprites
 2233 0b44 0C040000 		.word	1036
 2234 0b48 00040000 		.word	sprites
 2235 0b4c 04040000 		.word	1028
 2236              		.cfi_endproc
 2237              	.LFE25:
 2239              		.align	2
 2240              		.global	step_physics
 2241              		.code	16
 2242              		.thumb_func
 2244              	step_physics:
 2245              	.LFB26:
 456:X:/C/graphics\startup.c **** 
 457:X:/C/graphics\startup.c **** void step_physics()
 458:X:/C/graphics\startup.c **** {
 2246              		.loc 1 458 0
 2247              		.cfi_startproc
 2248 0b50 80B5     		push	{r7, lr}
 2249              		.cfi_def_cfa_offset 8
 2250              		.cfi_offset 7, -8
 2251              		.cfi_offset 14, -4
 2252 0b52 82B0     		sub	sp, sp, #8
 2253              		.cfi_def_cfa_offset 16
 2254 0b54 00AF     		add	r7, sp, #0
 2255              		.cfi_def_cfa_register 7
 2256              	.LBB22:
 459:X:/C/graphics\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2257              		.loc 1 459 0
 2258 0b56 0023     		movs	r3, #0
 2259 0b58 7B60     		str	r3, [r7, #4]
 2260 0b5a 3AE0     		b	.L112
 2261              	.L113:
 460:X:/C/graphics\startup.c **** 	{
 461:X:/C/graphics\startup.c **** 		entities[i].pos.x += entities[i].velocity.x;
 2262              		.loc 1 461 0 discriminator 3
 2263 0b5c 2149     		ldr	r1, .L114
 2264 0b5e 7A68     		ldr	r2, [r7, #4]
 2265 0b60 1300     		movs	r3, r2
 2266 0b62 DB00     		lsls	r3, r3, #3
 2267 0b64 9B18     		adds	r3, r3, r2
 2268 0b66 9B00     		lsls	r3, r3, #2
 2269 0b68 CB18     		adds	r3, r1, r3
 2270 0b6a 0833     		adds	r3, r3, #8
 2271 0b6c 1968     		ldr	r1, [r3]
 2272 0b6e 1D48     		ldr	r0, .L114
 2273 0b70 7A68     		ldr	r2, [r7, #4]
 2274 0b72 1300     		movs	r3, r2
 2275 0b74 DB00     		lsls	r3, r3, #3
 2276 0b76 9B18     		adds	r3, r3, r2
 2277 0b78 9B00     		lsls	r3, r3, #2
 2278 0b7a C318     		adds	r3, r0, r3
 2279 0b7c 1033     		adds	r3, r3, #16
 2280 0b7e 1B68     		ldr	r3, [r3]
 2281 0b80 C918     		adds	r1, r1, r3
 2282 0b82 1848     		ldr	r0, .L114
 2283 0b84 7A68     		ldr	r2, [r7, #4]
 2284 0b86 1300     		movs	r3, r2
 2285 0b88 DB00     		lsls	r3, r3, #3
 2286 0b8a 9B18     		adds	r3, r3, r2
 2287 0b8c 9B00     		lsls	r3, r3, #2
 2288 0b8e C318     		adds	r3, r0, r3
 2289 0b90 0833     		adds	r3, r3, #8
 2290 0b92 1960     		str	r1, [r3]
 462:X:/C/graphics\startup.c **** 		entities[i].pos.y += entities[i].velocity.y;
 2291              		.loc 1 462 0 discriminator 3
 2292 0b94 1349     		ldr	r1, .L114
 2293 0b96 7A68     		ldr	r2, [r7, #4]
 2294 0b98 1300     		movs	r3, r2
 2295 0b9a DB00     		lsls	r3, r3, #3
 2296 0b9c 9B18     		adds	r3, r3, r2
 2297 0b9e 9B00     		lsls	r3, r3, #2
 2298 0ba0 CB18     		adds	r3, r1, r3
 2299 0ba2 0C33     		adds	r3, r3, #12
 2300 0ba4 1968     		ldr	r1, [r3]
 2301 0ba6 0F48     		ldr	r0, .L114
 2302 0ba8 7A68     		ldr	r2, [r7, #4]
 2303 0baa 1300     		movs	r3, r2
 2304 0bac DB00     		lsls	r3, r3, #3
 2305 0bae 9B18     		adds	r3, r3, r2
 2306 0bb0 9B00     		lsls	r3, r3, #2
 2307 0bb2 C318     		adds	r3, r0, r3
 2308 0bb4 1433     		adds	r3, r3, #20
 2309 0bb6 1B68     		ldr	r3, [r3]
 2310 0bb8 C918     		adds	r1, r1, r3
 2311 0bba 0A48     		ldr	r0, .L114
 2312 0bbc 7A68     		ldr	r2, [r7, #4]
 2313 0bbe 1300     		movs	r3, r2
 2314 0bc0 DB00     		lsls	r3, r3, #3
 2315 0bc2 9B18     		adds	r3, r3, r2
 2316 0bc4 9B00     		lsls	r3, r3, #2
 2317 0bc6 C318     		adds	r3, r0, r3
 2318 0bc8 0C33     		adds	r3, r3, #12
 2319 0bca 1960     		str	r1, [r3]
 459:X:/C/graphics\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2320              		.loc 1 459 0 discriminator 3
 2321 0bcc 7B68     		ldr	r3, [r7, #4]
 2322 0bce 0133     		adds	r3, r3, #1
 2323 0bd0 7B60     		str	r3, [r7, #4]
 2324              	.L112:
 459:X:/C/graphics\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2325              		.loc 1 459 0 is_stmt 0 discriminator 1
 2326 0bd2 054B     		ldr	r3, .L114+4
 2327 0bd4 1B68     		ldr	r3, [r3]
 2328 0bd6 7A68     		ldr	r2, [r7, #4]
 2329 0bd8 9A42     		cmp	r2, r3
 2330 0bda BFDB     		blt	.L113
 2331              	.LBE22:
 463:X:/C/graphics\startup.c **** 	}
 464:X:/C/graphics\startup.c **** }
 2332              		.loc 1 464 0 is_stmt 1
 2333 0bdc C046     		nop
 2334 0bde BD46     		mov	sp, r7
 2335 0be0 02B0     		add	sp, sp, #8
 2336              		@ sp needed
 2337 0be2 80BD     		pop	{r7, pc}
 2338              	.L115:
 2339              		.align	2
 2340              	.L114:
 2341 0be4 C0440000 		.word	entities
 2342 0be8 C0560000 		.word	num_entities
 2343              		.cfi_endproc
 2344              	.LFE26:
 2346              		.align	2
 2347              		.global	render
 2348              		.code	16
 2349              		.thumb_func
 2351              	render:
 2352              	.LFB27:
 465:X:/C/graphics\startup.c **** 
 466:X:/C/graphics\startup.c **** void render()
 467:X:/C/graphics\startup.c **** {
 2353              		.loc 1 467 0
 2354              		.cfi_startproc
 2355 0bec B0B5     		push	{r4, r5, r7, lr}
 2356              		.cfi_def_cfa_offset 16
 2357              		.cfi_offset 4, -16
 2358              		.cfi_offset 5, -12
 2359              		.cfi_offset 7, -8
 2360              		.cfi_offset 14, -4
 2361 0bee 82B0     		sub	sp, sp, #8
 2362              		.cfi_def_cfa_offset 24
 2363 0bf0 00AF     		add	r7, sp, #0
 2364              		.cfi_def_cfa_register 7
 2365              	.LBB23:
 468:X:/C/graphics\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2366              		.loc 1 468 0
 2367 0bf2 0023     		movs	r3, #0
 2368 0bf4 7B60     		str	r3, [r7, #4]
 2369 0bf6 3DE0     		b	.L117
 2370              	.L120:
 469:X:/C/graphics\startup.c **** 	{
 470:X:/C/graphics\startup.c **** 		blit_sprite(entities[i].sprite, 
 2371              		.loc 1 470 0 discriminator 3
 2372 0bf8 4749     		ldr	r1, .L125
 2373 0bfa 7A68     		ldr	r2, [r7, #4]
 2374 0bfc 1300     		movs	r3, r2
 2375 0bfe DB00     		lsls	r3, r3, #3
 2376 0c00 9B18     		adds	r3, r3, r2
 2377 0c02 9B00     		lsls	r3, r3, #2
 2378 0c04 5C58     		ldr	r4, [r3, r1]
 471:X:/C/graphics\startup.c ****             entities[i].pos.x-entities[i].sprite->w/2,
 2379              		.loc 1 471 0 discriminator 3
 2380 0c06 4449     		ldr	r1, .L125
 2381 0c08 7A68     		ldr	r2, [r7, #4]
 2382 0c0a 1300     		movs	r3, r2
 2383 0c0c DB00     		lsls	r3, r3, #3
 2384 0c0e 9B18     		adds	r3, r3, r2
 2385 0c10 9B00     		lsls	r3, r3, #2
 2386 0c12 CB18     		adds	r3, r1, r3
 2387 0c14 0833     		adds	r3, r3, #8
 2388 0c16 1968     		ldr	r1, [r3]
 2389 0c18 3F48     		ldr	r0, .L125
 2390 0c1a 7A68     		ldr	r2, [r7, #4]
 2391 0c1c 1300     		movs	r3, r2
 2392 0c1e DB00     		lsls	r3, r3, #3
 2393 0c20 9B18     		adds	r3, r3, r2
 2394 0c22 9B00     		lsls	r3, r3, #2
 2395 0c24 1A58     		ldr	r2, [r3, r0]
 2396 0c26 8123     		movs	r3, #129
 2397 0c28 DB00     		lsls	r3, r3, #3
 2398 0c2a D358     		ldr	r3, [r2, r3]
 2399 0c2c 002B     		cmp	r3, #0
 2400 0c2e 00DA     		bge	.L118
 2401 0c30 0133     		adds	r3, r3, #1
 2402              	.L118:
 2403 0c32 5B10     		asrs	r3, r3, #1
 470:X:/C/graphics\startup.c ****             entities[i].pos.x-entities[i].sprite->w/2,
 2404              		.loc 1 470 0 discriminator 3
 2405 0c34 CD1A     		subs	r5, r1, r3
 472:X:/C/graphics\startup.c ****             entities[i].pos.y-entities[i].sprite->h/2, 0);
 2406              		.loc 1 472 0 discriminator 3
 2407 0c36 3849     		ldr	r1, .L125
 2408 0c38 7A68     		ldr	r2, [r7, #4]
 2409 0c3a 1300     		movs	r3, r2
 2410 0c3c DB00     		lsls	r3, r3, #3
 2411 0c3e 9B18     		adds	r3, r3, r2
 2412 0c40 9B00     		lsls	r3, r3, #2
 2413 0c42 CB18     		adds	r3, r1, r3
 2414 0c44 0C33     		adds	r3, r3, #12
 2415 0c46 1968     		ldr	r1, [r3]
 2416 0c48 3348     		ldr	r0, .L125
 2417 0c4a 7A68     		ldr	r2, [r7, #4]
 2418 0c4c 1300     		movs	r3, r2
 2419 0c4e DB00     		lsls	r3, r3, #3
 2420 0c50 9B18     		adds	r3, r3, r2
 2421 0c52 9B00     		lsls	r3, r3, #2
 2422 0c54 1B58     		ldr	r3, [r3, r0]
 2423 0c56 314A     		ldr	r2, .L125+4
 2424 0c58 9B58     		ldr	r3, [r3, r2]
 2425 0c5a 002B     		cmp	r3, #0
 2426 0c5c 00DA     		bge	.L119
 2427 0c5e 0133     		adds	r3, r3, #1
 2428              	.L119:
 2429 0c60 5B10     		asrs	r3, r3, #1
 470:X:/C/graphics\startup.c ****             entities[i].pos.x-entities[i].sprite->w/2,
 2430              		.loc 1 470 0 discriminator 3
 2431 0c62 CA1A     		subs	r2, r1, r3
 2432 0c64 0023     		movs	r3, #0
 2433 0c66 2900     		movs	r1, r5
 2434 0c68 2000     		movs	r0, r4
 2435 0c6a FFF7FEFF 		bl	blit_sprite
 468:X:/C/graphics\startup.c **** 	{
 2436              		.loc 1 468 0 discriminator 3
 2437 0c6e 7B68     		ldr	r3, [r7, #4]
 2438 0c70 0133     		adds	r3, r3, #1
 2439 0c72 7B60     		str	r3, [r7, #4]
 2440              	.L117:
 468:X:/C/graphics\startup.c **** 	{
 2441              		.loc 1 468 0 is_stmt 0 discriminator 1
 2442 0c74 2A4B     		ldr	r3, .L125+8
 2443 0c76 1B68     		ldr	r3, [r3]
 2444 0c78 7A68     		ldr	r2, [r7, #4]
 2445 0c7a 9A42     		cmp	r2, r3
 2446 0c7c BCDB     		blt	.L120
 2447              	.LBE23:
 473:X:/C/graphics\startup.c **** 	}
 474:X:/C/graphics\startup.c **** 	flush_screen();
 2448              		.loc 1 474 0 is_stmt 1
 2449 0c7e FFF7FEFF 		bl	flush_screen
 2450              	.LBB24:
 475:X:/C/graphics\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2451              		.loc 1 475 0
 2452 0c82 0023     		movs	r3, #0
 2453 0c84 3B60     		str	r3, [r7]
 2454 0c86 3DE0     		b	.L121
 2455              	.L124:
 476:X:/C/graphics\startup.c **** 	{
 477:X:/C/graphics\startup.c **** 		clear_sprite(entities[i].sprite, 
 2456              		.loc 1 477 0 discriminator 3
 2457 0c88 2349     		ldr	r1, .L125
 2458 0c8a 3A68     		ldr	r2, [r7]
 2459 0c8c 1300     		movs	r3, r2
 2460 0c8e DB00     		lsls	r3, r3, #3
 2461 0c90 9B18     		adds	r3, r3, r2
 2462 0c92 9B00     		lsls	r3, r3, #2
 2463 0c94 5C58     		ldr	r4, [r3, r1]
 478:X:/C/graphics\startup.c ****             entities[i].pos.x-entities[i].sprite->w/2, 
 2464              		.loc 1 478 0 discriminator 3
 2465 0c96 2049     		ldr	r1, .L125
 2466 0c98 3A68     		ldr	r2, [r7]
 2467 0c9a 1300     		movs	r3, r2
 2468 0c9c DB00     		lsls	r3, r3, #3
 2469 0c9e 9B18     		adds	r3, r3, r2
 2470 0ca0 9B00     		lsls	r3, r3, #2
 2471 0ca2 CB18     		adds	r3, r1, r3
 2472 0ca4 0833     		adds	r3, r3, #8
 2473 0ca6 1968     		ldr	r1, [r3]
 2474 0ca8 1B48     		ldr	r0, .L125
 2475 0caa 3A68     		ldr	r2, [r7]
 2476 0cac 1300     		movs	r3, r2
 2477 0cae DB00     		lsls	r3, r3, #3
 2478 0cb0 9B18     		adds	r3, r3, r2
 2479 0cb2 9B00     		lsls	r3, r3, #2
 2480 0cb4 1A58     		ldr	r2, [r3, r0]
 2481 0cb6 8123     		movs	r3, #129
 2482 0cb8 DB00     		lsls	r3, r3, #3
 2483 0cba D358     		ldr	r3, [r2, r3]
 2484 0cbc 002B     		cmp	r3, #0
 2485 0cbe 00DA     		bge	.L122
 2486 0cc0 0133     		adds	r3, r3, #1
 2487              	.L122:
 2488 0cc2 5B10     		asrs	r3, r3, #1
 477:X:/C/graphics\startup.c ****             entities[i].pos.x-entities[i].sprite->w/2, 
 2489              		.loc 1 477 0 discriminator 3
 2490 0cc4 CD1A     		subs	r5, r1, r3
 479:X:/C/graphics\startup.c ****             entities[i].pos.y-entities[i].sprite->h/2, 0);
 2491              		.loc 1 479 0 discriminator 3
 2492 0cc6 1449     		ldr	r1, .L125
 2493 0cc8 3A68     		ldr	r2, [r7]
 2494 0cca 1300     		movs	r3, r2
 2495 0ccc DB00     		lsls	r3, r3, #3
 2496 0cce 9B18     		adds	r3, r3, r2
 2497 0cd0 9B00     		lsls	r3, r3, #2
 2498 0cd2 CB18     		adds	r3, r1, r3
 2499 0cd4 0C33     		adds	r3, r3, #12
 2500 0cd6 1968     		ldr	r1, [r3]
 2501 0cd8 0F48     		ldr	r0, .L125
 2502 0cda 3A68     		ldr	r2, [r7]
 2503 0cdc 1300     		movs	r3, r2
 2504 0cde DB00     		lsls	r3, r3, #3
 2505 0ce0 9B18     		adds	r3, r3, r2
 2506 0ce2 9B00     		lsls	r3, r3, #2
 2507 0ce4 1B58     		ldr	r3, [r3, r0]
 2508 0ce6 0D4A     		ldr	r2, .L125+4
 2509 0ce8 9B58     		ldr	r3, [r3, r2]
 2510 0cea 002B     		cmp	r3, #0
 2511 0cec 00DA     		bge	.L123
 2512 0cee 0133     		adds	r3, r3, #1
 2513              	.L123:
 2514 0cf0 5B10     		asrs	r3, r3, #1
 477:X:/C/graphics\startup.c ****             entities[i].pos.x-entities[i].sprite->w/2, 
 2515              		.loc 1 477 0 discriminator 3
 2516 0cf2 CA1A     		subs	r2, r1, r3
 2517 0cf4 0023     		movs	r3, #0
 2518 0cf6 2900     		movs	r1, r5
 2519 0cf8 2000     		movs	r0, r4
 2520 0cfa FFF7FEFF 		bl	clear_sprite
 475:X:/C/graphics\startup.c **** 	{
 2521              		.loc 1 475 0 discriminator 3
 2522 0cfe 3B68     		ldr	r3, [r7]
 2523 0d00 0133     		adds	r3, r3, #1
 2524 0d02 3B60     		str	r3, [r7]
 2525              	.L121:
 475:X:/C/graphics\startup.c **** 	{
 2526              		.loc 1 475 0 is_stmt 0 discriminator 1
 2527 0d04 064B     		ldr	r3, .L125+8
 2528 0d06 1B68     		ldr	r3, [r3]
 2529 0d08 3A68     		ldr	r2, [r7]
 2530 0d0a 9A42     		cmp	r2, r3
 2531 0d0c BCDB     		blt	.L124
 2532              	.LBE24:
 480:X:/C/graphics\startup.c **** 	}
 481:X:/C/graphics\startup.c **** }
 2533              		.loc 1 481 0 is_stmt 1
 2534 0d0e C046     		nop
 2535 0d10 BD46     		mov	sp, r7
 2536 0d12 02B0     		add	sp, sp, #8
 2537              		@ sp needed
 2538 0d14 B0BD     		pop	{r4, r5, r7, pc}
 2539              	.L126:
 2540 0d16 C046     		.align	2
 2541              	.L125:
 2542 0d18 C0440000 		.word	entities
 2543 0d1c 04040000 		.word	1028
 2544 0d20 C0560000 		.word	num_entities
 2545              		.cfi_endproc
 2546              	.LFE27:
 2548              		.align	2
 2549              		.global	entity_from_id
 2550              		.code	16
 2551              		.thumb_func
 2553              	entity_from_id:
 2554              	.LFB28:
 482:X:/C/graphics\startup.c **** 
 483:X:/C/graphics\startup.c **** //note will change between frames
 484:X:/C/graphics\startup.c **** Entity *entity_from_id(int id)
 485:X:/C/graphics\startup.c **** {
 2555              		.loc 1 485 0
 2556              		.cfi_startproc
 2557 0d24 80B5     		push	{r7, lr}
 2558              		.cfi_def_cfa_offset 8
 2559              		.cfi_offset 7, -8
 2560              		.cfi_offset 14, -4
 2561 0d26 84B0     		sub	sp, sp, #16
 2562              		.cfi_def_cfa_offset 24
 2563 0d28 00AF     		add	r7, sp, #0
 2564              		.cfi_def_cfa_register 7
 2565 0d2a 7860     		str	r0, [r7, #4]
 2566              	.LBB25:
 486:X:/C/graphics\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2567              		.loc 1 486 0
 2568 0d2c 0023     		movs	r3, #0
 2569 0d2e FB60     		str	r3, [r7, #12]
 2570 0d30 16E0     		b	.L128
 2571              	.L131:
 487:X:/C/graphics\startup.c **** 	{
 488:X:/C/graphics\startup.c **** 		if (entities[i].id == id)return &entities[i];
 2572              		.loc 1 488 0
 2573 0d32 1049     		ldr	r1, .L132
 2574 0d34 FA68     		ldr	r2, [r7, #12]
 2575 0d36 1300     		movs	r3, r2
 2576 0d38 DB00     		lsls	r3, r3, #3
 2577 0d3a 9B18     		adds	r3, r3, r2
 2578 0d3c 9B00     		lsls	r3, r3, #2
 2579 0d3e CB18     		adds	r3, r1, r3
 2580 0d40 0433     		adds	r3, r3, #4
 2581 0d42 1A68     		ldr	r2, [r3]
 2582 0d44 7B68     		ldr	r3, [r7, #4]
 2583 0d46 9A42     		cmp	r2, r3
 2584 0d48 07D1     		bne	.L129
 2585              		.loc 1 488 0 is_stmt 0 discriminator 1
 2586 0d4a FA68     		ldr	r2, [r7, #12]
 2587 0d4c 1300     		movs	r3, r2
 2588 0d4e DB00     		lsls	r3, r3, #3
 2589 0d50 9B18     		adds	r3, r3, r2
 2590 0d52 9B00     		lsls	r3, r3, #2
 2591 0d54 074A     		ldr	r2, .L132
 2592 0d56 9B18     		adds	r3, r3, r2
 2593 0d58 08E0     		b	.L130
 2594              	.L129:
 486:X:/C/graphics\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2595              		.loc 1 486 0 is_stmt 1 discriminator 2
 2596 0d5a FB68     		ldr	r3, [r7, #12]
 2597 0d5c 0133     		adds	r3, r3, #1
 2598 0d5e FB60     		str	r3, [r7, #12]
 2599              	.L128:
 486:X:/C/graphics\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2600              		.loc 1 486 0 is_stmt 0 discriminator 1
 2601 0d60 054B     		ldr	r3, .L132+4
 2602 0d62 1B68     		ldr	r3, [r3]
 2603 0d64 FA68     		ldr	r2, [r7, #12]
 2604 0d66 9A42     		cmp	r2, r3
 2605 0d68 E3DB     		blt	.L131
 2606              	.LBE25:
 489:X:/C/graphics\startup.c **** 	}
 490:X:/C/graphics\startup.c ****     return 0;
 2607              		.loc 1 490 0 is_stmt 1
 2608 0d6a 0023     		movs	r3, #0
 2609              	.L130:
 491:X:/C/graphics\startup.c **** }
 2610              		.loc 1 491 0
 2611 0d6c 1800     		movs	r0, r3
 2612 0d6e BD46     		mov	sp, r7
 2613 0d70 04B0     		add	sp, sp, #16
 2614              		@ sp needed
 2615 0d72 80BD     		pop	{r7, pc}
 2616              	.L133:
 2617              		.align	2
 2618              	.L132:
 2619 0d74 C0440000 		.word	entities
 2620 0d78 C0560000 		.word	num_entities
 2621              		.cfi_endproc
 2622              	.LFE28:
 2624              		.align	2
 2625              		.global	cleanup_entities
 2626              		.code	16
 2627              		.thumb_func
 2629              	cleanup_entities:
 2630              	.LFB29:
 492:X:/C/graphics\startup.c **** 
 493:X:/C/graphics\startup.c **** void cleanup_entities()
 494:X:/C/graphics\startup.c **** {
 2631              		.loc 1 494 0
 2632              		.cfi_startproc
 2633 0d7c 90B5     		push	{r4, r7, lr}
 2634              		.cfi_def_cfa_offset 12
 2635              		.cfi_offset 4, -12
 2636              		.cfi_offset 7, -8
 2637              		.cfi_offset 14, -4
 2638 0d7e 83B0     		sub	sp, sp, #12
 2639              		.cfi_def_cfa_offset 24
 2640 0d80 00AF     		add	r7, sp, #0
 2641              		.cfi_def_cfa_register 7
 2642              	.LBB26:
 495:X:/C/graphics\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2643              		.loc 1 495 0
 2644 0d82 0023     		movs	r3, #0
 2645 0d84 7B60     		str	r3, [r7, #4]
 2646 0d86 27E0     		b	.L135
 2647              	.L137:
 496:X:/C/graphics\startup.c **** 	{
 497:X:/C/graphics\startup.c **** 		if (entities[i].destroy) entities[i] = entities[--num_entities];
 2648              		.loc 1 497 0
 2649 0d88 1849     		ldr	r1, .L138
 2650 0d8a 7A68     		ldr	r2, [r7, #4]
 2651 0d8c 1300     		movs	r3, r2
 2652 0d8e DB00     		lsls	r3, r3, #3
 2653 0d90 9B18     		adds	r3, r3, r2
 2654 0d92 9B00     		lsls	r3, r3, #2
 2655 0d94 CB18     		adds	r3, r1, r3
 2656 0d96 1833     		adds	r3, r3, #24
 2657 0d98 1B78     		ldrb	r3, [r3]
 2658 0d9a 002B     		cmp	r3, #0
 2659 0d9c 19D0     		beq	.L136
 2660              		.loc 1 497 0 is_stmt 0 discriminator 1
 2661 0d9e 144B     		ldr	r3, .L138+4
 2662 0da0 1B68     		ldr	r3, [r3]
 2663 0da2 5A1E     		subs	r2, r3, #1
 2664 0da4 124B     		ldr	r3, .L138+4
 2665 0da6 1A60     		str	r2, [r3]
 2666 0da8 114B     		ldr	r3, .L138+4
 2667 0daa 1968     		ldr	r1, [r3]
 2668 0dac 0F4C     		ldr	r4, .L138
 2669 0dae 7A68     		ldr	r2, [r7, #4]
 2670 0db0 1300     		movs	r3, r2
 2671 0db2 DB00     		lsls	r3, r3, #3
 2672 0db4 9B18     		adds	r3, r3, r2
 2673 0db6 9B00     		lsls	r3, r3, #2
 2674 0db8 0C48     		ldr	r0, .L138
 2675 0dba 0A00     		movs	r2, r1
 2676 0dbc D200     		lsls	r2, r2, #3
 2677 0dbe 5218     		adds	r2, r2, r1
 2678 0dc0 9200     		lsls	r2, r2, #2
 2679 0dc2 E318     		adds	r3, r4, r3
 2680 0dc4 8218     		adds	r2, r0, r2
 2681 0dc6 13CA     		ldmia	r2!, {r0, r1, r4}
 2682 0dc8 13C3     		stmia	r3!, {r0, r1, r4}
 2683 0dca 13CA     		ldmia	r2!, {r0, r1, r4}
 2684 0dcc 13C3     		stmia	r3!, {r0, r1, r4}
 2685 0dce 13CA     		ldmia	r2!, {r0, r1, r4}
 2686 0dd0 13C3     		stmia	r3!, {r0, r1, r4}
 2687              	.L136:
 495:X:/C/graphics\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2688              		.loc 1 495 0 is_stmt 1 discriminator 2
 2689 0dd2 7B68     		ldr	r3, [r7, #4]
 2690 0dd4 0133     		adds	r3, r3, #1
 2691 0dd6 7B60     		str	r3, [r7, #4]
 2692              	.L135:
 495:X:/C/graphics\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2693              		.loc 1 495 0 is_stmt 0 discriminator 1
 2694 0dd8 054B     		ldr	r3, .L138+4
 2695 0dda 1B68     		ldr	r3, [r3]
 2696 0ddc 7A68     		ldr	r2, [r7, #4]
 2697 0dde 9A42     		cmp	r2, r3
 2698 0de0 D2DB     		blt	.L137
 2699              	.LBE26:
 498:X:/C/graphics\startup.c **** 	}
 499:X:/C/graphics\startup.c **** }
 2700              		.loc 1 499 0 is_stmt 1
 2701 0de2 C046     		nop
 2702 0de4 BD46     		mov	sp, r7
 2703 0de6 03B0     		add	sp, sp, #12
 2704              		@ sp needed
 2705 0de8 90BD     		pop	{r4, r7, pc}
 2706              	.L139:
 2707 0dea C046     		.align	2
 2708              	.L138:
 2709 0dec C0440000 		.word	entities
 2710 0df0 C0560000 		.word	num_entities
 2711              		.cfi_endproc
 2712              	.LFE29:
 2714              		.section	.rodata
 2715              		.align	2
 2716              	.LC0:
 2717 0000 31       		.byte	49
 2718 0001 32       		.byte	50
 2719 0002 33       		.byte	51
 2720 0003 41       		.byte	65
 2721 0004 34       		.byte	52
 2722 0005 35       		.byte	53
 2723 0006 36       		.byte	54
 2724 0007 42       		.byte	66
 2725 0008 37       		.byte	55
 2726 0009 38       		.byte	56
 2727 000a 39       		.byte	57
 2728 000b 43       		.byte	67
 2729 000c 2A       		.byte	42
 2730 000d 30       		.byte	48
 2731 000e 23       		.byte	35
 2732 000f 44       		.byte	68
 2733              		.text
 2734              		.align	2
 2735              		.global	keyb
 2736              		.code	16
 2737              		.thumb_func
 2739              	keyb:
 2740              	.LFB30:
 500:X:/C/graphics\startup.c **** 
 501:X:/C/graphics\startup.c **** 
 502:X:/C/graphics\startup.c **** 
 503:X:/C/graphics\startup.c **** 
 504:X:/C/graphics\startup.c **** char keyb()
 505:X:/C/graphics\startup.c **** {
 2741              		.loc 1 505 0
 2742              		.cfi_startproc
 2743 0df4 80B5     		push	{r7, lr}
 2744              		.cfi_def_cfa_offset 8
 2745              		.cfi_offset 7, -8
 2746              		.cfi_offset 14, -4
 2747 0df6 88B0     		sub	sp, sp, #32
 2748              		.cfi_def_cfa_offset 40
 2749 0df8 00AF     		add	r7, sp, #0
 2750              		.cfi_def_cfa_register 7
 506:X:/C/graphics\startup.c **** 	GPIO_REG *d = (GPIO_REG *)0x40020C00;
 2751              		.loc 1 506 0
 2752 0dfa 214B     		ldr	r3, .L148
 2753 0dfc 7B61     		str	r3, [r7, #20]
 507:X:/C/graphics\startup.c **** 	GPIO_REG *e = (GPIO_REG *)0x40021000;
 2754              		.loc 1 507 0
 2755 0dfe 214B     		ldr	r3, .L148+4
 2756 0e00 3B61     		str	r3, [r7, #16]
 508:X:/C/graphics\startup.c **** 	
 509:X:/C/graphics\startup.c **** 	char res[4][4]=
 2757              		.loc 1 509 0
 2758 0e02 3A00     		movs	r2, r7
 2759 0e04 204B     		ldr	r3, .L148+8
 2760 0e06 1000     		movs	r0, r2
 2761 0e08 1900     		movs	r1, r3
 2762 0e0a 1023     		movs	r3, #16
 2763 0e0c 1A00     		movs	r2, r3
 2764 0e0e FFF7FEFF 		bl	memcpy
 2765              	.LBB27:
 510:X:/C/graphics\startup.c **** 	{{'1','2','3','A'},
 511:X:/C/graphics\startup.c **** 	{'4','5','6','B'},
 512:X:/C/graphics\startup.c **** 	{'7','8','9','C'},
 513:X:/C/graphics\startup.c **** 	{'*','0','#','D'},};
 514:X:/C/graphics\startup.c **** 	for(int i = 0; i<4;i++)
 2766              		.loc 1 514 0
 2767 0e12 0023     		movs	r3, #0
 2768 0e14 FB61     		str	r3, [r7, #28]
 2769 0e16 2AE0     		b	.L141
 2770              	.L146:
 515:X:/C/graphics\startup.c **** 	{
 516:X:/C/graphics\startup.c **** 		d->ODR = 0x1000<<i | d->ODR&0xff;
 2771              		.loc 1 516 0
 2772 0e18 8023     		movs	r3, #128
 2773 0e1a 5A01     		lsls	r2, r3, #5
 2774 0e1c FB69     		ldr	r3, [r7, #28]
 2775 0e1e 9A40     		lsls	r2, r2, r3
 2776 0e20 1300     		movs	r3, r2
 2777 0e22 1900     		movs	r1, r3
 2778 0e24 7B69     		ldr	r3, [r7, #20]
 2779 0e26 5B69     		ldr	r3, [r3, #20]
 2780 0e28 FF22     		movs	r2, #255
 2781 0e2a 1340     		ands	r3, r2
 2782 0e2c 0A00     		movs	r2, r1
 2783 0e2e 1A43     		orrs	r2, r3
 2784 0e30 7B69     		ldr	r3, [r7, #20]
 2785 0e32 5A61     		str	r2, [r3, #20]
 2786              	.LBB28:
 517:X:/C/graphics\startup.c **** 		for(int j = 0; j<4;j++)
 2787              		.loc 1 517 0
 2788 0e34 0023     		movs	r3, #0
 2789 0e36 BB61     		str	r3, [r7, #24]
 2790 0e38 13E0     		b	.L142
 2791              	.L145:
 518:X:/C/graphics\startup.c **** 		{
 519:X:/C/graphics\startup.c **** 			if(d->IDR & 0x100<<j)
 2792              		.loc 1 519 0
 2793 0e3a 7B69     		ldr	r3, [r7, #20]
 2794 0e3c 1B69     		ldr	r3, [r3, #16]
 2795 0e3e 8022     		movs	r2, #128
 2796 0e40 5100     		lsls	r1, r2, #1
 2797 0e42 BA69     		ldr	r2, [r7, #24]
 2798 0e44 9140     		lsls	r1, r1, r2
 2799 0e46 0A00     		movs	r2, r1
 2800 0e48 1340     		ands	r3, r2
 2801 0e4a 07D0     		beq	.L143
 520:X:/C/graphics\startup.c **** 			{
 521:X:/C/graphics\startup.c **** 				return res[i][j];
 2802              		.loc 1 521 0
 2803 0e4c 3A00     		movs	r2, r7
 2804 0e4e FB69     		ldr	r3, [r7, #28]
 2805 0e50 9B00     		lsls	r3, r3, #2
 2806 0e52 D218     		adds	r2, r2, r3
 2807 0e54 BB69     		ldr	r3, [r7, #24]
 2808 0e56 D318     		adds	r3, r2, r3
 2809 0e58 1B78     		ldrb	r3, [r3]
 2810 0e5a 0CE0     		b	.L147
 2811              	.L143:
 517:X:/C/graphics\startup.c **** 		{
 2812              		.loc 1 517 0 discriminator 2
 2813 0e5c BB69     		ldr	r3, [r7, #24]
 2814 0e5e 0133     		adds	r3, r3, #1
 2815 0e60 BB61     		str	r3, [r7, #24]
 2816              	.L142:
 517:X:/C/graphics\startup.c **** 		{
 2817              		.loc 1 517 0 is_stmt 0 discriminator 1
 2818 0e62 BB69     		ldr	r3, [r7, #24]
 2819 0e64 032B     		cmp	r3, #3
 2820 0e66 E8DD     		ble	.L145
 2821              	.LBE28:
 514:X:/C/graphics\startup.c **** 	{
 2822              		.loc 1 514 0 is_stmt 1 discriminator 2
 2823 0e68 FB69     		ldr	r3, [r7, #28]
 2824 0e6a 0133     		adds	r3, r3, #1
 2825 0e6c FB61     		str	r3, [r7, #28]
 2826              	.L141:
 514:X:/C/graphics\startup.c **** 	{
 2827              		.loc 1 514 0 is_stmt 0 discriminator 1
 2828 0e6e FB69     		ldr	r3, [r7, #28]
 2829 0e70 032B     		cmp	r3, #3
 2830 0e72 D1DD     		ble	.L146
 2831              	.LBE27:
 522:X:/C/graphics\startup.c **** 			}
 523:X:/C/graphics\startup.c **** 		}
 524:X:/C/graphics\startup.c **** 	}
 525:X:/C/graphics\startup.c **** 	return 0;
 2832              		.loc 1 525 0 is_stmt 1
 2833 0e74 0023     		movs	r3, #0
 2834              	.L147:
 526:X:/C/graphics\startup.c **** }
 2835              		.loc 1 526 0 discriminator 1
 2836 0e76 1800     		movs	r0, r3
 2837 0e78 BD46     		mov	sp, r7
 2838 0e7a 08B0     		add	sp, sp, #32
 2839              		@ sp needed
 2840 0e7c 80BD     		pop	{r7, pc}
 2841              	.L149:
 2842 0e7e C046     		.align	2
 2843              	.L148:
 2844 0e80 000C0240 		.word	1073875968
 2845 0e84 00100240 		.word	1073876992
 2846 0e88 00000000 		.word	.LC0
 2847              		.cfi_endproc
 2848              	.LFE30:
 2850              		.align	2
 2851              		.global	get_bounds
 2852              		.code	16
 2853              		.thumb_func
 2855              	get_bounds:
 2856              	.LFB31:
 527:X:/C/graphics\startup.c **** 
 528:X:/C/graphics\startup.c **** void get_bounds(Entity *entity, int *x_min, int *x_max, int *y_min, int *y_max)
 529:X:/C/graphics\startup.c **** {
 2857              		.loc 1 529 0
 2858              		.cfi_startproc
 2859 0e8c 80B5     		push	{r7, lr}
 2860              		.cfi_def_cfa_offset 8
 2861              		.cfi_offset 7, -8
 2862              		.cfi_offset 14, -4
 2863 0e8e 84B0     		sub	sp, sp, #16
 2864              		.cfi_def_cfa_offset 24
 2865 0e90 00AF     		add	r7, sp, #0
 2866              		.cfi_def_cfa_register 7
 2867 0e92 F860     		str	r0, [r7, #12]
 2868 0e94 B960     		str	r1, [r7, #8]
 2869 0e96 7A60     		str	r2, [r7, #4]
 2870 0e98 3B60     		str	r3, [r7]
 530:X:/C/graphics\startup.c ****     *x_max = entity->pos.x + entities->sprite->w/2;
 2871              		.loc 1 530 0
 2872 0e9a FB68     		ldr	r3, [r7, #12]
 2873 0e9c 9A68     		ldr	r2, [r3, #8]
 2874 0e9e 1C4B     		ldr	r3, .L155
 2875 0ea0 1968     		ldr	r1, [r3]
 2876 0ea2 8123     		movs	r3, #129
 2877 0ea4 DB00     		lsls	r3, r3, #3
 2878 0ea6 CB58     		ldr	r3, [r1, r3]
 2879 0ea8 002B     		cmp	r3, #0
 2880 0eaa 00DA     		bge	.L151
 2881 0eac 0133     		adds	r3, r3, #1
 2882              	.L151:
 2883 0eae 5B10     		asrs	r3, r3, #1
 2884 0eb0 D218     		adds	r2, r2, r3
 2885 0eb2 7B68     		ldr	r3, [r7, #4]
 2886 0eb4 1A60     		str	r2, [r3]
 531:X:/C/graphics\startup.c ****     *x_min = entity->pos.x - entities->sprite->w/2;
 2887              		.loc 1 531 0
 2888 0eb6 FB68     		ldr	r3, [r7, #12]
 2889 0eb8 9A68     		ldr	r2, [r3, #8]
 2890 0eba 154B     		ldr	r3, .L155
 2891 0ebc 1968     		ldr	r1, [r3]
 2892 0ebe 8123     		movs	r3, #129
 2893 0ec0 DB00     		lsls	r3, r3, #3
 2894 0ec2 CB58     		ldr	r3, [r1, r3]
 2895 0ec4 002B     		cmp	r3, #0
 2896 0ec6 00DA     		bge	.L152
 2897 0ec8 0133     		adds	r3, r3, #1
 2898              	.L152:
 2899 0eca 5B10     		asrs	r3, r3, #1
 2900 0ecc D21A     		subs	r2, r2, r3
 2901 0ece BB68     		ldr	r3, [r7, #8]
 2902 0ed0 1A60     		str	r2, [r3]
 532:X:/C/graphics\startup.c **** 
 533:X:/C/graphics\startup.c ****     *y_max = entity->pos.y + entities->sprite->h/2;
 2903              		.loc 1 533 0
 2904 0ed2 FB68     		ldr	r3, [r7, #12]
 2905 0ed4 DA68     		ldr	r2, [r3, #12]
 2906 0ed6 0E4B     		ldr	r3, .L155
 2907 0ed8 1B68     		ldr	r3, [r3]
 2908 0eda 0E49     		ldr	r1, .L155+4
 2909 0edc 5B58     		ldr	r3, [r3, r1]
 2910 0ede 002B     		cmp	r3, #0
 2911 0ee0 00DA     		bge	.L153
 2912 0ee2 0133     		adds	r3, r3, #1
 2913              	.L153:
 2914 0ee4 5B10     		asrs	r3, r3, #1
 2915 0ee6 D218     		adds	r2, r2, r3
 2916 0ee8 BB69     		ldr	r3, [r7, #24]
 2917 0eea 1A60     		str	r2, [r3]
 534:X:/C/graphics\startup.c ****     *y_min = entity->pos.y - entities->sprite->h/2; 
 2918              		.loc 1 534 0
 2919 0eec FB68     		ldr	r3, [r7, #12]
 2920 0eee DA68     		ldr	r2, [r3, #12]
 2921 0ef0 074B     		ldr	r3, .L155
 2922 0ef2 1B68     		ldr	r3, [r3]
 2923 0ef4 0749     		ldr	r1, .L155+4
 2924 0ef6 5B58     		ldr	r3, [r3, r1]
 2925 0ef8 002B     		cmp	r3, #0
 2926 0efa 00DA     		bge	.L154
 2927 0efc 0133     		adds	r3, r3, #1
 2928              	.L154:
 2929 0efe 5B10     		asrs	r3, r3, #1
 2930 0f00 D21A     		subs	r2, r2, r3
 2931 0f02 3B68     		ldr	r3, [r7]
 2932 0f04 1A60     		str	r2, [r3]
 535:X:/C/graphics\startup.c **** }
 2933              		.loc 1 535 0
 2934 0f06 C046     		nop
 2935 0f08 BD46     		mov	sp, r7
 2936 0f0a 04B0     		add	sp, sp, #16
 2937              		@ sp needed
 2938 0f0c 80BD     		pop	{r7, pc}
 2939              	.L156:
 2940 0f0e C046     		.align	2
 2941              	.L155:
 2942 0f10 C0440000 		.word	entities
 2943 0f14 04040000 		.word	1028
 2944              		.cfi_endproc
 2945              	.LFE31:
 2947              		.align	2
 2948              		.global	wall_collision
 2949              		.code	16
 2950              		.thumb_func
 2952              	wall_collision:
 2953              	.LFB32:
 536:X:/C/graphics\startup.c **** 
 537:X:/C/graphics\startup.c **** bool wall_collision(Entity *entity)
 538:X:/C/graphics\startup.c **** {
 2954              		.loc 1 538 0
 2955              		.cfi_startproc
 2956 0f18 90B5     		push	{r4, r7, lr}
 2957              		.cfi_def_cfa_offset 12
 2958              		.cfi_offset 4, -12
 2959              		.cfi_offset 7, -8
 2960              		.cfi_offset 14, -4
 2961 0f1a 89B0     		sub	sp, sp, #36
 2962              		.cfi_def_cfa_offset 48
 2963 0f1c 02AF     		add	r7, sp, #8
 2964              		.cfi_def_cfa 7, 40
 2965 0f1e 7860     		str	r0, [r7, #4]
 539:X:/C/graphics\startup.c ****     int x_min,x_max,y_min,y_max;
 540:X:/C/graphics\startup.c ****     get_bounds(entity,&x_min,&x_max,&y_min,&y_max);
 2966              		.loc 1 540 0
 2967 0f20 0C23     		movs	r3, #12
 2968 0f22 FC18     		adds	r4, r7, r3
 2969 0f24 1023     		movs	r3, #16
 2970 0f26 FA18     		adds	r2, r7, r3
 2971 0f28 1423     		movs	r3, #20
 2972 0f2a F918     		adds	r1, r7, r3
 2973 0f2c 7868     		ldr	r0, [r7, #4]
 2974 0f2e 0823     		movs	r3, #8
 2975 0f30 FB18     		adds	r3, r7, r3
 2976 0f32 0093     		str	r3, [sp]
 2977 0f34 2300     		movs	r3, r4
 2978 0f36 FFF7FEFF 		bl	get_bounds
 541:X:/C/graphics\startup.c ****     
 542:X:/C/graphics\startup.c ****     if(x_max >= 64  || 
 2979              		.loc 1 542 0
 2980 0f3a 3B69     		ldr	r3, [r7, #16]
 2981 0f3c 3F2B     		cmp	r3, #63
 2982 0f3e 08DC     		bgt	.L158
 543:X:/C/graphics\startup.c ****        x_min < 0    ||
 2983              		.loc 1 543 0 discriminator 1
 2984 0f40 7B69     		ldr	r3, [r7, #20]
 542:X:/C/graphics\startup.c ****        x_min < 0    ||
 2985              		.loc 1 542 0 discriminator 1
 2986 0f42 002B     		cmp	r3, #0
 2987 0f44 05DB     		blt	.L158
 544:X:/C/graphics\startup.c ****        y_max >= 128 || 
 2988              		.loc 1 544 0
 2989 0f46 BB68     		ldr	r3, [r7, #8]
 543:X:/C/graphics\startup.c ****        x_min < 0    ||
 2990              		.loc 1 543 0
 2991 0f48 7F2B     		cmp	r3, #127
 2992 0f4a 02DC     		bgt	.L158
 545:X:/C/graphics\startup.c ****        y_min < 0) return true;
 2993              		.loc 1 545 0
 2994 0f4c FB68     		ldr	r3, [r7, #12]
 544:X:/C/graphics\startup.c ****        y_max >= 128 || 
 2995              		.loc 1 544 0
 2996 0f4e 002B     		cmp	r3, #0
 2997 0f50 01DA     		bge	.L159
 2998              	.L158:
 2999              		.loc 1 545 0
 3000 0f52 0123     		movs	r3, #1
 3001 0f54 00E0     		b	.L161
 3002              	.L159:
 546:X:/C/graphics\startup.c ****     
 547:X:/C/graphics\startup.c ****     return false;
 3003              		.loc 1 547 0
 3004 0f56 0023     		movs	r3, #0
 3005              	.L161:
 548:X:/C/graphics\startup.c **** }
 3006              		.loc 1 548 0 discriminator 1
 3007 0f58 1800     		movs	r0, r3
 3008 0f5a BD46     		mov	sp, r7
 3009 0f5c 07B0     		add	sp, sp, #28
 3010              		@ sp needed
 3011 0f5e 90BD     		pop	{r4, r7, pc}
 3012              		.cfi_endproc
 3013              	.LFE32:
 3015              		.align	2
 3016              		.global	entity_collision
 3017              		.code	16
 3018              		.thumb_func
 3020              	entity_collision:
 3021              	.LFB33:
 549:X:/C/graphics\startup.c **** 
 550:X:/C/graphics\startup.c **** bool entity_collision(Entity *a, Entity *b)
 551:X:/C/graphics\startup.c **** {
 3022              		.loc 1 551 0
 3023              		.cfi_startproc
 3024 0f60 90B5     		push	{r4, r7, lr}
 3025              		.cfi_def_cfa_offset 12
 3026              		.cfi_offset 4, -12
 3027              		.cfi_offset 7, -8
 3028              		.cfi_offset 14, -4
 3029 0f62 8DB0     		sub	sp, sp, #52
 3030              		.cfi_def_cfa_offset 64
 3031 0f64 02AF     		add	r7, sp, #8
 3032              		.cfi_def_cfa 7, 56
 3033 0f66 7860     		str	r0, [r7, #4]
 3034 0f68 3960     		str	r1, [r7]
 552:X:/C/graphics\startup.c ****     int ax_min,ax_max,ay_min,ay_max;
 553:X:/C/graphics\startup.c ****     get_bounds(a,&ax_min,&ax_max,&ay_min,&ay_max);
 3035              		.loc 1 553 0
 3036 0f6a 1C23     		movs	r3, #28
 3037 0f6c FC18     		adds	r4, r7, r3
 3038 0f6e 2023     		movs	r3, #32
 3039 0f70 FA18     		adds	r2, r7, r3
 3040 0f72 2423     		movs	r3, #36
 3041 0f74 F918     		adds	r1, r7, r3
 3042 0f76 7868     		ldr	r0, [r7, #4]
 3043 0f78 1823     		movs	r3, #24
 3044 0f7a FB18     		adds	r3, r7, r3
 3045 0f7c 0093     		str	r3, [sp]
 3046 0f7e 2300     		movs	r3, r4
 3047 0f80 FFF7FEFF 		bl	get_bounds
 554:X:/C/graphics\startup.c ****     
 555:X:/C/graphics\startup.c ****     int bx_min,bx_max,by_min,by_max;
 556:X:/C/graphics\startup.c ****     get_bounds(b,&bx_min,&bx_max,&by_min,&by_max);
 3048              		.loc 1 556 0
 3049 0f84 0C23     		movs	r3, #12
 3050 0f86 FC18     		adds	r4, r7, r3
 3051 0f88 1023     		movs	r3, #16
 3052 0f8a FA18     		adds	r2, r7, r3
 3053 0f8c 1423     		movs	r3, #20
 3054 0f8e F918     		adds	r1, r7, r3
 3055 0f90 3868     		ldr	r0, [r7]
 3056 0f92 0823     		movs	r3, #8
 3057 0f94 FB18     		adds	r3, r7, r3
 3058 0f96 0093     		str	r3, [sp]
 3059 0f98 2300     		movs	r3, r4
 3060 0f9a FFF7FEFF 		bl	get_bounds
 557:X:/C/graphics\startup.c ****    
 558:X:/C/graphics\startup.c **** 	if((ax_min <= bx_min && ax_max >= bx_min)||
 3061              		.loc 1 558 0
 3062 0f9e 7A6A     		ldr	r2, [r7, #36]
 3063 0fa0 7B69     		ldr	r3, [r7, #20]
 3064 0fa2 9A42     		cmp	r2, r3
 3065 0fa4 03DC     		bgt	.L163
 3066              		.loc 1 558 0 is_stmt 0 discriminator 1
 3067 0fa6 3A6A     		ldr	r2, [r7, #32]
 3068 0fa8 7B69     		ldr	r3, [r7, #20]
 3069 0faa 9A42     		cmp	r2, r3
 3070 0fac 07DA     		bge	.L164
 3071              	.L163:
 559:X:/C/graphics\startup.c ****         (bx_min <= ax_min && bx_max >= ax_min))
 3072              		.loc 1 559 0 is_stmt 1 discriminator 3
 3073 0fae 7A69     		ldr	r2, [r7, #20]
 3074 0fb0 7B6A     		ldr	r3, [r7, #36]
 558:X:/C/graphics\startup.c ****         (bx_min <= ax_min && bx_max >= ax_min))
 3075              		.loc 1 558 0 discriminator 3
 3076 0fb2 9A42     		cmp	r2, r3
 3077 0fb4 15DC     		bgt	.L165
 3078              		.loc 1 559 0
 3079 0fb6 3A69     		ldr	r2, [r7, #16]
 3080 0fb8 7B6A     		ldr	r3, [r7, #36]
 3081 0fba 9A42     		cmp	r2, r3
 3082 0fbc 11DB     		blt	.L165
 3083              	.L164:
 560:X:/C/graphics\startup.c ****     {
 561:X:/C/graphics\startup.c ****         if((ay_min <= by_min && ay_max >= by_min)||
 3084              		.loc 1 561 0
 3085 0fbe FA69     		ldr	r2, [r7, #28]
 3086 0fc0 FB68     		ldr	r3, [r7, #12]
 3087 0fc2 9A42     		cmp	r2, r3
 3088 0fc4 03DC     		bgt	.L166
 3089              		.loc 1 561 0 is_stmt 0 discriminator 1
 3090 0fc6 BA69     		ldr	r2, [r7, #24]
 3091 0fc8 FB68     		ldr	r3, [r7, #12]
 3092 0fca 9A42     		cmp	r2, r3
 3093 0fcc 07DA     		bge	.L167
 3094              	.L166:
 562:X:/C/graphics\startup.c ****            (by_min <= ay_min && by_max >= ay_min))
 3095              		.loc 1 562 0 is_stmt 1 discriminator 3
 3096 0fce FA68     		ldr	r2, [r7, #12]
 3097 0fd0 FB69     		ldr	r3, [r7, #28]
 561:X:/C/graphics\startup.c ****            (by_min <= ay_min && by_max >= ay_min))
 3098              		.loc 1 561 0 discriminator 3
 3099 0fd2 9A42     		cmp	r2, r3
 3100 0fd4 05DC     		bgt	.L165
 3101              		.loc 1 562 0
 3102 0fd6 BA68     		ldr	r2, [r7, #8]
 3103 0fd8 FB69     		ldr	r3, [r7, #28]
 3104 0fda 9A42     		cmp	r2, r3
 3105 0fdc 01DB     		blt	.L165
 3106              	.L167:
 563:X:/C/graphics\startup.c ****         {
 564:X:/C/graphics\startup.c ****             return true;
 3107              		.loc 1 564 0
 3108 0fde 0123     		movs	r3, #1
 3109 0fe0 00E0     		b	.L169
 3110              	.L165:
 565:X:/C/graphics\startup.c ****         }
 566:X:/C/graphics\startup.c ****     }
 567:X:/C/graphics\startup.c ****     return false;
 3111              		.loc 1 567 0
 3112 0fe2 0023     		movs	r3, #0
 3113              	.L169:
 568:X:/C/graphics\startup.c **** }
 3114              		.loc 1 568 0 discriminator 1
 3115 0fe4 1800     		movs	r0, r3
 3116 0fe6 BD46     		mov	sp, r7
 3117 0fe8 0BB0     		add	sp, sp, #44
 3118              		@ sp needed
 3119 0fea 90BD     		pop	{r4, r7, pc}
 3120              		.cfi_endproc
 3121              	.LFE33:
 3123              		.global	ship_defn
 3124              		.section	.rodata
 3125              		.align	2
 3126              	.LC63:
 3127 0010 20202020 		.ascii	"      #           ###          ###      ###########"
 3127      20202320 
 3127      20202020 
 3127      20202020 
 3127      20202323 
 3128 0043 20232323 		.ascii	" ##################################################"
 3128      23232323 
 3128      23232323 
 3128      23232323 
 3128      23232323 
 3129 0076 232300   		.ascii	"##\000"
 3130              		.data
 3131 0019 000000   		.align	2
 3134              	ship_defn:
 3135 001c 10000000 		.word	.LC63
 3136              		.global	bullet_defn
 3137              		.section	.rodata
 3138 0079 000000   		.align	2
 3139              	.LC64:
 3140 007c 20202320 		.ascii	"  #   ### ##### ###   #  \000"
 3140      20202323 
 3140      23202323 
 3140      23232320 
 3140      23232320 
 3141              		.data
 3142              		.align	2
 3145              	bullet_defn:
 3146 0020 7C000000 		.word	.LC64
 3147              		.global	enemy_defn
 3148              		.section	.rodata
 3149 0096 0000     		.align	2
 3150              	.LC65:
 3151 0098 20202320 		.ascii	"  #     #     #   #     #######    # ### #   ## ###"
 3151      20202020 
 3151      23202020 
 3151      20202320 
 3151      20202320 
 3152 00cb 20232320 		.ascii	" ## ############ ####### ## #     # #   #   #      "
 3152      23232323 
 3152      23232323 
 3152      23232323 
 3152      20232323 
 3153 00fe 20232023 		.ascii	" # #    \000"
 3153      20202020 
 3153      00
 3154              		.data
 3155              		.align	2
 3158              	enemy_defn:
 3159 0024 98000000 		.word	.LC65
 3160              		.global	laser_defn
 3161              		.section	.rodata
 3162 0107 00       		.align	2
 3163              	.LC66:
 3164 0108 23232323 		.ascii	"###########\000"
 3164      23232323 
 3164      23232300 
 3165              		.data
 3166              		.align	2
 3169              	laser_defn:
 3170 0028 08010000 		.word	.LC66
 3171              		.section	.rodata
 3172              		.align	2
 3173              	.LC1:
 3174 0114 1F000000 		.word	31
 3175 0118 04000000 		.word	4
 3176              		.align	2
 3177              	.LC2:
 3178 011c 1F000000 		.word	31
 3179 0120 64000000 		.word	100
 3180              		.text
 3181              		.align	2
 3182              		.global	main
 3183              		.code	16
 3184              		.thumb_func
 3186              	main:
 3187              	.LFB34:
 569:X:/C/graphics\startup.c **** 
 570:X:/C/graphics\startup.c **** char *ship_defn=
 571:X:/C/graphics\startup.c **** "      #      "
 572:X:/C/graphics\startup.c **** "     ###     "
 573:X:/C/graphics\startup.c **** "     ###     "
 574:X:/C/graphics\startup.c **** " ########### "
 575:X:/C/graphics\startup.c **** "#############"
 576:X:/C/graphics\startup.c **** "#############"
 577:X:/C/graphics\startup.c **** "#############"
 578:X:/C/graphics\startup.c **** "#############";
 579:X:/C/graphics\startup.c ****         
 580:X:/C/graphics\startup.c **** char *bullet_defn =
 581:X:/C/graphics\startup.c **** "  #  "
 582:X:/C/graphics\startup.c **** " ### "
 583:X:/C/graphics\startup.c **** "#####"
 584:X:/C/graphics\startup.c **** " ### "
 585:X:/C/graphics\startup.c **** "  #  ";
 586:X:/C/graphics\startup.c **** char *enemy_defn = 
 587:X:/C/graphics\startup.c **** "  #     #  "
 588:X:/C/graphics\startup.c **** "   #   #   "
 589:X:/C/graphics\startup.c **** "  #######  "
 590:X:/C/graphics\startup.c **** "  # ### #  "
 591:X:/C/graphics\startup.c **** " ## ### ## "
 592:X:/C/graphics\startup.c **** "###########"
 593:X:/C/graphics\startup.c **** "# ####### #"
 594:X:/C/graphics\startup.c **** "# #     # #"
 595:X:/C/graphics\startup.c **** "   #   #   "
 596:X:/C/graphics\startup.c **** "    # #    ";
 597:X:/C/graphics\startup.c **** 
 598:X:/C/graphics\startup.c **** 
 599:X:/C/graphics\startup.c **** char *laser_defn = "###########";
 600:X:/C/graphics\startup.c **** 
 601:X:/C/graphics\startup.c **** int main()
 602:X:/C/graphics\startup.c **** {
 3188              		.loc 1 602 0
 3189              		.cfi_startproc
 3190 0fec B0B5     		push	{r4, r5, r7, lr}
 3191              		.cfi_def_cfa_offset 16
 3192              		.cfi_offset 4, -16
 3193              		.cfi_offset 5, -12
 3194              		.cfi_offset 7, -8
 3195              		.cfi_offset 14, -4
 3196 0fee 96B0     		sub	sp, sp, #88
 3197              		.cfi_def_cfa_offset 104
 3198 0ff0 02AF     		add	r7, sp, #8
 3199              		.cfi_def_cfa 7, 96
 603:X:/C/graphics\startup.c ****     { //init app
 604:X:/C/graphics\startup.c ****         e->MODER = 0x55555555; //set write entire e
 3200              		.loc 1 604 0
 3201 0ff2 964B     		ldr	r3, .L183
 3202 0ff4 1B68     		ldr	r3, [r3]
 3203 0ff6 964A     		ldr	r2, .L183+4
 3204 0ff8 1A60     		str	r2, [r3]
 605:X:/C/graphics\startup.c **** 		d->MODER = 0x55005555;
 3205              		.loc 1 605 0
 3206 0ffa 964B     		ldr	r3, .L183+8
 3207 0ffc 1B68     		ldr	r3, [r3]
 3208 0ffe 964A     		ldr	r2, .L183+12
 3209 1000 1A60     		str	r2, [r3]
 606:X:/C/graphics\startup.c **** 		d->OTYPER = 0x0000;     //set push-pull 
 3210              		.loc 1 606 0
 3211 1002 944B     		ldr	r3, .L183+8
 3212 1004 1B68     		ldr	r3, [r3]
 3213 1006 0022     		movs	r2, #0
 3214 1008 5A60     		str	r2, [r3, #4]
 607:X:/C/graphics\startup.c **** 		d->PUPDR  = 0xAA000000; //set pull-down
 3215              		.loc 1 607 0
 3216 100a 924B     		ldr	r3, .L183+8
 3217 100c 1B68     		ldr	r3, [r3]
 3218 100e AA22     		movs	r2, #170
 3219 1010 1206     		lsls	r2, r2, #24
 3220 1012 DA60     		str	r2, [r3, #12]
 608:X:/C/graphics\startup.c ****     }
 609:X:/C/graphics\startup.c ****     graphics_initialize();
 3221              		.loc 1 609 0
 3222 1014 FFF7FEFF 		bl	graphics_initialize
 610:X:/C/graphics\startup.c **** 	set_all(0xff);
 3223              		.loc 1 610 0
 3224 1018 FF20     		movs	r0, #255
 3225 101a FFF7FEFF 		bl	set_all
 611:X:/C/graphics\startup.c **** 	
 612:X:/C/graphics\startup.c **** 
 613:X:/C/graphics\startup.c ****     
 614:X:/C/graphics\startup.c **** 
 615:X:/C/graphics\startup.c **** 	Sprite *ship_sprite = make_sprite(ship_defn,13,8,1);
 3226              		.loc 1 615 0
 3227 101e 8F4B     		ldr	r3, .L183+16
 3228 1020 1868     		ldr	r0, [r3]
 3229 1022 0123     		movs	r3, #1
 3230 1024 0822     		movs	r2, #8
 3231 1026 0D21     		movs	r1, #13
 3232 1028 FFF7FEFF 		bl	make_sprite
 3233 102c 0300     		movs	r3, r0
 3234 102e 7B64     		str	r3, [r7, #68]
 616:X:/C/graphics\startup.c **** 	Sprite *bullet_sprite = make_sprite(bullet_defn,5,5,1);
 3235              		.loc 1 616 0
 3236 1030 8B4B     		ldr	r3, .L183+20
 3237 1032 1868     		ldr	r0, [r3]
 3238 1034 0123     		movs	r3, #1
 3239 1036 0522     		movs	r2, #5
 3240 1038 0521     		movs	r1, #5
 3241 103a FFF7FEFF 		bl	make_sprite
 3242 103e 0300     		movs	r3, r0
 3243 1040 3B64     		str	r3, [r7, #64]
 617:X:/C/graphics\startup.c ****     Sprite *laser_sprite = make_sprite(laser_defn,1,8,1);
 3244              		.loc 1 617 0
 3245 1042 884B     		ldr	r3, .L183+24
 3246 1044 1868     		ldr	r0, [r3]
 3247 1046 0123     		movs	r3, #1
 3248 1048 0822     		movs	r2, #8
 3249 104a 0121     		movs	r1, #1
 3250 104c FFF7FEFF 		bl	make_sprite
 3251 1050 0300     		movs	r3, r0
 3252 1052 FB63     		str	r3, [r7, #60]
 618:X:/C/graphics\startup.c ****     Sprite *enemy_sprite = make_sprite(enemy_defn,11,10,1);
 3253              		.loc 1 618 0
 3254 1054 844B     		ldr	r3, .L183+28
 3255 1056 1868     		ldr	r0, [r3]
 3256 1058 0123     		movs	r3, #1
 3257 105a 0A22     		movs	r2, #10
 3258 105c 0B21     		movs	r1, #11
 3259 105e FFF7FEFF 		bl	make_sprite
 3260 1062 0300     		movs	r3, r0
 3261 1064 BB63     		str	r3, [r7, #56]
 619:X:/C/graphics\startup.c **** 
 620:X:/C/graphics\startup.c **** 	int *player_id = make_entity(ship_sprite, entity_type_player,(Vec2){31,4},(Vec2){0,0});
 3262              		.loc 1 620 0
 3263 1066 3B00     		movs	r3, r7
 3264 1068 804A     		ldr	r2, .L183+32
 3265 106a 03CA     		ldmia	r2!, {r0, r1}
 3266 106c 03C3     		stmia	r3!, {r0, r1}
 3267 106e 0823     		movs	r3, #8
 3268 1070 FB18     		adds	r3, r7, r3
 3269 1072 0022     		movs	r2, #0
 3270 1074 1A60     		str	r2, [r3]
 3271 1076 0823     		movs	r3, #8
 3272 1078 FB18     		adds	r3, r7, r3
 3273 107a 0022     		movs	r2, #0
 3274 107c 5A60     		str	r2, [r3, #4]
 3275 107e 3B00     		movs	r3, r7
 3276 1080 786C     		ldr	r0, [r7, #68]
 3277 1082 0822     		movs	r2, #8
 3278 1084 B918     		adds	r1, r7, r2
 3279 1086 6A46     		mov	r2, sp
 3280 1088 30C9     		ldmia	r1!, {r4, r5}
 3281 108a 30C2     		stmia	r2!, {r4, r5}
 3282 108c 1A68     		ldr	r2, [r3]
 3283 108e 5B68     		ldr	r3, [r3, #4]
 3284 1090 0021     		movs	r1, #0
 3285 1092 FFF7FEFF 		bl	make_entity
 3286 1096 0300     		movs	r3, r0
 3287 1098 7B63     		str	r3, [r7, #52]
 621:X:/C/graphics\startup.c ****     make_entity(enemy_sprite,entity_type_enemy,(Vec2){31,100},(Vec2){0,0});
 3288              		.loc 1 621 0
 3289 109a 1023     		movs	r3, #16
 3290 109c FB18     		adds	r3, r7, r3
 3291 109e 744A     		ldr	r2, .L183+36
 3292 10a0 03CA     		ldmia	r2!, {r0, r1}
 3293 10a2 03C3     		stmia	r3!, {r0, r1}
 3294 10a4 1823     		movs	r3, #24
 3295 10a6 FB18     		adds	r3, r7, r3
 3296 10a8 0022     		movs	r2, #0
 3297 10aa 1A60     		str	r2, [r3]
 3298 10ac 1823     		movs	r3, #24
 3299 10ae FB18     		adds	r3, r7, r3
 3300 10b0 0022     		movs	r2, #0
 3301 10b2 5A60     		str	r2, [r3, #4]
 3302 10b4 1023     		movs	r3, #16
 3303 10b6 FB18     		adds	r3, r7, r3
 3304 10b8 B86B     		ldr	r0, [r7, #56]
 3305 10ba 1822     		movs	r2, #24
 3306 10bc B918     		adds	r1, r7, r2
 3307 10be 6A46     		mov	r2, sp
 3308 10c0 30C9     		ldmia	r1!, {r4, r5}
 3309 10c2 30C2     		stmia	r2!, {r4, r5}
 3310 10c4 1A68     		ldr	r2, [r3]
 3311 10c6 5B68     		ldr	r3, [r3, #4]
 3312 10c8 0221     		movs	r1, #2
 3313 10ca FFF7FEFF 		bl	make_entity
 622:X:/C/graphics\startup.c **** 	set_all(0);
 3314              		.loc 1 622 0
 3315 10ce 0020     		movs	r0, #0
 3316 10d0 FFF7FEFF 		bl	set_all
 623:X:/C/graphics\startup.c **** 
 624:X:/C/graphics\startup.c ****     int speed = 2;
 3317              		.loc 1 624 0
 3318 10d4 0223     		movs	r3, #2
 3319 10d6 3B63     		str	r3, [r7, #48]
 3320              	.L182:
 3321              	.LBB29:
 625:X:/C/graphics\startup.c ****     for(;;)
 626:X:/C/graphics\startup.c ****     {
 627:X:/C/graphics\startup.c ****         char c = keyb();
 3322              		.loc 1 627 0
 3323 10d8 2F23     		movs	r3, #47
 3324 10da FC18     		adds	r4, r7, r3
 3325 10dc FFF7FEFF 		bl	keyb
 3326 10e0 0300     		movs	r3, r0
 3327 10e2 2370     		strb	r3, [r4]
 628:X:/C/graphics\startup.c **** 		Entity *player = entity_from_id(player_id);
 3328              		.loc 1 628 0
 3329 10e4 7B6B     		ldr	r3, [r7, #52]
 3330 10e6 1800     		movs	r0, r3
 3331 10e8 FFF7FEFF 		bl	entity_from_id
 3332 10ec 0300     		movs	r3, r0
 3333 10ee BB62     		str	r3, [r7, #40]
 629:X:/C/graphics\startup.c ****         if(c == '6') player->velocity.x = 2;
 3334              		.loc 1 629 0
 3335 10f0 2F23     		movs	r3, #47
 3336 10f2 FB18     		adds	r3, r7, r3
 3337 10f4 1B78     		ldrb	r3, [r3]
 3338 10f6 362B     		cmp	r3, #54
 3339 10f8 03D1     		bne	.L171
 3340              		.loc 1 629 0 is_stmt 0 discriminator 1
 3341 10fa BB6A     		ldr	r3, [r7, #40]
 3342 10fc 0222     		movs	r2, #2
 3343 10fe 1A61     		str	r2, [r3, #16]
 3344 1100 0CE0     		b	.L172
 3345              	.L171:
 630:X:/C/graphics\startup.c ****         else if(c == '4') player->velocity.x = -2;
 3346              		.loc 1 630 0 is_stmt 1
 3347 1102 2F23     		movs	r3, #47
 3348 1104 FB18     		adds	r3, r7, r3
 3349 1106 1B78     		ldrb	r3, [r3]
 3350 1108 342B     		cmp	r3, #52
 3351 110a 04D1     		bne	.L173
 3352              		.loc 1 630 0 is_stmt 0 discriminator 1
 3353 110c BB6A     		ldr	r3, [r7, #40]
 3354 110e 0222     		movs	r2, #2
 3355 1110 5242     		rsbs	r2, r2, #0
 3356 1112 1A61     		str	r2, [r3, #16]
 3357 1114 02E0     		b	.L172
 3358              	.L173:
 631:X:/C/graphics\startup.c ****         else player->velocity.x = 0;
 3359              		.loc 1 631 0 is_stmt 1
 3360 1116 BB6A     		ldr	r3, [r7, #40]
 3361 1118 0022     		movs	r2, #0
 3362 111a 1A61     		str	r2, [r3, #16]
 3363              	.L172:
 632:X:/C/graphics\startup.c **** 		if (c == '2') 
 3364              		.loc 1 632 0
 3365 111c 2F23     		movs	r3, #47
 3366 111e FB18     		adds	r3, r7, r3
 3367 1120 1B78     		ldrb	r3, [r3]
 3368 1122 322B     		cmp	r3, #50
 3369 1124 13D1     		bne	.L174
 633:X:/C/graphics\startup.c ****         {
 634:X:/C/graphics\startup.c ****             make_entity(laser_sprite, entity_type_bullet, player->pos, (Vec2) { 0, 10});
 3370              		.loc 1 634 0
 3371 1126 2023     		movs	r3, #32
 3372 1128 FB18     		adds	r3, r7, r3
 3373 112a 0022     		movs	r2, #0
 3374 112c 1A60     		str	r2, [r3]
 3375 112e 2023     		movs	r3, #32
 3376 1130 FB18     		adds	r3, r7, r3
 3377 1132 0A22     		movs	r2, #10
 3378 1134 5A60     		str	r2, [r3, #4]
 3379 1136 BB6A     		ldr	r3, [r7, #40]
 3380 1138 F86B     		ldr	r0, [r7, #60]
 3381 113a 2022     		movs	r2, #32
 3382 113c B918     		adds	r1, r7, r2
 3383 113e 6A46     		mov	r2, sp
 3384 1140 30C9     		ldmia	r1!, {r4, r5}
 3385 1142 30C2     		stmia	r2!, {r4, r5}
 3386 1144 9A68     		ldr	r2, [r3, #8]
 3387 1146 DB68     		ldr	r3, [r3, #12]
 3388 1148 0121     		movs	r1, #1
 3389 114a FFF7FEFF 		bl	make_entity
 3390              	.L174:
 635:X:/C/graphics\startup.c ****         }
 636:X:/C/graphics\startup.c **** 		
 637:X:/C/graphics\startup.c **** 		step_physics();
 3391              		.loc 1 637 0
 3392 114e FFF7FEFF 		bl	step_physics
 3393              	.LBB30:
 638:X:/C/graphics\startup.c ****         for(int i = 0;i<num_entities;i++)
 3394              		.loc 1 638 0
 3395 1152 0023     		movs	r3, #0
 3396 1154 FB64     		str	r3, [r7, #76]
 3397 1156 6FE0     		b	.L175
 3398              	.L181:
 639:X:/C/graphics\startup.c ****         {
 640:X:/C/graphics\startup.c ****             if(wall_collision(&entities[i]))
 3399              		.loc 1 640 0
 3400 1158 FA6C     		ldr	r2, [r7, #76]
 3401 115a 1300     		movs	r3, r2
 3402 115c DB00     		lsls	r3, r3, #3
 3403 115e 9B18     		adds	r3, r3, r2
 3404 1160 9B00     		lsls	r3, r3, #2
 3405 1162 444A     		ldr	r2, .L183+40
 3406 1164 9B18     		adds	r3, r3, r2
 3407 1166 1800     		movs	r0, r3
 3408 1168 FFF7FEFF 		bl	wall_collision
 3409 116c 031E     		subs	r3, r0, #0
 3410 116e 15D0     		beq	.L176
 641:X:/C/graphics\startup.c ****             {
 642:X:/C/graphics\startup.c **** 				if (entities[i].type == entity_type_bullet)entities[i].destroy = true;
 3411              		.loc 1 642 0
 3412 1170 4049     		ldr	r1, .L183+40
 3413 1172 FA6C     		ldr	r2, [r7, #76]
 3414 1174 2020     		movs	r0, #32
 3415 1176 1300     		movs	r3, r2
 3416 1178 DB00     		lsls	r3, r3, #3
 3417 117a 9B18     		adds	r3, r3, r2
 3418 117c 9B00     		lsls	r3, r3, #2
 3419 117e CB18     		adds	r3, r1, r3
 3420 1180 1B18     		adds	r3, r3, r0
 3421 1182 1B78     		ldrb	r3, [r3]
 3422 1184 012B     		cmp	r3, #1
 3423 1186 09D1     		bne	.L176
 3424              		.loc 1 642 0 is_stmt 0 discriminator 1
 3425 1188 3A49     		ldr	r1, .L183+40
 3426 118a FA6C     		ldr	r2, [r7, #76]
 3427 118c 1300     		movs	r3, r2
 3428 118e DB00     		lsls	r3, r3, #3
 3429 1190 9B18     		adds	r3, r3, r2
 3430 1192 9B00     		lsls	r3, r3, #2
 3431 1194 CB18     		adds	r3, r1, r3
 3432 1196 1833     		adds	r3, r3, #24
 3433 1198 0122     		movs	r2, #1
 3434 119a 1A70     		strb	r2, [r3]
 3435              	.L176:
 643:X:/C/graphics\startup.c ****             }
 644:X:/C/graphics\startup.c ****             if (entities[i].type == entity_type_bullet)
 3436              		.loc 1 644 0 is_stmt 1
 3437 119c 3549     		ldr	r1, .L183+40
 3438 119e FA6C     		ldr	r2, [r7, #76]
 3439 11a0 2020     		movs	r0, #32
 3440 11a2 1300     		movs	r3, r2
 3441 11a4 DB00     		lsls	r3, r3, #3
 3442 11a6 9B18     		adds	r3, r3, r2
 3443 11a8 9B00     		lsls	r3, r3, #2
 3444 11aa CB18     		adds	r3, r1, r3
 3445 11ac 1B18     		adds	r3, r3, r0
 3446 11ae 1B78     		ldrb	r3, [r3]
 3447 11b0 012B     		cmp	r3, #1
 3448 11b2 3ED1     		bne	.L177
 3449              	.LBB31:
 645:X:/C/graphics\startup.c ****             {
 646:X:/C/graphics\startup.c ****                 for(int j = 0;j<num_entities;j++)
 3450              		.loc 1 646 0
 3451 11b4 0023     		movs	r3, #0
 3452 11b6 BB64     		str	r3, [r7, #72]
 3453 11b8 36E0     		b	.L178
 3454              	.L180:
 647:X:/C/graphics\startup.c ****                 {
 648:X:/C/graphics\startup.c ****                     if(entities[j].type == entity_type_enemy)
 3455              		.loc 1 648 0
 3456 11ba 2E49     		ldr	r1, .L183+40
 3457 11bc BA6C     		ldr	r2, [r7, #72]
 3458 11be 2020     		movs	r0, #32
 3459 11c0 1300     		movs	r3, r2
 3460 11c2 DB00     		lsls	r3, r3, #3
 3461 11c4 9B18     		adds	r3, r3, r2
 3462 11c6 9B00     		lsls	r3, r3, #2
 3463 11c8 CB18     		adds	r3, r1, r3
 3464 11ca 1B18     		adds	r3, r3, r0
 3465 11cc 1B78     		ldrb	r3, [r3]
 3466 11ce 022B     		cmp	r3, #2
 3467 11d0 27D1     		bne	.L179
 649:X:/C/graphics\startup.c ****                     {
 650:X:/C/graphics\startup.c ****                         if(entity_collision(&entities[i],&entities[j]))
 3468              		.loc 1 650 0
 3469 11d2 FA6C     		ldr	r2, [r7, #76]
 3470 11d4 1300     		movs	r3, r2
 3471 11d6 DB00     		lsls	r3, r3, #3
 3472 11d8 9B18     		adds	r3, r3, r2
 3473 11da 9B00     		lsls	r3, r3, #2
 3474 11dc 254A     		ldr	r2, .L183+40
 3475 11de 9818     		adds	r0, r3, r2
 3476 11e0 BA6C     		ldr	r2, [r7, #72]
 3477 11e2 1300     		movs	r3, r2
 3478 11e4 DB00     		lsls	r3, r3, #3
 3479 11e6 9B18     		adds	r3, r3, r2
 3480 11e8 9B00     		lsls	r3, r3, #2
 3481 11ea 224A     		ldr	r2, .L183+40
 3482 11ec 9B18     		adds	r3, r3, r2
 3483 11ee 1900     		movs	r1, r3
 3484 11f0 FFF7FEFF 		bl	entity_collision
 3485 11f4 031E     		subs	r3, r0, #0
 3486 11f6 14D0     		beq	.L179
 651:X:/C/graphics\startup.c ****                         {
 652:X:/C/graphics\startup.c ****                             entities[j].destroy = true;
 3487              		.loc 1 652 0
 3488 11f8 1E49     		ldr	r1, .L183+40
 3489 11fa BA6C     		ldr	r2, [r7, #72]
 3490 11fc 1300     		movs	r3, r2
 3491 11fe DB00     		lsls	r3, r3, #3
 3492 1200 9B18     		adds	r3, r3, r2
 3493 1202 9B00     		lsls	r3, r3, #2
 3494 1204 CB18     		adds	r3, r1, r3
 3495 1206 1833     		adds	r3, r3, #24
 3496 1208 0122     		movs	r2, #1
 3497 120a 1A70     		strb	r2, [r3]
 653:X:/C/graphics\startup.c ****                             entities[i].destroy = true;
 3498              		.loc 1 653 0
 3499 120c 1949     		ldr	r1, .L183+40
 3500 120e FA6C     		ldr	r2, [r7, #76]
 3501 1210 1300     		movs	r3, r2
 3502 1212 DB00     		lsls	r3, r3, #3
 3503 1214 9B18     		adds	r3, r3, r2
 3504 1216 9B00     		lsls	r3, r3, #2
 3505 1218 CB18     		adds	r3, r1, r3
 3506 121a 1833     		adds	r3, r3, #24
 3507 121c 0122     		movs	r2, #1
 3508 121e 1A70     		strb	r2, [r3]
 654:X:/C/graphics\startup.c ****                             break;
 3509              		.loc 1 654 0
 3510 1220 07E0     		b	.L177
 3511              	.L179:
 646:X:/C/graphics\startup.c ****                 {
 3512              		.loc 1 646 0 discriminator 2
 3513 1222 BB6C     		ldr	r3, [r7, #72]
 3514 1224 0133     		adds	r3, r3, #1
 3515 1226 BB64     		str	r3, [r7, #72]
 3516              	.L178:
 646:X:/C/graphics\startup.c ****                 {
 3517              		.loc 1 646 0 is_stmt 0 discriminator 1
 3518 1228 134B     		ldr	r3, .L183+44
 3519 122a 1B68     		ldr	r3, [r3]
 3520 122c BA6C     		ldr	r2, [r7, #72]
 3521 122e 9A42     		cmp	r2, r3
 3522 1230 C3DB     		blt	.L180
 3523              	.L177:
 3524              	.LBE31:
 638:X:/C/graphics\startup.c ****         {
 3525              		.loc 1 638 0 is_stmt 1 discriminator 2
 3526 1232 FB6C     		ldr	r3, [r7, #76]
 3527 1234 0133     		adds	r3, r3, #1
 3528 1236 FB64     		str	r3, [r7, #76]
 3529              	.L175:
 638:X:/C/graphics\startup.c ****         {
 3530              		.loc 1 638 0 is_stmt 0 discriminator 1
 3531 1238 0F4B     		ldr	r3, .L183+44
 3532 123a 1B68     		ldr	r3, [r3]
 3533 123c FA6C     		ldr	r2, [r7, #76]
 3534 123e 9A42     		cmp	r2, r3
 3535 1240 8ADB     		blt	.L181
 3536              	.LBE30:
 655:X:/C/graphics\startup.c ****                         }
 656:X:/C/graphics\startup.c ****                     }
 657:X:/C/graphics\startup.c ****                 }
 658:X:/C/graphics\startup.c ****             }
 659:X:/C/graphics\startup.c **** 
 660:X:/C/graphics\startup.c ****         }
 661:X:/C/graphics\startup.c **** 		render();
 3537              		.loc 1 661 0 is_stmt 1
 3538 1242 FFF7FEFF 		bl	render
 662:X:/C/graphics\startup.c **** 		cleanup_entities();
 3539              		.loc 1 662 0
 3540 1246 FFF7FEFF 		bl	cleanup_entities
 3541              	.LBE29:
 663:X:/C/graphics\startup.c ****     }
 3542              		.loc 1 663 0
 3543 124a 45E7     		b	.L182
 3544              	.L184:
 3545              		.align	2
 3546              	.L183:
 3547 124c 00000000 		.word	e
 3548 1250 55555555 		.word	1431655765
 3549 1254 00000000 		.word	d
 3550 1258 55550055 		.word	1426085205
 3551 125c 00000000 		.word	ship_defn
 3552 1260 00000000 		.word	bullet_defn
 3553 1264 00000000 		.word	laser_defn
 3554 1268 00000000 		.word	enemy_defn
 3555 126c 14010000 		.word	.LC1
 3556 1270 1C010000 		.word	.LC2
 3557 1274 C0440000 		.word	entities
 3558 1278 C0560000 		.word	num_entities
 3559              		.cfi_endproc
 3560              	.LFE34:
 3562              		.bss
 3563              		.align	2
 3564              	id_counter.4361:
 3565 56c8 00000000 		.space	4
 3566              		.text
 3567              	.Letext0:
