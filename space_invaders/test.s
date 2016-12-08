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
  27              		.file 1 "C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders/startup.c
   1:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** /*
   2:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****  * 	startup.c
   3:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****  *
   4:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****  */
   5:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
   7:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void startup ( void )
   8:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
  28              		.loc 1 8 0
  29              		.cfi_startproc
   9:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** asm volatile(
  30              		.loc 1 9 0
  31              		.syntax divided
  32              	@ 9 "C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders/startup.c" 1
  33 0000 0248     		 LDR R0,=0x2001C000
  34 0002 8546     	 MOV SP,R0
  35 0004 FFF7FEFF 	 BL main
  36 0008 FEE7     	.L1: B .L1
  37              	
  38              	@ 0 "" 2
  10:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  11:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	" MOV SP,R0\n"
  12:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	" BL main\n"				/* call main */
  13:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	".L1: B .L1\n"				/* never return */
  14:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	) ;
  15:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
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
  16:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
  17:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #define FORI(limit)for(int i = 0; i < limit; i++)
  18:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #define MAX_POINTS 20
  19:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
  20:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** typedef unsigned char  u8;
  21:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** typedef unsigned short u16;
  22:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** typedef unsigned long  u32;
  23:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** typedef signed char    s8;
  24:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** typedef signed short   s16 ;
  25:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** typedef signed long    s32 ;
  26:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
  27:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** typedef enum{
  28:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     false = 0,
  29:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     true = 1,
  30:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }bool;
  31:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
  32:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** typedef struct
  33:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
  34:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     volatile u32 MODER;
  35:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     volatile u32 OTYPER;
  36:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     volatile u32 OSPEEDER;
  37:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     volatile u32 PUPDR;
  38:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     volatile u32 IDR;
  39:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     volatile u32 ODR;
  40:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     volatile u32 BSRR;
  41:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     volatile u32 LCKR;
  42:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     volatile u32 AFRL;
  43:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     volatile u32 AFRH;
  44:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** } GPIO_REG;
  45:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
  46:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** typedef struct
  47:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
  48:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     volatile u32 STK_CTRL;
  49:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     volatile u32 STK_LOAD;
  50:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     volatile u32 STK_VAL;
  51:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     volatile u32 STK_CALIB;
  52:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** } SysTick;
  53:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
  54:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
  55:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** typedef unsigned char uint8_t;
  56:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
  57:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** GPIO_REG *d = (GPIO_REG *)0x40020C00;
  58:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** GPIO_REG *e = (GPIO_REG *)0x40021000;
  59:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** SysTick *sys_tick = (SysTick *)0xe000e010;
  60:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
  61:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** uint8_t B_CS1 = 0x8;
  62:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** uint8_t	B_CS2 = 0x10;
  63:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** uint8_t B_RST = 0x20;
  64:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
  65:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** uint8_t LCD_OFF = 0b00111110;
  66:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** uint8_t LCD_ON = 0b00011111;
  67:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** uint8_t LCD_SET_ADD = 0b01000000;
  68:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** uint8_t LCD_SET_PAGE = 0b010111000;
  69:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** uint8_t LCD_DISP_START =  0b11000000;
  70:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** uint8_t LCD_BUSY = 0b10000000;
  71:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
  72:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #define SIMULATOR
  73:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #ifndef SIMULATOR
  74:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void delay250xns(u32 num)
  75:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
  76:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     sys_tick->STK_CTRL = 0;
  77:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     sys_tick->STK_LOAD = num*168/4-1;
  78:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     sys_tick->STK_VAL = 0;
  79:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     sys_tick->STK_CTRL = 5;
  80:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     while(!(sys_tick->STK_CTRL & 0x10000));
  81:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     sys_tick->STK_CTRL = 0;
  82:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     
  83:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
  84:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
  85:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void delay250ns(void)
  86:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
  87:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     delay250xns(1);
  88:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
  89:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
  90:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void delay500ns(void)
  91:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
  92:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     delay250xns(2);
  93:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
  94:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
  95:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void delay_micro(u32 num)
  96:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
  97:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
  98:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     delay250xns(4*num);
  99:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 100:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 101:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void delay_milli(u32 num)
 102:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 103:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     for(int i = 0;i<num;i++)
 104:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     {
 105:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         delay_micro(1000);
 106:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     }
 107:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 108:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #else
 109:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void delay250xns(u32 num){}
 118              		.loc 1 109 0
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
 129              		.loc 1 109 0
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
 110:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void delay250ns(void){}
 145              		.loc 1 110 0
 146              		.cfi_startproc
 147 0010 80B5     		push	{r7, lr}
 148              		.cfi_def_cfa_offset 8
 149              		.cfi_offset 7, -8
 150              		.cfi_offset 14, -4
 151 0012 00AF     		add	r7, sp, #0
 152              		.cfi_def_cfa_register 7
 153              		.loc 1 110 0
 154 0014 C046     		nop
 155 0016 BD46     		mov	sp, r7
 156              		@ sp needed
 157 0018 80BD     		pop	{r7, pc}
 158              		.cfi_endproc
 159              	.LFE2:
 161 001a C046     		.align	2
 162              		.global	delay500ns
 163              		.code	16
 164              		.thumb_func
 166              	delay500ns:
 167              	.LFB3:
 111:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void delay500ns(void){}
 168              		.loc 1 111 0
 169              		.cfi_startproc
 170 001c 80B5     		push	{r7, lr}
 171              		.cfi_def_cfa_offset 8
 172              		.cfi_offset 7, -8
 173              		.cfi_offset 14, -4
 174 001e 00AF     		add	r7, sp, #0
 175              		.cfi_def_cfa_register 7
 176              		.loc 1 111 0
 177 0020 C046     		nop
 178 0022 BD46     		mov	sp, r7
 179              		@ sp needed
 180 0024 80BD     		pop	{r7, pc}
 181              		.cfi_endproc
 182              	.LFE3:
 184 0026 C046     		.align	2
 185              		.global	delay_micro
 186              		.code	16
 187              		.thumb_func
 189              	delay_micro:
 190              	.LFB4:
 112:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void delay_micro(u32 num){}
 191              		.loc 1 112 0
 192              		.cfi_startproc
 193 0028 80B5     		push	{r7, lr}
 194              		.cfi_def_cfa_offset 8
 195              		.cfi_offset 7, -8
 196              		.cfi_offset 14, -4
 197 002a 82B0     		sub	sp, sp, #8
 198              		.cfi_def_cfa_offset 16
 199 002c 00AF     		add	r7, sp, #0
 200              		.cfi_def_cfa_register 7
 201 002e 7860     		str	r0, [r7, #4]
 202              		.loc 1 112 0
 203 0030 C046     		nop
 204 0032 BD46     		mov	sp, r7
 205 0034 02B0     		add	sp, sp, #8
 206              		@ sp needed
 207 0036 80BD     		pop	{r7, pc}
 208              		.cfi_endproc
 209              	.LFE4:
 211              		.align	2
 212              		.global	delay_milli
 213              		.code	16
 214              		.thumb_func
 216              	delay_milli:
 217              	.LFB5:
 113:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void delay_milli(u32 num){}
 218              		.loc 1 113 0
 219              		.cfi_startproc
 220 0038 80B5     		push	{r7, lr}
 221              		.cfi_def_cfa_offset 8
 222              		.cfi_offset 7, -8
 223              		.cfi_offset 14, -4
 224 003a 82B0     		sub	sp, sp, #8
 225              		.cfi_def_cfa_offset 16
 226 003c 00AF     		add	r7, sp, #0
 227              		.cfi_def_cfa_register 7
 228 003e 7860     		str	r0, [r7, #4]
 229              		.loc 1 113 0
 230 0040 C046     		nop
 231 0042 BD46     		mov	sp, r7
 232 0044 02B0     		add	sp, sp, #8
 233              		@ sp needed
 234 0046 80BD     		pop	{r7, pc}
 235              		.cfi_endproc
 236              	.LFE5:
 238              		.global	bit_E
 239              		.data
 242              	bit_E:
 243 0015 40       		.byte	64
 244              		.global	bit_SELECT
 247              	bit_SELECT:
 248 0016 04       		.byte	4
 249              		.global	bit_RW
 252              	bit_RW:
 253 0017 02       		.byte	2
 254              		.global	bit_RS
 257              	bit_RS:
 258 0018 01       		.byte	1
 259              		.text
 260              		.align	2
 261              		.global	ascii_set_bit
 262              		.code	16
 263              		.thumb_func
 265              	ascii_set_bit:
 266              	.LFB6:
 114:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #endif
 115:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 116:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** u8 bit_E = 0b01000000;
 117:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** u8 bit_SELECT = 0b100;
 118:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** u8 bit_RW = 0b10;
 119:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** u8 bit_RS = 0b1;
 120:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 121:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void ascii_set_bit(u8 byte)
 122:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 267              		.loc 1 122 0
 268              		.cfi_startproc
 269 0048 80B5     		push	{r7, lr}
 270              		.cfi_def_cfa_offset 8
 271              		.cfi_offset 7, -8
 272              		.cfi_offset 14, -4
 273 004a 82B0     		sub	sp, sp, #8
 274              		.cfi_def_cfa_offset 16
 275 004c 00AF     		add	r7, sp, #0
 276              		.cfi_def_cfa_register 7
 277 004e 0200     		movs	r2, r0
 278 0050 FB1D     		adds	r3, r7, #7
 279 0052 1A70     		strb	r2, [r3]
 123:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     e->ODR |= byte & 0b1111111111111011;
 280              		.loc 1 123 0
 281 0054 074B     		ldr	r3, .L8
 282 0056 1B68     		ldr	r3, [r3]
 283 0058 064A     		ldr	r2, .L8
 284 005a 1268     		ldr	r2, [r2]
 285 005c 5169     		ldr	r1, [r2, #20]
 286 005e FA1D     		adds	r2, r7, #7
 287 0060 1278     		ldrb	r2, [r2]
 288 0062 0548     		ldr	r0, .L8+4
 289 0064 0240     		ands	r2, r0
 290 0066 0A43     		orrs	r2, r1
 291 0068 5A61     		str	r2, [r3, #20]
 124:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 292              		.loc 1 124 0
 293 006a C046     		nop
 294 006c BD46     		mov	sp, r7
 295 006e 02B0     		add	sp, sp, #8
 296              		@ sp needed
 297 0070 80BD     		pop	{r7, pc}
 298              	.L9:
 299 0072 C046     		.align	2
 300              	.L8:
 301 0074 00000000 		.word	e
 302 0078 FBFF0000 		.word	65531
 303              		.cfi_endproc
 304              	.LFE6:
 306              		.align	2
 307              		.global	ascii_clear_bit
 308              		.code	16
 309              		.thumb_func
 311              	ascii_clear_bit:
 312              	.LFB7:
 125:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 126:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void ascii_clear_bit(u8 byte)
 127:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 313              		.loc 1 127 0
 314              		.cfi_startproc
 315 007c 80B5     		push	{r7, lr}
 316              		.cfi_def_cfa_offset 8
 317              		.cfi_offset 7, -8
 318              		.cfi_offset 14, -4
 319 007e 82B0     		sub	sp, sp, #8
 320              		.cfi_def_cfa_offset 16
 321 0080 00AF     		add	r7, sp, #0
 322              		.cfi_def_cfa_register 7
 323 0082 0200     		movs	r2, r0
 324 0084 FB1D     		adds	r3, r7, #7
 325 0086 1A70     		strb	r2, [r3]
 128:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     //e->ODR &= 0xff0|~byte;
 129:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	e->ODR &= 0xffff-byte;
 326              		.loc 1 129 0
 327 0088 0B4B     		ldr	r3, .L11
 328 008a 1B68     		ldr	r3, [r3]
 329 008c 0A4A     		ldr	r2, .L11
 330 008e 1268     		ldr	r2, [r2]
 331 0090 5269     		ldr	r2, [r2, #20]
 332 0092 F91D     		adds	r1, r7, #7
 333 0094 0978     		ldrb	r1, [r1]
 334 0096 0948     		ldr	r0, .L11+4
 335 0098 411A     		subs	r1, r0, r1
 336 009a 0A40     		ands	r2, r1
 337 009c 5A61     		str	r2, [r3, #20]
 130:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	e->ODR &= 0b1111111111111011; //reset bit clear
 338              		.loc 1 130 0
 339 009e 064B     		ldr	r3, .L11
 340 00a0 1B68     		ldr	r3, [r3]
 341 00a2 054A     		ldr	r2, .L11
 342 00a4 1268     		ldr	r2, [r2]
 343 00a6 5269     		ldr	r2, [r2, #20]
 344 00a8 0549     		ldr	r1, .L11+8
 345 00aa 0A40     		ands	r2, r1
 346 00ac 5A61     		str	r2, [r3, #20]
 131:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 347              		.loc 1 131 0
 348 00ae C046     		nop
 349 00b0 BD46     		mov	sp, r7
 350 00b2 02B0     		add	sp, sp, #8
 351              		@ sp needed
 352 00b4 80BD     		pop	{r7, pc}
 353              	.L12:
 354 00b6 C046     		.align	2
 355              	.L11:
 356 00b8 00000000 		.word	e
 357 00bc FFFF0000 		.word	65535
 358 00c0 FBFF0000 		.word	65531
 359              		.cfi_endproc
 360              	.LFE7:
 362              		.align	2
 363              		.global	select_controller
 364              		.code	16
 365              		.thumb_func
 367              	select_controller:
 368              	.LFB8:
 132:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 133:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void select_controller(uint8_t controller)
 134:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 369              		.loc 1 134 0
 370              		.cfi_startproc
 371 00c4 80B5     		push	{r7, lr}
 372              		.cfi_def_cfa_offset 8
 373              		.cfi_offset 7, -8
 374              		.cfi_offset 14, -4
 375 00c6 82B0     		sub	sp, sp, #8
 376              		.cfi_def_cfa_offset 16
 377 00c8 00AF     		add	r7, sp, #0
 378              		.cfi_def_cfa_register 7
 379 00ca 0200     		movs	r2, r0
 380 00cc FB1D     		adds	r3, r7, #7
 381 00ce 1A70     		strb	r2, [r3]
 135:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	e->ODR &= 0b1111111111100011;
 382              		.loc 1 135 0
 383 00d0 0A4B     		ldr	r3, .L14
 384 00d2 1B68     		ldr	r3, [r3]
 385 00d4 094A     		ldr	r2, .L14
 386 00d6 1268     		ldr	r2, [r2]
 387 00d8 5269     		ldr	r2, [r2, #20]
 388 00da 0949     		ldr	r1, .L14+4
 389 00dc 0A40     		ands	r2, r1
 390 00de 5A61     		str	r2, [r3, #20]
 136:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     e->ODR |= controller;
 391              		.loc 1 136 0
 392 00e0 064B     		ldr	r3, .L14
 393 00e2 1B68     		ldr	r3, [r3]
 394 00e4 054A     		ldr	r2, .L14
 395 00e6 1268     		ldr	r2, [r2]
 396 00e8 5169     		ldr	r1, [r2, #20]
 397 00ea FA1D     		adds	r2, r7, #7
 398 00ec 1278     		ldrb	r2, [r2]
 399 00ee 0A43     		orrs	r2, r1
 400 00f0 5A61     		str	r2, [r3, #20]
 137:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	//scii_clear_bit(bit_SELECT | B_CS1 | B_CS2);
 138:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 401              		.loc 1 138 0
 402 00f2 C046     		nop
 403 00f4 BD46     		mov	sp, r7
 404 00f6 02B0     		add	sp, sp, #8
 405              		@ sp needed
 406 00f8 80BD     		pop	{r7, pc}
 407              	.L15:
 408 00fa C046     		.align	2
 409              	.L14:
 410 00fc 00000000 		.word	e
 411 0100 E3FF0000 		.word	65507
 412              		.cfi_endproc
 413              	.LFE8:
 415              		.align	2
 416              		.global	graphics_wait_ready
 417              		.code	16
 418              		.thumb_func
 420              	graphics_wait_ready:
 421              	.LFB9:
 139:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 140:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void graphics_wait_ready()
 141:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 422              		.loc 1 141 0
 423              		.cfi_startproc
 424 0104 80B5     		push	{r7, lr}
 425              		.cfi_def_cfa_offset 8
 426              		.cfi_offset 7, -8
 427              		.cfi_offset 14, -4
 428 0106 82B0     		sub	sp, sp, #8
 429              		.cfi_def_cfa_offset 16
 430 0108 00AF     		add	r7, sp, #0
 431              		.cfi_def_cfa_register 7
 142:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_clear_bit(bit_E); //ascii_clear_bit(B_E | B_RS); possible?
 432              		.loc 1 142 0
 433 010a 244B     		ldr	r3, .L20
 434 010c 1B78     		ldrb	r3, [r3]
 435 010e 1800     		movs	r0, r3
 436 0110 FFF7FEFF 		bl	ascii_clear_bit
 143:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	e->MODER = 0x00005555;
 437              		.loc 1 143 0
 438 0114 224B     		ldr	r3, .L20+4
 439 0116 1B68     		ldr	r3, [r3]
 440 0118 224A     		ldr	r2, .L20+8
 441 011a 1A60     		str	r2, [r3]
 144:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_clear_bit(bit_RS);
 442              		.loc 1 144 0
 443 011c 224B     		ldr	r3, .L20+12
 444 011e 1B78     		ldrb	r3, [r3]
 445 0120 1800     		movs	r0, r3
 446 0122 FFF7FEFF 		bl	ascii_clear_bit
 145:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	delay500ns();
 447              		.loc 1 145 0
 448 0126 FFF7FEFF 		bl	delay500ns
 146:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	
 147:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	bool done = false;
 449              		.loc 1 147 0
 450 012a FB1D     		adds	r3, r7, #7
 451 012c 0022     		movs	r2, #0
 452 012e 1A70     		strb	r2, [r3]
 148:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	
 149:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	while(!done)
 453              		.loc 1 149 0
 454 0130 22E0     		b	.L17
 455              	.L19:
 456              	.LBB2:
 150:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 151:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		ascii_set_bit(bit_E);
 457              		.loc 1 151 0
 458 0132 1A4B     		ldr	r3, .L20
 459 0134 1B78     		ldrb	r3, [r3]
 460 0136 1800     		movs	r0, r3
 461 0138 FFF7FEFF 		bl	ascii_set_bit
 152:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		delay500ns();
 462              		.loc 1 152 0
 463 013c FFF7FEFF 		bl	delay500ns
 153:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		ascii_clear_bit(bit_E);
 464              		.loc 1 153 0
 465 0140 164B     		ldr	r3, .L20
 466 0142 1B78     		ldrb	r3, [r3]
 467 0144 1800     		movs	r0, r3
 468 0146 FFF7FEFF 		bl	ascii_clear_bit
 154:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		ascii_set_bit(bit_RW);
 469              		.loc 1 154 0
 470 014a 184B     		ldr	r3, .L20+16
 471 014c 1B78     		ldrb	r3, [r3]
 472 014e 1800     		movs	r0, r3
 473 0150 FFF7FEFF 		bl	ascii_set_bit
 155:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		
 156:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		bool lcd_busy = e->IDR & LCD_BUSY;
 474              		.loc 1 156 0
 475 0154 124B     		ldr	r3, .L20+4
 476 0156 1B68     		ldr	r3, [r3]
 477 0158 1B69     		ldr	r3, [r3, #16]
 478 015a DAB2     		uxtb	r2, r3
 479 015c 144B     		ldr	r3, .L20+20
 480 015e 1978     		ldrb	r1, [r3]
 481 0160 BB1D     		adds	r3, r7, #6
 482 0162 0A40     		ands	r2, r1
 483 0164 1A70     		strb	r2, [r3]
 157:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		
 158:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		if(lcd_busy == false)
 484              		.loc 1 158 0
 485 0166 BB1D     		adds	r3, r7, #6
 486 0168 1B78     		ldrb	r3, [r3]
 487 016a 002B     		cmp	r3, #0
 488 016c 02D1     		bne	.L18
 159:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			done = true;
 489              		.loc 1 159 0
 490 016e FB1D     		adds	r3, r7, #7
 491 0170 0122     		movs	r2, #1
 492 0172 1A70     		strb	r2, [r3]
 493              	.L18:
 160:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		delay500ns();
 494              		.loc 1 160 0
 495 0174 FFF7FEFF 		bl	delay500ns
 496              	.L17:
 497              	.LBE2:
 149:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 498              		.loc 1 149 0
 499 0178 FB1D     		adds	r3, r7, #7
 500 017a 1B78     		ldrb	r3, [r3]
 501 017c 002B     		cmp	r3, #0
 502 017e D8D0     		beq	.L19
 161:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 162:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_set_bit(bit_E);
 503              		.loc 1 162 0
 504 0180 064B     		ldr	r3, .L20
 505 0182 1B78     		ldrb	r3, [r3]
 506 0184 1800     		movs	r0, r3
 507 0186 FFF7FEFF 		bl	ascii_set_bit
 163:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	e->MODER = 0x55555555;
 508              		.loc 1 163 0
 509 018a 054B     		ldr	r3, .L20+4
 510 018c 1B68     		ldr	r3, [r3]
 511 018e 094A     		ldr	r2, .L20+24
 512 0190 1A60     		str	r2, [r3]
 164:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 513              		.loc 1 164 0
 514 0192 C046     		nop
 515 0194 BD46     		mov	sp, r7
 516 0196 02B0     		add	sp, sp, #8
 517              		@ sp needed
 518 0198 80BD     		pop	{r7, pc}
 519              	.L21:
 520 019a C046     		.align	2
 521              	.L20:
 522 019c 00000000 		.word	bit_E
 523 01a0 00000000 		.word	e
 524 01a4 55550000 		.word	21845
 525 01a8 00000000 		.word	bit_RS
 526 01ac 00000000 		.word	bit_RW
 527 01b0 00000000 		.word	LCD_BUSY
 528 01b4 55555555 		.word	1431655765
 529              		.cfi_endproc
 530              	.LFE9:
 532              		.align	2
 533              		.global	graphics_read
 534              		.code	16
 535              		.thumb_func
 537              	graphics_read:
 538              	.LFB10:
 165:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 166:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** unsigned char graphics_read(uint8_t controller)
 167:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 539              		.loc 1 167 0
 540              		.cfi_startproc
 541 01b8 80B5     		push	{r7, lr}
 542              		.cfi_def_cfa_offset 8
 543              		.cfi_offset 7, -8
 544              		.cfi_offset 14, -4
 545 01ba 84B0     		sub	sp, sp, #16
 546              		.cfi_def_cfa_offset 24
 547 01bc 00AF     		add	r7, sp, #0
 548              		.cfi_def_cfa_register 7
 549 01be 0200     		movs	r2, r0
 550 01c0 FB1D     		adds	r3, r7, #7
 551 01c2 1A70     		strb	r2, [r3]
 168:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_clear_bit(bit_E); //ascii_clear_bit(bit_E | bit_RS); possible?
 552              		.loc 1 168 0
 553 01c4 244B     		ldr	r3, .L26
 554 01c6 1B78     		ldrb	r3, [r3]
 555 01c8 1800     		movs	r0, r3
 556 01ca FFF7FEFF 		bl	ascii_clear_bit
 169:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	e->MODER = 0x00005555;
 557              		.loc 1 169 0
 558 01ce 234B     		ldr	r3, .L26+4
 559 01d0 1B68     		ldr	r3, [r3]
 560 01d2 234A     		ldr	r2, .L26+8
 561 01d4 1A60     		str	r2, [r3]
 170:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_set_bit(bit_RS);
 562              		.loc 1 170 0
 563 01d6 234B     		ldr	r3, .L26+12
 564 01d8 1B78     		ldrb	r3, [r3]
 565 01da 1800     		movs	r0, r3
 566 01dc FFF7FEFF 		bl	ascii_set_bit
 171:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_set_bit(bit_RW);
 567              		.loc 1 171 0
 568 01e0 214B     		ldr	r3, .L26+16
 569 01e2 1B78     		ldrb	r3, [r3]
 570 01e4 1800     		movs	r0, r3
 571 01e6 FFF7FEFF 		bl	ascii_set_bit
 172:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	
 173:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	select_controller(controller);
 572              		.loc 1 173 0
 573 01ea FB1D     		adds	r3, r7, #7
 574 01ec 1B78     		ldrb	r3, [r3]
 575 01ee 1800     		movs	r0, r3
 576 01f0 FFF7FEFF 		bl	select_controller
 174:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	
 175:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	delay500ns();
 577              		.loc 1 175 0
 578 01f4 FFF7FEFF 		bl	delay500ns
 176:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	
 177:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_set_bit(bit_E);
 579              		.loc 1 177 0
 580 01f8 174B     		ldr	r3, .L26
 581 01fa 1B78     		ldrb	r3, [r3]
 582 01fc 1800     		movs	r0, r3
 583 01fe FFF7FEFF 		bl	ascii_set_bit
 178:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	delay500ns();
 584              		.loc 1 178 0
 585 0202 FFF7FEFF 		bl	delay500ns
 179:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	
 180:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	unsigned char RV = e->IDR >> 8;
 586              		.loc 1 180 0
 587 0206 154B     		ldr	r3, .L26+4
 588 0208 1B68     		ldr	r3, [r3]
 589 020a 1B69     		ldr	r3, [r3, #16]
 590 020c 1A0A     		lsrs	r2, r3, #8
 591 020e 0F23     		movs	r3, #15
 592 0210 FB18     		adds	r3, r7, r3
 593 0212 1A70     		strb	r2, [r3]
 181:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	
 182:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	if(controller == B_CS1)
 594              		.loc 1 182 0
 595 0214 154B     		ldr	r3, .L26+20
 596 0216 1B78     		ldrb	r3, [r3]
 597 0218 FA1D     		adds	r2, r7, #7
 598 021a 1278     		ldrb	r2, [r2]
 599 021c 9A42     		cmp	r2, r3
 600 021e 07D1     		bne	.L23
 183:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 184:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		select_controller(B_CS1);
 601              		.loc 1 184 0
 602 0220 124B     		ldr	r3, .L26+20
 603 0222 1B78     		ldrb	r3, [r3]
 604 0224 1800     		movs	r0, r3
 605 0226 FFF7FEFF 		bl	select_controller
 185:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		graphics_wait_ready();
 606              		.loc 1 185 0
 607 022a FFF7FEFF 		bl	graphics_wait_ready
 608 022e 0CE0     		b	.L24
 609              	.L23:
 186:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 187:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	else if(controller == B_CS2)
 610              		.loc 1 187 0
 611 0230 0F4B     		ldr	r3, .L26+24
 612 0232 1B78     		ldrb	r3, [r3]
 613 0234 FA1D     		adds	r2, r7, #7
 614 0236 1278     		ldrb	r2, [r2]
 615 0238 9A42     		cmp	r2, r3
 616 023a 06D1     		bne	.L24
 188:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 189:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		select_controller(B_CS2);
 617              		.loc 1 189 0
 618 023c 0C4B     		ldr	r3, .L26+24
 619 023e 1B78     		ldrb	r3, [r3]
 620 0240 1800     		movs	r0, r3
 621 0242 FFF7FEFF 		bl	select_controller
 190:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		graphics_wait_ready();
 622              		.loc 1 190 0
 623 0246 FFF7FEFF 		bl	graphics_wait_ready
 624              	.L24:
 191:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 192:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	
 193:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	return RV;
 625              		.loc 1 193 0
 626 024a 0F23     		movs	r3, #15
 627 024c FB18     		adds	r3, r7, r3
 628 024e 1B78     		ldrb	r3, [r3]
 194:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 629              		.loc 1 194 0
 630 0250 1800     		movs	r0, r3
 631 0252 BD46     		mov	sp, r7
 632 0254 04B0     		add	sp, sp, #16
 633              		@ sp needed
 634 0256 80BD     		pop	{r7, pc}
 635              	.L27:
 636              		.align	2
 637              	.L26:
 638 0258 00000000 		.word	bit_E
 639 025c 00000000 		.word	e
 640 0260 55550000 		.word	21845
 641 0264 00000000 		.word	bit_RS
 642 0268 00000000 		.word	bit_RW
 643 026c 00000000 		.word	B_CS1
 644 0270 00000000 		.word	B_CS2
 645              		.cfi_endproc
 646              	.LFE10:
 648              		.align	2
 649              		.global	graphics_write
 650              		.code	16
 651              		.thumb_func
 653              	graphics_write:
 654              	.LFB11:
 195:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 196:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void graphics_write(uint8_t value, uint8_t controller) {
 655              		.loc 1 196 0
 656              		.cfi_startproc
 657 0274 80B5     		push	{r7, lr}
 658              		.cfi_def_cfa_offset 8
 659              		.cfi_offset 7, -8
 660              		.cfi_offset 14, -4
 661 0276 82B0     		sub	sp, sp, #8
 662              		.cfi_def_cfa_offset 16
 663 0278 00AF     		add	r7, sp, #0
 664              		.cfi_def_cfa_register 7
 665 027a 0200     		movs	r2, r0
 666 027c FB1D     		adds	r3, r7, #7
 667 027e 1A70     		strb	r2, [r3]
 668 0280 BB1D     		adds	r3, r7, #6
 669 0282 0A1C     		adds	r2, r1, #0
 670 0284 1A70     		strb	r2, [r3]
 197:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	
 198:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	e->ODR = value << 8 | (e->ODR & 0xf);
 671              		.loc 1 198 0
 672 0286 174B     		ldr	r3, .L29
 673 0288 1B68     		ldr	r3, [r3]
 674 028a FA1D     		adds	r2, r7, #7
 675 028c 1278     		ldrb	r2, [r2]
 676 028e 1202     		lsls	r2, r2, #8
 677 0290 1000     		movs	r0, r2
 678 0292 144A     		ldr	r2, .L29
 679 0294 1268     		ldr	r2, [r2]
 680 0296 5269     		ldr	r2, [r2, #20]
 681 0298 0F21     		movs	r1, #15
 682 029a 0A40     		ands	r2, r1
 683 029c 0243     		orrs	r2, r0
 684 029e 5A61     		str	r2, [r3, #20]
 199:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	select_controller(controller);
 685              		.loc 1 199 0
 686 02a0 BB1D     		adds	r3, r7, #6
 687 02a2 1B78     		ldrb	r3, [r3]
 688 02a4 1800     		movs	r0, r3
 689 02a6 FFF7FEFF 		bl	select_controller
 200:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     delay500ns();
 690              		.loc 1 200 0
 691 02aa FFF7FEFF 		bl	delay500ns
 201:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_set_bit(bit_E);
 692              		.loc 1 201 0
 693 02ae 0E4B     		ldr	r3, .L29+4
 694 02b0 1B78     		ldrb	r3, [r3]
 695 02b2 1800     		movs	r0, r3
 696 02b4 FFF7FEFF 		bl	ascii_set_bit
 202:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	delay500ns();
 697              		.loc 1 202 0
 698 02b8 FFF7FEFF 		bl	delay500ns
 203:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	#ifndef SIMULATOR
 204:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     ascii_clear_bit(bit_E);
 205:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	
 206:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	if(controller == B_CS1)
 207:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 208:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		select_controller(B_CS1);
 209:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		graphics_wait_ready();
 210:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 211:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	else if(controller == B_CS2)
 212:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 213:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		select_controller(B_CS2);
 214:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		graphics_wait_ready();
 215:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 216:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	#endif
 217:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     
 218:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	e->ODR &= 0x0f;
 699              		.loc 1 218 0
 700 02bc 094B     		ldr	r3, .L29
 701 02be 1B68     		ldr	r3, [r3]
 702 02c0 084A     		ldr	r2, .L29
 703 02c2 1268     		ldr	r2, [r2]
 704 02c4 5269     		ldr	r2, [r2, #20]
 705 02c6 0F21     		movs	r1, #15
 706 02c8 0A40     		ands	r2, r1
 707 02ca 5A61     		str	r2, [r3, #20]
 219:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	
 220:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_set_bit(bit_E);
 708              		.loc 1 220 0
 709 02cc 064B     		ldr	r3, .L29+4
 710 02ce 1B78     		ldrb	r3, [r3]
 711 02d0 1800     		movs	r0, r3
 712 02d2 FFF7FEFF 		bl	ascii_set_bit
 221:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	select_controller(0);
 713              		.loc 1 221 0
 714 02d6 0020     		movs	r0, #0
 715 02d8 FFF7FEFF 		bl	select_controller
 222:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 716              		.loc 1 222 0
 717 02dc C046     		nop
 718 02de BD46     		mov	sp, r7
 719 02e0 02B0     		add	sp, sp, #8
 720              		@ sp needed
 721 02e2 80BD     		pop	{r7, pc}
 722              	.L30:
 723              		.align	2
 724              	.L29:
 725 02e4 00000000 		.word	e
 726 02e8 00000000 		.word	bit_E
 727              		.cfi_endproc
 728              	.LFE11:
 730              		.align	2
 731              		.global	graphics_write_command
 732              		.code	16
 733              		.thumb_func
 735              	graphics_write_command:
 736              	.LFB12:
 223:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 224:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void graphics_write_command(uint8_t command, uint8_t controller)
 225:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 737              		.loc 1 225 0
 738              		.cfi_startproc
 739 02ec 80B5     		push	{r7, lr}
 740              		.cfi_def_cfa_offset 8
 741              		.cfi_offset 7, -8
 742              		.cfi_offset 14, -4
 743 02ee 82B0     		sub	sp, sp, #8
 744              		.cfi_def_cfa_offset 16
 745 02f0 00AF     		add	r7, sp, #0
 746              		.cfi_def_cfa_register 7
 747 02f2 0200     		movs	r2, r0
 748 02f4 FB1D     		adds	r3, r7, #7
 749 02f6 1A70     		strb	r2, [r3]
 750 02f8 BB1D     		adds	r3, r7, #6
 751 02fa 0A1C     		adds	r2, r1, #0
 752 02fc 1A70     		strb	r2, [r3]
 226:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #ifndef SIMULATOR
 227:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_clear_bit(bit_E);
 228:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	select_controller(controller);
 229:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #endif
 230:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     ascii_clear_bit(bit_RS);
 753              		.loc 1 230 0
 754 02fe 0B4B     		ldr	r3, .L32
 755 0300 1B78     		ldrb	r3, [r3]
 756 0302 1800     		movs	r0, r3
 757 0304 FFF7FEFF 		bl	ascii_clear_bit
 231:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_clear_bit(bit_RW);
 758              		.loc 1 231 0
 759 0308 094B     		ldr	r3, .L32+4
 760 030a 1B78     		ldrb	r3, [r3]
 761 030c 1800     		movs	r0, r3
 762 030e FFF7FEFF 		bl	ascii_clear_bit
 232:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	graphics_write(command, controller);
 763              		.loc 1 232 0
 764 0312 BB1D     		adds	r3, r7, #6
 765 0314 1A78     		ldrb	r2, [r3]
 766 0316 FB1D     		adds	r3, r7, #7
 767 0318 1B78     		ldrb	r3, [r3]
 768 031a 1100     		movs	r1, r2
 769 031c 1800     		movs	r0, r3
 770 031e FFF7FEFF 		bl	graphics_write
 233:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 771              		.loc 1 233 0
 772 0322 C046     		nop
 773 0324 BD46     		mov	sp, r7
 774 0326 02B0     		add	sp, sp, #8
 775              		@ sp needed
 776 0328 80BD     		pop	{r7, pc}
 777              	.L33:
 778 032a C046     		.align	2
 779              	.L32:
 780 032c 00000000 		.word	bit_RS
 781 0330 00000000 		.word	bit_RW
 782              		.cfi_endproc
 783              	.LFE12:
 785              		.align	2
 786              		.global	graphics_write_data
 787              		.code	16
 788              		.thumb_func
 790              	graphics_write_data:
 791              	.LFB13:
 234:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 235:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void graphics_write_data(uint8_t write_data, uint8_t controller)
 236:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 792              		.loc 1 236 0
 793              		.cfi_startproc
 794 0334 80B5     		push	{r7, lr}
 795              		.cfi_def_cfa_offset 8
 796              		.cfi_offset 7, -8
 797              		.cfi_offset 14, -4
 798 0336 82B0     		sub	sp, sp, #8
 799              		.cfi_def_cfa_offset 16
 800 0338 00AF     		add	r7, sp, #0
 801              		.cfi_def_cfa_register 7
 802 033a 0200     		movs	r2, r0
 803 033c FB1D     		adds	r3, r7, #7
 804 033e 1A70     		strb	r2, [r3]
 805 0340 BB1D     		adds	r3, r7, #6
 806 0342 0A1C     		adds	r2, r1, #0
 807 0344 1A70     		strb	r2, [r3]
 237:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #ifndef SIMULATOR
 238:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_clear_bit(bit_E);
 239:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	select_controller(controller);
 240:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #endif
 241:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_set_bit(bit_RS);
 808              		.loc 1 241 0
 809 0346 0B4B     		ldr	r3, .L35
 810 0348 1B78     		ldrb	r3, [r3]
 811 034a 1800     		movs	r0, r3
 812 034c FFF7FEFF 		bl	ascii_set_bit
 242:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_clear_bit(bit_RW);
 813              		.loc 1 242 0
 814 0350 094B     		ldr	r3, .L35+4
 815 0352 1B78     		ldrb	r3, [r3]
 816 0354 1800     		movs	r0, r3
 817 0356 FFF7FEFF 		bl	ascii_clear_bit
 243:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	graphics_write(write_data, controller);
 818              		.loc 1 243 0
 819 035a BB1D     		adds	r3, r7, #6
 820 035c 1A78     		ldrb	r2, [r3]
 821 035e FB1D     		adds	r3, r7, #7
 822 0360 1B78     		ldrb	r3, [r3]
 823 0362 1100     		movs	r1, r2
 824 0364 1800     		movs	r0, r3
 825 0366 FFF7FEFF 		bl	graphics_write
 244:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 826              		.loc 1 244 0
 827 036a C046     		nop
 828 036c BD46     		mov	sp, r7
 829 036e 02B0     		add	sp, sp, #8
 830              		@ sp needed
 831 0370 80BD     		pop	{r7, pc}
 832              	.L36:
 833 0372 C046     		.align	2
 834              	.L35:
 835 0374 00000000 		.word	bit_RS
 836 0378 00000000 		.word	bit_RW
 837              		.cfi_endproc
 838              	.LFE13:
 840              		.align	2
 841              		.global	graphics_read_data
 842              		.code	16
 843              		.thumb_func
 845              	graphics_read_data:
 846              	.LFB14:
 245:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 246:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** uint8_t graphics_read_data(uint8_t controller)
 247:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 847              		.loc 1 247 0
 848              		.cfi_startproc
 849 037c 80B5     		push	{r7, lr}
 850              		.cfi_def_cfa_offset 8
 851              		.cfi_offset 7, -8
 852              		.cfi_offset 14, -4
 853 037e 82B0     		sub	sp, sp, #8
 854              		.cfi_def_cfa_offset 16
 855 0380 00AF     		add	r7, sp, #0
 856              		.cfi_def_cfa_register 7
 857 0382 0200     		movs	r2, r0
 858 0384 FB1D     		adds	r3, r7, #7
 859 0386 1A70     		strb	r2, [r3]
 248:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	(void) graphics_read(controller);
 860              		.loc 1 248 0
 861 0388 FB1D     		adds	r3, r7, #7
 862 038a 1B78     		ldrb	r3, [r3]
 863 038c 1800     		movs	r0, r3
 864 038e FFF7FEFF 		bl	graphics_read
 249:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	return graphics_read(controller);
 865              		.loc 1 249 0
 866 0392 FB1D     		adds	r3, r7, #7
 867 0394 1B78     		ldrb	r3, [r3]
 868 0396 1800     		movs	r0, r3
 869 0398 FFF7FEFF 		bl	graphics_read
 870 039c 0300     		movs	r3, r0
 250:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 871              		.loc 1 250 0
 872 039e 1800     		movs	r0, r3
 873 03a0 BD46     		mov	sp, r7
 874 03a2 02B0     		add	sp, sp, #8
 875              		@ sp needed
 876 03a4 80BD     		pop	{r7, pc}
 877              		.cfi_endproc
 878              	.LFE14:
 880 03a6 C046     		.align	2
 881              		.global	graphics_initialize
 882              		.code	16
 883              		.thumb_func
 885              	graphics_initialize:
 886              	.LFB15:
 251:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 252:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void graphics_initialize()
 253:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 887              		.loc 1 253 0
 888              		.cfi_startproc
 889 03a8 80B5     		push	{r7, lr}
 890              		.cfi_def_cfa_offset 8
 891              		.cfi_offset 7, -8
 892              		.cfi_offset 14, -4
 893 03aa 00AF     		add	r7, sp, #0
 894              		.cfi_def_cfa_register 7
 254:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_set_bit(bit_E);
 895              		.loc 1 254 0
 896 03ac 304B     		ldr	r3, .L40
 897 03ae 1B78     		ldrb	r3, [r3]
 898 03b0 1800     		movs	r0, r3
 899 03b2 FFF7FEFF 		bl	ascii_set_bit
 255:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	delay_micro(10);
 900              		.loc 1 255 0
 901 03b6 0A20     		movs	r0, #10
 902 03b8 FFF7FEFF 		bl	delay_micro
 256:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_clear_bit(B_CS1);
 903              		.loc 1 256 0
 904 03bc 2D4B     		ldr	r3, .L40+4
 905 03be 1B78     		ldrb	r3, [r3]
 906 03c0 1800     		movs	r0, r3
 907 03c2 FFF7FEFF 		bl	ascii_clear_bit
 257:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_clear_bit(B_CS2);
 908              		.loc 1 257 0
 909 03c6 2C4B     		ldr	r3, .L40+8
 910 03c8 1B78     		ldrb	r3, [r3]
 911 03ca 1800     		movs	r0, r3
 912 03cc FFF7FEFF 		bl	ascii_clear_bit
 258:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_clear_bit(B_RST);
 913              		.loc 1 258 0
 914 03d0 2A4B     		ldr	r3, .L40+12
 915 03d2 1B78     		ldrb	r3, [r3]
 916 03d4 1800     		movs	r0, r3
 917 03d6 FFF7FEFF 		bl	ascii_clear_bit
 259:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_clear_bit(bit_E);
 918              		.loc 1 259 0
 919 03da 254B     		ldr	r3, .L40
 920 03dc 1B78     		ldrb	r3, [r3]
 921 03de 1800     		movs	r0, r3
 922 03e0 FFF7FEFF 		bl	ascii_clear_bit
 260:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	delay_milli(30);
 923              		.loc 1 260 0
 924 03e4 1E20     		movs	r0, #30
 925 03e6 FFF7FEFF 		bl	delay_milli
 261:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ascii_set_bit(B_RST);
 926              		.loc 1 261 0
 927 03ea 244B     		ldr	r3, .L40+12
 928 03ec 1B78     		ldrb	r3, [r3]
 929 03ee 1800     		movs	r0, r3
 930 03f0 FFF7FEFF 		bl	ascii_set_bit
 262:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	graphics_write_command(LCD_OFF , B_CS1 | B_CS2);
 931              		.loc 1 262 0
 932 03f4 224B     		ldr	r3, .L40+16
 933 03f6 1878     		ldrb	r0, [r3]
 934 03f8 1E4B     		ldr	r3, .L40+4
 935 03fa 1A78     		ldrb	r2, [r3]
 936 03fc 1E4B     		ldr	r3, .L40+8
 937 03fe 1B78     		ldrb	r3, [r3]
 938 0400 1343     		orrs	r3, r2
 939 0402 DBB2     		uxtb	r3, r3
 940 0404 1900     		movs	r1, r3
 941 0406 FFF7FEFF 		bl	graphics_write_command
 263:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	graphics_write_command(LCD_ON , B_CS1 | B_CS2);
 942              		.loc 1 263 0
 943 040a 1E4B     		ldr	r3, .L40+20
 944 040c 1878     		ldrb	r0, [r3]
 945 040e 194B     		ldr	r3, .L40+4
 946 0410 1A78     		ldrb	r2, [r3]
 947 0412 194B     		ldr	r3, .L40+8
 948 0414 1B78     		ldrb	r3, [r3]
 949 0416 1343     		orrs	r3, r2
 950 0418 DBB2     		uxtb	r3, r3
 951 041a 1900     		movs	r1, r3
 952 041c FFF7FEFF 		bl	graphics_write_command
 264:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	graphics_write_command(LCD_DISP_START , B_CS1 | B_CS2);
 953              		.loc 1 264 0
 954 0420 194B     		ldr	r3, .L40+24
 955 0422 1878     		ldrb	r0, [r3]
 956 0424 134B     		ldr	r3, .L40+4
 957 0426 1A78     		ldrb	r2, [r3]
 958 0428 134B     		ldr	r3, .L40+8
 959 042a 1B78     		ldrb	r3, [r3]
 960 042c 1343     		orrs	r3, r2
 961 042e DBB2     		uxtb	r3, r3
 962 0430 1900     		movs	r1, r3
 963 0432 FFF7FEFF 		bl	graphics_write_command
 265:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	graphics_write_command(LCD_SET_ADD , B_CS1 | B_CS2);
 964              		.loc 1 265 0
 965 0436 154B     		ldr	r3, .L40+28
 966 0438 1878     		ldrb	r0, [r3]
 967 043a 0E4B     		ldr	r3, .L40+4
 968 043c 1A78     		ldrb	r2, [r3]
 969 043e 0E4B     		ldr	r3, .L40+8
 970 0440 1B78     		ldrb	r3, [r3]
 971 0442 1343     		orrs	r3, r2
 972 0444 DBB2     		uxtb	r3, r3
 973 0446 1900     		movs	r1, r3
 974 0448 FFF7FEFF 		bl	graphics_write_command
 266:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	graphics_write_command(LCD_SET_PAGE , B_CS1 | B_CS2);
 975              		.loc 1 266 0
 976 044c 104B     		ldr	r3, .L40+32
 977 044e 1878     		ldrb	r0, [r3]
 978 0450 084B     		ldr	r3, .L40+4
 979 0452 1A78     		ldrb	r2, [r3]
 980 0454 084B     		ldr	r3, .L40+8
 981 0456 1B78     		ldrb	r3, [r3]
 982 0458 1343     		orrs	r3, r2
 983 045a DBB2     		uxtb	r3, r3
 984 045c 1900     		movs	r1, r3
 985 045e FFF7FEFF 		bl	graphics_write_command
 267:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	select_controller(0);
 986              		.loc 1 267 0
 987 0462 0020     		movs	r0, #0
 988 0464 FFF7FEFF 		bl	select_controller
 268:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 989              		.loc 1 268 0
 990 0468 C046     		nop
 991 046a BD46     		mov	sp, r7
 992              		@ sp needed
 993 046c 80BD     		pop	{r7, pc}
 994              	.L41:
 995 046e C046     		.align	2
 996              	.L40:
 997 0470 00000000 		.word	bit_E
 998 0474 00000000 		.word	B_CS1
 999 0478 00000000 		.word	B_CS2
 1000 047c 00000000 		.word	B_RST
 1001 0480 00000000 		.word	LCD_OFF
 1002 0484 00000000 		.word	LCD_ON
 1003 0488 00000000 		.word	LCD_DISP_START
 1004 048c 00000000 		.word	LCD_SET_ADD
 1005 0490 00000000 		.word	LCD_SET_PAGE
 1006              		.cfi_endproc
 1007              	.LFE15:
 1009              		.align	2
 1010              		.global	graphics_clear_screen
 1011              		.code	16
 1012              		.thumb_func
 1014              	graphics_clear_screen:
 1015              	.LFB16:
 269:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 270:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void graphics_clear_screen()
 271:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 1016              		.loc 1 271 0
 1017              		.cfi_startproc
 1018 0494 80B5     		push	{r7, lr}
 1019              		.cfi_def_cfa_offset 8
 1020              		.cfi_offset 7, -8
 1021              		.cfi_offset 14, -4
 1022 0496 82B0     		sub	sp, sp, #8
 1023              		.cfi_def_cfa_offset 16
 1024 0498 00AF     		add	r7, sp, #0
 1025              		.cfi_def_cfa_register 7
 1026              	.LBB3:
 272:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for(int page = 0; page < 8; page++)
 1027              		.loc 1 272 0
 1028 049a 0023     		movs	r3, #0
 1029 049c 7B60     		str	r3, [r7, #4]
 1030 049e 31E0     		b	.L43
 1031              	.L46:
 273:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 274:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		graphics_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
 1032              		.loc 1 274 0
 1033 04a0 7B68     		ldr	r3, [r7, #4]
 1034 04a2 DAB2     		uxtb	r2, r3
 1035 04a4 1B4B     		ldr	r3, .L47
 1036 04a6 1B78     		ldrb	r3, [r3]
 1037 04a8 DBB2     		uxtb	r3, r3
 1038 04aa 1343     		orrs	r3, r2
 1039 04ac DBB2     		uxtb	r3, r3
 1040 04ae D8B2     		uxtb	r0, r3
 1041 04b0 194B     		ldr	r3, .L47+4
 1042 04b2 1A78     		ldrb	r2, [r3]
 1043 04b4 194B     		ldr	r3, .L47+8
 1044 04b6 1B78     		ldrb	r3, [r3]
 1045 04b8 1343     		orrs	r3, r2
 1046 04ba DBB2     		uxtb	r3, r3
 1047 04bc 1900     		movs	r1, r3
 1048 04be FFF7FEFF 		bl	graphics_write_command
 275:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		graphics_write_command(LCD_SET_ADD | 0, B_CS1 | B_CS2);
 1049              		.loc 1 275 0
 1050 04c2 174B     		ldr	r3, .L47+12
 1051 04c4 1878     		ldrb	r0, [r3]
 1052 04c6 144B     		ldr	r3, .L47+4
 1053 04c8 1A78     		ldrb	r2, [r3]
 1054 04ca 144B     		ldr	r3, .L47+8
 1055 04cc 1B78     		ldrb	r3, [r3]
 1056 04ce 1343     		orrs	r3, r2
 1057 04d0 DBB2     		uxtb	r3, r3
 1058 04d2 1900     		movs	r1, r3
 1059 04d4 FFF7FEFF 		bl	graphics_write_command
 1060              	.LBB4:
 276:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		for(int add = 0; add < 64; add++)
 1061              		.loc 1 276 0
 1062 04d8 0023     		movs	r3, #0
 1063 04da 3B60     		str	r3, [r7]
 1064 04dc 0CE0     		b	.L44
 1065              	.L45:
 277:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 278:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             graphics_write_data(0, B_CS1 | B_CS2);
 1066              		.loc 1 278 0 discriminator 3
 1067 04de 0E4B     		ldr	r3, .L47+4
 1068 04e0 1A78     		ldrb	r2, [r3]
 1069 04e2 0E4B     		ldr	r3, .L47+8
 1070 04e4 1B78     		ldrb	r3, [r3]
 1071 04e6 1343     		orrs	r3, r2
 1072 04e8 DBB2     		uxtb	r3, r3
 1073 04ea 1900     		movs	r1, r3
 1074 04ec 0020     		movs	r0, #0
 1075 04ee FFF7FEFF 		bl	graphics_write_data
 276:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		for(int add = 0; add < 64; add++)
 1076              		.loc 1 276 0 discriminator 3
 1077 04f2 3B68     		ldr	r3, [r7]
 1078 04f4 0133     		adds	r3, r3, #1
 1079 04f6 3B60     		str	r3, [r7]
 1080              	.L44:
 276:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		for(int add = 0; add < 64; add++)
 1081              		.loc 1 276 0 is_stmt 0 discriminator 1
 1082 04f8 3B68     		ldr	r3, [r7]
 1083 04fa 3F2B     		cmp	r3, #63
 1084 04fc EFDD     		ble	.L45
 1085              	.LBE4:
 272:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 1086              		.loc 1 272 0 is_stmt 1 discriminator 2
 1087 04fe 7B68     		ldr	r3, [r7, #4]
 1088 0500 0133     		adds	r3, r3, #1
 1089 0502 7B60     		str	r3, [r7, #4]
 1090              	.L43:
 272:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 1091              		.loc 1 272 0 is_stmt 0 discriminator 1
 1092 0504 7B68     		ldr	r3, [r7, #4]
 1093 0506 072B     		cmp	r3, #7
 1094 0508 CADD     		ble	.L46
 1095              	.LBE3:
 279:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		}
 280:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 281:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 1096              		.loc 1 281 0 is_stmt 1
 1097 050a C046     		nop
 1098 050c BD46     		mov	sp, r7
 1099 050e 02B0     		add	sp, sp, #8
 1100              		@ sp needed
 1101 0510 80BD     		pop	{r7, pc}
 1102              	.L48:
 1103 0512 C046     		.align	2
 1104              	.L47:
 1105 0514 00000000 		.word	LCD_SET_PAGE
 1106 0518 00000000 		.word	B_CS1
 1107 051c 00000000 		.word	B_CS2
 1108 0520 00000000 		.word	LCD_SET_ADD
 1109              		.cfi_endproc
 1110              	.LFE16:
 1112              		.comm	off_screen_buffer,1024,4
 1113              		.bss
 1114              		.align	2
 1115              	modified:
 1116 0000 00000000 		.space	1024
 1116      00000000 
 1116      00000000 
 1116      00000000 
 1116      00000000 
 1117              		.text
 1118              		.align	2
 1119              		.global	flush_screen
 1120              		.code	16
 1121              		.thumb_func
 1123              	flush_screen:
 1124              	.LFB17:
 282:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 283:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** uint8_t off_screen_buffer[8][128];
 284:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** static uint8_t modified[8][128];
 285:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 286:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void flush_screen()
 287:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 1125              		.loc 1 287 0
 1126              		.cfi_startproc
 1127 0524 80B5     		push	{r7, lr}
 1128              		.cfi_def_cfa_offset 8
 1129              		.cfi_offset 7, -8
 1130              		.cfi_offset 14, -4
 1131 0526 84B0     		sub	sp, sp, #16
 1132              		.cfi_def_cfa_offset 24
 1133 0528 00AF     		add	r7, sp, #0
 1134              		.cfi_def_cfa_register 7
 1135              	.LBB5:
 288:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int x = 0; x < 8; x++)
 1136              		.loc 1 288 0
 1137 052a 0023     		movs	r3, #0
 1138 052c FB60     		str	r3, [r7, #12]
 1139 052e A6E0     		b	.L50
 1140              	.L58:
 289:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 290:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		graphics_write_command(LCD_SET_PAGE | x, B_CS1 | B_CS2);
 1141              		.loc 1 290 0
 1142 0530 FB68     		ldr	r3, [r7, #12]
 1143 0532 DAB2     		uxtb	r2, r3
 1144 0534 564B     		ldr	r3, .L59
 1145 0536 1B78     		ldrb	r3, [r3]
 1146 0538 DBB2     		uxtb	r3, r3
 1147 053a 1343     		orrs	r3, r2
 1148 053c DBB2     		uxtb	r3, r3
 1149 053e D8B2     		uxtb	r0, r3
 1150 0540 544B     		ldr	r3, .L59+4
 1151 0542 1A78     		ldrb	r2, [r3]
 1152 0544 544B     		ldr	r3, .L59+8
 1153 0546 1B78     		ldrb	r3, [r3]
 1154 0548 1343     		orrs	r3, r2
 1155 054a DBB2     		uxtb	r3, r3
 1156 054c 1900     		movs	r1, r3
 1157 054e FFF7FEFF 		bl	graphics_write_command
 1158              	.LBB6:
 291:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		for(int y = 0; y < 64; y++)
 1159              		.loc 1 291 0
 1160 0552 0023     		movs	r3, #0
 1161 0554 BB60     		str	r3, [r7, #8]
 1162 0556 8BE0     		b	.L51
 1163              	.L57:
 1164              	.LBB7:
 292:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 293:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			bool set=false;
 1165              		.loc 1 293 0
 1166 0558 FB1D     		adds	r3, r7, #7
 1167 055a 0022     		movs	r2, #0
 1168 055c 1A70     		strb	r2, [r3]
 294:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			if (modified[x][y] && modified[x][y + 64])
 1169              		.loc 1 294 0
 1170 055e 4F4A     		ldr	r2, .L59+12
 1171 0560 FB68     		ldr	r3, [r7, #12]
 1172 0562 DB01     		lsls	r3, r3, #7
 1173 0564 D218     		adds	r2, r2, r3
 1174 0566 BB68     		ldr	r3, [r7, #8]
 1175 0568 D318     		adds	r3, r2, r3
 1176 056a 1B78     		ldrb	r3, [r3]
 1177 056c 002B     		cmp	r3, #0
 1178 056e 1CD0     		beq	.L52
 1179              		.loc 1 294 0 is_stmt 0 discriminator 1
 1180 0570 BB68     		ldr	r3, [r7, #8]
 1181 0572 4033     		adds	r3, r3, #64
 1182 0574 4949     		ldr	r1, .L59+12
 1183 0576 FA68     		ldr	r2, [r7, #12]
 1184 0578 D201     		lsls	r2, r2, #7
 1185 057a 8A18     		adds	r2, r1, r2
 1186 057c D35C     		ldrb	r3, [r2, r3]
 1187 057e 002B     		cmp	r3, #0
 1188 0580 13D0     		beq	.L52
 295:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			{
 296:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 				graphics_write_command(LCD_SET_ADD | y, B_CS1|B_CS2);
 1189              		.loc 1 296 0 is_stmt 1
 1190 0582 BB68     		ldr	r3, [r7, #8]
 1191 0584 DAB2     		uxtb	r2, r3
 1192 0586 464B     		ldr	r3, .L59+16
 1193 0588 1B78     		ldrb	r3, [r3]
 1194 058a DBB2     		uxtb	r3, r3
 1195 058c 1343     		orrs	r3, r2
 1196 058e DBB2     		uxtb	r3, r3
 1197 0590 D8B2     		uxtb	r0, r3
 1198 0592 404B     		ldr	r3, .L59+4
 1199 0594 1A78     		ldrb	r2, [r3]
 1200 0596 404B     		ldr	r3, .L59+8
 1201 0598 1B78     		ldrb	r3, [r3]
 1202 059a 1343     		orrs	r3, r2
 1203 059c DBB2     		uxtb	r3, r3
 1204 059e 1900     		movs	r1, r3
 1205 05a0 FFF7FEFF 		bl	graphics_write_command
 297:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 				set = true;
 1206              		.loc 1 297 0
 1207 05a4 FB1D     		adds	r3, r7, #7
 1208 05a6 0122     		movs	r2, #1
 1209 05a8 1A70     		strb	r2, [r3]
 1210              	.L52:
 298:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			}
 299:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 300:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             if(modified[x][y])
 1211              		.loc 1 300 0
 1212 05aa 3C4A     		ldr	r2, .L59+12
 1213 05ac FB68     		ldr	r3, [r7, #12]
 1214 05ae DB01     		lsls	r3, r3, #7
 1215 05b0 D218     		adds	r2, r2, r3
 1216 05b2 BB68     		ldr	r3, [r7, #8]
 1217 05b4 D318     		adds	r3, r2, r3
 1218 05b6 1B78     		ldrb	r3, [r3]
 1219 05b8 002B     		cmp	r3, #0
 1220 05ba 26D0     		beq	.L53
 301:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             {
 302:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                 if(!set)graphics_write_command(LCD_SET_ADD | y, B_CS1);
 1221              		.loc 1 302 0
 1222 05bc FB1D     		adds	r3, r7, #7
 1223 05be 1B78     		ldrb	r3, [r3]
 1224 05c0 002B     		cmp	r3, #0
 1225 05c2 0DD1     		bne	.L54
 1226              		.loc 1 302 0 is_stmt 0 discriminator 1
 1227 05c4 BB68     		ldr	r3, [r7, #8]
 1228 05c6 DAB2     		uxtb	r2, r3
 1229 05c8 354B     		ldr	r3, .L59+16
 1230 05ca 1B78     		ldrb	r3, [r3]
 1231 05cc DBB2     		uxtb	r3, r3
 1232 05ce 1343     		orrs	r3, r2
 1233 05d0 DBB2     		uxtb	r3, r3
 1234 05d2 DAB2     		uxtb	r2, r3
 1235 05d4 2F4B     		ldr	r3, .L59+4
 1236 05d6 1B78     		ldrb	r3, [r3]
 1237 05d8 1900     		movs	r1, r3
 1238 05da 1000     		movs	r0, r2
 1239 05dc FFF7FEFF 		bl	graphics_write_command
 1240              	.L54:
 303:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                 graphics_write_data(off_screen_buffer[x][y], B_CS1);
 1241              		.loc 1 303 0 is_stmt 1
 1242 05e0 304A     		ldr	r2, .L59+20
 1243 05e2 FB68     		ldr	r3, [r7, #12]
 1244 05e4 DB01     		lsls	r3, r3, #7
 1245 05e6 D218     		adds	r2, r2, r3
 1246 05e8 BB68     		ldr	r3, [r7, #8]
 1247 05ea D318     		adds	r3, r2, r3
 1248 05ec 1A78     		ldrb	r2, [r3]
 1249 05ee 294B     		ldr	r3, .L59+4
 1250 05f0 1B78     		ldrb	r3, [r3]
 1251 05f2 1900     		movs	r1, r3
 1252 05f4 1000     		movs	r0, r2
 1253 05f6 FFF7FEFF 		bl	graphics_write_data
 304:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                 modified[x][y]=0;
 1254              		.loc 1 304 0
 1255 05fa 284A     		ldr	r2, .L59+12
 1256 05fc FB68     		ldr	r3, [r7, #12]
 1257 05fe DB01     		lsls	r3, r3, #7
 1258 0600 D218     		adds	r2, r2, r3
 1259 0602 BB68     		ldr	r3, [r7, #8]
 1260 0604 D318     		adds	r3, r2, r3
 1261 0606 0022     		movs	r2, #0
 1262 0608 1A70     		strb	r2, [r3]
 1263              	.L53:
 305:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             }
 306:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             if(modified[x][y + 64])
 1264              		.loc 1 306 0
 1265 060a BB68     		ldr	r3, [r7, #8]
 1266 060c 4033     		adds	r3, r3, #64
 1267 060e 2349     		ldr	r1, .L59+12
 1268 0610 FA68     		ldr	r2, [r7, #12]
 1269 0612 D201     		lsls	r2, r2, #7
 1270 0614 8A18     		adds	r2, r1, r2
 1271 0616 D35C     		ldrb	r3, [r2, r3]
 1272 0618 002B     		cmp	r3, #0
 1273 061a 26D0     		beq	.L55
 307:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             {
 308:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 				if (!set)graphics_write_command(LCD_SET_ADD | y, B_CS2);
 1274              		.loc 1 308 0
 1275 061c FB1D     		adds	r3, r7, #7
 1276 061e 1B78     		ldrb	r3, [r3]
 1277 0620 002B     		cmp	r3, #0
 1278 0622 0DD1     		bne	.L56
 1279              		.loc 1 308 0 is_stmt 0 discriminator 1
 1280 0624 BB68     		ldr	r3, [r7, #8]
 1281 0626 DAB2     		uxtb	r2, r3
 1282 0628 1D4B     		ldr	r3, .L59+16
 1283 062a 1B78     		ldrb	r3, [r3]
 1284 062c DBB2     		uxtb	r3, r3
 1285 062e 1343     		orrs	r3, r2
 1286 0630 DBB2     		uxtb	r3, r3
 1287 0632 DAB2     		uxtb	r2, r3
 1288 0634 184B     		ldr	r3, .L59+8
 1289 0636 1B78     		ldrb	r3, [r3]
 1290 0638 1900     		movs	r1, r3
 1291 063a 1000     		movs	r0, r2
 1292 063c FFF7FEFF 		bl	graphics_write_command
 1293              	.L56:
 309:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                 graphics_write_data(off_screen_buffer[x][y + 64], B_CS2);
 1294              		.loc 1 309 0 is_stmt 1
 1295 0640 BB68     		ldr	r3, [r7, #8]
 1296 0642 4033     		adds	r3, r3, #64
 1297 0644 1749     		ldr	r1, .L59+20
 1298 0646 FA68     		ldr	r2, [r7, #12]
 1299 0648 D201     		lsls	r2, r2, #7
 1300 064a 8A18     		adds	r2, r1, r2
 1301 064c D25C     		ldrb	r2, [r2, r3]
 1302 064e 124B     		ldr	r3, .L59+8
 1303 0650 1B78     		ldrb	r3, [r3]
 1304 0652 1900     		movs	r1, r3
 1305 0654 1000     		movs	r0, r2
 1306 0656 FFF7FEFF 		bl	graphics_write_data
 310:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                 modified[x][y+64]=0;
 1307              		.loc 1 310 0
 1308 065a BB68     		ldr	r3, [r7, #8]
 1309 065c 4033     		adds	r3, r3, #64
 1310 065e 0F49     		ldr	r1, .L59+12
 1311 0660 FA68     		ldr	r2, [r7, #12]
 1312 0662 D201     		lsls	r2, r2, #7
 1313 0664 8A18     		adds	r2, r1, r2
 1314 0666 0021     		movs	r1, #0
 1315 0668 D154     		strb	r1, [r2, r3]
 1316              	.L55:
 1317              	.LBE7:
 291:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 1318              		.loc 1 291 0 discriminator 2
 1319 066a BB68     		ldr	r3, [r7, #8]
 1320 066c 0133     		adds	r3, r3, #1
 1321 066e BB60     		str	r3, [r7, #8]
 1322              	.L51:
 291:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 1323              		.loc 1 291 0 is_stmt 0 discriminator 1
 1324 0670 BB68     		ldr	r3, [r7, #8]
 1325 0672 3F2B     		cmp	r3, #63
 1326 0674 00DC     		bgt	.LCB1081
 1327 0676 6FE7     		b	.L57	@long jump
 1328              	.LCB1081:
 1329              	.LBE6:
 288:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 1330              		.loc 1 288 0 is_stmt 1 discriminator 2
 1331 0678 FB68     		ldr	r3, [r7, #12]
 1332 067a 0133     		adds	r3, r3, #1
 1333 067c FB60     		str	r3, [r7, #12]
 1334              	.L50:
 288:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 1335              		.loc 1 288 0 is_stmt 0 discriminator 1
 1336 067e FB68     		ldr	r3, [r7, #12]
 1337 0680 072B     		cmp	r3, #7
 1338 0682 00DC     		bgt	.LCB1090
 1339 0684 54E7     		b	.L58	@long jump
 1340              	.LCB1090:
 1341              	.LBE5:
 311:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             }
 312:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		}
 313:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}  
 314:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 1342              		.loc 1 314 0 is_stmt 1
 1343 0686 C046     		nop
 1344 0688 BD46     		mov	sp, r7
 1345 068a 04B0     		add	sp, sp, #16
 1346              		@ sp needed
 1347 068c 80BD     		pop	{r7, pc}
 1348              	.L60:
 1349 068e C046     		.align	2
 1350              	.L59:
 1351 0690 00000000 		.word	LCD_SET_PAGE
 1352 0694 00000000 		.word	B_CS1
 1353 0698 00000000 		.word	B_CS2
 1354 069c 00000000 		.word	modified
 1355 06a0 00000000 		.word	LCD_SET_ADD
 1356 06a4 00000000 		.word	off_screen_buffer
 1357              		.cfi_endproc
 1358              	.LFE17:
 1360              		.align	2
 1361              		.global	set_all
 1362              		.code	16
 1363              		.thumb_func
 1365              	set_all:
 1366              	.LFB18:
 315:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 316:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void set_all(uint8_t value)
 317:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 1367              		.loc 1 317 0
 1368              		.cfi_startproc
 1369 06a8 80B5     		push	{r7, lr}
 1370              		.cfi_def_cfa_offset 8
 1371              		.cfi_offset 7, -8
 1372              		.cfi_offset 14, -4
 1373 06aa 84B0     		sub	sp, sp, #16
 1374              		.cfi_def_cfa_offset 24
 1375 06ac 00AF     		add	r7, sp, #0
 1376              		.cfi_def_cfa_register 7
 1377 06ae 0200     		movs	r2, r0
 1378 06b0 FB1D     		adds	r3, r7, #7
 1379 06b2 1A70     		strb	r2, [r3]
 1380              	.LBB8:
 318:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int x = 0; x < 8; x++)
 1381              		.loc 1 318 0
 1382 06b4 0023     		movs	r3, #0
 1383 06b6 FB60     		str	r3, [r7, #12]
 1384 06b8 33E0     		b	.L62
 1385              	.L65:
 319:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 320:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		graphics_write_command(LCD_SET_PAGE | x, B_CS1 | B_CS2);
 1386              		.loc 1 320 0
 1387 06ba FB68     		ldr	r3, [r7, #12]
 1388 06bc DAB2     		uxtb	r2, r3
 1389 06be 1C4B     		ldr	r3, .L66
 1390 06c0 1B78     		ldrb	r3, [r3]
 1391 06c2 DBB2     		uxtb	r3, r3
 1392 06c4 1343     		orrs	r3, r2
 1393 06c6 DBB2     		uxtb	r3, r3
 1394 06c8 D8B2     		uxtb	r0, r3
 1395 06ca 1A4B     		ldr	r3, .L66+4
 1396 06cc 1A78     		ldrb	r2, [r3]
 1397 06ce 1A4B     		ldr	r3, .L66+8
 1398 06d0 1B78     		ldrb	r3, [r3]
 1399 06d2 1343     		orrs	r3, r2
 1400 06d4 DBB2     		uxtb	r3, r3
 1401 06d6 1900     		movs	r1, r3
 1402 06d8 FFF7FEFF 		bl	graphics_write_command
 321:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		graphics_write_command(LCD_SET_ADD | 0, B_CS1 | B_CS2);
 1403              		.loc 1 321 0
 1404 06dc 174B     		ldr	r3, .L66+12
 1405 06de 1878     		ldrb	r0, [r3]
 1406 06e0 144B     		ldr	r3, .L66+4
 1407 06e2 1A78     		ldrb	r2, [r3]
 1408 06e4 144B     		ldr	r3, .L66+8
 1409 06e6 1B78     		ldrb	r3, [r3]
 1410 06e8 1343     		orrs	r3, r2
 1411 06ea DBB2     		uxtb	r3, r3
 1412 06ec 1900     		movs	r1, r3
 1413 06ee FFF7FEFF 		bl	graphics_write_command
 1414              	.LBB9:
 322:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		for (int y = 0; y < 64; y++)
 1415              		.loc 1 322 0
 1416 06f2 0023     		movs	r3, #0
 1417 06f4 BB60     		str	r3, [r7, #8]
 1418 06f6 0EE0     		b	.L63
 1419              	.L64:
 323:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			graphics_write_data(value, B_CS1|B_CS2);
 1420              		.loc 1 323 0 discriminator 3
 1421 06f8 0E4B     		ldr	r3, .L66+4
 1422 06fa 1A78     		ldrb	r2, [r3]
 1423 06fc 0E4B     		ldr	r3, .L66+8
 1424 06fe 1B78     		ldrb	r3, [r3]
 1425 0700 1343     		orrs	r3, r2
 1426 0702 DAB2     		uxtb	r2, r3
 1427 0704 FB1D     		adds	r3, r7, #7
 1428 0706 1B78     		ldrb	r3, [r3]
 1429 0708 1100     		movs	r1, r2
 1430 070a 1800     		movs	r0, r3
 1431 070c FFF7FEFF 		bl	graphics_write_data
 322:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		for (int y = 0; y < 64; y++)
 1432              		.loc 1 322 0 discriminator 3
 1433 0710 BB68     		ldr	r3, [r7, #8]
 1434 0712 0133     		adds	r3, r3, #1
 1435 0714 BB60     		str	r3, [r7, #8]
 1436              	.L63:
 322:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		for (int y = 0; y < 64; y++)
 1437              		.loc 1 322 0 is_stmt 0 discriminator 1
 1438 0716 BB68     		ldr	r3, [r7, #8]
 1439 0718 3F2B     		cmp	r3, #63
 1440 071a EDDD     		ble	.L64
 1441              	.LBE9:
 318:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 1442              		.loc 1 318 0 is_stmt 1 discriminator 2
 1443 071c FB68     		ldr	r3, [r7, #12]
 1444 071e 0133     		adds	r3, r3, #1
 1445 0720 FB60     		str	r3, [r7, #12]
 1446              	.L62:
 318:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 1447              		.loc 1 318 0 is_stmt 0 discriminator 1
 1448 0722 FB68     		ldr	r3, [r7, #12]
 1449 0724 072B     		cmp	r3, #7
 1450 0726 C8DD     		ble	.L65
 1451              	.LBE8:
 324:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 325:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 1452              		.loc 1 325 0 is_stmt 1
 1453 0728 C046     		nop
 1454 072a BD46     		mov	sp, r7
 1455 072c 04B0     		add	sp, sp, #16
 1456              		@ sp needed
 1457 072e 80BD     		pop	{r7, pc}
 1458              	.L67:
 1459              		.align	2
 1460              	.L66:
 1461 0730 00000000 		.word	LCD_SET_PAGE
 1462 0734 00000000 		.word	B_CS1
 1463 0738 00000000 		.word	B_CS2
 1464 073c 00000000 		.word	LCD_SET_ADD
 1465              		.cfi_endproc
 1466              	.LFE18:
 1468              		.align	2
 1469              		.global	write_px
 1470              		.code	16
 1471              		.thumb_func
 1473              	write_px:
 1474              	.LFB19:
 326:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 327:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void write_px(int x, int y, bool set)
 328:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 1475              		.loc 1 328 0
 1476              		.cfi_startproc
 1477 0740 80B5     		push	{r7, lr}
 1478              		.cfi_def_cfa_offset 8
 1479              		.cfi_offset 7, -8
 1480              		.cfi_offset 14, -4
 1481 0742 86B0     		sub	sp, sp, #24
 1482              		.cfi_def_cfa_offset 32
 1483 0744 00AF     		add	r7, sp, #0
 1484              		.cfi_def_cfa_register 7
 1485 0746 F860     		str	r0, [r7, #12]
 1486 0748 B960     		str	r1, [r7, #8]
 1487 074a FB1D     		adds	r3, r7, #7
 1488 074c 1A70     		strb	r2, [r3]
 329:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     x = 63-x;
 1489              		.loc 1 329 0
 1490 074e FB68     		ldr	r3, [r7, #12]
 1491 0750 3F22     		movs	r2, #63
 1492 0752 D31A     		subs	r3, r2, r3
 1493 0754 FB60     		str	r3, [r7, #12]
 330:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     y = 127-y;
 1494              		.loc 1 330 0
 1495 0756 BB68     		ldr	r3, [r7, #8]
 1496 0758 7F22     		movs	r2, #127
 1497 075a D31A     		subs	r3, r2, r3
 1498 075c BB60     		str	r3, [r7, #8]
 331:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     uint8_t old_values = off_screen_buffer[x>>3][y];
 1499              		.loc 1 331 0
 1500 075e FB68     		ldr	r3, [r7, #12]
 1501 0760 DA10     		asrs	r2, r3, #3
 1502 0762 1723     		movs	r3, #23
 1503 0764 FB18     		adds	r3, r7, r3
 1504 0766 2D49     		ldr	r1, .L71
 1505 0768 D201     		lsls	r2, r2, #7
 1506 076a 8918     		adds	r1, r1, r2
 1507 076c BA68     		ldr	r2, [r7, #8]
 1508 076e 8A18     		adds	r2, r1, r2
 1509 0770 1278     		ldrb	r2, [r2]
 1510 0772 1A70     		strb	r2, [r3]
 332:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     uint8_t shift = x&0x7;
 1511              		.loc 1 332 0
 1512 0774 FB68     		ldr	r3, [r7, #12]
 1513 0776 DAB2     		uxtb	r2, r3
 1514 0778 1623     		movs	r3, #22
 1515 077a FB18     		adds	r3, r7, r3
 1516 077c 0721     		movs	r1, #7
 1517 077e 0A40     		ands	r2, r1
 1518 0780 1A70     		strb	r2, [r3]
 333:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     if(((old_values>>(shift))&0x1)!=set)
 1519              		.loc 1 333 0
 1520 0782 1723     		movs	r3, #23
 1521 0784 FB18     		adds	r3, r7, r3
 1522 0786 1A78     		ldrb	r2, [r3]
 1523 0788 1623     		movs	r3, #22
 1524 078a FB18     		adds	r3, r7, r3
 1525 078c 1B78     		ldrb	r3, [r3]
 1526 078e 1A41     		asrs	r2, r2, r3
 1527 0790 1300     		movs	r3, r2
 1528 0792 0122     		movs	r2, #1
 1529 0794 1A40     		ands	r2, r3
 1530 0796 FB1D     		adds	r3, r7, #7
 1531 0798 1B78     		ldrb	r3, [r3]
 1532 079a 9A42     		cmp	r2, r3
 1533 079c 39D0     		beq	.L70
 334:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     {
 335:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         modified[x>>3][y] ^= (1<<shift);
 1534              		.loc 1 335 0
 1535 079e FB68     		ldr	r3, [r7, #12]
 1536 07a0 DB10     		asrs	r3, r3, #3
 1537 07a2 FA68     		ldr	r2, [r7, #12]
 1538 07a4 D210     		asrs	r2, r2, #3
 1539 07a6 1E49     		ldr	r1, .L71+4
 1540 07a8 D201     		lsls	r2, r2, #7
 1541 07aa 8918     		adds	r1, r1, r2
 1542 07ac BA68     		ldr	r2, [r7, #8]
 1543 07ae 8A18     		adds	r2, r1, r2
 1544 07b0 1278     		ldrb	r2, [r2]
 1545 07b2 D0B2     		uxtb	r0, r2
 1546 07b4 1622     		movs	r2, #22
 1547 07b6 BA18     		adds	r2, r7, r2
 1548 07b8 1278     		ldrb	r2, [r2]
 1549 07ba 0121     		movs	r1, #1
 1550 07bc 9140     		lsls	r1, r1, r2
 1551 07be 0A00     		movs	r2, r1
 1552 07c0 D2B2     		uxtb	r2, r2
 1553 07c2 011C     		adds	r1, r0, #0
 1554 07c4 4A40     		eors	r2, r1
 1555 07c6 D2B2     		uxtb	r2, r2
 1556 07c8 D1B2     		uxtb	r1, r2
 1557 07ca 154A     		ldr	r2, .L71+4
 1558 07cc DB01     		lsls	r3, r3, #7
 1559 07ce D218     		adds	r2, r2, r3
 1560 07d0 BB68     		ldr	r3, [r7, #8]
 1561 07d2 D318     		adds	r3, r2, r3
 1562 07d4 0A1C     		adds	r2, r1, #0
 1563 07d6 1A70     		strb	r2, [r3]
 336:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         off_screen_buffer[x>>3][y] ^= (1<<shift);
 1564              		.loc 1 336 0
 1565 07d8 FB68     		ldr	r3, [r7, #12]
 1566 07da DB10     		asrs	r3, r3, #3
 1567 07dc FA68     		ldr	r2, [r7, #12]
 1568 07de D210     		asrs	r2, r2, #3
 1569 07e0 0E49     		ldr	r1, .L71
 1570 07e2 D201     		lsls	r2, r2, #7
 1571 07e4 8918     		adds	r1, r1, r2
 1572 07e6 BA68     		ldr	r2, [r7, #8]
 1573 07e8 8A18     		adds	r2, r1, r2
 1574 07ea 1278     		ldrb	r2, [r2]
 1575 07ec D0B2     		uxtb	r0, r2
 1576 07ee 1622     		movs	r2, #22
 1577 07f0 BA18     		adds	r2, r7, r2
 1578 07f2 1278     		ldrb	r2, [r2]
 1579 07f4 0121     		movs	r1, #1
 1580 07f6 9140     		lsls	r1, r1, r2
 1581 07f8 0A00     		movs	r2, r1
 1582 07fa D2B2     		uxtb	r2, r2
 1583 07fc 011C     		adds	r1, r0, #0
 1584 07fe 4A40     		eors	r2, r1
 1585 0800 D2B2     		uxtb	r2, r2
 1586 0802 D1B2     		uxtb	r1, r2
 1587 0804 054A     		ldr	r2, .L71
 1588 0806 DB01     		lsls	r3, r3, #7
 1589 0808 D218     		adds	r2, r2, r3
 1590 080a BB68     		ldr	r3, [r7, #8]
 1591 080c D318     		adds	r3, r2, r3
 1592 080e 0A1C     		adds	r2, r1, #0
 1593 0810 1A70     		strb	r2, [r3]
 1594              	.L70:
 337:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     }
 338:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 1595              		.loc 1 338 0
 1596 0812 C046     		nop
 1597 0814 BD46     		mov	sp, r7
 1598 0816 06B0     		add	sp, sp, #24
 1599              		@ sp needed
 1600 0818 80BD     		pop	{r7, pc}
 1601              	.L72:
 1602 081a C046     		.align	2
 1603              	.L71:
 1604 081c 00000000 		.word	off_screen_buffer
 1605 0820 00000000 		.word	modified
 1606              		.cfi_endproc
 1607              	.LFE19:
 1609              		.align	2
 1610              		.global	slow_clear
 1611              		.code	16
 1612              		.thumb_func
 1614              	slow_clear:
 1615              	.LFB20:
 339:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 340:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void slow_clear()
 341:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 1616              		.loc 1 341 0
 1617              		.cfi_startproc
 1618 0824 80B5     		push	{r7, lr}
 1619              		.cfi_def_cfa_offset 8
 1620              		.cfi_offset 7, -8
 1621              		.cfi_offset 14, -4
 1622 0826 82B0     		sub	sp, sp, #8
 1623              		.cfi_def_cfa_offset 16
 1624 0828 00AF     		add	r7, sp, #0
 1625              		.cfi_def_cfa_register 7
 1626              	.LBB10:
 342:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     for(int i = 0; i<64;i++)
 1627              		.loc 1 342 0
 1628 082a 0023     		movs	r3, #0
 1629 082c 7B60     		str	r3, [r7, #4]
 1630 082e 11E0     		b	.L74
 1631              	.L75:
 343:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     {
 344:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		write_px(i, i * 2, false);
 1632              		.loc 1 344 0 discriminator 3
 1633 0830 7B68     		ldr	r3, [r7, #4]
 1634 0832 5900     		lsls	r1, r3, #1
 1635 0834 7B68     		ldr	r3, [r7, #4]
 1636 0836 0022     		movs	r2, #0
 1637 0838 1800     		movs	r0, r3
 1638 083a FFF7FEFF 		bl	write_px
 345:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		write_px(i, i * 2 + 1, false);
 1639              		.loc 1 345 0 discriminator 3
 1640 083e 7B68     		ldr	r3, [r7, #4]
 1641 0840 5B00     		lsls	r3, r3, #1
 1642 0842 591C     		adds	r1, r3, #1
 1643 0844 7B68     		ldr	r3, [r7, #4]
 1644 0846 0022     		movs	r2, #0
 1645 0848 1800     		movs	r0, r3
 1646 084a FFF7FEFF 		bl	write_px
 342:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     for(int i = 0; i<64;i++)
 1647              		.loc 1 342 0 discriminator 3
 1648 084e 7B68     		ldr	r3, [r7, #4]
 1649 0850 0133     		adds	r3, r3, #1
 1650 0852 7B60     		str	r3, [r7, #4]
 1651              	.L74:
 342:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     for(int i = 0; i<64;i++)
 1652              		.loc 1 342 0 is_stmt 0 discriminator 1
 1653 0854 7B68     		ldr	r3, [r7, #4]
 1654 0856 3F2B     		cmp	r3, #63
 1655 0858 EADD     		ble	.L75
 1656              	.LBE10:
 346:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     }
 347:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     flush_screen();
 1657              		.loc 1 347 0 is_stmt 1
 1658 085a FFF7FEFF 		bl	flush_screen
 348:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 1659              		.loc 1 348 0
 1660 085e C046     		nop
 1661 0860 BD46     		mov	sp, r7
 1662 0862 02B0     		add	sp, sp, #8
 1663              		@ sp needed
 1664 0864 80BD     		pop	{r7, pc}
 1665              		.cfi_endproc
 1666              	.LFE20:
 1668 0866 C046     		.align	2
 1669              		.global	slow_fill
 1670              		.code	16
 1671              		.thumb_func
 1673              	slow_fill:
 1674              	.LFB21:
 349:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void slow_fill()
 350:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 1675              		.loc 1 350 0
 1676              		.cfi_startproc
 1677 0868 80B5     		push	{r7, lr}
 1678              		.cfi_def_cfa_offset 8
 1679              		.cfi_offset 7, -8
 1680              		.cfi_offset 14, -4
 1681 086a 82B0     		sub	sp, sp, #8
 1682              		.cfi_def_cfa_offset 16
 1683 086c 00AF     		add	r7, sp, #0
 1684              		.cfi_def_cfa_register 7
 1685              	.LBB11:
 351:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     for(int i = 0; i<64;i++)
 1686              		.loc 1 351 0
 1687 086e 0023     		movs	r3, #0
 1688 0870 7B60     		str	r3, [r7, #4]
 1689 0872 11E0     		b	.L77
 1690              	.L78:
 352:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     {
 353:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		write_px(i, i * 2, true);
 1691              		.loc 1 353 0 discriminator 3
 1692 0874 7B68     		ldr	r3, [r7, #4]
 1693 0876 5900     		lsls	r1, r3, #1
 1694 0878 7B68     		ldr	r3, [r7, #4]
 1695 087a 0122     		movs	r2, #1
 1696 087c 1800     		movs	r0, r3
 1697 087e FFF7FEFF 		bl	write_px
 354:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		write_px(i, i * 2 + 1, true);
 1698              		.loc 1 354 0 discriminator 3
 1699 0882 7B68     		ldr	r3, [r7, #4]
 1700 0884 5B00     		lsls	r3, r3, #1
 1701 0886 591C     		adds	r1, r3, #1
 1702 0888 7B68     		ldr	r3, [r7, #4]
 1703 088a 0122     		movs	r2, #1
 1704 088c 1800     		movs	r0, r3
 1705 088e FFF7FEFF 		bl	write_px
 351:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     for(int i = 0; i<64;i++)
 1706              		.loc 1 351 0 discriminator 3
 1707 0892 7B68     		ldr	r3, [r7, #4]
 1708 0894 0133     		adds	r3, r3, #1
 1709 0896 7B60     		str	r3, [r7, #4]
 1710              	.L77:
 351:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     for(int i = 0; i<64;i++)
 1711              		.loc 1 351 0 is_stmt 0 discriminator 1
 1712 0898 7B68     		ldr	r3, [r7, #4]
 1713 089a 3F2B     		cmp	r3, #63
 1714 089c EADD     		ble	.L78
 1715              	.LBE11:
 355:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     }
 356:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 357:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     flush_screen();
 1716              		.loc 1 357 0 is_stmt 1
 1717 089e FFF7FEFF 		bl	flush_screen
 358:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 1718              		.loc 1 358 0
 1719 08a2 C046     		nop
 1720 08a4 BD46     		mov	sp, r7
 1721 08a6 02B0     		add	sp, sp, #8
 1722              		@ sp needed
 1723 08a8 80BD     		pop	{r7, pc}
 1724              		.cfi_endproc
 1725              	.LFE21:
 1727              		.global	turnPoints
 1728              		.data
 1729 0019 000000   		.align	2
 1732              	turnPoints:
 1733 001c 36000000 		.word	54
 1734 0020 78000000 		.word	120
 1735 0024 08000000 		.word	8
 1736 0028 00000000 		.word	0
 1737 002c 36000000 		.word	54
 1738 0030 78000000 		.word	120
 1739 0034 00000000 		.word	0
 1740 0038 F8FFFFFF 		.word	-8
 1741 003c 36000000 		.word	54
 1742 0040 68000000 		.word	104
 1743 0044 F8FFFFFF 		.word	-8
 1744 0048 00000000 		.word	0
 1745 004c 06000000 		.word	6
 1746 0050 68000000 		.word	104
 1747 0054 00000000 		.word	0
 1748 0058 F8FFFFFF 		.word	-8
 1749 005c 06000000 		.word	6
 1750 0060 58000000 		.word	88
 1751 0064 08000000 		.word	8
 1752 0068 00000000 		.word	0
 1753 006c 36000000 		.word	54
 1754 0070 58000000 		.word	88
 1755 0074 00000000 		.word	0
 1756 0078 F8FFFFFF 		.word	-8
 1757 007c 36000000 		.word	54
 1758 0080 48000000 		.word	72
 1759 0084 F8FFFFFF 		.word	-8
 1760 0088 00000000 		.word	0
 1761 008c 06000000 		.word	6
 1762 0090 48000000 		.word	72
 1763 0094 00000000 		.word	0
 1764 0098 F8FFFFFF 		.word	-8
 1765 009c 06000000 		.word	6
 1766 00a0 58000000 		.word	88
 1767 00a4 08000000 		.word	8
 1768 00a8 00000000 		.word	0
 1769 00ac 36000000 		.word	54
 1770 00b0 58000000 		.word	88
 1771 00b4 00000000 		.word	0
 1772 00b8 F8FFFFFF 		.word	-8
 1773 00bc 36000000 		.word	54
 1774 00c0 48000000 		.word	72
 1775 00c4 F8FFFFFF 		.word	-8
 1776 00c8 00000000 		.word	0
 1777 00cc 06000000 		.word	6
 1778 00d0 48000000 		.word	72
 1779 00d4 00000000 		.word	0
 1780 00d8 F8FFFFFF 		.word	-8
 1781 00dc 06000000 		.word	6
 1782 00e0 38000000 		.word	56
 1783 00e4 08000000 		.word	8
 1784 00e8 00000000 		.word	0
 1785 00ec 36000000 		.word	54
 1786 00f0 38000000 		.word	56
 1787 00f4 00000000 		.word	0
 1788 00f8 F8FFFFFF 		.word	-8
 1789 00fc 36000000 		.word	54
 1790 0100 28000000 		.word	40
 1791 0104 F8FFFFFF 		.word	-8
 1792 0108 00000000 		.word	0
 1793 010c 06000000 		.word	6
 1794 0110 28000000 		.word	40
 1795 0114 00000000 		.word	0
 1796 0118 F8FFFFFF 		.word	-8
 1797 011c 06000000 		.word	6
 1798 0120 18000000 		.word	24
 1799 0124 08000000 		.word	8
 1800 0128 00000000 		.word	0
 1801 012c 36000000 		.word	54
 1802 0130 18000000 		.word	24
 1803 0134 00000000 		.word	0
 1804 0138 F8FFFFFF 		.word	-8
 1805 013c 36000000 		.word	54
 1806 0140 08000000 		.word	8
 1807 0144 F8FFFFFF 		.word	-8
 1808 0148 00000000 		.word	0
 1809 014c 06000000 		.word	6
 1810 0150 08000000 		.word	8
 1811 0154 00000000 		.word	0
 1812 0158 F8FFFFFF 		.word	-8
 1813 015c 06000000 		.word	6
 1814 0160 F8FFFFFF 		.word	-8
 1815 0164 08000000 		.word	8
 1816 0168 00000000 		.word	0
 1817 016c 36000000 		.word	54
 1818 0170 F8FFFFFF 		.word	-8
 1819 0174 00000000 		.word	0
 1820 0178 F8FFFFFF 		.word	-8
 1821 017c 36000000 		.word	54
 1822 0180 E8FFFFFF 		.word	-24
 1823 0184 F8FFFFFF 		.word	-8
 1824 0188 00000000 		.word	0
 1825 018c 06000000 		.word	6
 1826 0190 E8FFFFFF 		.word	-24
 1827 0194 00000000 		.word	0
 1828 0198 F8FFFFFF 		.word	-8
 1829              		.bss
 1830              		.align	2
 1831              	sprites:
 1832 0400 00000000 		.space	16576
 1832      00000000 
 1832      00000000 
 1832      00000000 
 1832      00000000 
 1833              		.align	2
 1834              	entities:
 1835 44c0 00000000 		.space	4608
 1835      00000000 
 1835      00000000 
 1835      00000000 
 1835      00000000 
 1836              		.align	2
 1837              	num_entities:
 1838 56c0 00000000 		.space	4
 1839              		.align	2
 1840              	num_sprites:
 1841 56c4 00000000 		.space	4
 1842              		.text
 1843 08aa C046     		.align	2
 1844              		.global	make_entity
 1845              		.code	16
 1846              		.thumb_func
 1848              	make_entity:
 1849              	.LFB22:
 359:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 360:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** typedef struct tPoint
 361:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 362:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	uint8_t x;
 363:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	uint8_t y;
 364:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }POINT;
 365:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 366:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** typedef struct 
 367:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 368:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	bool sprite[4][16][16];
 369:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	int num_frames,h,w;
 370:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** } Sprite;
 371:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 372:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 373:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** typedef struct 
 374:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 375:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     int x;
 376:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     int y;
 377:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** } Vec2;
 378:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 379:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** typedef enum
 380:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 381:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	entity_type_player,
 382:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	entity_type_bullet,
 383:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	entity_type_enemy,
 384:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     entity_type_fx,
 385:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** } EntityType;
 386:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 387:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** typedef struct 
 388:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 389:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     Sprite *sprite;
 390:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	int id;
 391:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     Vec2 pos, velocity;
 392:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	bool destroy;
 393:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	int damage;
 394:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	EntityType type;
 395:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** } Entity;
 396:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 397:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** typedef struct
 398:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 399:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	Vec2 pos, velocity;
 400:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** } TurnPoint;
 401:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 402:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #define ENIMY_SPEED 8
 403:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 404:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #define TURN_POINTS 24
 405:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #define Y_UPPER 54
 406:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #define Y_LOWER 6
 407:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 408:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #define START_Y 120
 409:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #define STEP_Y 16
 410:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 411:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #define LEFT (Vec2){-ENIMY_SPEED, 0}
 412:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #define RIGHT (Vec2){ENIMY_SPEED, 0}
 413:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** #define DOWN (Vec2){0, -ENIMY_SPEED}
 414:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 415:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 416:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** TurnPoint turnPoints[] = 
 417:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 418:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_UPPER, START_Y}, RIGHT},
 419:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_UPPER, START_Y}, DOWN},
 420:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_UPPER, START_Y - STEP_Y}, LEFT},
 421:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_LOWER, START_Y - STEP_Y}, DOWN},
 422:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 423:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_LOWER, START_Y - STEP_Y * 2}, RIGHT},
 424:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_UPPER, START_Y - STEP_Y * 2}, DOWN},
 425:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_UPPER, START_Y - STEP_Y * 3}, LEFT},
 426:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_LOWER, START_Y - STEP_Y * 3}, DOWN},
 427:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 428:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_LOWER, START_Y - STEP_Y * 2}, RIGHT},
 429:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_UPPER, START_Y - STEP_Y * 2}, DOWN},
 430:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_UPPER, START_Y - STEP_Y * 3}, LEFT},
 431:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_LOWER, START_Y - STEP_Y * 3}, DOWN},
 432:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 433:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_LOWER, START_Y - STEP_Y * 4}, RIGHT},
 434:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_UPPER, START_Y - STEP_Y * 4}, DOWN},
 435:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_UPPER, START_Y - STEP_Y * 5}, LEFT},
 436:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_LOWER, START_Y - STEP_Y * 5}, DOWN},
 437:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 438:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_LOWER, START_Y - STEP_Y * 6}, RIGHT},
 439:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_UPPER, START_Y - STEP_Y * 6}, DOWN},
 440:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_UPPER, START_Y - STEP_Y * 7}, LEFT},
 441:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_LOWER, START_Y - STEP_Y * 7}, DOWN},
 442:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 443:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_LOWER, START_Y - STEP_Y * 8}, RIGHT},
 444:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_UPPER, START_Y - STEP_Y * 8}, DOWN},
 445:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_UPPER, START_Y - STEP_Y * 9}, LEFT},
 446:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {(Vec2){Y_LOWER, START_Y - STEP_Y * 9}, DOWN},
 447:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** };
 448:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 449:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** static Sprite sprites[16];
 450:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** static Entity entities[128];
 451:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** static int num_entities=0;
 452:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** static num_sprites = 0;
 453:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 454:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** int make_entity(Sprite *sprite, EntityType type, Vec2 pos, Vec2 velocity)
 455:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 1850              		.loc 1 455 0
 1851              		.cfi_startproc
 1852 08ac 90B5     		push	{r4, r7, lr}
 1853              		.cfi_def_cfa_offset 12
 1854              		.cfi_offset 4, -12
 1855              		.cfi_offset 7, -8
 1856              		.cfi_offset 14, -4
 1857 08ae 8FB0     		sub	sp, sp, #60
 1858              		.cfi_def_cfa_offset 72
 1859 08b0 00AF     		add	r7, sp, #0
 1860              		.cfi_def_cfa_register 7
 1861 08b2 F860     		str	r0, [r7, #12]
 1862 08b4 0800     		movs	r0, r1
 1863 08b6 3900     		movs	r1, r7
 1864 08b8 0A60     		str	r2, [r1]
 1865 08ba 4B60     		str	r3, [r1, #4]
 1866 08bc 0B23     		movs	r3, #11
 1867 08be FB18     		adds	r3, r7, r3
 1868 08c0 021C     		adds	r2, r0, #0
 1869 08c2 1A70     		strb	r2, [r3]
 456:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	static id_counter = 0;
 457:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	Entity *ret = &entities[num_entities++];
 1870              		.loc 1 457 0
 1871 08c4 204B     		ldr	r3, .L81
 1872 08c6 1A68     		ldr	r2, [r3]
 1873 08c8 511C     		adds	r1, r2, #1
 1874 08ca 1F4B     		ldr	r3, .L81
 1875 08cc 1960     		str	r1, [r3]
 1876 08ce 1300     		movs	r3, r2
 1877 08d0 DB00     		lsls	r3, r3, #3
 1878 08d2 9B18     		adds	r3, r3, r2
 1879 08d4 9B00     		lsls	r3, r3, #2
 1880 08d6 1D4A     		ldr	r2, .L81+4
 1881 08d8 9B18     		adds	r3, r3, r2
 1882 08da 7B63     		str	r3, [r7, #52]
 458:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	Entity zeroed = {};
 1883              		.loc 1 458 0
 1884 08dc 1023     		movs	r3, #16
 1885 08de FB18     		adds	r3, r7, r3
 1886 08e0 1800     		movs	r0, r3
 1887 08e2 2423     		movs	r3, #36
 1888 08e4 1A00     		movs	r2, r3
 1889 08e6 0021     		movs	r1, #0
 1890 08e8 FFF7FEFF 		bl	memset
 459:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     *ret = zeroed;
 1891              		.loc 1 459 0
 1892 08ec 7B6B     		ldr	r3, [r7, #52]
 1893 08ee 1022     		movs	r2, #16
 1894 08f0 BA18     		adds	r2, r7, r2
 1895 08f2 13CA     		ldmia	r2!, {r0, r1, r4}
 1896 08f4 13C3     		stmia	r3!, {r0, r1, r4}
 1897 08f6 13CA     		ldmia	r2!, {r0, r1, r4}
 1898 08f8 13C3     		stmia	r3!, {r0, r1, r4}
 1899 08fa 13CA     		ldmia	r2!, {r0, r1, r4}
 1900 08fc 13C3     		stmia	r3!, {r0, r1, r4}
 460:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ret->sprite = sprite;
 1901              		.loc 1 460 0
 1902 08fe 7B6B     		ldr	r3, [r7, #52]
 1903 0900 FA68     		ldr	r2, [r7, #12]
 1904 0902 1A60     		str	r2, [r3]
 461:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ret->id = id_counter++;
 1905              		.loc 1 461 0
 1906 0904 124B     		ldr	r3, .L81+8
 1907 0906 1A68     		ldr	r2, [r3]
 1908 0908 511C     		adds	r1, r2, #1
 1909 090a 114B     		ldr	r3, .L81+8
 1910 090c 1960     		str	r1, [r3]
 1911 090e 7B6B     		ldr	r3, [r7, #52]
 1912 0910 5A60     		str	r2, [r3, #4]
 462:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     ret->pos = pos;
 1913              		.loc 1 462 0
 1914 0912 7B6B     		ldr	r3, [r7, #52]
 1915 0914 3A00     		movs	r2, r7
 1916 0916 0833     		adds	r3, r3, #8
 1917 0918 03CA     		ldmia	r2!, {r0, r1}
 1918 091a 03C3     		stmia	r3!, {r0, r1}
 463:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     ret->velocity = velocity;
 1919              		.loc 1 463 0
 1920 091c 7B6B     		ldr	r3, [r7, #52]
 1921 091e 4022     		movs	r2, #64
 1922 0920 0821     		movs	r1, #8
 1923 0922 8C46     		mov	ip, r1
 1924 0924 BC44     		add	ip, ip, r7
 1925 0926 6244     		add	r2, r2, ip
 1926 0928 1033     		adds	r3, r3, #16
 1927 092a 03CA     		ldmia	r2!, {r0, r1}
 1928 092c 03C3     		stmia	r3!, {r0, r1}
 464:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     ret->type = type;
 1929              		.loc 1 464 0
 1930 092e 7B6B     		ldr	r3, [r7, #52]
 1931 0930 0B22     		movs	r2, #11
 1932 0932 BA18     		adds	r2, r7, r2
 1933 0934 2021     		movs	r1, #32
 1934 0936 1278     		ldrb	r2, [r2]
 1935 0938 5A54     		strb	r2, [r3, r1]
 465:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	return ret->id;
 1936              		.loc 1 465 0
 1937 093a 7B6B     		ldr	r3, [r7, #52]
 1938 093c 5B68     		ldr	r3, [r3, #4]
 466:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 1939              		.loc 1 466 0
 1940 093e 1800     		movs	r0, r3
 1941 0940 BD46     		mov	sp, r7
 1942 0942 0FB0     		add	sp, sp, #60
 1943              		@ sp needed
 1944 0944 90BD     		pop	{r4, r7, pc}
 1945              	.L82:
 1946 0946 C046     		.align	2
 1947              	.L81:
 1948 0948 C0560000 		.word	num_entities
 1949 094c C0440000 		.word	entities
 1950 0950 C8560000 		.word	id_counter.4410
 1951              		.cfi_endproc
 1952              	.LFE22:
 1954              		.align	2
 1955              		.global	blit_sprite
 1956              		.code	16
 1957              		.thumb_func
 1959              	blit_sprite:
 1960              	.LFB23:
 467:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 468:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 469:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void blit_sprite(Sprite *sprite, int x, int y, int frame)
 470:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 1961              		.loc 1 470 0
 1962              		.cfi_startproc
 1963 0954 80B5     		push	{r7, lr}
 1964              		.cfi_def_cfa_offset 8
 1965              		.cfi_offset 7, -8
 1966              		.cfi_offset 14, -4
 1967 0956 88B0     		sub	sp, sp, #32
 1968              		.cfi_def_cfa_offset 40
 1969 0958 00AF     		add	r7, sp, #0
 1970              		.cfi_def_cfa_register 7
 1971 095a F860     		str	r0, [r7, #12]
 1972 095c B960     		str	r1, [r7, #8]
 1973 095e 7A60     		str	r2, [r7, #4]
 1974 0960 3B60     		str	r3, [r7]
 1975              	.LBB12:
 471:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int x_ = 0; x_ < sprite->w; x_++)
 1976              		.loc 1 471 0
 1977 0962 0023     		movs	r3, #0
 1978 0964 FB61     		str	r3, [r7, #28]
 1979 0966 2AE0     		b	.L84
 1980              	.L88:
 1981              	.LBB13:
 472:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 473:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		for (int y_ = 0; y_ < sprite->h; y_++)
 1982              		.loc 1 473 0
 1983 0968 0023     		movs	r3, #0
 1984 096a BB61     		str	r3, [r7, #24]
 1985 096c 1EE0     		b	.L85
 1986              	.L87:
 1987              	.LBB14:
 474:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 475:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			bool set = sprite->sprite[frame][x_][y_];
 1988              		.loc 1 475 0
 1989 096e 1723     		movs	r3, #23
 1990 0970 FB18     		adds	r3, r7, r3
 1991 0972 F968     		ldr	r1, [r7, #12]
 1992 0974 3A68     		ldr	r2, [r7]
 1993 0976 1001     		lsls	r0, r2, #4
 1994 0978 FA69     		ldr	r2, [r7, #28]
 1995 097a 8218     		adds	r2, r0, r2
 1996 097c 1201     		lsls	r2, r2, #4
 1997 097e 8918     		adds	r1, r1, r2
 1998 0980 BA69     		ldr	r2, [r7, #24]
 1999 0982 8A18     		adds	r2, r1, r2
 2000 0984 1278     		ldrb	r2, [r2]
 2001 0986 1A70     		strb	r2, [r3]
 476:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			if (set)
 2002              		.loc 1 476 0
 2003 0988 1723     		movs	r3, #23
 2004 098a FB18     		adds	r3, r7, r3
 2005 098c 1B78     		ldrb	r3, [r3]
 2006 098e 002B     		cmp	r3, #0
 2007 0990 09D0     		beq	.L86
 477:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 				write_px(x + x_, y + y_, true);
 2008              		.loc 1 477 0
 2009 0992 BA68     		ldr	r2, [r7, #8]
 2010 0994 FB69     		ldr	r3, [r7, #28]
 2011 0996 D018     		adds	r0, r2, r3
 2012 0998 7A68     		ldr	r2, [r7, #4]
 2013 099a BB69     		ldr	r3, [r7, #24]
 2014 099c D318     		adds	r3, r2, r3
 2015 099e 0122     		movs	r2, #1
 2016 09a0 1900     		movs	r1, r3
 2017 09a2 FFF7FEFF 		bl	write_px
 2018              	.L86:
 2019              	.LBE14:
 473:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 2020              		.loc 1 473 0 discriminator 2
 2021 09a6 BB69     		ldr	r3, [r7, #24]
 2022 09a8 0133     		adds	r3, r3, #1
 2023 09aa BB61     		str	r3, [r7, #24]
 2024              	.L85:
 473:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 2025              		.loc 1 473 0 is_stmt 0 discriminator 1
 2026 09ac FB68     		ldr	r3, [r7, #12]
 2027 09ae 094A     		ldr	r2, .L89
 2028 09b0 9A58     		ldr	r2, [r3, r2]
 2029 09b2 BB69     		ldr	r3, [r7, #24]
 2030 09b4 9A42     		cmp	r2, r3
 2031 09b6 DADC     		bgt	.L87
 2032              	.LBE13:
 471:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 2033              		.loc 1 471 0 is_stmt 1 discriminator 2
 2034 09b8 FB69     		ldr	r3, [r7, #28]
 2035 09ba 0133     		adds	r3, r3, #1
 2036 09bc FB61     		str	r3, [r7, #28]
 2037              	.L84:
 471:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 2038              		.loc 1 471 0 is_stmt 0 discriminator 1
 2039 09be FA68     		ldr	r2, [r7, #12]
 2040 09c0 8123     		movs	r3, #129
 2041 09c2 DB00     		lsls	r3, r3, #3
 2042 09c4 D258     		ldr	r2, [r2, r3]
 2043 09c6 FB69     		ldr	r3, [r7, #28]
 2044 09c8 9A42     		cmp	r2, r3
 2045 09ca CDDC     		bgt	.L88
 2046              	.LBE12:
 478:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		}
 479:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 480:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2047              		.loc 1 480 0 is_stmt 1
 2048 09cc C046     		nop
 2049 09ce BD46     		mov	sp, r7
 2050 09d0 08B0     		add	sp, sp, #32
 2051              		@ sp needed
 2052 09d2 80BD     		pop	{r7, pc}
 2053              	.L90:
 2054              		.align	2
 2055              	.L89:
 2056 09d4 04040000 		.word	1028
 2057              		.cfi_endproc
 2058              	.LFE23:
 2060              		.align	2
 2061              		.global	clear_sprite
 2062              		.code	16
 2063              		.thumb_func
 2065              	clear_sprite:
 2066              	.LFB24:
 481:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 482:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void clear_sprite(Sprite *sprite, int x, int y, int frame)
 483:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2067              		.loc 1 483 0
 2068              		.cfi_startproc
 2069 09d8 80B5     		push	{r7, lr}
 2070              		.cfi_def_cfa_offset 8
 2071              		.cfi_offset 7, -8
 2072              		.cfi_offset 14, -4
 2073 09da 88B0     		sub	sp, sp, #32
 2074              		.cfi_def_cfa_offset 40
 2075 09dc 00AF     		add	r7, sp, #0
 2076              		.cfi_def_cfa_register 7
 2077 09de F860     		str	r0, [r7, #12]
 2078 09e0 B960     		str	r1, [r7, #8]
 2079 09e2 7A60     		str	r2, [r7, #4]
 2080 09e4 3B60     		str	r3, [r7]
 2081              	.LBB15:
 484:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int x_ = 0; x_ < sprite->w; x_++)
 2082              		.loc 1 484 0
 2083 09e6 0023     		movs	r3, #0
 2084 09e8 FB61     		str	r3, [r7, #28]
 2085 09ea 2AE0     		b	.L92
 2086              	.L96:
 2087              	.LBB16:
 485:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 486:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		for (int y_ = 0; y_ < sprite->h; y_++)
 2088              		.loc 1 486 0
 2089 09ec 0023     		movs	r3, #0
 2090 09ee BB61     		str	r3, [r7, #24]
 2091 09f0 1EE0     		b	.L93
 2092              	.L95:
 2093              	.LBB17:
 487:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 488:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			bool set = sprite->sprite[frame][x_][y_];
 2094              		.loc 1 488 0
 2095 09f2 1723     		movs	r3, #23
 2096 09f4 FB18     		adds	r3, r7, r3
 2097 09f6 F968     		ldr	r1, [r7, #12]
 2098 09f8 3A68     		ldr	r2, [r7]
 2099 09fa 1001     		lsls	r0, r2, #4
 2100 09fc FA69     		ldr	r2, [r7, #28]
 2101 09fe 8218     		adds	r2, r0, r2
 2102 0a00 1201     		lsls	r2, r2, #4
 2103 0a02 8918     		adds	r1, r1, r2
 2104 0a04 BA69     		ldr	r2, [r7, #24]
 2105 0a06 8A18     		adds	r2, r1, r2
 2106 0a08 1278     		ldrb	r2, [r2]
 2107 0a0a 1A70     		strb	r2, [r3]
 489:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			if (set)
 2108              		.loc 1 489 0
 2109 0a0c 1723     		movs	r3, #23
 2110 0a0e FB18     		adds	r3, r7, r3
 2111 0a10 1B78     		ldrb	r3, [r3]
 2112 0a12 002B     		cmp	r3, #0
 2113 0a14 09D0     		beq	.L94
 490:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 				write_px(x + x_, y + y_, false);
 2114              		.loc 1 490 0
 2115 0a16 BA68     		ldr	r2, [r7, #8]
 2116 0a18 FB69     		ldr	r3, [r7, #28]
 2117 0a1a D018     		adds	r0, r2, r3
 2118 0a1c 7A68     		ldr	r2, [r7, #4]
 2119 0a1e BB69     		ldr	r3, [r7, #24]
 2120 0a20 D318     		adds	r3, r2, r3
 2121 0a22 0022     		movs	r2, #0
 2122 0a24 1900     		movs	r1, r3
 2123 0a26 FFF7FEFF 		bl	write_px
 2124              	.L94:
 2125              	.LBE17:
 486:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 2126              		.loc 1 486 0 discriminator 2
 2127 0a2a BB69     		ldr	r3, [r7, #24]
 2128 0a2c 0133     		adds	r3, r3, #1
 2129 0a2e BB61     		str	r3, [r7, #24]
 2130              	.L93:
 486:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 2131              		.loc 1 486 0 is_stmt 0 discriminator 1
 2132 0a30 FB68     		ldr	r3, [r7, #12]
 2133 0a32 094A     		ldr	r2, .L97
 2134 0a34 9A58     		ldr	r2, [r3, r2]
 2135 0a36 BB69     		ldr	r3, [r7, #24]
 2136 0a38 9A42     		cmp	r2, r3
 2137 0a3a DADC     		bgt	.L95
 2138              	.LBE16:
 484:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 2139              		.loc 1 484 0 is_stmt 1 discriminator 2
 2140 0a3c FB69     		ldr	r3, [r7, #28]
 2141 0a3e 0133     		adds	r3, r3, #1
 2142 0a40 FB61     		str	r3, [r7, #28]
 2143              	.L92:
 484:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 2144              		.loc 1 484 0 is_stmt 0 discriminator 1
 2145 0a42 FA68     		ldr	r2, [r7, #12]
 2146 0a44 8123     		movs	r3, #129
 2147 0a46 DB00     		lsls	r3, r3, #3
 2148 0a48 D258     		ldr	r2, [r2, r3]
 2149 0a4a FB69     		ldr	r3, [r7, #28]
 2150 0a4c 9A42     		cmp	r2, r3
 2151 0a4e CDDC     		bgt	.L96
 2152              	.LBE15:
 491:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		}
 492:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 493:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2153              		.loc 1 493 0 is_stmt 1
 2154 0a50 C046     		nop
 2155 0a52 BD46     		mov	sp, r7
 2156 0a54 08B0     		add	sp, sp, #32
 2157              		@ sp needed
 2158 0a56 80BD     		pop	{r7, pc}
 2159              	.L98:
 2160              		.align	2
 2161              	.L97:
 2162 0a58 04040000 		.word	1028
 2163              		.cfi_endproc
 2164              	.LFE24:
 2166              		.align	2
 2167              		.global	make_sprite
 2168              		.code	16
 2169              		.thumb_func
 2171              	make_sprite:
 2172              	.LFB25:
 494:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 495:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** Sprite *make_sprite(char *sprite, int w, int h, int num_frames)
 496:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2173              		.loc 1 496 0
 2174              		.cfi_startproc
 2175 0a5c 90B5     		push	{r4, r7, lr}
 2176              		.cfi_def_cfa_offset 12
 2177              		.cfi_offset 4, -12
 2178              		.cfi_offset 7, -8
 2179              		.cfi_offset 14, -4
 2180 0a5e 89B0     		sub	sp, sp, #36
 2181              		.cfi_def_cfa_offset 48
 2182 0a60 00AF     		add	r7, sp, #0
 2183              		.cfi_def_cfa_register 7
 2184 0a62 F860     		str	r0, [r7, #12]
 2185 0a64 B960     		str	r1, [r7, #8]
 2186 0a66 7A60     		str	r2, [r7, #4]
 2187 0a68 3B60     		str	r3, [r7]
 497:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	Sprite *ret = &sprites[num_sprites++];
 2188              		.loc 1 497 0
 2189 0a6a 284B     		ldr	r3, .L107
 2190 0a6c 1B68     		ldr	r3, [r3]
 2191 0a6e 591C     		adds	r1, r3, #1
 2192 0a70 264A     		ldr	r2, .L107
 2193 0a72 1160     		str	r1, [r2]
 2194 0a74 264A     		ldr	r2, .L107+4
 2195 0a76 5A43     		muls	r2, r3
 2196 0a78 264B     		ldr	r3, .L107+8
 2197 0a7a D318     		adds	r3, r2, r3
 2198 0a7c 3B61     		str	r3, [r7, #16]
 498:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     ret->num_frames = num_frames;
 2199              		.loc 1 498 0
 2200 0a7e 3A69     		ldr	r2, [r7, #16]
 2201 0a80 8023     		movs	r3, #128
 2202 0a82 DB00     		lsls	r3, r3, #3
 2203 0a84 3968     		ldr	r1, [r7]
 2204 0a86 D150     		str	r1, [r2, r3]
 499:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     ret->w = w;
 2205              		.loc 1 499 0
 2206 0a88 3A69     		ldr	r2, [r7, #16]
 2207 0a8a 8123     		movs	r3, #129
 2208 0a8c DB00     		lsls	r3, r3, #3
 2209 0a8e B968     		ldr	r1, [r7, #8]
 2210 0a90 D150     		str	r1, [r2, r3]
 500:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     ret->h = h;
 2211              		.loc 1 500 0
 2212 0a92 3B69     		ldr	r3, [r7, #16]
 2213 0a94 2049     		ldr	r1, .L107+12
 2214 0a96 7A68     		ldr	r2, [r7, #4]
 2215 0a98 5A50     		str	r2, [r3, r1]
 2216              	.LBB18:
 501:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int frame = 0; frame < num_frames; frame++)
 2217              		.loc 1 501 0
 2218 0a9a 0023     		movs	r3, #0
 2219 0a9c FB61     		str	r3, [r7, #28]
 2220 0a9e 2CE0     		b	.L100
 2221              	.L105:
 2222              	.LBB19:
 502:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     {
 503:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         for (int y = 0; y < h; y++)
 2223              		.loc 1 503 0
 2224 0aa0 0023     		movs	r3, #0
 2225 0aa2 BB61     		str	r3, [r7, #24]
 2226 0aa4 22E0     		b	.L101
 2227              	.L104:
 2228              	.LBB20:
 504:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         {
 505:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             for (int x = 0; x < w; x++)
 2229              		.loc 1 505 0
 2230 0aa6 0023     		movs	r3, #0
 2231 0aa8 7B61     		str	r3, [r7, #20]
 2232 0aaa 18E0     		b	.L102
 2233              	.L103:
 506:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             {
 507:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		
 508:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 				ret->sprite[frame][x][h-y-1] = (*(sprite++)) == '#';
 2234              		.loc 1 508 0 discriminator 3
 2235 0aac 7A68     		ldr	r2, [r7, #4]
 2236 0aae BB69     		ldr	r3, [r7, #24]
 2237 0ab0 D31A     		subs	r3, r2, r3
 2238 0ab2 5A1E     		subs	r2, r3, #1
 2239 0ab4 FB68     		ldr	r3, [r7, #12]
 2240 0ab6 591C     		adds	r1, r3, #1
 2241 0ab8 F960     		str	r1, [r7, #12]
 2242 0aba 1B78     		ldrb	r3, [r3]
 2243 0abc 233B     		subs	r3, r3, #35
 2244 0abe 5942     		rsbs	r1, r3, #0
 2245 0ac0 4B41     		adcs	r3, r3, r1
 2246 0ac2 DBB2     		uxtb	r3, r3
 2247 0ac4 1C00     		movs	r4, r3
 2248 0ac6 3969     		ldr	r1, [r7, #16]
 2249 0ac8 FB69     		ldr	r3, [r7, #28]
 2250 0aca 1801     		lsls	r0, r3, #4
 2251 0acc 7B69     		ldr	r3, [r7, #20]
 2252 0ace C318     		adds	r3, r0, r3
 2253 0ad0 1B01     		lsls	r3, r3, #4
 2254 0ad2 CB18     		adds	r3, r1, r3
 2255 0ad4 211C     		adds	r1, r4, #0
 2256 0ad6 9954     		strb	r1, [r3, r2]
 505:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             {
 2257              		.loc 1 505 0 discriminator 3
 2258 0ad8 7B69     		ldr	r3, [r7, #20]
 2259 0ada 0133     		adds	r3, r3, #1
 2260 0adc 7B61     		str	r3, [r7, #20]
 2261              	.L102:
 505:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             {
 2262              		.loc 1 505 0 is_stmt 0 discriminator 1
 2263 0ade 7A69     		ldr	r2, [r7, #20]
 2264 0ae0 BB68     		ldr	r3, [r7, #8]
 2265 0ae2 9A42     		cmp	r2, r3
 2266 0ae4 E2DB     		blt	.L103
 2267              	.LBE20:
 503:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         {
 2268              		.loc 1 503 0 is_stmt 1 discriminator 2
 2269 0ae6 BB69     		ldr	r3, [r7, #24]
 2270 0ae8 0133     		adds	r3, r3, #1
 2271 0aea BB61     		str	r3, [r7, #24]
 2272              	.L101:
 503:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         {
 2273              		.loc 1 503 0 is_stmt 0 discriminator 1
 2274 0aec BA69     		ldr	r2, [r7, #24]
 2275 0aee 7B68     		ldr	r3, [r7, #4]
 2276 0af0 9A42     		cmp	r2, r3
 2277 0af2 D8DB     		blt	.L104
 2278              	.LBE19:
 501:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     {
 2279              		.loc 1 501 0 is_stmt 1 discriminator 2
 2280 0af4 FB69     		ldr	r3, [r7, #28]
 2281 0af6 0133     		adds	r3, r3, #1
 2282 0af8 FB61     		str	r3, [r7, #28]
 2283              	.L100:
 501:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     {
 2284              		.loc 1 501 0 is_stmt 0 discriminator 1
 2285 0afa FA69     		ldr	r2, [r7, #28]
 2286 0afc 3B68     		ldr	r3, [r7]
 2287 0afe 9A42     		cmp	r2, r3
 2288 0b00 CEDB     		blt	.L105
 2289              	.LBE18:
 509:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			}
 510:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		}
 511:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 512:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 513:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	return ret;
 2290              		.loc 1 513 0 is_stmt 1
 2291 0b02 3B69     		ldr	r3, [r7, #16]
 514:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2292              		.loc 1 514 0
 2293 0b04 1800     		movs	r0, r3
 2294 0b06 BD46     		mov	sp, r7
 2295 0b08 09B0     		add	sp, sp, #36
 2296              		@ sp needed
 2297 0b0a 90BD     		pop	{r4, r7, pc}
 2298              	.L108:
 2299              		.align	2
 2300              	.L107:
 2301 0b0c C4560000 		.word	num_sprites
 2302 0b10 0C040000 		.word	1036
 2303 0b14 00040000 		.word	sprites
 2304 0b18 04040000 		.word	1028
 2305              		.cfi_endproc
 2306              	.LFE25:
 2308              		.align	2
 2309              		.global	render
 2310              		.code	16
 2311              		.thumb_func
 2313              	render:
 2314              	.LFB26:
 515:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 516:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void render()
 517:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2315              		.loc 1 517 0
 2316              		.cfi_startproc
 2317 0b1c B0B5     		push	{r4, r5, r7, lr}
 2318              		.cfi_def_cfa_offset 16
 2319              		.cfi_offset 4, -16
 2320              		.cfi_offset 5, -12
 2321              		.cfi_offset 7, -8
 2322              		.cfi_offset 14, -4
 2323 0b1e 82B0     		sub	sp, sp, #8
 2324              		.cfi_def_cfa_offset 24
 2325 0b20 00AF     		add	r7, sp, #0
 2326              		.cfi_def_cfa_register 7
 2327              	.LBB21:
 518:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2328              		.loc 1 518 0
 2329 0b22 0023     		movs	r3, #0
 2330 0b24 7B60     		str	r3, [r7, #4]
 2331 0b26 3DE0     		b	.L110
 2332              	.L113:
 519:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 520:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		//if(force || entities[i].velocity.x != 0 || entities[i].velocity.y != 0)
 521:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		blit_sprite(entities[i].sprite, 
 2333              		.loc 1 521 0 discriminator 3
 2334 0b28 4749     		ldr	r1, .L118
 2335 0b2a 7A68     		ldr	r2, [r7, #4]
 2336 0b2c 1300     		movs	r3, r2
 2337 0b2e DB00     		lsls	r3, r3, #3
 2338 0b30 9B18     		adds	r3, r3, r2
 2339 0b32 9B00     		lsls	r3, r3, #2
 2340 0b34 5C58     		ldr	r4, [r3, r1]
 522:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             entities[i].pos.x-entities[i].sprite->w/2,
 2341              		.loc 1 522 0 discriminator 3
 2342 0b36 4449     		ldr	r1, .L118
 2343 0b38 7A68     		ldr	r2, [r7, #4]
 2344 0b3a 1300     		movs	r3, r2
 2345 0b3c DB00     		lsls	r3, r3, #3
 2346 0b3e 9B18     		adds	r3, r3, r2
 2347 0b40 9B00     		lsls	r3, r3, #2
 2348 0b42 CB18     		adds	r3, r1, r3
 2349 0b44 0833     		adds	r3, r3, #8
 2350 0b46 1968     		ldr	r1, [r3]
 2351 0b48 3F48     		ldr	r0, .L118
 2352 0b4a 7A68     		ldr	r2, [r7, #4]
 2353 0b4c 1300     		movs	r3, r2
 2354 0b4e DB00     		lsls	r3, r3, #3
 2355 0b50 9B18     		adds	r3, r3, r2
 2356 0b52 9B00     		lsls	r3, r3, #2
 2357 0b54 1A58     		ldr	r2, [r3, r0]
 2358 0b56 8123     		movs	r3, #129
 2359 0b58 DB00     		lsls	r3, r3, #3
 2360 0b5a D358     		ldr	r3, [r2, r3]
 2361 0b5c 002B     		cmp	r3, #0
 2362 0b5e 00DA     		bge	.L111
 2363 0b60 0133     		adds	r3, r3, #1
 2364              	.L111:
 2365 0b62 5B10     		asrs	r3, r3, #1
 521:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             entities[i].pos.x-entities[i].sprite->w/2,
 2366              		.loc 1 521 0 discriminator 3
 2367 0b64 CD1A     		subs	r5, r1, r3
 523:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             entities[i].pos.y-entities[i].sprite->h/2, 0);
 2368              		.loc 1 523 0 discriminator 3
 2369 0b66 3849     		ldr	r1, .L118
 2370 0b68 7A68     		ldr	r2, [r7, #4]
 2371 0b6a 1300     		movs	r3, r2
 2372 0b6c DB00     		lsls	r3, r3, #3
 2373 0b6e 9B18     		adds	r3, r3, r2
 2374 0b70 9B00     		lsls	r3, r3, #2
 2375 0b72 CB18     		adds	r3, r1, r3
 2376 0b74 0C33     		adds	r3, r3, #12
 2377 0b76 1968     		ldr	r1, [r3]
 2378 0b78 3348     		ldr	r0, .L118
 2379 0b7a 7A68     		ldr	r2, [r7, #4]
 2380 0b7c 1300     		movs	r3, r2
 2381 0b7e DB00     		lsls	r3, r3, #3
 2382 0b80 9B18     		adds	r3, r3, r2
 2383 0b82 9B00     		lsls	r3, r3, #2
 2384 0b84 1B58     		ldr	r3, [r3, r0]
 2385 0b86 314A     		ldr	r2, .L118+4
 2386 0b88 9B58     		ldr	r3, [r3, r2]
 2387 0b8a 002B     		cmp	r3, #0
 2388 0b8c 00DA     		bge	.L112
 2389 0b8e 0133     		adds	r3, r3, #1
 2390              	.L112:
 2391 0b90 5B10     		asrs	r3, r3, #1
 521:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             entities[i].pos.x-entities[i].sprite->w/2,
 2392              		.loc 1 521 0 discriminator 3
 2393 0b92 CA1A     		subs	r2, r1, r3
 2394 0b94 0023     		movs	r3, #0
 2395 0b96 2900     		movs	r1, r5
 2396 0b98 2000     		movs	r0, r4
 2397 0b9a FFF7FEFF 		bl	blit_sprite
 518:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 2398              		.loc 1 518 0 discriminator 3
 2399 0b9e 7B68     		ldr	r3, [r7, #4]
 2400 0ba0 0133     		adds	r3, r3, #1
 2401 0ba2 7B60     		str	r3, [r7, #4]
 2402              	.L110:
 518:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 2403              		.loc 1 518 0 is_stmt 0 discriminator 1
 2404 0ba4 2A4B     		ldr	r3, .L118+8
 2405 0ba6 1B68     		ldr	r3, [r3]
 2406 0ba8 7A68     		ldr	r2, [r7, #4]
 2407 0baa 9A42     		cmp	r2, r3
 2408 0bac BCDB     		blt	.L113
 2409              	.LBE21:
 524:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 525:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	flush_screen();
 2410              		.loc 1 525 0 is_stmt 1
 2411 0bae FFF7FEFF 		bl	flush_screen
 2412              	.LBB22:
 526:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2413              		.loc 1 526 0
 2414 0bb2 0023     		movs	r3, #0
 2415 0bb4 3B60     		str	r3, [r7]
 2416 0bb6 3DE0     		b	.L114
 2417              	.L117:
 527:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 528:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		//if(force || entities[i].velocity.x != 0 || entities[i].velocity.y != 0)
 529:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		clear_sprite(entities[i].sprite, 
 2418              		.loc 1 529 0 discriminator 3
 2419 0bb8 2349     		ldr	r1, .L118
 2420 0bba 3A68     		ldr	r2, [r7]
 2421 0bbc 1300     		movs	r3, r2
 2422 0bbe DB00     		lsls	r3, r3, #3
 2423 0bc0 9B18     		adds	r3, r3, r2
 2424 0bc2 9B00     		lsls	r3, r3, #2
 2425 0bc4 5C58     		ldr	r4, [r3, r1]
 530:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             entities[i].pos.x-entities[i].sprite->w/2, 
 2426              		.loc 1 530 0 discriminator 3
 2427 0bc6 2049     		ldr	r1, .L118
 2428 0bc8 3A68     		ldr	r2, [r7]
 2429 0bca 1300     		movs	r3, r2
 2430 0bcc DB00     		lsls	r3, r3, #3
 2431 0bce 9B18     		adds	r3, r3, r2
 2432 0bd0 9B00     		lsls	r3, r3, #2
 2433 0bd2 CB18     		adds	r3, r1, r3
 2434 0bd4 0833     		adds	r3, r3, #8
 2435 0bd6 1968     		ldr	r1, [r3]
 2436 0bd8 1B48     		ldr	r0, .L118
 2437 0bda 3A68     		ldr	r2, [r7]
 2438 0bdc 1300     		movs	r3, r2
 2439 0bde DB00     		lsls	r3, r3, #3
 2440 0be0 9B18     		adds	r3, r3, r2
 2441 0be2 9B00     		lsls	r3, r3, #2
 2442 0be4 1A58     		ldr	r2, [r3, r0]
 2443 0be6 8123     		movs	r3, #129
 2444 0be8 DB00     		lsls	r3, r3, #3
 2445 0bea D358     		ldr	r3, [r2, r3]
 2446 0bec 002B     		cmp	r3, #0
 2447 0bee 00DA     		bge	.L115
 2448 0bf0 0133     		adds	r3, r3, #1
 2449              	.L115:
 2450 0bf2 5B10     		asrs	r3, r3, #1
 529:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             entities[i].pos.x-entities[i].sprite->w/2, 
 2451              		.loc 1 529 0 discriminator 3
 2452 0bf4 CD1A     		subs	r5, r1, r3
 531:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             entities[i].pos.y-entities[i].sprite->h/2, 0);
 2453              		.loc 1 531 0 discriminator 3
 2454 0bf6 1449     		ldr	r1, .L118
 2455 0bf8 3A68     		ldr	r2, [r7]
 2456 0bfa 1300     		movs	r3, r2
 2457 0bfc DB00     		lsls	r3, r3, #3
 2458 0bfe 9B18     		adds	r3, r3, r2
 2459 0c00 9B00     		lsls	r3, r3, #2
 2460 0c02 CB18     		adds	r3, r1, r3
 2461 0c04 0C33     		adds	r3, r3, #12
 2462 0c06 1968     		ldr	r1, [r3]
 2463 0c08 0F48     		ldr	r0, .L118
 2464 0c0a 3A68     		ldr	r2, [r7]
 2465 0c0c 1300     		movs	r3, r2
 2466 0c0e DB00     		lsls	r3, r3, #3
 2467 0c10 9B18     		adds	r3, r3, r2
 2468 0c12 9B00     		lsls	r3, r3, #2
 2469 0c14 1B58     		ldr	r3, [r3, r0]
 2470 0c16 0D4A     		ldr	r2, .L118+4
 2471 0c18 9B58     		ldr	r3, [r3, r2]
 2472 0c1a 002B     		cmp	r3, #0
 2473 0c1c 00DA     		bge	.L116
 2474 0c1e 0133     		adds	r3, r3, #1
 2475              	.L116:
 2476 0c20 5B10     		asrs	r3, r3, #1
 529:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             entities[i].pos.x-entities[i].sprite->w/2, 
 2477              		.loc 1 529 0 discriminator 3
 2478 0c22 CA1A     		subs	r2, r1, r3
 2479 0c24 0023     		movs	r3, #0
 2480 0c26 2900     		movs	r1, r5
 2481 0c28 2000     		movs	r0, r4
 2482 0c2a FFF7FEFF 		bl	clear_sprite
 526:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 2483              		.loc 1 526 0 discriminator 3
 2484 0c2e 3B68     		ldr	r3, [r7]
 2485 0c30 0133     		adds	r3, r3, #1
 2486 0c32 3B60     		str	r3, [r7]
 2487              	.L114:
 526:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 2488              		.loc 1 526 0 is_stmt 0 discriminator 1
 2489 0c34 064B     		ldr	r3, .L118+8
 2490 0c36 1B68     		ldr	r3, [r3]
 2491 0c38 3A68     		ldr	r2, [r7]
 2492 0c3a 9A42     		cmp	r2, r3
 2493 0c3c BCDB     		blt	.L117
 2494              	.LBE22:
 532:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 533:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2495              		.loc 1 533 0 is_stmt 1
 2496 0c3e C046     		nop
 2497 0c40 BD46     		mov	sp, r7
 2498 0c42 02B0     		add	sp, sp, #8
 2499              		@ sp needed
 2500 0c44 B0BD     		pop	{r4, r5, r7, pc}
 2501              	.L119:
 2502 0c46 C046     		.align	2
 2503              	.L118:
 2504 0c48 C0440000 		.word	entities
 2505 0c4c 04040000 		.word	1028
 2506 0c50 C0560000 		.word	num_entities
 2507              		.cfi_endproc
 2508              	.LFE26:
 2510              		.align	2
 2511              		.global	entity_from_id
 2512              		.code	16
 2513              		.thumb_func
 2515              	entity_from_id:
 2516              	.LFB27:
 534:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 535:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** //note will change between frames
 536:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** Entity *entity_from_id(int id)
 537:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2517              		.loc 1 537 0
 2518              		.cfi_startproc
 2519 0c54 80B5     		push	{r7, lr}
 2520              		.cfi_def_cfa_offset 8
 2521              		.cfi_offset 7, -8
 2522              		.cfi_offset 14, -4
 2523 0c56 84B0     		sub	sp, sp, #16
 2524              		.cfi_def_cfa_offset 24
 2525 0c58 00AF     		add	r7, sp, #0
 2526              		.cfi_def_cfa_register 7
 2527 0c5a 7860     		str	r0, [r7, #4]
 2528              	.LBB23:
 538:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2529              		.loc 1 538 0
 2530 0c5c 0023     		movs	r3, #0
 2531 0c5e FB60     		str	r3, [r7, #12]
 2532 0c60 16E0     		b	.L121
 2533              	.L124:
 539:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 540:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		if (entities[i].id == id)return &entities[i];
 2534              		.loc 1 540 0
 2535 0c62 1049     		ldr	r1, .L125
 2536 0c64 FA68     		ldr	r2, [r7, #12]
 2537 0c66 1300     		movs	r3, r2
 2538 0c68 DB00     		lsls	r3, r3, #3
 2539 0c6a 9B18     		adds	r3, r3, r2
 2540 0c6c 9B00     		lsls	r3, r3, #2
 2541 0c6e CB18     		adds	r3, r1, r3
 2542 0c70 0433     		adds	r3, r3, #4
 2543 0c72 1A68     		ldr	r2, [r3]
 2544 0c74 7B68     		ldr	r3, [r7, #4]
 2545 0c76 9A42     		cmp	r2, r3
 2546 0c78 07D1     		bne	.L122
 2547              		.loc 1 540 0 is_stmt 0 discriminator 1
 2548 0c7a FA68     		ldr	r2, [r7, #12]
 2549 0c7c 1300     		movs	r3, r2
 2550 0c7e DB00     		lsls	r3, r3, #3
 2551 0c80 9B18     		adds	r3, r3, r2
 2552 0c82 9B00     		lsls	r3, r3, #2
 2553 0c84 074A     		ldr	r2, .L125
 2554 0c86 9B18     		adds	r3, r3, r2
 2555 0c88 08E0     		b	.L123
 2556              	.L122:
 538:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2557              		.loc 1 538 0 is_stmt 1 discriminator 2
 2558 0c8a FB68     		ldr	r3, [r7, #12]
 2559 0c8c 0133     		adds	r3, r3, #1
 2560 0c8e FB60     		str	r3, [r7, #12]
 2561              	.L121:
 538:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2562              		.loc 1 538 0 is_stmt 0 discriminator 1
 2563 0c90 054B     		ldr	r3, .L125+4
 2564 0c92 1B68     		ldr	r3, [r3]
 2565 0c94 FA68     		ldr	r2, [r7, #12]
 2566 0c96 9A42     		cmp	r2, r3
 2567 0c98 E3DB     		blt	.L124
 2568              	.LBE23:
 541:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 542:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     return 0;
 2569              		.loc 1 542 0 is_stmt 1
 2570 0c9a 0023     		movs	r3, #0
 2571              	.L123:
 543:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2572              		.loc 1 543 0
 2573 0c9c 1800     		movs	r0, r3
 2574 0c9e BD46     		mov	sp, r7
 2575 0ca0 04B0     		add	sp, sp, #16
 2576              		@ sp needed
 2577 0ca2 80BD     		pop	{r7, pc}
 2578              	.L126:
 2579              		.align	2
 2580              	.L125:
 2581 0ca4 C0440000 		.word	entities
 2582 0ca8 C0560000 		.word	num_entities
 2583              		.cfi_endproc
 2584              	.LFE27:
 2586              		.align	2
 2587              		.global	cleanup_entities
 2588              		.code	16
 2589              		.thumb_func
 2591              	cleanup_entities:
 2592              	.LFB28:
 544:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 545:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void cleanup_entities()
 546:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2593              		.loc 1 546 0
 2594              		.cfi_startproc
 2595 0cac 90B5     		push	{r4, r7, lr}
 2596              		.cfi_def_cfa_offset 12
 2597              		.cfi_offset 4, -12
 2598              		.cfi_offset 7, -8
 2599              		.cfi_offset 14, -4
 2600 0cae 83B0     		sub	sp, sp, #12
 2601              		.cfi_def_cfa_offset 24
 2602 0cb0 00AF     		add	r7, sp, #0
 2603              		.cfi_def_cfa_register 7
 2604              	.LBB24:
 547:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2605              		.loc 1 547 0
 2606 0cb2 0023     		movs	r3, #0
 2607 0cb4 7B60     		str	r3, [r7, #4]
 2608 0cb6 27E0     		b	.L128
 2609              	.L130:
 548:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 549:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		if (entities[i].destroy) entities[i] = entities[--num_entities];
 2610              		.loc 1 549 0
 2611 0cb8 1849     		ldr	r1, .L131
 2612 0cba 7A68     		ldr	r2, [r7, #4]
 2613 0cbc 1300     		movs	r3, r2
 2614 0cbe DB00     		lsls	r3, r3, #3
 2615 0cc0 9B18     		adds	r3, r3, r2
 2616 0cc2 9B00     		lsls	r3, r3, #2
 2617 0cc4 CB18     		adds	r3, r1, r3
 2618 0cc6 1833     		adds	r3, r3, #24
 2619 0cc8 1B78     		ldrb	r3, [r3]
 2620 0cca 002B     		cmp	r3, #0
 2621 0ccc 19D0     		beq	.L129
 2622              		.loc 1 549 0 is_stmt 0 discriminator 1
 2623 0cce 144B     		ldr	r3, .L131+4
 2624 0cd0 1B68     		ldr	r3, [r3]
 2625 0cd2 5A1E     		subs	r2, r3, #1
 2626 0cd4 124B     		ldr	r3, .L131+4
 2627 0cd6 1A60     		str	r2, [r3]
 2628 0cd8 114B     		ldr	r3, .L131+4
 2629 0cda 1968     		ldr	r1, [r3]
 2630 0cdc 0F4C     		ldr	r4, .L131
 2631 0cde 7A68     		ldr	r2, [r7, #4]
 2632 0ce0 1300     		movs	r3, r2
 2633 0ce2 DB00     		lsls	r3, r3, #3
 2634 0ce4 9B18     		adds	r3, r3, r2
 2635 0ce6 9B00     		lsls	r3, r3, #2
 2636 0ce8 0C48     		ldr	r0, .L131
 2637 0cea 0A00     		movs	r2, r1
 2638 0cec D200     		lsls	r2, r2, #3
 2639 0cee 5218     		adds	r2, r2, r1
 2640 0cf0 9200     		lsls	r2, r2, #2
 2641 0cf2 E318     		adds	r3, r4, r3
 2642 0cf4 8218     		adds	r2, r0, r2
 2643 0cf6 13CA     		ldmia	r2!, {r0, r1, r4}
 2644 0cf8 13C3     		stmia	r3!, {r0, r1, r4}
 2645 0cfa 13CA     		ldmia	r2!, {r0, r1, r4}
 2646 0cfc 13C3     		stmia	r3!, {r0, r1, r4}
 2647 0cfe 13CA     		ldmia	r2!, {r0, r1, r4}
 2648 0d00 13C3     		stmia	r3!, {r0, r1, r4}
 2649              	.L129:
 547:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2650              		.loc 1 547 0 is_stmt 1 discriminator 2
 2651 0d02 7B68     		ldr	r3, [r7, #4]
 2652 0d04 0133     		adds	r3, r3, #1
 2653 0d06 7B60     		str	r3, [r7, #4]
 2654              	.L128:
 547:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2655              		.loc 1 547 0 is_stmt 0 discriminator 1
 2656 0d08 054B     		ldr	r3, .L131+4
 2657 0d0a 1B68     		ldr	r3, [r3]
 2658 0d0c 7A68     		ldr	r2, [r7, #4]
 2659 0d0e 9A42     		cmp	r2, r3
 2660 0d10 D2DB     		blt	.L130
 2661              	.LBE24:
 550:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 551:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2662              		.loc 1 551 0 is_stmt 1
 2663 0d12 C046     		nop
 2664 0d14 BD46     		mov	sp, r7
 2665 0d16 03B0     		add	sp, sp, #12
 2666              		@ sp needed
 2667 0d18 90BD     		pop	{r4, r7, pc}
 2668              	.L132:
 2669 0d1a C046     		.align	2
 2670              	.L131:
 2671 0d1c C0440000 		.word	entities
 2672 0d20 C0560000 		.word	num_entities
 2673              		.cfi_endproc
 2674              	.LFE28:
 2676              		.section	.rodata
 2677              		.align	2
 2678              	.LC0:
 2679 0000 31       		.byte	49
 2680 0001 32       		.byte	50
 2681 0002 33       		.byte	51
 2682 0003 41       		.byte	65
 2683 0004 34       		.byte	52
 2684 0005 35       		.byte	53
 2685 0006 36       		.byte	54
 2686 0007 42       		.byte	66
 2687 0008 37       		.byte	55
 2688 0009 38       		.byte	56
 2689 000a 39       		.byte	57
 2690 000b 43       		.byte	67
 2691 000c 2A       		.byte	42
 2692 000d 30       		.byte	48
 2693 000e 23       		.byte	35
 2694 000f 44       		.byte	68
 2695              		.text
 2696              		.align	2
 2697              		.global	keyb
 2698              		.code	16
 2699              		.thumb_func
 2701              	keyb:
 2702              	.LFB29:
 552:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 553:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 554:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 555:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** char keyb()
 556:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2703              		.loc 1 556 0
 2704              		.cfi_startproc
 2705 0d24 80B5     		push	{r7, lr}
 2706              		.cfi_def_cfa_offset 8
 2707              		.cfi_offset 7, -8
 2708              		.cfi_offset 14, -4
 2709 0d26 88B0     		sub	sp, sp, #32
 2710              		.cfi_def_cfa_offset 40
 2711 0d28 00AF     		add	r7, sp, #0
 2712              		.cfi_def_cfa_register 7
 557:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	GPIO_REG *d = (GPIO_REG *)0x40020C00;
 2713              		.loc 1 557 0
 2714 0d2a 214B     		ldr	r3, .L141
 2715 0d2c 7B61     		str	r3, [r7, #20]
 558:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	GPIO_REG *e = (GPIO_REG *)0x40021000;
 2716              		.loc 1 558 0
 2717 0d2e 214B     		ldr	r3, .L141+4
 2718 0d30 3B61     		str	r3, [r7, #16]
 559:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	
 560:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	char res[4][4]=
 2719              		.loc 1 560 0
 2720 0d32 3A00     		movs	r2, r7
 2721 0d34 204B     		ldr	r3, .L141+8
 2722 0d36 1000     		movs	r0, r2
 2723 0d38 1900     		movs	r1, r3
 2724 0d3a 1023     		movs	r3, #16
 2725 0d3c 1A00     		movs	r2, r3
 2726 0d3e FFF7FEFF 		bl	memcpy
 2727              	.LBB25:
 561:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{{'1','2','3','A'},
 562:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{'4','5','6','B'},
 563:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{'7','8','9','C'},
 564:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{'*','0','#','D'},};
 565:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for(int i = 0; i<4;i++)
 2728              		.loc 1 565 0
 2729 0d42 0023     		movs	r3, #0
 2730 0d44 FB61     		str	r3, [r7, #28]
 2731 0d46 2AE0     		b	.L134
 2732              	.L139:
 566:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 567:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		d->ODR = 0x1000<<i | d->ODR&0xff;
 2733              		.loc 1 567 0
 2734 0d48 8023     		movs	r3, #128
 2735 0d4a 5A01     		lsls	r2, r3, #5
 2736 0d4c FB69     		ldr	r3, [r7, #28]
 2737 0d4e 9A40     		lsls	r2, r2, r3
 2738 0d50 1300     		movs	r3, r2
 2739 0d52 1900     		movs	r1, r3
 2740 0d54 7B69     		ldr	r3, [r7, #20]
 2741 0d56 5B69     		ldr	r3, [r3, #20]
 2742 0d58 FF22     		movs	r2, #255
 2743 0d5a 1340     		ands	r3, r2
 2744 0d5c 0A00     		movs	r2, r1
 2745 0d5e 1A43     		orrs	r2, r3
 2746 0d60 7B69     		ldr	r3, [r7, #20]
 2747 0d62 5A61     		str	r2, [r3, #20]
 2748              	.LBB26:
 568:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		for(int j = 0; j<4;j++)
 2749              		.loc 1 568 0
 2750 0d64 0023     		movs	r3, #0
 2751 0d66 BB61     		str	r3, [r7, #24]
 2752 0d68 13E0     		b	.L135
 2753              	.L138:
 569:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 570:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			if(d->IDR & 0x100<<j)
 2754              		.loc 1 570 0
 2755 0d6a 7B69     		ldr	r3, [r7, #20]
 2756 0d6c 1B69     		ldr	r3, [r3, #16]
 2757 0d6e 8022     		movs	r2, #128
 2758 0d70 5100     		lsls	r1, r2, #1
 2759 0d72 BA69     		ldr	r2, [r7, #24]
 2760 0d74 9140     		lsls	r1, r1, r2
 2761 0d76 0A00     		movs	r2, r1
 2762 0d78 1340     		ands	r3, r2
 2763 0d7a 07D0     		beq	.L136
 571:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			{
 572:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 				return res[i][j];
 2764              		.loc 1 572 0
 2765 0d7c 3A00     		movs	r2, r7
 2766 0d7e FB69     		ldr	r3, [r7, #28]
 2767 0d80 9B00     		lsls	r3, r3, #2
 2768 0d82 D218     		adds	r2, r2, r3
 2769 0d84 BB69     		ldr	r3, [r7, #24]
 2770 0d86 D318     		adds	r3, r2, r3
 2771 0d88 1B78     		ldrb	r3, [r3]
 2772 0d8a 0CE0     		b	.L140
 2773              	.L136:
 568:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 2774              		.loc 1 568 0 discriminator 2
 2775 0d8c BB69     		ldr	r3, [r7, #24]
 2776 0d8e 0133     		adds	r3, r3, #1
 2777 0d90 BB61     		str	r3, [r7, #24]
 2778              	.L135:
 568:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 2779              		.loc 1 568 0 is_stmt 0 discriminator 1
 2780 0d92 BB69     		ldr	r3, [r7, #24]
 2781 0d94 032B     		cmp	r3, #3
 2782 0d96 E8DD     		ble	.L138
 2783              	.LBE26:
 565:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 2784              		.loc 1 565 0 is_stmt 1 discriminator 2
 2785 0d98 FB69     		ldr	r3, [r7, #28]
 2786 0d9a 0133     		adds	r3, r3, #1
 2787 0d9c FB61     		str	r3, [r7, #28]
 2788              	.L134:
 565:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 2789              		.loc 1 565 0 is_stmt 0 discriminator 1
 2790 0d9e FB69     		ldr	r3, [r7, #28]
 2791 0da0 032B     		cmp	r3, #3
 2792 0da2 D1DD     		ble	.L139
 2793              	.LBE25:
 573:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			}
 574:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		}
 575:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 576:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	return 0;
 2794              		.loc 1 576 0 is_stmt 1
 2795 0da4 0023     		movs	r3, #0
 2796              	.L140:
 577:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2797              		.loc 1 577 0 discriminator 1
 2798 0da6 1800     		movs	r0, r3
 2799 0da8 BD46     		mov	sp, r7
 2800 0daa 08B0     		add	sp, sp, #32
 2801              		@ sp needed
 2802 0dac 80BD     		pop	{r7, pc}
 2803              	.L142:
 2804 0dae C046     		.align	2
 2805              	.L141:
 2806 0db0 000C0240 		.word	1073875968
 2807 0db4 00100240 		.word	1073876992
 2808 0db8 00000000 		.word	.LC0
 2809              		.cfi_endproc
 2810              	.LFE29:
 2812              		.align	2
 2813              		.global	get_bounds
 2814              		.code	16
 2815              		.thumb_func
 2817              	get_bounds:
 2818              	.LFB30:
 578:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 579:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void get_bounds(Entity *entity, int *x_min, int *x_max, int *y_min, int *y_max)
 580:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2819              		.loc 1 580 0
 2820              		.cfi_startproc
 2821 0dbc 80B5     		push	{r7, lr}
 2822              		.cfi_def_cfa_offset 8
 2823              		.cfi_offset 7, -8
 2824              		.cfi_offset 14, -4
 2825 0dbe 84B0     		sub	sp, sp, #16
 2826              		.cfi_def_cfa_offset 24
 2827 0dc0 00AF     		add	r7, sp, #0
 2828              		.cfi_def_cfa_register 7
 2829 0dc2 F860     		str	r0, [r7, #12]
 2830 0dc4 B960     		str	r1, [r7, #8]
 2831 0dc6 7A60     		str	r2, [r7, #4]
 2832 0dc8 3B60     		str	r3, [r7]
 581:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     *x_max = entity->pos.x + entities->sprite->w/2;
 2833              		.loc 1 581 0
 2834 0dca FB68     		ldr	r3, [r7, #12]
 2835 0dcc 9A68     		ldr	r2, [r3, #8]
 2836 0dce 1C4B     		ldr	r3, .L148
 2837 0dd0 1968     		ldr	r1, [r3]
 2838 0dd2 8123     		movs	r3, #129
 2839 0dd4 DB00     		lsls	r3, r3, #3
 2840 0dd6 CB58     		ldr	r3, [r1, r3]
 2841 0dd8 002B     		cmp	r3, #0
 2842 0dda 00DA     		bge	.L144
 2843 0ddc 0133     		adds	r3, r3, #1
 2844              	.L144:
 2845 0dde 5B10     		asrs	r3, r3, #1
 2846 0de0 D218     		adds	r2, r2, r3
 2847 0de2 7B68     		ldr	r3, [r7, #4]
 2848 0de4 1A60     		str	r2, [r3]
 582:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     *x_min = entity->pos.x - entities->sprite->w/2;
 2849              		.loc 1 582 0
 2850 0de6 FB68     		ldr	r3, [r7, #12]
 2851 0de8 9A68     		ldr	r2, [r3, #8]
 2852 0dea 154B     		ldr	r3, .L148
 2853 0dec 1968     		ldr	r1, [r3]
 2854 0dee 8123     		movs	r3, #129
 2855 0df0 DB00     		lsls	r3, r3, #3
 2856 0df2 CB58     		ldr	r3, [r1, r3]
 2857 0df4 002B     		cmp	r3, #0
 2858 0df6 00DA     		bge	.L145
 2859 0df8 0133     		adds	r3, r3, #1
 2860              	.L145:
 2861 0dfa 5B10     		asrs	r3, r3, #1
 2862 0dfc D21A     		subs	r2, r2, r3
 2863 0dfe BB68     		ldr	r3, [r7, #8]
 2864 0e00 1A60     		str	r2, [r3]
 583:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 584:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     *y_max = entity->pos.y + entities->sprite->h/2;
 2865              		.loc 1 584 0
 2866 0e02 FB68     		ldr	r3, [r7, #12]
 2867 0e04 DA68     		ldr	r2, [r3, #12]
 2868 0e06 0E4B     		ldr	r3, .L148
 2869 0e08 1B68     		ldr	r3, [r3]
 2870 0e0a 0E49     		ldr	r1, .L148+4
 2871 0e0c 5B58     		ldr	r3, [r3, r1]
 2872 0e0e 002B     		cmp	r3, #0
 2873 0e10 00DA     		bge	.L146
 2874 0e12 0133     		adds	r3, r3, #1
 2875              	.L146:
 2876 0e14 5B10     		asrs	r3, r3, #1
 2877 0e16 D218     		adds	r2, r2, r3
 2878 0e18 BB69     		ldr	r3, [r7, #24]
 2879 0e1a 1A60     		str	r2, [r3]
 585:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     *y_min = entity->pos.y - entities->sprite->h/2; 
 2880              		.loc 1 585 0
 2881 0e1c FB68     		ldr	r3, [r7, #12]
 2882 0e1e DA68     		ldr	r2, [r3, #12]
 2883 0e20 074B     		ldr	r3, .L148
 2884 0e22 1B68     		ldr	r3, [r3]
 2885 0e24 0749     		ldr	r1, .L148+4
 2886 0e26 5B58     		ldr	r3, [r3, r1]
 2887 0e28 002B     		cmp	r3, #0
 2888 0e2a 00DA     		bge	.L147
 2889 0e2c 0133     		adds	r3, r3, #1
 2890              	.L147:
 2891 0e2e 5B10     		asrs	r3, r3, #1
 2892 0e30 D21A     		subs	r2, r2, r3
 2893 0e32 3B68     		ldr	r3, [r7]
 2894 0e34 1A60     		str	r2, [r3]
 586:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2895              		.loc 1 586 0
 2896 0e36 C046     		nop
 2897 0e38 BD46     		mov	sp, r7
 2898 0e3a 04B0     		add	sp, sp, #16
 2899              		@ sp needed
 2900 0e3c 80BD     		pop	{r7, pc}
 2901              	.L149:
 2902 0e3e C046     		.align	2
 2903              	.L148:
 2904 0e40 C0440000 		.word	entities
 2905 0e44 04040000 		.word	1028
 2906              		.cfi_endproc
 2907              	.LFE30:
 2909              		.align	2
 2910              		.global	wall_collision
 2911              		.code	16
 2912              		.thumb_func
 2914              	wall_collision:
 2915              	.LFB31:
 587:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 588:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** bool wall_collision(Entity *entity)
 589:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2916              		.loc 1 589 0
 2917              		.cfi_startproc
 2918 0e48 90B5     		push	{r4, r7, lr}
 2919              		.cfi_def_cfa_offset 12
 2920              		.cfi_offset 4, -12
 2921              		.cfi_offset 7, -8
 2922              		.cfi_offset 14, -4
 2923 0e4a 89B0     		sub	sp, sp, #36
 2924              		.cfi_def_cfa_offset 48
 2925 0e4c 02AF     		add	r7, sp, #8
 2926              		.cfi_def_cfa 7, 40
 2927 0e4e 7860     		str	r0, [r7, #4]
 590:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     int x_min,x_max,y_min,y_max;
 591:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     get_bounds(entity,&x_min,&x_max,&y_min,&y_max);
 2928              		.loc 1 591 0
 2929 0e50 0C23     		movs	r3, #12
 2930 0e52 FC18     		adds	r4, r7, r3
 2931 0e54 1023     		movs	r3, #16
 2932 0e56 FA18     		adds	r2, r7, r3
 2933 0e58 1423     		movs	r3, #20
 2934 0e5a F918     		adds	r1, r7, r3
 2935 0e5c 7868     		ldr	r0, [r7, #4]
 2936 0e5e 0823     		movs	r3, #8
 2937 0e60 FB18     		adds	r3, r7, r3
 2938 0e62 0093     		str	r3, [sp]
 2939 0e64 2300     		movs	r3, r4
 2940 0e66 FFF7FEFF 		bl	get_bounds
 592:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     
 593:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     if(x_max >= 64  || 
 2941              		.loc 1 593 0
 2942 0e6a 3B69     		ldr	r3, [r7, #16]
 2943 0e6c 3F2B     		cmp	r3, #63
 2944 0e6e 08DC     		bgt	.L151
 594:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****        x_min < 0    ||
 2945              		.loc 1 594 0 discriminator 1
 2946 0e70 7B69     		ldr	r3, [r7, #20]
 593:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****        x_min < 0    ||
 2947              		.loc 1 593 0 discriminator 1
 2948 0e72 002B     		cmp	r3, #0
 2949 0e74 05DB     		blt	.L151
 595:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****        y_max >= 128 || 
 2950              		.loc 1 595 0
 2951 0e76 BB68     		ldr	r3, [r7, #8]
 594:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****        x_min < 0    ||
 2952              		.loc 1 594 0
 2953 0e78 7F2B     		cmp	r3, #127
 2954 0e7a 02DC     		bgt	.L151
 596:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****        y_min < 0) return true;
 2955              		.loc 1 596 0
 2956 0e7c FB68     		ldr	r3, [r7, #12]
 595:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****        y_max >= 128 || 
 2957              		.loc 1 595 0
 2958 0e7e 002B     		cmp	r3, #0
 2959 0e80 01DA     		bge	.L152
 2960              	.L151:
 2961              		.loc 1 596 0
 2962 0e82 0123     		movs	r3, #1
 2963 0e84 00E0     		b	.L154
 2964              	.L152:
 597:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     
 598:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     return false;
 2965              		.loc 1 598 0
 2966 0e86 0023     		movs	r3, #0
 2967              	.L154:
 599:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2968              		.loc 1 599 0 discriminator 1
 2969 0e88 1800     		movs	r0, r3
 2970 0e8a BD46     		mov	sp, r7
 2971 0e8c 07B0     		add	sp, sp, #28
 2972              		@ sp needed
 2973 0e8e 90BD     		pop	{r4, r7, pc}
 2974              		.cfi_endproc
 2975              	.LFE31:
 2977              		.align	2
 2978              		.global	update_entity_pos
 2979              		.code	16
 2980              		.thumb_func
 2982              	update_entity_pos:
 2983              	.LFB32:
 600:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 601:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void update_entity_pos(Entity *entity)
 602:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2984              		.loc 1 602 0
 2985              		.cfi_startproc
 2986 0e90 80B5     		push	{r7, lr}
 2987              		.cfi_def_cfa_offset 8
 2988              		.cfi_offset 7, -8
 2989              		.cfi_offset 14, -4
 2990 0e92 82B0     		sub	sp, sp, #8
 2991              		.cfi_def_cfa_offset 16
 2992 0e94 00AF     		add	r7, sp, #0
 2993              		.cfi_def_cfa_register 7
 2994 0e96 7860     		str	r0, [r7, #4]
 603:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	entity->pos.x += entity->velocity.x;
 2995              		.loc 1 603 0
 2996 0e98 7B68     		ldr	r3, [r7, #4]
 2997 0e9a 9A68     		ldr	r2, [r3, #8]
 2998 0e9c 7B68     		ldr	r3, [r7, #4]
 2999 0e9e 1B69     		ldr	r3, [r3, #16]
 3000 0ea0 D218     		adds	r2, r2, r3
 3001 0ea2 7B68     		ldr	r3, [r7, #4]
 3002 0ea4 9A60     		str	r2, [r3, #8]
 604:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	entity->pos.y += entity->velocity.y;
 3003              		.loc 1 604 0
 3004 0ea6 7B68     		ldr	r3, [r7, #4]
 3005 0ea8 DA68     		ldr	r2, [r3, #12]
 3006 0eaa 7B68     		ldr	r3, [r7, #4]
 3007 0eac 5B69     		ldr	r3, [r3, #20]
 3008 0eae D218     		adds	r2, r2, r3
 3009 0eb0 7B68     		ldr	r3, [r7, #4]
 3010 0eb2 DA60     		str	r2, [r3, #12]
 605:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 3011              		.loc 1 605 0
 3012 0eb4 C046     		nop
 3013 0eb6 BD46     		mov	sp, r7
 3014 0eb8 02B0     		add	sp, sp, #8
 3015              		@ sp needed
 3016 0eba 80BD     		pop	{r7, pc}
 3017              		.cfi_endproc
 3018              	.LFE32:
 3020              		.align	2
 3021              		.global	mirror_update_entity_pos
 3022              		.code	16
 3023              		.thumb_func
 3025              	mirror_update_entity_pos:
 3026              	.LFB33:
 606:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 607:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void mirror_update_entity_pos(Entity *entity)
 608:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 3027              		.loc 1 608 0
 3028              		.cfi_startproc
 3029 0ebc 80B5     		push	{r7, lr}
 3030              		.cfi_def_cfa_offset 8
 3031              		.cfi_offset 7, -8
 3032              		.cfi_offset 14, -4
 3033 0ebe 82B0     		sub	sp, sp, #8
 3034              		.cfi_def_cfa_offset 16
 3035 0ec0 00AF     		add	r7, sp, #0
 3036              		.cfi_def_cfa_register 7
 3037 0ec2 7860     		str	r0, [r7, #4]
 609:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	entity->pos.x -= entity->velocity.x;
 3038              		.loc 1 609 0
 3039 0ec4 7B68     		ldr	r3, [r7, #4]
 3040 0ec6 9A68     		ldr	r2, [r3, #8]
 3041 0ec8 7B68     		ldr	r3, [r7, #4]
 3042 0eca 1B69     		ldr	r3, [r3, #16]
 3043 0ecc D21A     		subs	r2, r2, r3
 3044 0ece 7B68     		ldr	r3, [r7, #4]
 3045 0ed0 9A60     		str	r2, [r3, #8]
 610:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	entity->pos.y -= entity->velocity.y;
 3046              		.loc 1 610 0
 3047 0ed2 7B68     		ldr	r3, [r7, #4]
 3048 0ed4 DA68     		ldr	r2, [r3, #12]
 3049 0ed6 7B68     		ldr	r3, [r7, #4]
 3050 0ed8 5B69     		ldr	r3, [r3, #20]
 3051 0eda D21A     		subs	r2, r2, r3
 3052 0edc 7B68     		ldr	r3, [r7, #4]
 3053 0ede DA60     		str	r2, [r3, #12]
 611:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 3054              		.loc 1 611 0
 3055 0ee0 C046     		nop
 3056 0ee2 BD46     		mov	sp, r7
 3057 0ee4 02B0     		add	sp, sp, #8
 3058              		@ sp needed
 3059 0ee6 80BD     		pop	{r7, pc}
 3060              		.cfi_endproc
 3061              	.LFE33:
 3063              		.align	2
 3064              		.global	step_physics
 3065              		.code	16
 3066              		.thumb_func
 3068              	step_physics:
 3069              	.LFB34:
 612:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 613:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void step_physics(bool force)
 614:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 3070              		.loc 1 614 0
 3071              		.cfi_startproc
 3072 0ee8 80B5     		push	{r7, lr}
 3073              		.cfi_def_cfa_offset 8
 3074              		.cfi_offset 7, -8
 3075              		.cfi_offset 14, -4
 3076 0eea 84B0     		sub	sp, sp, #16
 3077              		.cfi_def_cfa_offset 24
 3078 0eec 00AF     		add	r7, sp, #0
 3079              		.cfi_def_cfa_register 7
 3080 0eee 0200     		movs	r2, r0
 3081 0ef0 FB1D     		adds	r3, r7, #7
 3082 0ef2 1A70     		strb	r2, [r3]
 3083              	.LBB27:
 615:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int i = 0; i < num_entities; i++)
 3084              		.loc 1 615 0
 3085 0ef4 0023     		movs	r3, #0
 3086 0ef6 FB60     		str	r3, [r7, #12]
 3087 0ef8 84E0     		b	.L158
 3088              	.L166:
 616:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 617:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		if(entities[i].type == entity_type_enemy)
 3089              		.loc 1 617 0
 3090 0efa 4749     		ldr	r1, .L167
 3091 0efc FA68     		ldr	r2, [r7, #12]
 3092 0efe 2020     		movs	r0, #32
 3093 0f00 1300     		movs	r3, r2
 3094 0f02 DB00     		lsls	r3, r3, #3
 3095 0f04 9B18     		adds	r3, r3, r2
 3096 0f06 9B00     		lsls	r3, r3, #2
 3097 0f08 CB18     		adds	r3, r1, r3
 3098 0f0a 1B18     		adds	r3, r3, r0
 3099 0f0c 1B78     		ldrb	r3, [r3]
 3100 0f0e 022B     		cmp	r3, #2
 3101 0f10 3AD1     		bne	.L159
 3102              	.LBB28:
 618:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 619:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			for(int tp = 0; tp < TURN_POINTS; tp++)
 3103              		.loc 1 619 0
 3104 0f12 0023     		movs	r3, #0
 3105 0f14 BB60     		str	r3, [r7, #8]
 3106 0f16 34E0     		b	.L160
 3107              	.L162:
 620:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			{
 621:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 				if(entities[i].pos.x == turnPoints[tp].pos.x && entities[i].pos.y == turnPoints[tp].pos.y)
 3108              		.loc 1 621 0
 3109 0f18 3F49     		ldr	r1, .L167
 3110 0f1a FA68     		ldr	r2, [r7, #12]
 3111 0f1c 1300     		movs	r3, r2
 3112 0f1e DB00     		lsls	r3, r3, #3
 3113 0f20 9B18     		adds	r3, r3, r2
 3114 0f22 9B00     		lsls	r3, r3, #2
 3115 0f24 CB18     		adds	r3, r1, r3
 3116 0f26 0833     		adds	r3, r3, #8
 3117 0f28 1A68     		ldr	r2, [r3]
 3118 0f2a 3C4B     		ldr	r3, .L167+4
 3119 0f2c B968     		ldr	r1, [r7, #8]
 3120 0f2e 0901     		lsls	r1, r1, #4
 3121 0f30 CB58     		ldr	r3, [r1, r3]
 3122 0f32 9A42     		cmp	r2, r3
 3123 0f34 22D1     		bne	.L161
 3124              		.loc 1 621 0 is_stmt 0 discriminator 1
 3125 0f36 3849     		ldr	r1, .L167
 3126 0f38 FA68     		ldr	r2, [r7, #12]
 3127 0f3a 1300     		movs	r3, r2
 3128 0f3c DB00     		lsls	r3, r3, #3
 3129 0f3e 9B18     		adds	r3, r3, r2
 3130 0f40 9B00     		lsls	r3, r3, #2
 3131 0f42 CB18     		adds	r3, r1, r3
 3132 0f44 0C33     		adds	r3, r3, #12
 3133 0f46 1A68     		ldr	r2, [r3]
 3134 0f48 3449     		ldr	r1, .L167+4
 3135 0f4a BB68     		ldr	r3, [r7, #8]
 3136 0f4c 1B01     		lsls	r3, r3, #4
 3137 0f4e CB18     		adds	r3, r1, r3
 3138 0f50 0433     		adds	r3, r3, #4
 3139 0f52 1B68     		ldr	r3, [r3]
 3140 0f54 9A42     		cmp	r2, r3
 3141 0f56 11D1     		bne	.L161
 622:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 				{
 623:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 					entities[i].velocity = turnPoints[tp].velocity;
 3142              		.loc 1 623 0 is_stmt 1
 3143 0f58 2F49     		ldr	r1, .L167
 3144 0f5a FA68     		ldr	r2, [r7, #12]
 3145 0f5c 1020     		movs	r0, #16
 3146 0f5e 1300     		movs	r3, r2
 3147 0f60 DB00     		lsls	r3, r3, #3
 3148 0f62 9B18     		adds	r3, r3, r2
 3149 0f64 9B00     		lsls	r3, r3, #2
 3150 0f66 CB18     		adds	r3, r1, r3
 3151 0f68 1818     		adds	r0, r3, r0
 3152 0f6a 2C4A     		ldr	r2, .L167+4
 3153 0f6c BB68     		ldr	r3, [r7, #8]
 3154 0f6e 0821     		movs	r1, #8
 3155 0f70 1B01     		lsls	r3, r3, #4
 3156 0f72 D318     		adds	r3, r2, r3
 3157 0f74 5A18     		adds	r2, r3, r1
 3158 0f76 0300     		movs	r3, r0
 3159 0f78 03CA     		ldmia	r2!, {r0, r1}
 3160 0f7a 03C3     		stmia	r3!, {r0, r1}
 3161              	.L161:
 619:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			{
 3162              		.loc 1 619 0 discriminator 2
 3163 0f7c BB68     		ldr	r3, [r7, #8]
 3164 0f7e 0133     		adds	r3, r3, #1
 3165 0f80 BB60     		str	r3, [r7, #8]
 3166              	.L160:
 619:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			{
 3167              		.loc 1 619 0 is_stmt 0 discriminator 1
 3168 0f82 BB68     		ldr	r3, [r7, #8]
 3169 0f84 172B     		cmp	r3, #23
 3170 0f86 C7DD     		ble	.L162
 3171              	.L159:
 3172              	.LBE28:
 624:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 				}
 625:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			}
 626:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		}
 627:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		if(force || !wall_collision(&entities[i]))
 3173              		.loc 1 627 0 is_stmt 1
 3174 0f88 FB1D     		adds	r3, r7, #7
 3175 0f8a 1B78     		ldrb	r3, [r3]
 3176 0f8c 002B     		cmp	r3, #0
 3177 0f8e 0BD1     		bne	.L163
 3178              		.loc 1 627 0 is_stmt 0 discriminator 1
 3179 0f90 FA68     		ldr	r2, [r7, #12]
 3180 0f92 1300     		movs	r3, r2
 3181 0f94 DB00     		lsls	r3, r3, #3
 3182 0f96 9B18     		adds	r3, r3, r2
 3183 0f98 9B00     		lsls	r3, r3, #2
 3184 0f9a 1F4A     		ldr	r2, .L167
 3185 0f9c 9B18     		adds	r3, r3, r2
 3186 0f9e 1800     		movs	r0, r3
 3187 0fa0 FFF7FEFF 		bl	wall_collision
 3188 0fa4 031E     		subs	r3, r0, #0
 3189 0fa6 0AD1     		bne	.L164
 3190              	.L163:
 628:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 629:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			update_entity_pos(&entities[i]);
 3191              		.loc 1 629 0 is_stmt 1
 3192 0fa8 FA68     		ldr	r2, [r7, #12]
 3193 0faa 1300     		movs	r3, r2
 3194 0fac DB00     		lsls	r3, r3, #3
 3195 0fae 9B18     		adds	r3, r3, r2
 3196 0fb0 9B00     		lsls	r3, r3, #2
 3197 0fb2 194A     		ldr	r2, .L167
 3198 0fb4 9B18     		adds	r3, r3, r2
 3199 0fb6 1800     		movs	r0, r3
 3200 0fb8 FFF7FEFF 		bl	update_entity_pos
 3201 0fbc 1FE0     		b	.L165
 3202              	.L164:
 630:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			//entities[i].pos.x += entities[i].velocity.x;
 631:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			//entities[i].pos.y += entities[i].velocity.y;
 632:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		} 
 633:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		else //is currently stuck on wall
 634:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{			
 635:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			update_entity_pos(&entities[i]);
 3203              		.loc 1 635 0
 3204 0fbe FA68     		ldr	r2, [r7, #12]
 3205 0fc0 1300     		movs	r3, r2
 3206 0fc2 DB00     		lsls	r3, r3, #3
 3207 0fc4 9B18     		adds	r3, r3, r2
 3208 0fc6 9B00     		lsls	r3, r3, #2
 3209 0fc8 134A     		ldr	r2, .L167
 3210 0fca 9B18     		adds	r3, r3, r2
 3211 0fcc 1800     		movs	r0, r3
 3212 0fce FFF7FEFF 		bl	update_entity_pos
 636:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			if(wall_collision(&entities[i]))
 3213              		.loc 1 636 0
 3214 0fd2 FA68     		ldr	r2, [r7, #12]
 3215 0fd4 1300     		movs	r3, r2
 3216 0fd6 DB00     		lsls	r3, r3, #3
 3217 0fd8 9B18     		adds	r3, r3, r2
 3218 0fda 9B00     		lsls	r3, r3, #2
 3219 0fdc 0E4A     		ldr	r2, .L167
 3220 0fde 9B18     		adds	r3, r3, r2
 3221 0fe0 1800     		movs	r0, r3
 3222 0fe2 FFF7FEFF 		bl	wall_collision
 3223 0fe6 031E     		subs	r3, r0, #0
 3224 0fe8 09D0     		beq	.L165
 637:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 				mirror_update_entity_pos(&entities[i]); //move back
 3225              		.loc 1 637 0
 3226 0fea FA68     		ldr	r2, [r7, #12]
 3227 0fec 1300     		movs	r3, r2
 3228 0fee DB00     		lsls	r3, r3, #3
 3229 0ff0 9B18     		adds	r3, r3, r2
 3230 0ff2 9B00     		lsls	r3, r3, #2
 3231 0ff4 084A     		ldr	r2, .L167
 3232 0ff6 9B18     		adds	r3, r3, r2
 3233 0ff8 1800     		movs	r0, r3
 3234 0ffa FFF7FEFF 		bl	mirror_update_entity_pos
 3235              	.L165:
 615:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 3236              		.loc 1 615 0 discriminator 2
 3237 0ffe FB68     		ldr	r3, [r7, #12]
 3238 1000 0133     		adds	r3, r3, #1
 3239 1002 FB60     		str	r3, [r7, #12]
 3240              	.L158:
 615:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 3241              		.loc 1 615 0 is_stmt 0 discriminator 1
 3242 1004 064B     		ldr	r3, .L167+8
 3243 1006 1B68     		ldr	r3, [r3]
 3244 1008 FA68     		ldr	r2, [r7, #12]
 3245 100a 9A42     		cmp	r2, r3
 3246 100c 00DA     		bge	.LCB2764
 3247 100e 74E7     		b	.L166	@long jump
 3248              	.LCB2764:
 3249              	.LBE27:
 638:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		}
 639:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 640:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 3250              		.loc 1 640 0 is_stmt 1
 3251 1010 C046     		nop
 3252 1012 BD46     		mov	sp, r7
 3253 1014 04B0     		add	sp, sp, #16
 3254              		@ sp needed
 3255 1016 80BD     		pop	{r7, pc}
 3256              	.L168:
 3257              		.align	2
 3258              	.L167:
 3259 1018 C0440000 		.word	entities
 3260 101c 00000000 		.word	turnPoints
 3261 1020 C0560000 		.word	num_entities
 3262              		.cfi_endproc
 3263              	.LFE34:
 3265              		.align	2
 3266              		.global	entity_collision
 3267              		.code	16
 3268              		.thumb_func
 3270              	entity_collision:
 3271              	.LFB35:
 641:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 642:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** bool entity_collision(Entity *a, Entity *b)
 643:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 3272              		.loc 1 643 0
 3273              		.cfi_startproc
 3274 1024 90B5     		push	{r4, r7, lr}
 3275              		.cfi_def_cfa_offset 12
 3276              		.cfi_offset 4, -12
 3277              		.cfi_offset 7, -8
 3278              		.cfi_offset 14, -4
 3279 1026 8DB0     		sub	sp, sp, #52
 3280              		.cfi_def_cfa_offset 64
 3281 1028 02AF     		add	r7, sp, #8
 3282              		.cfi_def_cfa 7, 56
 3283 102a 7860     		str	r0, [r7, #4]
 3284 102c 3960     		str	r1, [r7]
 644:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     int ax_min,ax_max,ay_min,ay_max;
 645:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     get_bounds(a,&ax_min,&ax_max,&ay_min,&ay_max);
 3285              		.loc 1 645 0
 3286 102e 1C23     		movs	r3, #28
 3287 1030 FC18     		adds	r4, r7, r3
 3288 1032 2023     		movs	r3, #32
 3289 1034 FA18     		adds	r2, r7, r3
 3290 1036 2423     		movs	r3, #36
 3291 1038 F918     		adds	r1, r7, r3
 3292 103a 7868     		ldr	r0, [r7, #4]
 3293 103c 1823     		movs	r3, #24
 3294 103e FB18     		adds	r3, r7, r3
 3295 1040 0093     		str	r3, [sp]
 3296 1042 2300     		movs	r3, r4
 3297 1044 FFF7FEFF 		bl	get_bounds
 646:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     
 647:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     int bx_min,bx_max,by_min,by_max;
 648:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     get_bounds(b,&bx_min,&bx_max,&by_min,&by_max);
 3298              		.loc 1 648 0
 3299 1048 0C23     		movs	r3, #12
 3300 104a FC18     		adds	r4, r7, r3
 3301 104c 1023     		movs	r3, #16
 3302 104e FA18     		adds	r2, r7, r3
 3303 1050 1423     		movs	r3, #20
 3304 1052 F918     		adds	r1, r7, r3
 3305 1054 3868     		ldr	r0, [r7]
 3306 1056 0823     		movs	r3, #8
 3307 1058 FB18     		adds	r3, r7, r3
 3308 105a 0093     		str	r3, [sp]
 3309 105c 2300     		movs	r3, r4
 3310 105e FFF7FEFF 		bl	get_bounds
 649:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****    
 650:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	if((ax_min <= bx_min && ax_max >= bx_min)||
 3311              		.loc 1 650 0
 3312 1062 7A6A     		ldr	r2, [r7, #36]
 3313 1064 7B69     		ldr	r3, [r7, #20]
 3314 1066 9A42     		cmp	r2, r3
 3315 1068 03DC     		bgt	.L170
 3316              		.loc 1 650 0 is_stmt 0 discriminator 1
 3317 106a 3A6A     		ldr	r2, [r7, #32]
 3318 106c 7B69     		ldr	r3, [r7, #20]
 3319 106e 9A42     		cmp	r2, r3
 3320 1070 07DA     		bge	.L171
 3321              	.L170:
 651:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         (bx_min <= ax_min && bx_max >= ax_min))
 3322              		.loc 1 651 0 is_stmt 1 discriminator 3
 3323 1072 7A69     		ldr	r2, [r7, #20]
 3324 1074 7B6A     		ldr	r3, [r7, #36]
 650:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         (bx_min <= ax_min && bx_max >= ax_min))
 3325              		.loc 1 650 0 discriminator 3
 3326 1076 9A42     		cmp	r2, r3
 3327 1078 15DC     		bgt	.L172
 3328              		.loc 1 651 0
 3329 107a 3A69     		ldr	r2, [r7, #16]
 3330 107c 7B6A     		ldr	r3, [r7, #36]
 3331 107e 9A42     		cmp	r2, r3
 3332 1080 11DB     		blt	.L172
 3333              	.L171:
 652:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     {
 653:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         if((ay_min <= by_min && ay_max >= by_min)||
 3334              		.loc 1 653 0
 3335 1082 FA69     		ldr	r2, [r7, #28]
 3336 1084 FB68     		ldr	r3, [r7, #12]
 3337 1086 9A42     		cmp	r2, r3
 3338 1088 03DC     		bgt	.L173
 3339              		.loc 1 653 0 is_stmt 0 discriminator 1
 3340 108a BA69     		ldr	r2, [r7, #24]
 3341 108c FB68     		ldr	r3, [r7, #12]
 3342 108e 9A42     		cmp	r2, r3
 3343 1090 07DA     		bge	.L174
 3344              	.L173:
 654:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****            (by_min <= ay_min && by_max >= ay_min))
 3345              		.loc 1 654 0 is_stmt 1 discriminator 3
 3346 1092 FA68     		ldr	r2, [r7, #12]
 3347 1094 FB69     		ldr	r3, [r7, #28]
 653:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****            (by_min <= ay_min && by_max >= ay_min))
 3348              		.loc 1 653 0 discriminator 3
 3349 1096 9A42     		cmp	r2, r3
 3350 1098 05DC     		bgt	.L172
 3351              		.loc 1 654 0
 3352 109a BA68     		ldr	r2, [r7, #8]
 3353 109c FB69     		ldr	r3, [r7, #28]
 3354 109e 9A42     		cmp	r2, r3
 3355 10a0 01DB     		blt	.L172
 3356              	.L174:
 655:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         {
 656:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             return true;
 3357              		.loc 1 656 0
 3358 10a2 0123     		movs	r3, #1
 3359 10a4 00E0     		b	.L176
 3360              	.L172:
 657:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         }
 658:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     }
 659:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     return false;
 3361              		.loc 1 659 0
 3362 10a6 0023     		movs	r3, #0
 3363              	.L176:
 660:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 3364              		.loc 1 660 0 discriminator 1
 3365 10a8 1800     		movs	r0, r3
 3366 10aa BD46     		mov	sp, r7
 3367 10ac 0BB0     		add	sp, sp, #44
 3368              		@ sp needed
 3369 10ae 90BD     		pop	{r4, r7, pc}
 3370              		.cfi_endproc
 3371              	.LFE35:
 3373              		.global	ship_defn
 3374              		.section	.rodata
 3375              		.align	2
 3376              	.LC64:
 3377 0010 20202020 		.ascii	"      #           ###          ###      ###########"
 3377      20202320 
 3377      20202020 
 3377      20202020 
 3377      20202323 
 3378 0043 20232323 		.ascii	" ##################################################"
 3378      23232323 
 3378      23232323 
 3378      23232323 
 3378      23232323 
 3379 0076 232300   		.ascii	"##\000"
 3380              		.data
 3381              		.align	2
 3384              	ship_defn:
 3385 019c 10000000 		.word	.LC64
 3386              		.global	bullet_defn
 3387              		.section	.rodata
 3388 0079 000000   		.align	2
 3389              	.LC65:
 3390 007c 20202320 		.ascii	"  #   ### ##### ###   #  \000"
 3390      20202323 
 3390      23202323 
 3390      23232320 
 3390      23232320 
 3391              		.data
 3392              		.align	2
 3395              	bullet_defn:
 3396 01a0 7C000000 		.word	.LC65
 3397              		.global	enemy_defn
 3398              		.section	.rodata
 3399 0096 0000     		.align	2
 3400              	.LC66:
 3401 0098 20202320 		.ascii	"  #     #     #   #     #######    # ### #   ## ###"
 3401      20202020 
 3401      23202020 
 3401      20202320 
 3401      20202320 
 3402 00cb 20232320 		.ascii	" ## ############ ####### ## #     # #   #   #      "
 3402      23232323 
 3402      23232323 
 3402      23232323 
 3402      20232323 
 3403 00fe 20232023 		.ascii	" # #    \000"
 3403      20202020 
 3403      00
 3404              		.data
 3405              		.align	2
 3408              	enemy_defn:
 3409 01a4 98000000 		.word	.LC66
 3410              		.global	laser_defn
 3411              		.section	.rodata
 3412 0107 00       		.align	2
 3413              	.LC67:
 3414 0108 23232323 		.ascii	"###########\000"
 3414      23232323 
 3414      23232300 
 3415              		.data
 3416              		.align	2
 3419              	laser_defn:
 3420 01a8 08010000 		.word	.LC67
 3421              		.section	.rodata
 3422              		.align	2
 3423              	.LC1:
 3424 0114 1F000000 		.word	31
 3425 0118 04000000 		.word	4
 3426              		.align	2
 3427              	.LC2:
 3428 011c 06000000 		.word	6
 3429 0120 78000000 		.word	120
 3430              		.text
 3431              		.align	2
 3432              		.global	main
 3433              		.code	16
 3434              		.thumb_func
 3436              	main:
 3437              	.LFB36:
 661:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 662:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** char *ship_defn=
 663:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "      #      "
 664:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "     ###     "
 665:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "     ###     "
 666:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** " ########### "
 667:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "#############"
 668:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "#############"
 669:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "#############"
 670:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "#############";
 671:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         
 672:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** char *bullet_defn =
 673:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "  #  "
 674:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** " ### "
 675:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "#####"
 676:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** " ### "
 677:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "  #  ";
 678:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** char *enemy_defn = 
 679:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "  #     #  "
 680:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "   #   #   "
 681:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "  #######  "
 682:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "  # ### #  "
 683:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** " ## ### ## "
 684:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "###########"
 685:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "# ####### #"
 686:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "# #     # #"
 687:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "   #   #   "
 688:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "    # #    ";
 689:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 690:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 691:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** char *laser_defn = "###########";
 692:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 693:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** int main()
 694:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 3438              		.loc 1 694 0
 3439              		.cfi_startproc
 3440 10b0 B0B5     		push	{r4, r5, r7, lr}
 3441              		.cfi_def_cfa_offset 16
 3442              		.cfi_offset 4, -16
 3443              		.cfi_offset 5, -12
 3444              		.cfi_offset 7, -8
 3445              		.cfi_offset 14, -4
 3446 10b2 98B0     		sub	sp, sp, #96
 3447              		.cfi_def_cfa_offset 112
 3448 10b4 02AF     		add	r7, sp, #8
 3449              		.cfi_def_cfa 7, 104
 695:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     { //init app
 696:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         e->MODER = 0x55555555; //set write entire e
 3450              		.loc 1 696 0
 3451 10b6 9B4B     		ldr	r3, .L191
 3452 10b8 1B68     		ldr	r3, [r3]
 3453 10ba 9B4A     		ldr	r2, .L191+4
 3454 10bc 1A60     		str	r2, [r3]
 697:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		d->MODER = 0x55005555;
 3455              		.loc 1 697 0
 3456 10be 9B4B     		ldr	r3, .L191+8
 3457 10c0 1B68     		ldr	r3, [r3]
 3458 10c2 9B4A     		ldr	r2, .L191+12
 3459 10c4 1A60     		str	r2, [r3]
 698:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		d->OTYPER = 0x0000;     //set push-pull 
 3460              		.loc 1 698 0
 3461 10c6 994B     		ldr	r3, .L191+8
 3462 10c8 1B68     		ldr	r3, [r3]
 3463 10ca 0022     		movs	r2, #0
 3464 10cc 5A60     		str	r2, [r3, #4]
 699:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		d->PUPDR  = 0xAA000000; //set pull-down
 3465              		.loc 1 699 0
 3466 10ce 974B     		ldr	r3, .L191+8
 3467 10d0 1B68     		ldr	r3, [r3]
 3468 10d2 AA22     		movs	r2, #170
 3469 10d4 1206     		lsls	r2, r2, #24
 3470 10d6 DA60     		str	r2, [r3, #12]
 700:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     }
 701:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     graphics_initialize();
 3471              		.loc 1 701 0
 3472 10d8 FFF7FEFF 		bl	graphics_initialize
 702:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	set_all(0xff);
 3473              		.loc 1 702 0
 3474 10dc FF20     		movs	r0, #255
 3475 10de FFF7FEFF 		bl	set_all
 703:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     
 704:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 705:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	Sprite *ship_sprite = make_sprite(ship_defn,13,8,1);
 3476              		.loc 1 705 0
 3477 10e2 944B     		ldr	r3, .L191+16
 3478 10e4 1868     		ldr	r0, [r3]
 3479 10e6 0123     		movs	r3, #1
 3480 10e8 0822     		movs	r2, #8
 3481 10ea 0D21     		movs	r1, #13
 3482 10ec FFF7FEFF 		bl	make_sprite
 3483 10f0 0300     		movs	r3, r0
 3484 10f2 BB64     		str	r3, [r7, #72]
 706:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	Sprite *bullet_sprite = make_sprite(bullet_defn,5,5,1);
 3485              		.loc 1 706 0
 3486 10f4 904B     		ldr	r3, .L191+20
 3487 10f6 1868     		ldr	r0, [r3]
 3488 10f8 0123     		movs	r3, #1
 3489 10fa 0522     		movs	r2, #5
 3490 10fc 0521     		movs	r1, #5
 3491 10fe FFF7FEFF 		bl	make_sprite
 3492 1102 0300     		movs	r3, r0
 3493 1104 7B64     		str	r3, [r7, #68]
 707:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     Sprite *laser_sprite = make_sprite(laser_defn,1,8,1);
 3494              		.loc 1 707 0
 3495 1106 8D4B     		ldr	r3, .L191+24
 3496 1108 1868     		ldr	r0, [r3]
 3497 110a 0123     		movs	r3, #1
 3498 110c 0822     		movs	r2, #8
 3499 110e 0121     		movs	r1, #1
 3500 1110 FFF7FEFF 		bl	make_sprite
 3501 1114 0300     		movs	r3, r0
 3502 1116 3B64     		str	r3, [r7, #64]
 708:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     Sprite *enemy_sprite = make_sprite(enemy_defn,11,10,1);
 3503              		.loc 1 708 0
 3504 1118 894B     		ldr	r3, .L191+28
 3505 111a 1868     		ldr	r0, [r3]
 3506 111c 0123     		movs	r3, #1
 3507 111e 0A22     		movs	r2, #10
 3508 1120 0B21     		movs	r1, #11
 3509 1122 FFF7FEFF 		bl	make_sprite
 3510 1126 0300     		movs	r3, r0
 3511 1128 FB63     		str	r3, [r7, #60]
 709:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 710:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	int *player_id = make_entity(ship_sprite, entity_type_player,(Vec2){31,4},(Vec2){0,0});
 3512              		.loc 1 710 0
 3513 112a 3B1D     		adds	r3, r7, #4
 3514 112c 854A     		ldr	r2, .L191+32
 3515 112e 03CA     		ldmia	r2!, {r0, r1}
 3516 1130 03C3     		stmia	r3!, {r0, r1}
 3517 1132 0C23     		movs	r3, #12
 3518 1134 FB18     		adds	r3, r7, r3
 3519 1136 0022     		movs	r2, #0
 3520 1138 1A60     		str	r2, [r3]
 3521 113a 0C23     		movs	r3, #12
 3522 113c FB18     		adds	r3, r7, r3
 3523 113e 0022     		movs	r2, #0
 3524 1140 5A60     		str	r2, [r3, #4]
 3525 1142 3B1D     		adds	r3, r7, #4
 3526 1144 B86C     		ldr	r0, [r7, #72]
 3527 1146 0C22     		movs	r2, #12
 3528 1148 B918     		adds	r1, r7, r2
 3529 114a 6A46     		mov	r2, sp
 3530 114c 30C9     		ldmia	r1!, {r4, r5}
 3531 114e 30C2     		stmia	r2!, {r4, r5}
 3532 1150 1A68     		ldr	r2, [r3]
 3533 1152 5B68     		ldr	r3, [r3, #4]
 3534 1154 0021     		movs	r1, #0
 3535 1156 FFF7FEFF 		bl	make_entity
 3536 115a 0300     		movs	r3, r0
 3537 115c BB63     		str	r3, [r7, #56]
 711:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     
 712:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	set_all(0);
 3538              		.loc 1 712 0
 3539 115e 0020     		movs	r0, #0
 3540 1160 FFF7FEFF 		bl	set_all
 713:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 714:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     int speed = 2;
 3541              		.loc 1 714 0
 3542 1164 0223     		movs	r3, #2
 3543 1166 7B63     		str	r3, [r7, #52]
 715:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	
 716:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	int frames = 0;
 3544              		.loc 1 716 0
 3545 1168 0023     		movs	r3, #0
 3546 116a 7B65     		str	r3, [r7, #84]
 3547              	.L190:
 3548              	.LBB29:
 717:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     for(;;)
 718:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     {
 719:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		if(!(frames%4))
 3549              		.loc 1 719 0
 3550 116c 7B6D     		ldr	r3, [r7, #84]
 3551 116e 0322     		movs	r2, #3
 3552 1170 1340     		ands	r3, r2
 3553 1172 19D1     		bne	.L178
 720:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 721:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			make_entity(enemy_sprite,entity_type_enemy,(Vec2){Y_LOWER,120},(Vec2){ENIMY_SPEED,0});
 3554              		.loc 1 721 0
 3555 1174 1423     		movs	r3, #20
 3556 1176 FB18     		adds	r3, r7, r3
 3557 1178 734A     		ldr	r2, .L191+36
 3558 117a 03CA     		ldmia	r2!, {r0, r1}
 3559 117c 03C3     		stmia	r3!, {r0, r1}
 3560 117e 1C23     		movs	r3, #28
 3561 1180 FB18     		adds	r3, r7, r3
 3562 1182 0822     		movs	r2, #8
 3563 1184 1A60     		str	r2, [r3]
 3564 1186 1C23     		movs	r3, #28
 3565 1188 FB18     		adds	r3, r7, r3
 3566 118a 0022     		movs	r2, #0
 3567 118c 5A60     		str	r2, [r3, #4]
 3568 118e 1423     		movs	r3, #20
 3569 1190 FB18     		adds	r3, r7, r3
 3570 1192 F86B     		ldr	r0, [r7, #60]
 3571 1194 1C22     		movs	r2, #28
 3572 1196 B918     		adds	r1, r7, r2
 3573 1198 6A46     		mov	r2, sp
 3574 119a 30C9     		ldmia	r1!, {r4, r5}
 3575 119c 30C2     		stmia	r2!, {r4, r5}
 3576 119e 1A68     		ldr	r2, [r3]
 3577 11a0 5B68     		ldr	r3, [r3, #4]
 3578 11a2 0221     		movs	r1, #2
 3579 11a4 FFF7FEFF 		bl	make_entity
 3580              	.L178:
 722:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		}
 723:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		
 724:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         char c = keyb();
 3581              		.loc 1 724 0
 3582 11a8 3323     		movs	r3, #51
 3583 11aa FC18     		adds	r4, r7, r3
 3584 11ac FFF7FEFF 		bl	keyb
 3585 11b0 0300     		movs	r3, r0
 3586 11b2 2370     		strb	r3, [r4]
 725:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		Entity *player = entity_from_id(player_id);
 3587              		.loc 1 725 0
 3588 11b4 BB6B     		ldr	r3, [r7, #56]
 3589 11b6 1800     		movs	r0, r3
 3590 11b8 FFF7FEFF 		bl	entity_from_id
 3591 11bc 0300     		movs	r3, r0
 3592 11be FB62     		str	r3, [r7, #44]
 726:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         if(c == '6') player->velocity.x = 2;
 3593              		.loc 1 726 0
 3594 11c0 3323     		movs	r3, #51
 3595 11c2 FB18     		adds	r3, r7, r3
 3596 11c4 1B78     		ldrb	r3, [r3]
 3597 11c6 362B     		cmp	r3, #54
 3598 11c8 03D1     		bne	.L179
 3599              		.loc 1 726 0 is_stmt 0 discriminator 1
 3600 11ca FB6A     		ldr	r3, [r7, #44]
 3601 11cc 0222     		movs	r2, #2
 3602 11ce 1A61     		str	r2, [r3, #16]
 3603 11d0 0CE0     		b	.L180
 3604              	.L179:
 727:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         else if(c == '4') player->velocity.x = -2;
 3605              		.loc 1 727 0 is_stmt 1
 3606 11d2 3323     		movs	r3, #51
 3607 11d4 FB18     		adds	r3, r7, r3
 3608 11d6 1B78     		ldrb	r3, [r3]
 3609 11d8 342B     		cmp	r3, #52
 3610 11da 04D1     		bne	.L181
 3611              		.loc 1 727 0 is_stmt 0 discriminator 1
 3612 11dc FB6A     		ldr	r3, [r7, #44]
 3613 11de 0222     		movs	r2, #2
 3614 11e0 5242     		rsbs	r2, r2, #0
 3615 11e2 1A61     		str	r2, [r3, #16]
 3616 11e4 02E0     		b	.L180
 3617              	.L181:
 728:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         else player->velocity.x = 0;
 3618              		.loc 1 728 0 is_stmt 1
 3619 11e6 FB6A     		ldr	r3, [r7, #44]
 3620 11e8 0022     		movs	r2, #0
 3621 11ea 1A61     		str	r2, [r3, #16]
 3622              	.L180:
 729:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		if (c == '2') 
 3623              		.loc 1 729 0
 3624 11ec 3323     		movs	r3, #51
 3625 11ee FB18     		adds	r3, r7, r3
 3626 11f0 1B78     		ldrb	r3, [r3]
 3627 11f2 322B     		cmp	r3, #50
 3628 11f4 13D1     		bne	.L182
 730:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         {
 731:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             make_entity(laser_sprite, entity_type_bullet, player->pos, (Vec2) { 0, 10});
 3629              		.loc 1 731 0
 3630 11f6 2423     		movs	r3, #36
 3631 11f8 FB18     		adds	r3, r7, r3
 3632 11fa 0022     		movs	r2, #0
 3633 11fc 1A60     		str	r2, [r3]
 3634 11fe 2423     		movs	r3, #36
 3635 1200 FB18     		adds	r3, r7, r3
 3636 1202 0A22     		movs	r2, #10
 3637 1204 5A60     		str	r2, [r3, #4]
 3638 1206 FB6A     		ldr	r3, [r7, #44]
 3639 1208 386C     		ldr	r0, [r7, #64]
 3640 120a 2422     		movs	r2, #36
 3641 120c B918     		adds	r1, r7, r2
 3642 120e 6A46     		mov	r2, sp
 3643 1210 30C9     		ldmia	r1!, {r4, r5}
 3644 1212 30C2     		stmia	r2!, {r4, r5}
 3645 1214 9A68     		ldr	r2, [r3, #8]
 3646 1216 DB68     		ldr	r3, [r3, #12]
 3647 1218 0121     		movs	r1, #1
 3648 121a FFF7FEFF 		bl	make_entity
 3649              	.L182:
 732:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         }
 733:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		
 734:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		step_physics(false);
 3650              		.loc 1 734 0
 3651 121e 0020     		movs	r0, #0
 3652 1220 FFF7FEFF 		bl	step_physics
 3653              	.LBB30:
 735:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         for(int i = 0;i<num_entities;i++)
 3654              		.loc 1 735 0
 3655 1224 0023     		movs	r3, #0
 3656 1226 3B65     		str	r3, [r7, #80]
 3657 1228 6FE0     		b	.L183
 3658              	.L189:
 736:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         {
 737:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             if(wall_collision(&entities[i]))
 3659              		.loc 1 737 0
 3660 122a 3A6D     		ldr	r2, [r7, #80]
 3661 122c 1300     		movs	r3, r2
 3662 122e DB00     		lsls	r3, r3, #3
 3663 1230 9B18     		adds	r3, r3, r2
 3664 1232 9B00     		lsls	r3, r3, #2
 3665 1234 454A     		ldr	r2, .L191+40
 3666 1236 9B18     		adds	r3, r3, r2
 3667 1238 1800     		movs	r0, r3
 3668 123a FFF7FEFF 		bl	wall_collision
 3669 123e 031E     		subs	r3, r0, #0
 3670 1240 15D0     		beq	.L184
 738:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             {
 739:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 				if (entities[i].type == entity_type_bullet)entities[i].destroy = true;
 3671              		.loc 1 739 0
 3672 1242 4249     		ldr	r1, .L191+40
 3673 1244 3A6D     		ldr	r2, [r7, #80]
 3674 1246 2020     		movs	r0, #32
 3675 1248 1300     		movs	r3, r2
 3676 124a DB00     		lsls	r3, r3, #3
 3677 124c 9B18     		adds	r3, r3, r2
 3678 124e 9B00     		lsls	r3, r3, #2
 3679 1250 CB18     		adds	r3, r1, r3
 3680 1252 1B18     		adds	r3, r3, r0
 3681 1254 1B78     		ldrb	r3, [r3]
 3682 1256 012B     		cmp	r3, #1
 3683 1258 09D1     		bne	.L184
 3684              		.loc 1 739 0 is_stmt 0 discriminator 1
 3685 125a 3C49     		ldr	r1, .L191+40
 3686 125c 3A6D     		ldr	r2, [r7, #80]
 3687 125e 1300     		movs	r3, r2
 3688 1260 DB00     		lsls	r3, r3, #3
 3689 1262 9B18     		adds	r3, r3, r2
 3690 1264 9B00     		lsls	r3, r3, #2
 3691 1266 CB18     		adds	r3, r1, r3
 3692 1268 1833     		adds	r3, r3, #24
 3693 126a 0122     		movs	r2, #1
 3694 126c 1A70     		strb	r2, [r3]
 3695              	.L184:
 740:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             }
 741:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             if (entities[i].type == entity_type_bullet)
 3696              		.loc 1 741 0 is_stmt 1
 3697 126e 3749     		ldr	r1, .L191+40
 3698 1270 3A6D     		ldr	r2, [r7, #80]
 3699 1272 2020     		movs	r0, #32
 3700 1274 1300     		movs	r3, r2
 3701 1276 DB00     		lsls	r3, r3, #3
 3702 1278 9B18     		adds	r3, r3, r2
 3703 127a 9B00     		lsls	r3, r3, #2
 3704 127c CB18     		adds	r3, r1, r3
 3705 127e 1B18     		adds	r3, r3, r0
 3706 1280 1B78     		ldrb	r3, [r3]
 3707 1282 012B     		cmp	r3, #1
 3708 1284 3ED1     		bne	.L185
 3709              	.LBB31:
 742:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             {
 743:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                 for(int j = 0;j<num_entities;j++)
 3710              		.loc 1 743 0
 3711 1286 0023     		movs	r3, #0
 3712 1288 FB64     		str	r3, [r7, #76]
 3713 128a 36E0     		b	.L186
 3714              	.L188:
 744:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                 {
 745:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                     if(entities[j].type == entity_type_enemy)
 3715              		.loc 1 745 0
 3716 128c 2F49     		ldr	r1, .L191+40
 3717 128e FA6C     		ldr	r2, [r7, #76]
 3718 1290 2020     		movs	r0, #32
 3719 1292 1300     		movs	r3, r2
 3720 1294 DB00     		lsls	r3, r3, #3
 3721 1296 9B18     		adds	r3, r3, r2
 3722 1298 9B00     		lsls	r3, r3, #2
 3723 129a CB18     		adds	r3, r1, r3
 3724 129c 1B18     		adds	r3, r3, r0
 3725 129e 1B78     		ldrb	r3, [r3]
 3726 12a0 022B     		cmp	r3, #2
 3727 12a2 27D1     		bne	.L187
 746:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                     {
 747:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                         if(entity_collision(&entities[i],&entities[j]))
 3728              		.loc 1 747 0
 3729 12a4 3A6D     		ldr	r2, [r7, #80]
 3730 12a6 1300     		movs	r3, r2
 3731 12a8 DB00     		lsls	r3, r3, #3
 3732 12aa 9B18     		adds	r3, r3, r2
 3733 12ac 9B00     		lsls	r3, r3, #2
 3734 12ae 274A     		ldr	r2, .L191+40
 3735 12b0 9818     		adds	r0, r3, r2
 3736 12b2 FA6C     		ldr	r2, [r7, #76]
 3737 12b4 1300     		movs	r3, r2
 3738 12b6 DB00     		lsls	r3, r3, #3
 3739 12b8 9B18     		adds	r3, r3, r2
 3740 12ba 9B00     		lsls	r3, r3, #2
 3741 12bc 234A     		ldr	r2, .L191+40
 3742 12be 9B18     		adds	r3, r3, r2
 3743 12c0 1900     		movs	r1, r3
 3744 12c2 FFF7FEFF 		bl	entity_collision
 3745 12c6 031E     		subs	r3, r0, #0
 3746 12c8 14D0     		beq	.L187
 748:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                         {
 749:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                             entities[j].destroy = true;
 3747              		.loc 1 749 0
 3748 12ca 2049     		ldr	r1, .L191+40
 3749 12cc FA6C     		ldr	r2, [r7, #76]
 3750 12ce 1300     		movs	r3, r2
 3751 12d0 DB00     		lsls	r3, r3, #3
 3752 12d2 9B18     		adds	r3, r3, r2
 3753 12d4 9B00     		lsls	r3, r3, #2
 3754 12d6 CB18     		adds	r3, r1, r3
 3755 12d8 1833     		adds	r3, r3, #24
 3756 12da 0122     		movs	r2, #1
 3757 12dc 1A70     		strb	r2, [r3]
 750:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                             entities[i].destroy = true;
 3758              		.loc 1 750 0
 3759 12de 1B49     		ldr	r1, .L191+40
 3760 12e0 3A6D     		ldr	r2, [r7, #80]
 3761 12e2 1300     		movs	r3, r2
 3762 12e4 DB00     		lsls	r3, r3, #3
 3763 12e6 9B18     		adds	r3, r3, r2
 3764 12e8 9B00     		lsls	r3, r3, #2
 3765 12ea CB18     		adds	r3, r1, r3
 3766 12ec 1833     		adds	r3, r3, #24
 3767 12ee 0122     		movs	r2, #1
 3768 12f0 1A70     		strb	r2, [r3]
 751:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                             break;
 3769              		.loc 1 751 0
 3770 12f2 07E0     		b	.L185
 3771              	.L187:
 743:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                 {
 3772              		.loc 1 743 0 discriminator 2
 3773 12f4 FB6C     		ldr	r3, [r7, #76]
 3774 12f6 0133     		adds	r3, r3, #1
 3775 12f8 FB64     		str	r3, [r7, #76]
 3776              	.L186:
 743:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                 {
 3777              		.loc 1 743 0 is_stmt 0 discriminator 1
 3778 12fa 154B     		ldr	r3, .L191+44
 3779 12fc 1B68     		ldr	r3, [r3]
 3780 12fe FA6C     		ldr	r2, [r7, #76]
 3781 1300 9A42     		cmp	r2, r3
 3782 1302 C3DB     		blt	.L188
 3783              	.L185:
 3784              	.LBE31:
 735:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         {
 3785              		.loc 1 735 0 is_stmt 1 discriminator 2
 3786 1304 3B6D     		ldr	r3, [r7, #80]
 3787 1306 0133     		adds	r3, r3, #1
 3788 1308 3B65     		str	r3, [r7, #80]
 3789              	.L183:
 735:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         {
 3790              		.loc 1 735 0 is_stmt 0 discriminator 1
 3791 130a 114B     		ldr	r3, .L191+44
 3792 130c 1B68     		ldr	r3, [r3]
 3793 130e 3A6D     		ldr	r2, [r7, #80]
 3794 1310 9A42     		cmp	r2, r3
 3795 1312 8ADB     		blt	.L189
 3796              	.LBE30:
 752:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                         }
 753:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                     }
 754:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                 }
 755:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             }
 756:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 757:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         }
 758:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		render();
 3797              		.loc 1 758 0 is_stmt 1
 3798 1314 FFF7FEFF 		bl	render
 759:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		cleanup_entities();
 3799              		.loc 1 759 0
 3800 1318 FFF7FEFF 		bl	cleanup_entities
 760:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		frames++;
 3801              		.loc 1 760 0
 3802 131c 7B6D     		ldr	r3, [r7, #84]
 3803 131e 0133     		adds	r3, r3, #1
 3804 1320 7B65     		str	r3, [r7, #84]
 3805              	.LBE29:
 761:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     }
 3806              		.loc 1 761 0
 3807 1322 23E7     		b	.L190
 3808              	.L192:
 3809              		.align	2
 3810              	.L191:
 3811 1324 00000000 		.word	e
 3812 1328 55555555 		.word	1431655765
 3813 132c 00000000 		.word	d
 3814 1330 55550055 		.word	1426085205
 3815 1334 00000000 		.word	ship_defn
 3816 1338 00000000 		.word	bullet_defn
 3817 133c 00000000 		.word	laser_defn
 3818 1340 00000000 		.word	enemy_defn
 3819 1344 14010000 		.word	.LC1
 3820 1348 1C010000 		.word	.LC2
 3821 134c C0440000 		.word	entities
 3822 1350 C0560000 		.word	num_entities
 3823              		.cfi_endproc
 3824              	.LFE36:
 3826              		.bss
 3827              		.align	2
 3828              	id_counter.4410:
 3829 56c8 00000000 		.space	4
 3830              		.text
 3831              	.Letext0:
