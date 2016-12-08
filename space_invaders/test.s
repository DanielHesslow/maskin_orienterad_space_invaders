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
 1727              		.bss
 1728              		.align	2
 1729              	sprites:
 1730 0400 00000000 		.space	16576
 1730      00000000 
 1730      00000000 
 1730      00000000 
 1730      00000000 
 1731              		.align	2
 1732              	entities:
 1733 44c0 00000000 		.space	4608
 1733      00000000 
 1733      00000000 
 1733      00000000 
 1733      00000000 
 1734              		.align	2
 1735              	num_entities:
 1736 56c0 00000000 		.space	4
 1737              		.align	2
 1738              	num_sprites:
 1739 56c4 00000000 		.space	4
 1740              		.text
 1741 08aa C046     		.align	2
 1742              		.global	make_entity
 1743              		.code	16
 1744              		.thumb_func
 1746              	make_entity:
 1747              	.LFB22:
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
 397:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** static Sprite sprites[16];
 398:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** static Entity entities[128];
 399:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** static int num_entities=0;
 400:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** static num_sprites = 0;
 401:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 402:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** int make_entity(Sprite *sprite, EntityType type, Vec2 pos, Vec2 velocity)
 403:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 1748              		.loc 1 403 0
 1749              		.cfi_startproc
 1750 08ac 90B5     		push	{r4, r7, lr}
 1751              		.cfi_def_cfa_offset 12
 1752              		.cfi_offset 4, -12
 1753              		.cfi_offset 7, -8
 1754              		.cfi_offset 14, -4
 1755 08ae 8FB0     		sub	sp, sp, #60
 1756              		.cfi_def_cfa_offset 72
 1757 08b0 00AF     		add	r7, sp, #0
 1758              		.cfi_def_cfa_register 7
 1759 08b2 F860     		str	r0, [r7, #12]
 1760 08b4 0800     		movs	r0, r1
 1761 08b6 3900     		movs	r1, r7
 1762 08b8 0A60     		str	r2, [r1]
 1763 08ba 4B60     		str	r3, [r1, #4]
 1764 08bc 0B23     		movs	r3, #11
 1765 08be FB18     		adds	r3, r7, r3
 1766 08c0 021C     		adds	r2, r0, #0
 1767 08c2 1A70     		strb	r2, [r3]
 404:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	static id_counter = 0;
 405:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	Entity *ret = &entities[num_entities++];
 1768              		.loc 1 405 0
 1769 08c4 204B     		ldr	r3, .L81
 1770 08c6 1A68     		ldr	r2, [r3]
 1771 08c8 511C     		adds	r1, r2, #1
 1772 08ca 1F4B     		ldr	r3, .L81
 1773 08cc 1960     		str	r1, [r3]
 1774 08ce 1300     		movs	r3, r2
 1775 08d0 DB00     		lsls	r3, r3, #3
 1776 08d2 9B18     		adds	r3, r3, r2
 1777 08d4 9B00     		lsls	r3, r3, #2
 1778 08d6 1D4A     		ldr	r2, .L81+4
 1779 08d8 9B18     		adds	r3, r3, r2
 1780 08da 7B63     		str	r3, [r7, #52]
 406:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	Entity zeroed = {};
 1781              		.loc 1 406 0
 1782 08dc 1023     		movs	r3, #16
 1783 08de FB18     		adds	r3, r7, r3
 1784 08e0 1800     		movs	r0, r3
 1785 08e2 2423     		movs	r3, #36
 1786 08e4 1A00     		movs	r2, r3
 1787 08e6 0021     		movs	r1, #0
 1788 08e8 FFF7FEFF 		bl	memset
 407:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     *ret = zeroed;
 1789              		.loc 1 407 0
 1790 08ec 7B6B     		ldr	r3, [r7, #52]
 1791 08ee 1022     		movs	r2, #16
 1792 08f0 BA18     		adds	r2, r7, r2
 1793 08f2 13CA     		ldmia	r2!, {r0, r1, r4}
 1794 08f4 13C3     		stmia	r3!, {r0, r1, r4}
 1795 08f6 13CA     		ldmia	r2!, {r0, r1, r4}
 1796 08f8 13C3     		stmia	r3!, {r0, r1, r4}
 1797 08fa 13CA     		ldmia	r2!, {r0, r1, r4}
 1798 08fc 13C3     		stmia	r3!, {r0, r1, r4}
 408:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ret->sprite = sprite;
 1799              		.loc 1 408 0
 1800 08fe 7B6B     		ldr	r3, [r7, #52]
 1801 0900 FA68     		ldr	r2, [r7, #12]
 1802 0902 1A60     		str	r2, [r3]
 409:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	ret->id = id_counter++;
 1803              		.loc 1 409 0
 1804 0904 124B     		ldr	r3, .L81+8
 1805 0906 1A68     		ldr	r2, [r3]
 1806 0908 511C     		adds	r1, r2, #1
 1807 090a 114B     		ldr	r3, .L81+8
 1808 090c 1960     		str	r1, [r3]
 1809 090e 7B6B     		ldr	r3, [r7, #52]
 1810 0910 5A60     		str	r2, [r3, #4]
 410:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     ret->pos = pos;
 1811              		.loc 1 410 0
 1812 0912 7B6B     		ldr	r3, [r7, #52]
 1813 0914 3A00     		movs	r2, r7
 1814 0916 0833     		adds	r3, r3, #8
 1815 0918 03CA     		ldmia	r2!, {r0, r1}
 1816 091a 03C3     		stmia	r3!, {r0, r1}
 411:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     ret->velocity = velocity;
 1817              		.loc 1 411 0
 1818 091c 7B6B     		ldr	r3, [r7, #52]
 1819 091e 4022     		movs	r2, #64
 1820 0920 0821     		movs	r1, #8
 1821 0922 8C46     		mov	ip, r1
 1822 0924 BC44     		add	ip, ip, r7
 1823 0926 6244     		add	r2, r2, ip
 1824 0928 1033     		adds	r3, r3, #16
 1825 092a 03CA     		ldmia	r2!, {r0, r1}
 1826 092c 03C3     		stmia	r3!, {r0, r1}
 412:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     ret->type = type;
 1827              		.loc 1 412 0
 1828 092e 7B6B     		ldr	r3, [r7, #52]
 1829 0930 0B22     		movs	r2, #11
 1830 0932 BA18     		adds	r2, r7, r2
 1831 0934 2021     		movs	r1, #32
 1832 0936 1278     		ldrb	r2, [r2]
 1833 0938 5A54     		strb	r2, [r3, r1]
 413:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	return ret->id;
 1834              		.loc 1 413 0
 1835 093a 7B6B     		ldr	r3, [r7, #52]
 1836 093c 5B68     		ldr	r3, [r3, #4]
 414:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 1837              		.loc 1 414 0
 1838 093e 1800     		movs	r0, r3
 1839 0940 BD46     		mov	sp, r7
 1840 0942 0FB0     		add	sp, sp, #60
 1841              		@ sp needed
 1842 0944 90BD     		pop	{r4, r7, pc}
 1843              	.L82:
 1844 0946 C046     		.align	2
 1845              	.L81:
 1846 0948 C0560000 		.word	num_entities
 1847 094c C0440000 		.word	entities
 1848 0950 C8560000 		.word	id_counter.4357
 1849              		.cfi_endproc
 1850              	.LFE22:
 1852              		.align	2
 1853              		.global	blit_sprite
 1854              		.code	16
 1855              		.thumb_func
 1857              	blit_sprite:
 1858              	.LFB23:
 415:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 416:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 417:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void blit_sprite(Sprite *sprite, int x, int y, int frame)
 418:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 1859              		.loc 1 418 0
 1860              		.cfi_startproc
 1861 0954 80B5     		push	{r7, lr}
 1862              		.cfi_def_cfa_offset 8
 1863              		.cfi_offset 7, -8
 1864              		.cfi_offset 14, -4
 1865 0956 88B0     		sub	sp, sp, #32
 1866              		.cfi_def_cfa_offset 40
 1867 0958 00AF     		add	r7, sp, #0
 1868              		.cfi_def_cfa_register 7
 1869 095a F860     		str	r0, [r7, #12]
 1870 095c B960     		str	r1, [r7, #8]
 1871 095e 7A60     		str	r2, [r7, #4]
 1872 0960 3B60     		str	r3, [r7]
 1873              	.LBB12:
 419:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int x_ = 0; x_ < sprite->w; x_++)
 1874              		.loc 1 419 0
 1875 0962 0023     		movs	r3, #0
 1876 0964 FB61     		str	r3, [r7, #28]
 1877 0966 2AE0     		b	.L84
 1878              	.L88:
 1879              	.LBB13:
 420:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 421:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		for (int y_ = 0; y_ < sprite->h; y_++)
 1880              		.loc 1 421 0
 1881 0968 0023     		movs	r3, #0
 1882 096a BB61     		str	r3, [r7, #24]
 1883 096c 1EE0     		b	.L85
 1884              	.L87:
 1885              	.LBB14:
 422:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 423:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			bool set = sprite->sprite[frame][x_][y_];
 1886              		.loc 1 423 0
 1887 096e 1723     		movs	r3, #23
 1888 0970 FB18     		adds	r3, r7, r3
 1889 0972 F968     		ldr	r1, [r7, #12]
 1890 0974 3A68     		ldr	r2, [r7]
 1891 0976 1001     		lsls	r0, r2, #4
 1892 0978 FA69     		ldr	r2, [r7, #28]
 1893 097a 8218     		adds	r2, r0, r2
 1894 097c 1201     		lsls	r2, r2, #4
 1895 097e 8918     		adds	r1, r1, r2
 1896 0980 BA69     		ldr	r2, [r7, #24]
 1897 0982 8A18     		adds	r2, r1, r2
 1898 0984 1278     		ldrb	r2, [r2]
 1899 0986 1A70     		strb	r2, [r3]
 424:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			if (set)
 1900              		.loc 1 424 0
 1901 0988 1723     		movs	r3, #23
 1902 098a FB18     		adds	r3, r7, r3
 1903 098c 1B78     		ldrb	r3, [r3]
 1904 098e 002B     		cmp	r3, #0
 1905 0990 09D0     		beq	.L86
 425:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 				write_px(x + x_, y + y_, true);
 1906              		.loc 1 425 0
 1907 0992 BA68     		ldr	r2, [r7, #8]
 1908 0994 FB69     		ldr	r3, [r7, #28]
 1909 0996 D018     		adds	r0, r2, r3
 1910 0998 7A68     		ldr	r2, [r7, #4]
 1911 099a BB69     		ldr	r3, [r7, #24]
 1912 099c D318     		adds	r3, r2, r3
 1913 099e 0122     		movs	r2, #1
 1914 09a0 1900     		movs	r1, r3
 1915 09a2 FFF7FEFF 		bl	write_px
 1916              	.L86:
 1917              	.LBE14:
 421:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 1918              		.loc 1 421 0 discriminator 2
 1919 09a6 BB69     		ldr	r3, [r7, #24]
 1920 09a8 0133     		adds	r3, r3, #1
 1921 09aa BB61     		str	r3, [r7, #24]
 1922              	.L85:
 421:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 1923              		.loc 1 421 0 is_stmt 0 discriminator 1
 1924 09ac FB68     		ldr	r3, [r7, #12]
 1925 09ae 094A     		ldr	r2, .L89
 1926 09b0 9A58     		ldr	r2, [r3, r2]
 1927 09b2 BB69     		ldr	r3, [r7, #24]
 1928 09b4 9A42     		cmp	r2, r3
 1929 09b6 DADC     		bgt	.L87
 1930              	.LBE13:
 419:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 1931              		.loc 1 419 0 is_stmt 1 discriminator 2
 1932 09b8 FB69     		ldr	r3, [r7, #28]
 1933 09ba 0133     		adds	r3, r3, #1
 1934 09bc FB61     		str	r3, [r7, #28]
 1935              	.L84:
 419:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 1936              		.loc 1 419 0 is_stmt 0 discriminator 1
 1937 09be FA68     		ldr	r2, [r7, #12]
 1938 09c0 8123     		movs	r3, #129
 1939 09c2 DB00     		lsls	r3, r3, #3
 1940 09c4 D258     		ldr	r2, [r2, r3]
 1941 09c6 FB69     		ldr	r3, [r7, #28]
 1942 09c8 9A42     		cmp	r2, r3
 1943 09ca CDDC     		bgt	.L88
 1944              	.LBE12:
 426:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		}
 427:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 428:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 1945              		.loc 1 428 0 is_stmt 1
 1946 09cc C046     		nop
 1947 09ce BD46     		mov	sp, r7
 1948 09d0 08B0     		add	sp, sp, #32
 1949              		@ sp needed
 1950 09d2 80BD     		pop	{r7, pc}
 1951              	.L90:
 1952              		.align	2
 1953              	.L89:
 1954 09d4 04040000 		.word	1028
 1955              		.cfi_endproc
 1956              	.LFE23:
 1958              		.align	2
 1959              		.global	clear_sprite
 1960              		.code	16
 1961              		.thumb_func
 1963              	clear_sprite:
 1964              	.LFB24:
 429:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 430:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void clear_sprite(Sprite *sprite, int x, int y, int frame)
 431:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 1965              		.loc 1 431 0
 1966              		.cfi_startproc
 1967 09d8 80B5     		push	{r7, lr}
 1968              		.cfi_def_cfa_offset 8
 1969              		.cfi_offset 7, -8
 1970              		.cfi_offset 14, -4
 1971 09da 88B0     		sub	sp, sp, #32
 1972              		.cfi_def_cfa_offset 40
 1973 09dc 00AF     		add	r7, sp, #0
 1974              		.cfi_def_cfa_register 7
 1975 09de F860     		str	r0, [r7, #12]
 1976 09e0 B960     		str	r1, [r7, #8]
 1977 09e2 7A60     		str	r2, [r7, #4]
 1978 09e4 3B60     		str	r3, [r7]
 1979              	.LBB15:
 432:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int x_ = 0; x_ < sprite->w; x_++)
 1980              		.loc 1 432 0
 1981 09e6 0023     		movs	r3, #0
 1982 09e8 FB61     		str	r3, [r7, #28]
 1983 09ea 2AE0     		b	.L92
 1984              	.L96:
 1985              	.LBB16:
 433:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 434:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		for (int y_ = 0; y_ < sprite->h; y_++)
 1986              		.loc 1 434 0
 1987 09ec 0023     		movs	r3, #0
 1988 09ee BB61     		str	r3, [r7, #24]
 1989 09f0 1EE0     		b	.L93
 1990              	.L95:
 1991              	.LBB17:
 435:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 436:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			bool set = sprite->sprite[frame][x_][y_];
 1992              		.loc 1 436 0
 1993 09f2 1723     		movs	r3, #23
 1994 09f4 FB18     		adds	r3, r7, r3
 1995 09f6 F968     		ldr	r1, [r7, #12]
 1996 09f8 3A68     		ldr	r2, [r7]
 1997 09fa 1001     		lsls	r0, r2, #4
 1998 09fc FA69     		ldr	r2, [r7, #28]
 1999 09fe 8218     		adds	r2, r0, r2
 2000 0a00 1201     		lsls	r2, r2, #4
 2001 0a02 8918     		adds	r1, r1, r2
 2002 0a04 BA69     		ldr	r2, [r7, #24]
 2003 0a06 8A18     		adds	r2, r1, r2
 2004 0a08 1278     		ldrb	r2, [r2]
 2005 0a0a 1A70     		strb	r2, [r3]
 437:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			if (set)
 2006              		.loc 1 437 0
 2007 0a0c 1723     		movs	r3, #23
 2008 0a0e FB18     		adds	r3, r7, r3
 2009 0a10 1B78     		ldrb	r3, [r3]
 2010 0a12 002B     		cmp	r3, #0
 2011 0a14 09D0     		beq	.L94
 438:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 				write_px(x + x_, y + y_, false);
 2012              		.loc 1 438 0
 2013 0a16 BA68     		ldr	r2, [r7, #8]
 2014 0a18 FB69     		ldr	r3, [r7, #28]
 2015 0a1a D018     		adds	r0, r2, r3
 2016 0a1c 7A68     		ldr	r2, [r7, #4]
 2017 0a1e BB69     		ldr	r3, [r7, #24]
 2018 0a20 D318     		adds	r3, r2, r3
 2019 0a22 0022     		movs	r2, #0
 2020 0a24 1900     		movs	r1, r3
 2021 0a26 FFF7FEFF 		bl	write_px
 2022              	.L94:
 2023              	.LBE17:
 434:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 2024              		.loc 1 434 0 discriminator 2
 2025 0a2a BB69     		ldr	r3, [r7, #24]
 2026 0a2c 0133     		adds	r3, r3, #1
 2027 0a2e BB61     		str	r3, [r7, #24]
 2028              	.L93:
 434:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 2029              		.loc 1 434 0 is_stmt 0 discriminator 1
 2030 0a30 FB68     		ldr	r3, [r7, #12]
 2031 0a32 094A     		ldr	r2, .L97
 2032 0a34 9A58     		ldr	r2, [r3, r2]
 2033 0a36 BB69     		ldr	r3, [r7, #24]
 2034 0a38 9A42     		cmp	r2, r3
 2035 0a3a DADC     		bgt	.L95
 2036              	.LBE16:
 432:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 2037              		.loc 1 432 0 is_stmt 1 discriminator 2
 2038 0a3c FB69     		ldr	r3, [r7, #28]
 2039 0a3e 0133     		adds	r3, r3, #1
 2040 0a40 FB61     		str	r3, [r7, #28]
 2041              	.L92:
 432:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 2042              		.loc 1 432 0 is_stmt 0 discriminator 1
 2043 0a42 FA68     		ldr	r2, [r7, #12]
 2044 0a44 8123     		movs	r3, #129
 2045 0a46 DB00     		lsls	r3, r3, #3
 2046 0a48 D258     		ldr	r2, [r2, r3]
 2047 0a4a FB69     		ldr	r3, [r7, #28]
 2048 0a4c 9A42     		cmp	r2, r3
 2049 0a4e CDDC     		bgt	.L96
 2050              	.LBE15:
 439:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		}
 440:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 441:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2051              		.loc 1 441 0 is_stmt 1
 2052 0a50 C046     		nop
 2053 0a52 BD46     		mov	sp, r7
 2054 0a54 08B0     		add	sp, sp, #32
 2055              		@ sp needed
 2056 0a56 80BD     		pop	{r7, pc}
 2057              	.L98:
 2058              		.align	2
 2059              	.L97:
 2060 0a58 04040000 		.word	1028
 2061              		.cfi_endproc
 2062              	.LFE24:
 2064              		.align	2
 2065              		.global	make_sprite
 2066              		.code	16
 2067              		.thumb_func
 2069              	make_sprite:
 2070              	.LFB25:
 442:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 443:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** Sprite *make_sprite(char *sprite, int w, int h, int num_frames)
 444:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2071              		.loc 1 444 0
 2072              		.cfi_startproc
 2073 0a5c 90B5     		push	{r4, r7, lr}
 2074              		.cfi_def_cfa_offset 12
 2075              		.cfi_offset 4, -12
 2076              		.cfi_offset 7, -8
 2077              		.cfi_offset 14, -4
 2078 0a5e 89B0     		sub	sp, sp, #36
 2079              		.cfi_def_cfa_offset 48
 2080 0a60 00AF     		add	r7, sp, #0
 2081              		.cfi_def_cfa_register 7
 2082 0a62 F860     		str	r0, [r7, #12]
 2083 0a64 B960     		str	r1, [r7, #8]
 2084 0a66 7A60     		str	r2, [r7, #4]
 2085 0a68 3B60     		str	r3, [r7]
 445:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	Sprite *ret = &sprites[num_sprites++];
 2086              		.loc 1 445 0
 2087 0a6a 284B     		ldr	r3, .L107
 2088 0a6c 1B68     		ldr	r3, [r3]
 2089 0a6e 591C     		adds	r1, r3, #1
 2090 0a70 264A     		ldr	r2, .L107
 2091 0a72 1160     		str	r1, [r2]
 2092 0a74 264A     		ldr	r2, .L107+4
 2093 0a76 5A43     		muls	r2, r3
 2094 0a78 264B     		ldr	r3, .L107+8
 2095 0a7a D318     		adds	r3, r2, r3
 2096 0a7c 3B61     		str	r3, [r7, #16]
 446:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     ret->num_frames = num_frames;
 2097              		.loc 1 446 0
 2098 0a7e 3A69     		ldr	r2, [r7, #16]
 2099 0a80 8023     		movs	r3, #128
 2100 0a82 DB00     		lsls	r3, r3, #3
 2101 0a84 3968     		ldr	r1, [r7]
 2102 0a86 D150     		str	r1, [r2, r3]
 447:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     ret->w = w;
 2103              		.loc 1 447 0
 2104 0a88 3A69     		ldr	r2, [r7, #16]
 2105 0a8a 8123     		movs	r3, #129
 2106 0a8c DB00     		lsls	r3, r3, #3
 2107 0a8e B968     		ldr	r1, [r7, #8]
 2108 0a90 D150     		str	r1, [r2, r3]
 448:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     ret->h = h;
 2109              		.loc 1 448 0
 2110 0a92 3B69     		ldr	r3, [r7, #16]
 2111 0a94 2049     		ldr	r1, .L107+12
 2112 0a96 7A68     		ldr	r2, [r7, #4]
 2113 0a98 5A50     		str	r2, [r3, r1]
 2114              	.LBB18:
 449:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int frame = 0; frame < num_frames; frame++)
 2115              		.loc 1 449 0
 2116 0a9a 0023     		movs	r3, #0
 2117 0a9c FB61     		str	r3, [r7, #28]
 2118 0a9e 2CE0     		b	.L100
 2119              	.L105:
 2120              	.LBB19:
 450:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     {
 451:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         for (int y = 0; y < h; y++)
 2121              		.loc 1 451 0
 2122 0aa0 0023     		movs	r3, #0
 2123 0aa2 BB61     		str	r3, [r7, #24]
 2124 0aa4 22E0     		b	.L101
 2125              	.L104:
 2126              	.LBB20:
 452:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         {
 453:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             for (int x = 0; x < w; x++)
 2127              		.loc 1 453 0
 2128 0aa6 0023     		movs	r3, #0
 2129 0aa8 7B61     		str	r3, [r7, #20]
 2130 0aaa 18E0     		b	.L102
 2131              	.L103:
 454:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             {
 455:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		
 456:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 				ret->sprite[frame][x][h-y-1] = (*(sprite++)) == '#';
 2132              		.loc 1 456 0 discriminator 3
 2133 0aac 7A68     		ldr	r2, [r7, #4]
 2134 0aae BB69     		ldr	r3, [r7, #24]
 2135 0ab0 D31A     		subs	r3, r2, r3
 2136 0ab2 5A1E     		subs	r2, r3, #1
 2137 0ab4 FB68     		ldr	r3, [r7, #12]
 2138 0ab6 591C     		adds	r1, r3, #1
 2139 0ab8 F960     		str	r1, [r7, #12]
 2140 0aba 1B78     		ldrb	r3, [r3]
 2141 0abc 233B     		subs	r3, r3, #35
 2142 0abe 5942     		rsbs	r1, r3, #0
 2143 0ac0 4B41     		adcs	r3, r3, r1
 2144 0ac2 DBB2     		uxtb	r3, r3
 2145 0ac4 1C00     		movs	r4, r3
 2146 0ac6 3969     		ldr	r1, [r7, #16]
 2147 0ac8 FB69     		ldr	r3, [r7, #28]
 2148 0aca 1801     		lsls	r0, r3, #4
 2149 0acc 7B69     		ldr	r3, [r7, #20]
 2150 0ace C318     		adds	r3, r0, r3
 2151 0ad0 1B01     		lsls	r3, r3, #4
 2152 0ad2 CB18     		adds	r3, r1, r3
 2153 0ad4 211C     		adds	r1, r4, #0
 2154 0ad6 9954     		strb	r1, [r3, r2]
 453:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             {
 2155              		.loc 1 453 0 discriminator 3
 2156 0ad8 7B69     		ldr	r3, [r7, #20]
 2157 0ada 0133     		adds	r3, r3, #1
 2158 0adc 7B61     		str	r3, [r7, #20]
 2159              	.L102:
 453:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             {
 2160              		.loc 1 453 0 is_stmt 0 discriminator 1
 2161 0ade 7A69     		ldr	r2, [r7, #20]
 2162 0ae0 BB68     		ldr	r3, [r7, #8]
 2163 0ae2 9A42     		cmp	r2, r3
 2164 0ae4 E2DB     		blt	.L103
 2165              	.LBE20:
 451:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         {
 2166              		.loc 1 451 0 is_stmt 1 discriminator 2
 2167 0ae6 BB69     		ldr	r3, [r7, #24]
 2168 0ae8 0133     		adds	r3, r3, #1
 2169 0aea BB61     		str	r3, [r7, #24]
 2170              	.L101:
 451:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         {
 2171              		.loc 1 451 0 is_stmt 0 discriminator 1
 2172 0aec BA69     		ldr	r2, [r7, #24]
 2173 0aee 7B68     		ldr	r3, [r7, #4]
 2174 0af0 9A42     		cmp	r2, r3
 2175 0af2 D8DB     		blt	.L104
 2176              	.LBE19:
 449:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     {
 2177              		.loc 1 449 0 is_stmt 1 discriminator 2
 2178 0af4 FB69     		ldr	r3, [r7, #28]
 2179 0af6 0133     		adds	r3, r3, #1
 2180 0af8 FB61     		str	r3, [r7, #28]
 2181              	.L100:
 449:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     {
 2182              		.loc 1 449 0 is_stmt 0 discriminator 1
 2183 0afa FA69     		ldr	r2, [r7, #28]
 2184 0afc 3B68     		ldr	r3, [r7]
 2185 0afe 9A42     		cmp	r2, r3
 2186 0b00 CEDB     		blt	.L105
 2187              	.LBE18:
 457:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			}
 458:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		}
 459:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 460:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 461:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	return ret;
 2188              		.loc 1 461 0 is_stmt 1
 2189 0b02 3B69     		ldr	r3, [r7, #16]
 462:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2190              		.loc 1 462 0
 2191 0b04 1800     		movs	r0, r3
 2192 0b06 BD46     		mov	sp, r7
 2193 0b08 09B0     		add	sp, sp, #36
 2194              		@ sp needed
 2195 0b0a 90BD     		pop	{r4, r7, pc}
 2196              	.L108:
 2197              		.align	2
 2198              	.L107:
 2199 0b0c C4560000 		.word	num_sprites
 2200 0b10 0C040000 		.word	1036
 2201 0b14 00040000 		.word	sprites
 2202 0b18 04040000 		.word	1028
 2203              		.cfi_endproc
 2204              	.LFE25:
 2206              		.align	2
 2207              		.global	render
 2208              		.code	16
 2209              		.thumb_func
 2211              	render:
 2212              	.LFB26:
 463:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 464:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void render()
 465:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2213              		.loc 1 465 0
 2214              		.cfi_startproc
 2215 0b1c B0B5     		push	{r4, r5, r7, lr}
 2216              		.cfi_def_cfa_offset 16
 2217              		.cfi_offset 4, -16
 2218              		.cfi_offset 5, -12
 2219              		.cfi_offset 7, -8
 2220              		.cfi_offset 14, -4
 2221 0b1e 82B0     		sub	sp, sp, #8
 2222              		.cfi_def_cfa_offset 24
 2223 0b20 00AF     		add	r7, sp, #0
 2224              		.cfi_def_cfa_register 7
 2225              	.LBB21:
 466:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2226              		.loc 1 466 0
 2227 0b22 0023     		movs	r3, #0
 2228 0b24 7B60     		str	r3, [r7, #4]
 2229 0b26 3DE0     		b	.L110
 2230              	.L113:
 467:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 468:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		//if(force || entities[i].velocity.x != 0 || entities[i].velocity.y != 0)
 469:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		blit_sprite(entities[i].sprite, 
 2231              		.loc 1 469 0 discriminator 3
 2232 0b28 4749     		ldr	r1, .L118
 2233 0b2a 7A68     		ldr	r2, [r7, #4]
 2234 0b2c 1300     		movs	r3, r2
 2235 0b2e DB00     		lsls	r3, r3, #3
 2236 0b30 9B18     		adds	r3, r3, r2
 2237 0b32 9B00     		lsls	r3, r3, #2
 2238 0b34 5C58     		ldr	r4, [r3, r1]
 470:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             entities[i].pos.x-entities[i].sprite->w/2,
 2239              		.loc 1 470 0 discriminator 3
 2240 0b36 4449     		ldr	r1, .L118
 2241 0b38 7A68     		ldr	r2, [r7, #4]
 2242 0b3a 1300     		movs	r3, r2
 2243 0b3c DB00     		lsls	r3, r3, #3
 2244 0b3e 9B18     		adds	r3, r3, r2
 2245 0b40 9B00     		lsls	r3, r3, #2
 2246 0b42 CB18     		adds	r3, r1, r3
 2247 0b44 0833     		adds	r3, r3, #8
 2248 0b46 1968     		ldr	r1, [r3]
 2249 0b48 3F48     		ldr	r0, .L118
 2250 0b4a 7A68     		ldr	r2, [r7, #4]
 2251 0b4c 1300     		movs	r3, r2
 2252 0b4e DB00     		lsls	r3, r3, #3
 2253 0b50 9B18     		adds	r3, r3, r2
 2254 0b52 9B00     		lsls	r3, r3, #2
 2255 0b54 1A58     		ldr	r2, [r3, r0]
 2256 0b56 8123     		movs	r3, #129
 2257 0b58 DB00     		lsls	r3, r3, #3
 2258 0b5a D358     		ldr	r3, [r2, r3]
 2259 0b5c 002B     		cmp	r3, #0
 2260 0b5e 00DA     		bge	.L111
 2261 0b60 0133     		adds	r3, r3, #1
 2262              	.L111:
 2263 0b62 5B10     		asrs	r3, r3, #1
 469:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             entities[i].pos.x-entities[i].sprite->w/2,
 2264              		.loc 1 469 0 discriminator 3
 2265 0b64 CD1A     		subs	r5, r1, r3
 471:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             entities[i].pos.y-entities[i].sprite->h/2, 0);
 2266              		.loc 1 471 0 discriminator 3
 2267 0b66 3849     		ldr	r1, .L118
 2268 0b68 7A68     		ldr	r2, [r7, #4]
 2269 0b6a 1300     		movs	r3, r2
 2270 0b6c DB00     		lsls	r3, r3, #3
 2271 0b6e 9B18     		adds	r3, r3, r2
 2272 0b70 9B00     		lsls	r3, r3, #2
 2273 0b72 CB18     		adds	r3, r1, r3
 2274 0b74 0C33     		adds	r3, r3, #12
 2275 0b76 1968     		ldr	r1, [r3]
 2276 0b78 3348     		ldr	r0, .L118
 2277 0b7a 7A68     		ldr	r2, [r7, #4]
 2278 0b7c 1300     		movs	r3, r2
 2279 0b7e DB00     		lsls	r3, r3, #3
 2280 0b80 9B18     		adds	r3, r3, r2
 2281 0b82 9B00     		lsls	r3, r3, #2
 2282 0b84 1B58     		ldr	r3, [r3, r0]
 2283 0b86 314A     		ldr	r2, .L118+4
 2284 0b88 9B58     		ldr	r3, [r3, r2]
 2285 0b8a 002B     		cmp	r3, #0
 2286 0b8c 00DA     		bge	.L112
 2287 0b8e 0133     		adds	r3, r3, #1
 2288              	.L112:
 2289 0b90 5B10     		asrs	r3, r3, #1
 469:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             entities[i].pos.x-entities[i].sprite->w/2,
 2290              		.loc 1 469 0 discriminator 3
 2291 0b92 CA1A     		subs	r2, r1, r3
 2292 0b94 0023     		movs	r3, #0
 2293 0b96 2900     		movs	r1, r5
 2294 0b98 2000     		movs	r0, r4
 2295 0b9a FFF7FEFF 		bl	blit_sprite
 466:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 2296              		.loc 1 466 0 discriminator 3
 2297 0b9e 7B68     		ldr	r3, [r7, #4]
 2298 0ba0 0133     		adds	r3, r3, #1
 2299 0ba2 7B60     		str	r3, [r7, #4]
 2300              	.L110:
 466:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 2301              		.loc 1 466 0 is_stmt 0 discriminator 1
 2302 0ba4 2A4B     		ldr	r3, .L118+8
 2303 0ba6 1B68     		ldr	r3, [r3]
 2304 0ba8 7A68     		ldr	r2, [r7, #4]
 2305 0baa 9A42     		cmp	r2, r3
 2306 0bac BCDB     		blt	.L113
 2307              	.LBE21:
 472:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 473:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	flush_screen();
 2308              		.loc 1 473 0 is_stmt 1
 2309 0bae FFF7FEFF 		bl	flush_screen
 2310              	.LBB22:
 474:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2311              		.loc 1 474 0
 2312 0bb2 0023     		movs	r3, #0
 2313 0bb4 3B60     		str	r3, [r7]
 2314 0bb6 3DE0     		b	.L114
 2315              	.L117:
 475:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 476:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		//if(force || entities[i].velocity.x != 0 || entities[i].velocity.y != 0)
 477:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		clear_sprite(entities[i].sprite, 
 2316              		.loc 1 477 0 discriminator 3
 2317 0bb8 2349     		ldr	r1, .L118
 2318 0bba 3A68     		ldr	r2, [r7]
 2319 0bbc 1300     		movs	r3, r2
 2320 0bbe DB00     		lsls	r3, r3, #3
 2321 0bc0 9B18     		adds	r3, r3, r2
 2322 0bc2 9B00     		lsls	r3, r3, #2
 2323 0bc4 5C58     		ldr	r4, [r3, r1]
 478:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             entities[i].pos.x-entities[i].sprite->w/2, 
 2324              		.loc 1 478 0 discriminator 3
 2325 0bc6 2049     		ldr	r1, .L118
 2326 0bc8 3A68     		ldr	r2, [r7]
 2327 0bca 1300     		movs	r3, r2
 2328 0bcc DB00     		lsls	r3, r3, #3
 2329 0bce 9B18     		adds	r3, r3, r2
 2330 0bd0 9B00     		lsls	r3, r3, #2
 2331 0bd2 CB18     		adds	r3, r1, r3
 2332 0bd4 0833     		adds	r3, r3, #8
 2333 0bd6 1968     		ldr	r1, [r3]
 2334 0bd8 1B48     		ldr	r0, .L118
 2335 0bda 3A68     		ldr	r2, [r7]
 2336 0bdc 1300     		movs	r3, r2
 2337 0bde DB00     		lsls	r3, r3, #3
 2338 0be0 9B18     		adds	r3, r3, r2
 2339 0be2 9B00     		lsls	r3, r3, #2
 2340 0be4 1A58     		ldr	r2, [r3, r0]
 2341 0be6 8123     		movs	r3, #129
 2342 0be8 DB00     		lsls	r3, r3, #3
 2343 0bea D358     		ldr	r3, [r2, r3]
 2344 0bec 002B     		cmp	r3, #0
 2345 0bee 00DA     		bge	.L115
 2346 0bf0 0133     		adds	r3, r3, #1
 2347              	.L115:
 2348 0bf2 5B10     		asrs	r3, r3, #1
 477:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             entities[i].pos.x-entities[i].sprite->w/2, 
 2349              		.loc 1 477 0 discriminator 3
 2350 0bf4 CD1A     		subs	r5, r1, r3
 479:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             entities[i].pos.y-entities[i].sprite->h/2, 0);
 2351              		.loc 1 479 0 discriminator 3
 2352 0bf6 1449     		ldr	r1, .L118
 2353 0bf8 3A68     		ldr	r2, [r7]
 2354 0bfa 1300     		movs	r3, r2
 2355 0bfc DB00     		lsls	r3, r3, #3
 2356 0bfe 9B18     		adds	r3, r3, r2
 2357 0c00 9B00     		lsls	r3, r3, #2
 2358 0c02 CB18     		adds	r3, r1, r3
 2359 0c04 0C33     		adds	r3, r3, #12
 2360 0c06 1968     		ldr	r1, [r3]
 2361 0c08 0F48     		ldr	r0, .L118
 2362 0c0a 3A68     		ldr	r2, [r7]
 2363 0c0c 1300     		movs	r3, r2
 2364 0c0e DB00     		lsls	r3, r3, #3
 2365 0c10 9B18     		adds	r3, r3, r2
 2366 0c12 9B00     		lsls	r3, r3, #2
 2367 0c14 1B58     		ldr	r3, [r3, r0]
 2368 0c16 0D4A     		ldr	r2, .L118+4
 2369 0c18 9B58     		ldr	r3, [r3, r2]
 2370 0c1a 002B     		cmp	r3, #0
 2371 0c1c 00DA     		bge	.L116
 2372 0c1e 0133     		adds	r3, r3, #1
 2373              	.L116:
 2374 0c20 5B10     		asrs	r3, r3, #1
 477:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             entities[i].pos.x-entities[i].sprite->w/2, 
 2375              		.loc 1 477 0 discriminator 3
 2376 0c22 CA1A     		subs	r2, r1, r3
 2377 0c24 0023     		movs	r3, #0
 2378 0c26 2900     		movs	r1, r5
 2379 0c28 2000     		movs	r0, r4
 2380 0c2a FFF7FEFF 		bl	clear_sprite
 474:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 2381              		.loc 1 474 0 discriminator 3
 2382 0c2e 3B68     		ldr	r3, [r7]
 2383 0c30 0133     		adds	r3, r3, #1
 2384 0c32 3B60     		str	r3, [r7]
 2385              	.L114:
 474:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 2386              		.loc 1 474 0 is_stmt 0 discriminator 1
 2387 0c34 064B     		ldr	r3, .L118+8
 2388 0c36 1B68     		ldr	r3, [r3]
 2389 0c38 3A68     		ldr	r2, [r7]
 2390 0c3a 9A42     		cmp	r2, r3
 2391 0c3c BCDB     		blt	.L117
 2392              	.LBE22:
 480:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 481:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2393              		.loc 1 481 0 is_stmt 1
 2394 0c3e C046     		nop
 2395 0c40 BD46     		mov	sp, r7
 2396 0c42 02B0     		add	sp, sp, #8
 2397              		@ sp needed
 2398 0c44 B0BD     		pop	{r4, r5, r7, pc}
 2399              	.L119:
 2400 0c46 C046     		.align	2
 2401              	.L118:
 2402 0c48 C0440000 		.word	entities
 2403 0c4c 04040000 		.word	1028
 2404 0c50 C0560000 		.word	num_entities
 2405              		.cfi_endproc
 2406              	.LFE26:
 2408              		.align	2
 2409              		.global	entity_from_id
 2410              		.code	16
 2411              		.thumb_func
 2413              	entity_from_id:
 2414              	.LFB27:
 482:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 483:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** //note will change between frames
 484:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** Entity *entity_from_id(int id)
 485:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2415              		.loc 1 485 0
 2416              		.cfi_startproc
 2417 0c54 80B5     		push	{r7, lr}
 2418              		.cfi_def_cfa_offset 8
 2419              		.cfi_offset 7, -8
 2420              		.cfi_offset 14, -4
 2421 0c56 84B0     		sub	sp, sp, #16
 2422              		.cfi_def_cfa_offset 24
 2423 0c58 00AF     		add	r7, sp, #0
 2424              		.cfi_def_cfa_register 7
 2425 0c5a 7860     		str	r0, [r7, #4]
 2426              	.LBB23:
 486:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2427              		.loc 1 486 0
 2428 0c5c 0023     		movs	r3, #0
 2429 0c5e FB60     		str	r3, [r7, #12]
 2430 0c60 16E0     		b	.L121
 2431              	.L124:
 487:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 488:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		if (entities[i].id == id)return &entities[i];
 2432              		.loc 1 488 0
 2433 0c62 1049     		ldr	r1, .L125
 2434 0c64 FA68     		ldr	r2, [r7, #12]
 2435 0c66 1300     		movs	r3, r2
 2436 0c68 DB00     		lsls	r3, r3, #3
 2437 0c6a 9B18     		adds	r3, r3, r2
 2438 0c6c 9B00     		lsls	r3, r3, #2
 2439 0c6e CB18     		adds	r3, r1, r3
 2440 0c70 0433     		adds	r3, r3, #4
 2441 0c72 1A68     		ldr	r2, [r3]
 2442 0c74 7B68     		ldr	r3, [r7, #4]
 2443 0c76 9A42     		cmp	r2, r3
 2444 0c78 07D1     		bne	.L122
 2445              		.loc 1 488 0 is_stmt 0 discriminator 1
 2446 0c7a FA68     		ldr	r2, [r7, #12]
 2447 0c7c 1300     		movs	r3, r2
 2448 0c7e DB00     		lsls	r3, r3, #3
 2449 0c80 9B18     		adds	r3, r3, r2
 2450 0c82 9B00     		lsls	r3, r3, #2
 2451 0c84 074A     		ldr	r2, .L125
 2452 0c86 9B18     		adds	r3, r3, r2
 2453 0c88 08E0     		b	.L123
 2454              	.L122:
 486:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2455              		.loc 1 486 0 is_stmt 1 discriminator 2
 2456 0c8a FB68     		ldr	r3, [r7, #12]
 2457 0c8c 0133     		adds	r3, r3, #1
 2458 0c8e FB60     		str	r3, [r7, #12]
 2459              	.L121:
 486:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2460              		.loc 1 486 0 is_stmt 0 discriminator 1
 2461 0c90 054B     		ldr	r3, .L125+4
 2462 0c92 1B68     		ldr	r3, [r3]
 2463 0c94 FA68     		ldr	r2, [r7, #12]
 2464 0c96 9A42     		cmp	r2, r3
 2465 0c98 E3DB     		blt	.L124
 2466              	.LBE23:
 489:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 490:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     return 0;
 2467              		.loc 1 490 0 is_stmt 1
 2468 0c9a 0023     		movs	r3, #0
 2469              	.L123:
 491:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2470              		.loc 1 491 0
 2471 0c9c 1800     		movs	r0, r3
 2472 0c9e BD46     		mov	sp, r7
 2473 0ca0 04B0     		add	sp, sp, #16
 2474              		@ sp needed
 2475 0ca2 80BD     		pop	{r7, pc}
 2476              	.L126:
 2477              		.align	2
 2478              	.L125:
 2479 0ca4 C0440000 		.word	entities
 2480 0ca8 C0560000 		.word	num_entities
 2481              		.cfi_endproc
 2482              	.LFE27:
 2484              		.align	2
 2485              		.global	cleanup_entities
 2486              		.code	16
 2487              		.thumb_func
 2489              	cleanup_entities:
 2490              	.LFB28:
 492:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 493:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void cleanup_entities()
 494:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2491              		.loc 1 494 0
 2492              		.cfi_startproc
 2493 0cac 90B5     		push	{r4, r7, lr}
 2494              		.cfi_def_cfa_offset 12
 2495              		.cfi_offset 4, -12
 2496              		.cfi_offset 7, -8
 2497              		.cfi_offset 14, -4
 2498 0cae 83B0     		sub	sp, sp, #12
 2499              		.cfi_def_cfa_offset 24
 2500 0cb0 00AF     		add	r7, sp, #0
 2501              		.cfi_def_cfa_register 7
 2502              	.LBB24:
 495:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2503              		.loc 1 495 0
 2504 0cb2 0023     		movs	r3, #0
 2505 0cb4 7B60     		str	r3, [r7, #4]
 2506 0cb6 27E0     		b	.L128
 2507              	.L130:
 496:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 497:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		if (entities[i].destroy) entities[i] = entities[--num_entities];
 2508              		.loc 1 497 0
 2509 0cb8 1849     		ldr	r1, .L131
 2510 0cba 7A68     		ldr	r2, [r7, #4]
 2511 0cbc 1300     		movs	r3, r2
 2512 0cbe DB00     		lsls	r3, r3, #3
 2513 0cc0 9B18     		adds	r3, r3, r2
 2514 0cc2 9B00     		lsls	r3, r3, #2
 2515 0cc4 CB18     		adds	r3, r1, r3
 2516 0cc6 1833     		adds	r3, r3, #24
 2517 0cc8 1B78     		ldrb	r3, [r3]
 2518 0cca 002B     		cmp	r3, #0
 2519 0ccc 19D0     		beq	.L129
 2520              		.loc 1 497 0 is_stmt 0 discriminator 1
 2521 0cce 144B     		ldr	r3, .L131+4
 2522 0cd0 1B68     		ldr	r3, [r3]
 2523 0cd2 5A1E     		subs	r2, r3, #1
 2524 0cd4 124B     		ldr	r3, .L131+4
 2525 0cd6 1A60     		str	r2, [r3]
 2526 0cd8 114B     		ldr	r3, .L131+4
 2527 0cda 1968     		ldr	r1, [r3]
 2528 0cdc 0F4C     		ldr	r4, .L131
 2529 0cde 7A68     		ldr	r2, [r7, #4]
 2530 0ce0 1300     		movs	r3, r2
 2531 0ce2 DB00     		lsls	r3, r3, #3
 2532 0ce4 9B18     		adds	r3, r3, r2
 2533 0ce6 9B00     		lsls	r3, r3, #2
 2534 0ce8 0C48     		ldr	r0, .L131
 2535 0cea 0A00     		movs	r2, r1
 2536 0cec D200     		lsls	r2, r2, #3
 2537 0cee 5218     		adds	r2, r2, r1
 2538 0cf0 9200     		lsls	r2, r2, #2
 2539 0cf2 E318     		adds	r3, r4, r3
 2540 0cf4 8218     		adds	r2, r0, r2
 2541 0cf6 13CA     		ldmia	r2!, {r0, r1, r4}
 2542 0cf8 13C3     		stmia	r3!, {r0, r1, r4}
 2543 0cfa 13CA     		ldmia	r2!, {r0, r1, r4}
 2544 0cfc 13C3     		stmia	r3!, {r0, r1, r4}
 2545 0cfe 13CA     		ldmia	r2!, {r0, r1, r4}
 2546 0d00 13C3     		stmia	r3!, {r0, r1, r4}
 2547              	.L129:
 495:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2548              		.loc 1 495 0 is_stmt 1 discriminator 2
 2549 0d02 7B68     		ldr	r3, [r7, #4]
 2550 0d04 0133     		adds	r3, r3, #1
 2551 0d06 7B60     		str	r3, [r7, #4]
 2552              	.L128:
 495:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2553              		.loc 1 495 0 is_stmt 0 discriminator 1
 2554 0d08 054B     		ldr	r3, .L131+4
 2555 0d0a 1B68     		ldr	r3, [r3]
 2556 0d0c 7A68     		ldr	r2, [r7, #4]
 2557 0d0e 9A42     		cmp	r2, r3
 2558 0d10 D2DB     		blt	.L130
 2559              	.LBE24:
 498:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 499:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2560              		.loc 1 499 0 is_stmt 1
 2561 0d12 C046     		nop
 2562 0d14 BD46     		mov	sp, r7
 2563 0d16 03B0     		add	sp, sp, #12
 2564              		@ sp needed
 2565 0d18 90BD     		pop	{r4, r7, pc}
 2566              	.L132:
 2567 0d1a C046     		.align	2
 2568              	.L131:
 2569 0d1c C0440000 		.word	entities
 2570 0d20 C0560000 		.word	num_entities
 2571              		.cfi_endproc
 2572              	.LFE28:
 2574              		.section	.rodata
 2575              		.align	2
 2576              	.LC0:
 2577 0000 31       		.byte	49
 2578 0001 32       		.byte	50
 2579 0002 33       		.byte	51
 2580 0003 41       		.byte	65
 2581 0004 34       		.byte	52
 2582 0005 35       		.byte	53
 2583 0006 36       		.byte	54
 2584 0007 42       		.byte	66
 2585 0008 37       		.byte	55
 2586 0009 38       		.byte	56
 2587 000a 39       		.byte	57
 2588 000b 43       		.byte	67
 2589 000c 2A       		.byte	42
 2590 000d 30       		.byte	48
 2591 000e 23       		.byte	35
 2592 000f 44       		.byte	68
 2593              		.text
 2594              		.align	2
 2595              		.global	keyb
 2596              		.code	16
 2597              		.thumb_func
 2599              	keyb:
 2600              	.LFB29:
 500:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 501:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 502:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 503:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** char keyb()
 504:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2601              		.loc 1 504 0
 2602              		.cfi_startproc
 2603 0d24 80B5     		push	{r7, lr}
 2604              		.cfi_def_cfa_offset 8
 2605              		.cfi_offset 7, -8
 2606              		.cfi_offset 14, -4
 2607 0d26 88B0     		sub	sp, sp, #32
 2608              		.cfi_def_cfa_offset 40
 2609 0d28 00AF     		add	r7, sp, #0
 2610              		.cfi_def_cfa_register 7
 505:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	GPIO_REG *d = (GPIO_REG *)0x40020C00;
 2611              		.loc 1 505 0
 2612 0d2a 214B     		ldr	r3, .L141
 2613 0d2c 7B61     		str	r3, [r7, #20]
 506:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	GPIO_REG *e = (GPIO_REG *)0x40021000;
 2614              		.loc 1 506 0
 2615 0d2e 214B     		ldr	r3, .L141+4
 2616 0d30 3B61     		str	r3, [r7, #16]
 507:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	
 508:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	char res[4][4]=
 2617              		.loc 1 508 0
 2618 0d32 3A00     		movs	r2, r7
 2619 0d34 204B     		ldr	r3, .L141+8
 2620 0d36 1000     		movs	r0, r2
 2621 0d38 1900     		movs	r1, r3
 2622 0d3a 1023     		movs	r3, #16
 2623 0d3c 1A00     		movs	r2, r3
 2624 0d3e FFF7FEFF 		bl	memcpy
 2625              	.LBB25:
 509:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{{'1','2','3','A'},
 510:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{'4','5','6','B'},
 511:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{'7','8','9','C'},
 512:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{'*','0','#','D'},};
 513:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for(int i = 0; i<4;i++)
 2626              		.loc 1 513 0
 2627 0d42 0023     		movs	r3, #0
 2628 0d44 FB61     		str	r3, [r7, #28]
 2629 0d46 2AE0     		b	.L134
 2630              	.L139:
 514:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 515:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		d->ODR = 0x1000<<i | d->ODR&0xff;
 2631              		.loc 1 515 0
 2632 0d48 8023     		movs	r3, #128
 2633 0d4a 5A01     		lsls	r2, r3, #5
 2634 0d4c FB69     		ldr	r3, [r7, #28]
 2635 0d4e 9A40     		lsls	r2, r2, r3
 2636 0d50 1300     		movs	r3, r2
 2637 0d52 1900     		movs	r1, r3
 2638 0d54 7B69     		ldr	r3, [r7, #20]
 2639 0d56 5B69     		ldr	r3, [r3, #20]
 2640 0d58 FF22     		movs	r2, #255
 2641 0d5a 1340     		ands	r3, r2
 2642 0d5c 0A00     		movs	r2, r1
 2643 0d5e 1A43     		orrs	r2, r3
 2644 0d60 7B69     		ldr	r3, [r7, #20]
 2645 0d62 5A61     		str	r2, [r3, #20]
 2646              	.LBB26:
 516:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		for(int j = 0; j<4;j++)
 2647              		.loc 1 516 0
 2648 0d64 0023     		movs	r3, #0
 2649 0d66 BB61     		str	r3, [r7, #24]
 2650 0d68 13E0     		b	.L135
 2651              	.L138:
 517:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 518:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			if(d->IDR & 0x100<<j)
 2652              		.loc 1 518 0
 2653 0d6a 7B69     		ldr	r3, [r7, #20]
 2654 0d6c 1B69     		ldr	r3, [r3, #16]
 2655 0d6e 8022     		movs	r2, #128
 2656 0d70 5100     		lsls	r1, r2, #1
 2657 0d72 BA69     		ldr	r2, [r7, #24]
 2658 0d74 9140     		lsls	r1, r1, r2
 2659 0d76 0A00     		movs	r2, r1
 2660 0d78 1340     		ands	r3, r2
 2661 0d7a 07D0     		beq	.L136
 519:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			{
 520:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 				return res[i][j];
 2662              		.loc 1 520 0
 2663 0d7c 3A00     		movs	r2, r7
 2664 0d7e FB69     		ldr	r3, [r7, #28]
 2665 0d80 9B00     		lsls	r3, r3, #2
 2666 0d82 D218     		adds	r2, r2, r3
 2667 0d84 BB69     		ldr	r3, [r7, #24]
 2668 0d86 D318     		adds	r3, r2, r3
 2669 0d88 1B78     		ldrb	r3, [r3]
 2670 0d8a 0CE0     		b	.L140
 2671              	.L136:
 516:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 2672              		.loc 1 516 0 discriminator 2
 2673 0d8c BB69     		ldr	r3, [r7, #24]
 2674 0d8e 0133     		adds	r3, r3, #1
 2675 0d90 BB61     		str	r3, [r7, #24]
 2676              	.L135:
 516:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 2677              		.loc 1 516 0 is_stmt 0 discriminator 1
 2678 0d92 BB69     		ldr	r3, [r7, #24]
 2679 0d94 032B     		cmp	r3, #3
 2680 0d96 E8DD     		ble	.L138
 2681              	.LBE26:
 513:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 2682              		.loc 1 513 0 is_stmt 1 discriminator 2
 2683 0d98 FB69     		ldr	r3, [r7, #28]
 2684 0d9a 0133     		adds	r3, r3, #1
 2685 0d9c FB61     		str	r3, [r7, #28]
 2686              	.L134:
 513:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 2687              		.loc 1 513 0 is_stmt 0 discriminator 1
 2688 0d9e FB69     		ldr	r3, [r7, #28]
 2689 0da0 032B     		cmp	r3, #3
 2690 0da2 D1DD     		ble	.L139
 2691              	.LBE25:
 521:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			}
 522:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		}
 523:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 524:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	return 0;
 2692              		.loc 1 524 0 is_stmt 1
 2693 0da4 0023     		movs	r3, #0
 2694              	.L140:
 525:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2695              		.loc 1 525 0 discriminator 1
 2696 0da6 1800     		movs	r0, r3
 2697 0da8 BD46     		mov	sp, r7
 2698 0daa 08B0     		add	sp, sp, #32
 2699              		@ sp needed
 2700 0dac 80BD     		pop	{r7, pc}
 2701              	.L142:
 2702 0dae C046     		.align	2
 2703              	.L141:
 2704 0db0 000C0240 		.word	1073875968
 2705 0db4 00100240 		.word	1073876992
 2706 0db8 00000000 		.word	.LC0
 2707              		.cfi_endproc
 2708              	.LFE29:
 2710              		.align	2
 2711              		.global	get_bounds
 2712              		.code	16
 2713              		.thumb_func
 2715              	get_bounds:
 2716              	.LFB30:
 526:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 527:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void get_bounds(Entity *entity, int *x_min, int *x_max, int *y_min, int *y_max)
 528:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2717              		.loc 1 528 0
 2718              		.cfi_startproc
 2719 0dbc 80B5     		push	{r7, lr}
 2720              		.cfi_def_cfa_offset 8
 2721              		.cfi_offset 7, -8
 2722              		.cfi_offset 14, -4
 2723 0dbe 84B0     		sub	sp, sp, #16
 2724              		.cfi_def_cfa_offset 24
 2725 0dc0 00AF     		add	r7, sp, #0
 2726              		.cfi_def_cfa_register 7
 2727 0dc2 F860     		str	r0, [r7, #12]
 2728 0dc4 B960     		str	r1, [r7, #8]
 2729 0dc6 7A60     		str	r2, [r7, #4]
 2730 0dc8 3B60     		str	r3, [r7]
 529:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     *x_max = entity->pos.x + entities->sprite->w/2;
 2731              		.loc 1 529 0
 2732 0dca FB68     		ldr	r3, [r7, #12]
 2733 0dcc 9A68     		ldr	r2, [r3, #8]
 2734 0dce 1C4B     		ldr	r3, .L148
 2735 0dd0 1968     		ldr	r1, [r3]
 2736 0dd2 8123     		movs	r3, #129
 2737 0dd4 DB00     		lsls	r3, r3, #3
 2738 0dd6 CB58     		ldr	r3, [r1, r3]
 2739 0dd8 002B     		cmp	r3, #0
 2740 0dda 00DA     		bge	.L144
 2741 0ddc 0133     		adds	r3, r3, #1
 2742              	.L144:
 2743 0dde 5B10     		asrs	r3, r3, #1
 2744 0de0 D218     		adds	r2, r2, r3
 2745 0de2 7B68     		ldr	r3, [r7, #4]
 2746 0de4 1A60     		str	r2, [r3]
 530:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     *x_min = entity->pos.x - entities->sprite->w/2;
 2747              		.loc 1 530 0
 2748 0de6 FB68     		ldr	r3, [r7, #12]
 2749 0de8 9A68     		ldr	r2, [r3, #8]
 2750 0dea 154B     		ldr	r3, .L148
 2751 0dec 1968     		ldr	r1, [r3]
 2752 0dee 8123     		movs	r3, #129
 2753 0df0 DB00     		lsls	r3, r3, #3
 2754 0df2 CB58     		ldr	r3, [r1, r3]
 2755 0df4 002B     		cmp	r3, #0
 2756 0df6 00DA     		bge	.L145
 2757 0df8 0133     		adds	r3, r3, #1
 2758              	.L145:
 2759 0dfa 5B10     		asrs	r3, r3, #1
 2760 0dfc D21A     		subs	r2, r2, r3
 2761 0dfe BB68     		ldr	r3, [r7, #8]
 2762 0e00 1A60     		str	r2, [r3]
 531:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 532:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     *y_max = entity->pos.y + entities->sprite->h/2;
 2763              		.loc 1 532 0
 2764 0e02 FB68     		ldr	r3, [r7, #12]
 2765 0e04 DA68     		ldr	r2, [r3, #12]
 2766 0e06 0E4B     		ldr	r3, .L148
 2767 0e08 1B68     		ldr	r3, [r3]
 2768 0e0a 0E49     		ldr	r1, .L148+4
 2769 0e0c 5B58     		ldr	r3, [r3, r1]
 2770 0e0e 002B     		cmp	r3, #0
 2771 0e10 00DA     		bge	.L146
 2772 0e12 0133     		adds	r3, r3, #1
 2773              	.L146:
 2774 0e14 5B10     		asrs	r3, r3, #1
 2775 0e16 D218     		adds	r2, r2, r3
 2776 0e18 BB69     		ldr	r3, [r7, #24]
 2777 0e1a 1A60     		str	r2, [r3]
 533:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     *y_min = entity->pos.y - entities->sprite->h/2; 
 2778              		.loc 1 533 0
 2779 0e1c FB68     		ldr	r3, [r7, #12]
 2780 0e1e DA68     		ldr	r2, [r3, #12]
 2781 0e20 074B     		ldr	r3, .L148
 2782 0e22 1B68     		ldr	r3, [r3]
 2783 0e24 0749     		ldr	r1, .L148+4
 2784 0e26 5B58     		ldr	r3, [r3, r1]
 2785 0e28 002B     		cmp	r3, #0
 2786 0e2a 00DA     		bge	.L147
 2787 0e2c 0133     		adds	r3, r3, #1
 2788              	.L147:
 2789 0e2e 5B10     		asrs	r3, r3, #1
 2790 0e30 D21A     		subs	r2, r2, r3
 2791 0e32 3B68     		ldr	r3, [r7]
 2792 0e34 1A60     		str	r2, [r3]
 534:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2793              		.loc 1 534 0
 2794 0e36 C046     		nop
 2795 0e38 BD46     		mov	sp, r7
 2796 0e3a 04B0     		add	sp, sp, #16
 2797              		@ sp needed
 2798 0e3c 80BD     		pop	{r7, pc}
 2799              	.L149:
 2800 0e3e C046     		.align	2
 2801              	.L148:
 2802 0e40 C0440000 		.word	entities
 2803 0e44 04040000 		.word	1028
 2804              		.cfi_endproc
 2805              	.LFE30:
 2807              		.align	2
 2808              		.global	wall_collision
 2809              		.code	16
 2810              		.thumb_func
 2812              	wall_collision:
 2813              	.LFB31:
 535:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 536:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** bool wall_collision(Entity *entity)
 537:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2814              		.loc 1 537 0
 2815              		.cfi_startproc
 2816 0e48 90B5     		push	{r4, r7, lr}
 2817              		.cfi_def_cfa_offset 12
 2818              		.cfi_offset 4, -12
 2819              		.cfi_offset 7, -8
 2820              		.cfi_offset 14, -4
 2821 0e4a 89B0     		sub	sp, sp, #36
 2822              		.cfi_def_cfa_offset 48
 2823 0e4c 02AF     		add	r7, sp, #8
 2824              		.cfi_def_cfa 7, 40
 2825 0e4e 7860     		str	r0, [r7, #4]
 538:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     int x_min,x_max,y_min,y_max;
 539:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     get_bounds(entity,&x_min,&x_max,&y_min,&y_max);
 2826              		.loc 1 539 0
 2827 0e50 0C23     		movs	r3, #12
 2828 0e52 FC18     		adds	r4, r7, r3
 2829 0e54 1023     		movs	r3, #16
 2830 0e56 FA18     		adds	r2, r7, r3
 2831 0e58 1423     		movs	r3, #20
 2832 0e5a F918     		adds	r1, r7, r3
 2833 0e5c 7868     		ldr	r0, [r7, #4]
 2834 0e5e 0823     		movs	r3, #8
 2835 0e60 FB18     		adds	r3, r7, r3
 2836 0e62 0093     		str	r3, [sp]
 2837 0e64 2300     		movs	r3, r4
 2838 0e66 FFF7FEFF 		bl	get_bounds
 540:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     
 541:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     if(x_max >= 64  || 
 2839              		.loc 1 541 0
 2840 0e6a 3B69     		ldr	r3, [r7, #16]
 2841 0e6c 3F2B     		cmp	r3, #63
 2842 0e6e 08DC     		bgt	.L151
 542:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****        x_min < 0    ||
 2843              		.loc 1 542 0 discriminator 1
 2844 0e70 7B69     		ldr	r3, [r7, #20]
 541:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****        x_min < 0    ||
 2845              		.loc 1 541 0 discriminator 1
 2846 0e72 002B     		cmp	r3, #0
 2847 0e74 05DB     		blt	.L151
 543:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****        y_max >= 128 || 
 2848              		.loc 1 543 0
 2849 0e76 BB68     		ldr	r3, [r7, #8]
 542:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****        x_min < 0    ||
 2850              		.loc 1 542 0
 2851 0e78 7F2B     		cmp	r3, #127
 2852 0e7a 02DC     		bgt	.L151
 544:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****        y_min < 0) return true;
 2853              		.loc 1 544 0
 2854 0e7c FB68     		ldr	r3, [r7, #12]
 543:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****        y_max >= 128 || 
 2855              		.loc 1 543 0
 2856 0e7e 002B     		cmp	r3, #0
 2857 0e80 01DA     		bge	.L152
 2858              	.L151:
 2859              		.loc 1 544 0
 2860 0e82 0123     		movs	r3, #1
 2861 0e84 00E0     		b	.L154
 2862              	.L152:
 545:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     
 546:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     return false;
 2863              		.loc 1 546 0
 2864 0e86 0023     		movs	r3, #0
 2865              	.L154:
 547:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2866              		.loc 1 547 0 discriminator 1
 2867 0e88 1800     		movs	r0, r3
 2868 0e8a BD46     		mov	sp, r7
 2869 0e8c 07B0     		add	sp, sp, #28
 2870              		@ sp needed
 2871 0e8e 90BD     		pop	{r4, r7, pc}
 2872              		.cfi_endproc
 2873              	.LFE31:
 2875              		.align	2
 2876              		.global	update_entity_pos
 2877              		.code	16
 2878              		.thumb_func
 2880              	update_entity_pos:
 2881              	.LFB32:
 548:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 549:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void update_entity_pos(Entity *entity)
 550:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2882              		.loc 1 550 0
 2883              		.cfi_startproc
 2884 0e90 80B5     		push	{r7, lr}
 2885              		.cfi_def_cfa_offset 8
 2886              		.cfi_offset 7, -8
 2887              		.cfi_offset 14, -4
 2888 0e92 82B0     		sub	sp, sp, #8
 2889              		.cfi_def_cfa_offset 16
 2890 0e94 00AF     		add	r7, sp, #0
 2891              		.cfi_def_cfa_register 7
 2892 0e96 7860     		str	r0, [r7, #4]
 551:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	entity->pos.x += entity->velocity.x;
 2893              		.loc 1 551 0
 2894 0e98 7B68     		ldr	r3, [r7, #4]
 2895 0e9a 9A68     		ldr	r2, [r3, #8]
 2896 0e9c 7B68     		ldr	r3, [r7, #4]
 2897 0e9e 1B69     		ldr	r3, [r3, #16]
 2898 0ea0 D218     		adds	r2, r2, r3
 2899 0ea2 7B68     		ldr	r3, [r7, #4]
 2900 0ea4 9A60     		str	r2, [r3, #8]
 552:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	entity->pos.y += entity->velocity.y;
 2901              		.loc 1 552 0
 2902 0ea6 7B68     		ldr	r3, [r7, #4]
 2903 0ea8 DA68     		ldr	r2, [r3, #12]
 2904 0eaa 7B68     		ldr	r3, [r7, #4]
 2905 0eac 5B69     		ldr	r3, [r3, #20]
 2906 0eae D218     		adds	r2, r2, r3
 2907 0eb0 7B68     		ldr	r3, [r7, #4]
 2908 0eb2 DA60     		str	r2, [r3, #12]
 553:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2909              		.loc 1 553 0
 2910 0eb4 C046     		nop
 2911 0eb6 BD46     		mov	sp, r7
 2912 0eb8 02B0     		add	sp, sp, #8
 2913              		@ sp needed
 2914 0eba 80BD     		pop	{r7, pc}
 2915              		.cfi_endproc
 2916              	.LFE32:
 2918              		.align	2
 2919              		.global	mirror_update_entity_pos
 2920              		.code	16
 2921              		.thumb_func
 2923              	mirror_update_entity_pos:
 2924              	.LFB33:
 554:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 555:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void mirror_update_entity_pos(Entity *entity)
 556:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2925              		.loc 1 556 0
 2926              		.cfi_startproc
 2927 0ebc 80B5     		push	{r7, lr}
 2928              		.cfi_def_cfa_offset 8
 2929              		.cfi_offset 7, -8
 2930              		.cfi_offset 14, -4
 2931 0ebe 82B0     		sub	sp, sp, #8
 2932              		.cfi_def_cfa_offset 16
 2933 0ec0 00AF     		add	r7, sp, #0
 2934              		.cfi_def_cfa_register 7
 2935 0ec2 7860     		str	r0, [r7, #4]
 557:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	entity->pos.x -= entity->velocity.x;
 2936              		.loc 1 557 0
 2937 0ec4 7B68     		ldr	r3, [r7, #4]
 2938 0ec6 9A68     		ldr	r2, [r3, #8]
 2939 0ec8 7B68     		ldr	r3, [r7, #4]
 2940 0eca 1B69     		ldr	r3, [r3, #16]
 2941 0ecc D21A     		subs	r2, r2, r3
 2942 0ece 7B68     		ldr	r3, [r7, #4]
 2943 0ed0 9A60     		str	r2, [r3, #8]
 558:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	entity->pos.y -= entity->velocity.y;
 2944              		.loc 1 558 0
 2945 0ed2 7B68     		ldr	r3, [r7, #4]
 2946 0ed4 DA68     		ldr	r2, [r3, #12]
 2947 0ed6 7B68     		ldr	r3, [r7, #4]
 2948 0ed8 5B69     		ldr	r3, [r3, #20]
 2949 0eda D21A     		subs	r2, r2, r3
 2950 0edc 7B68     		ldr	r3, [r7, #4]
 2951 0ede DA60     		str	r2, [r3, #12]
 559:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 2952              		.loc 1 559 0
 2953 0ee0 C046     		nop
 2954 0ee2 BD46     		mov	sp, r7
 2955 0ee4 02B0     		add	sp, sp, #8
 2956              		@ sp needed
 2957 0ee6 80BD     		pop	{r7, pc}
 2958              		.cfi_endproc
 2959              	.LFE33:
 2961              		.align	2
 2962              		.global	step_physics
 2963              		.code	16
 2964              		.thumb_func
 2966              	step_physics:
 2967              	.LFB34:
 560:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 561:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** void step_physics(bool force)
 562:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 2968              		.loc 1 562 0
 2969              		.cfi_startproc
 2970 0ee8 80B5     		push	{r7, lr}
 2971              		.cfi_def_cfa_offset 8
 2972              		.cfi_offset 7, -8
 2973              		.cfi_offset 14, -4
 2974 0eea 84B0     		sub	sp, sp, #16
 2975              		.cfi_def_cfa_offset 24
 2976 0eec 00AF     		add	r7, sp, #0
 2977              		.cfi_def_cfa_register 7
 2978 0eee 0200     		movs	r2, r0
 2979 0ef0 FB1D     		adds	r3, r7, #7
 2980 0ef2 1A70     		strb	r2, [r3]
 2981              	.LBB27:
 563:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	for (int i = 0; i < num_entities; i++)
 2982              		.loc 1 563 0
 2983 0ef4 0023     		movs	r3, #0
 2984 0ef6 FB60     		str	r3, [r7, #12]
 2985 0ef8 3DE0     		b	.L158
 2986              	.L162:
 564:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 565:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		if(force || !wall_collision(&entities[i]))
 2987              		.loc 1 565 0
 2988 0efa FB1D     		adds	r3, r7, #7
 2989 0efc 1B78     		ldrb	r3, [r3]
 2990 0efe 002B     		cmp	r3, #0
 2991 0f00 0BD1     		bne	.L159
 2992              		.loc 1 565 0 is_stmt 0 discriminator 1
 2993 0f02 FA68     		ldr	r2, [r7, #12]
 2994 0f04 1300     		movs	r3, r2
 2995 0f06 DB00     		lsls	r3, r3, #3
 2996 0f08 9B18     		adds	r3, r3, r2
 2997 0f0a 9B00     		lsls	r3, r3, #2
 2998 0f0c 1E4A     		ldr	r2, .L163
 2999 0f0e 9B18     		adds	r3, r3, r2
 3000 0f10 1800     		movs	r0, r3
 3001 0f12 FFF7FEFF 		bl	wall_collision
 3002 0f16 031E     		subs	r3, r0, #0
 3003 0f18 0AD1     		bne	.L160
 3004              	.L159:
 566:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{
 567:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			update_entity_pos(&entities[i]);
 3005              		.loc 1 567 0 is_stmt 1
 3006 0f1a FA68     		ldr	r2, [r7, #12]
 3007 0f1c 1300     		movs	r3, r2
 3008 0f1e DB00     		lsls	r3, r3, #3
 3009 0f20 9B18     		adds	r3, r3, r2
 3010 0f22 9B00     		lsls	r3, r3, #2
 3011 0f24 184A     		ldr	r2, .L163
 3012 0f26 9B18     		adds	r3, r3, r2
 3013 0f28 1800     		movs	r0, r3
 3014 0f2a FFF7FEFF 		bl	update_entity_pos
 3015 0f2e 1FE0     		b	.L161
 3016              	.L160:
 568:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			//entities[i].pos.x += entities[i].velocity.x;
 569:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			//entities[i].pos.y += entities[i].velocity.y;
 570:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		} 
 571:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		else //is currently stuck on wall
 572:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		{			
 573:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			update_entity_pos(&entities[i]);
 3017              		.loc 1 573 0
 3018 0f30 FA68     		ldr	r2, [r7, #12]
 3019 0f32 1300     		movs	r3, r2
 3020 0f34 DB00     		lsls	r3, r3, #3
 3021 0f36 9B18     		adds	r3, r3, r2
 3022 0f38 9B00     		lsls	r3, r3, #2
 3023 0f3a 134A     		ldr	r2, .L163
 3024 0f3c 9B18     		adds	r3, r3, r2
 3025 0f3e 1800     		movs	r0, r3
 3026 0f40 FFF7FEFF 		bl	update_entity_pos
 574:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 			if(wall_collision(&entities[i]))
 3027              		.loc 1 574 0
 3028 0f44 FA68     		ldr	r2, [r7, #12]
 3029 0f46 1300     		movs	r3, r2
 3030 0f48 DB00     		lsls	r3, r3, #3
 3031 0f4a 9B18     		adds	r3, r3, r2
 3032 0f4c 9B00     		lsls	r3, r3, #2
 3033 0f4e 0E4A     		ldr	r2, .L163
 3034 0f50 9B18     		adds	r3, r3, r2
 3035 0f52 1800     		movs	r0, r3
 3036 0f54 FFF7FEFF 		bl	wall_collision
 3037 0f58 031E     		subs	r3, r0, #0
 3038 0f5a 09D0     		beq	.L161
 575:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 				mirror_update_entity_pos(&entities[i]); //move back
 3039              		.loc 1 575 0
 3040 0f5c FA68     		ldr	r2, [r7, #12]
 3041 0f5e 1300     		movs	r3, r2
 3042 0f60 DB00     		lsls	r3, r3, #3
 3043 0f62 9B18     		adds	r3, r3, r2
 3044 0f64 9B00     		lsls	r3, r3, #2
 3045 0f66 084A     		ldr	r2, .L163
 3046 0f68 9B18     		adds	r3, r3, r2
 3047 0f6a 1800     		movs	r0, r3
 3048 0f6c FFF7FEFF 		bl	mirror_update_entity_pos
 3049              	.L161:
 563:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 3050              		.loc 1 563 0 discriminator 2
 3051 0f70 FB68     		ldr	r3, [r7, #12]
 3052 0f72 0133     		adds	r3, r3, #1
 3053 0f74 FB60     		str	r3, [r7, #12]
 3054              	.L158:
 563:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	{
 3055              		.loc 1 563 0 is_stmt 0 discriminator 1
 3056 0f76 054B     		ldr	r3, .L163+4
 3057 0f78 1B68     		ldr	r3, [r3]
 3058 0f7a FA68     		ldr	r2, [r7, #12]
 3059 0f7c 9A42     		cmp	r2, r3
 3060 0f7e BCDB     		blt	.L162
 3061              	.LBE27:
 576:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		}
 577:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	}
 578:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 3062              		.loc 1 578 0 is_stmt 1
 3063 0f80 C046     		nop
 3064 0f82 BD46     		mov	sp, r7
 3065 0f84 04B0     		add	sp, sp, #16
 3066              		@ sp needed
 3067 0f86 80BD     		pop	{r7, pc}
 3068              	.L164:
 3069              		.align	2
 3070              	.L163:
 3071 0f88 C0440000 		.word	entities
 3072 0f8c C0560000 		.word	num_entities
 3073              		.cfi_endproc
 3074              	.LFE34:
 3076              		.align	2
 3077              		.global	entity_collision
 3078              		.code	16
 3079              		.thumb_func
 3081              	entity_collision:
 3082              	.LFB35:
 579:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 580:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** bool entity_collision(Entity *a, Entity *b)
 581:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 3083              		.loc 1 581 0
 3084              		.cfi_startproc
 3085 0f90 90B5     		push	{r4, r7, lr}
 3086              		.cfi_def_cfa_offset 12
 3087              		.cfi_offset 4, -12
 3088              		.cfi_offset 7, -8
 3089              		.cfi_offset 14, -4
 3090 0f92 8DB0     		sub	sp, sp, #52
 3091              		.cfi_def_cfa_offset 64
 3092 0f94 02AF     		add	r7, sp, #8
 3093              		.cfi_def_cfa 7, 56
 3094 0f96 7860     		str	r0, [r7, #4]
 3095 0f98 3960     		str	r1, [r7]
 582:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     int ax_min,ax_max,ay_min,ay_max;
 583:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     get_bounds(a,&ax_min,&ax_max,&ay_min,&ay_max);
 3096              		.loc 1 583 0
 3097 0f9a 1C23     		movs	r3, #28
 3098 0f9c FC18     		adds	r4, r7, r3
 3099 0f9e 2023     		movs	r3, #32
 3100 0fa0 FA18     		adds	r2, r7, r3
 3101 0fa2 2423     		movs	r3, #36
 3102 0fa4 F918     		adds	r1, r7, r3
 3103 0fa6 7868     		ldr	r0, [r7, #4]
 3104 0fa8 1823     		movs	r3, #24
 3105 0faa FB18     		adds	r3, r7, r3
 3106 0fac 0093     		str	r3, [sp]
 3107 0fae 2300     		movs	r3, r4
 3108 0fb0 FFF7FEFF 		bl	get_bounds
 584:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     
 585:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     int bx_min,bx_max,by_min,by_max;
 586:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     get_bounds(b,&bx_min,&bx_max,&by_min,&by_max);
 3109              		.loc 1 586 0
 3110 0fb4 0C23     		movs	r3, #12
 3111 0fb6 FC18     		adds	r4, r7, r3
 3112 0fb8 1023     		movs	r3, #16
 3113 0fba FA18     		adds	r2, r7, r3
 3114 0fbc 1423     		movs	r3, #20
 3115 0fbe F918     		adds	r1, r7, r3
 3116 0fc0 3868     		ldr	r0, [r7]
 3117 0fc2 0823     		movs	r3, #8
 3118 0fc4 FB18     		adds	r3, r7, r3
 3119 0fc6 0093     		str	r3, [sp]
 3120 0fc8 2300     		movs	r3, r4
 3121 0fca FFF7FEFF 		bl	get_bounds
 587:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****    
 588:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	if((ax_min <= bx_min && ax_max >= bx_min)||
 3122              		.loc 1 588 0
 3123 0fce 7A6A     		ldr	r2, [r7, #36]
 3124 0fd0 7B69     		ldr	r3, [r7, #20]
 3125 0fd2 9A42     		cmp	r2, r3
 3126 0fd4 03DC     		bgt	.L166
 3127              		.loc 1 588 0 is_stmt 0 discriminator 1
 3128 0fd6 3A6A     		ldr	r2, [r7, #32]
 3129 0fd8 7B69     		ldr	r3, [r7, #20]
 3130 0fda 9A42     		cmp	r2, r3
 3131 0fdc 07DA     		bge	.L167
 3132              	.L166:
 589:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         (bx_min <= ax_min && bx_max >= ax_min))
 3133              		.loc 1 589 0 is_stmt 1 discriminator 3
 3134 0fde 7A69     		ldr	r2, [r7, #20]
 3135 0fe0 7B6A     		ldr	r3, [r7, #36]
 588:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         (bx_min <= ax_min && bx_max >= ax_min))
 3136              		.loc 1 588 0 discriminator 3
 3137 0fe2 9A42     		cmp	r2, r3
 3138 0fe4 15DC     		bgt	.L168
 3139              		.loc 1 589 0
 3140 0fe6 3A69     		ldr	r2, [r7, #16]
 3141 0fe8 7B6A     		ldr	r3, [r7, #36]
 3142 0fea 9A42     		cmp	r2, r3
 3143 0fec 11DB     		blt	.L168
 3144              	.L167:
 590:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     {
 591:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         if((ay_min <= by_min && ay_max >= by_min)||
 3145              		.loc 1 591 0
 3146 0fee FA69     		ldr	r2, [r7, #28]
 3147 0ff0 FB68     		ldr	r3, [r7, #12]
 3148 0ff2 9A42     		cmp	r2, r3
 3149 0ff4 03DC     		bgt	.L169
 3150              		.loc 1 591 0 is_stmt 0 discriminator 1
 3151 0ff6 BA69     		ldr	r2, [r7, #24]
 3152 0ff8 FB68     		ldr	r3, [r7, #12]
 3153 0ffa 9A42     		cmp	r2, r3
 3154 0ffc 07DA     		bge	.L170
 3155              	.L169:
 592:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****            (by_min <= ay_min && by_max >= ay_min))
 3156              		.loc 1 592 0 is_stmt 1 discriminator 3
 3157 0ffe FA68     		ldr	r2, [r7, #12]
 3158 1000 FB69     		ldr	r3, [r7, #28]
 591:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****            (by_min <= ay_min && by_max >= ay_min))
 3159              		.loc 1 591 0 discriminator 3
 3160 1002 9A42     		cmp	r2, r3
 3161 1004 05DC     		bgt	.L168
 3162              		.loc 1 592 0
 3163 1006 BA68     		ldr	r2, [r7, #8]
 3164 1008 FB69     		ldr	r3, [r7, #28]
 3165 100a 9A42     		cmp	r2, r3
 3166 100c 01DB     		blt	.L168
 3167              	.L170:
 593:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         {
 594:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             return true;
 3168              		.loc 1 594 0
 3169 100e 0123     		movs	r3, #1
 3170 1010 00E0     		b	.L172
 3171              	.L168:
 595:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         }
 596:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     }
 597:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     return false;
 3172              		.loc 1 597 0
 3173 1012 0023     		movs	r3, #0
 3174              	.L172:
 598:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** }
 3175              		.loc 1 598 0 discriminator 1
 3176 1014 1800     		movs	r0, r3
 3177 1016 BD46     		mov	sp, r7
 3178 1018 0BB0     		add	sp, sp, #44
 3179              		@ sp needed
 3180 101a 90BD     		pop	{r4, r7, pc}
 3181              		.cfi_endproc
 3182              	.LFE35:
 3184              		.global	ship_defn
 3185              		.section	.rodata
 3186              		.align	2
 3187              	.LC63:
 3188 0010 20202020 		.ascii	"      #           ###          ###      ###########"
 3188      20202320 
 3188      20202020 
 3188      20202020 
 3188      20202323 
 3189 0043 20232323 		.ascii	" ##################################################"
 3189      23232323 
 3189      23232323 
 3189      23232323 
 3189      23232323 
 3190 0076 232300   		.ascii	"##\000"
 3191              		.data
 3192 0019 000000   		.align	2
 3195              	ship_defn:
 3196 001c 10000000 		.word	.LC63
 3197              		.global	bullet_defn
 3198              		.section	.rodata
 3199 0079 000000   		.align	2
 3200              	.LC64:
 3201 007c 20202320 		.ascii	"  #   ### ##### ###   #  \000"
 3201      20202323 
 3201      23202323 
 3201      23232320 
 3201      23232320 
 3202              		.data
 3203              		.align	2
 3206              	bullet_defn:
 3207 0020 7C000000 		.word	.LC64
 3208              		.global	enemy_defn
 3209              		.section	.rodata
 3210 0096 0000     		.align	2
 3211              	.LC65:
 3212 0098 20202320 		.ascii	"  #     #     #   #     #######    # ### #   ## ###"
 3212      20202020 
 3212      23202020 
 3212      20202320 
 3212      20202320 
 3213 00cb 20232320 		.ascii	" ## ############ ####### ## #     # #   #   #      "
 3213      23232323 
 3213      23232323 
 3213      23232323 
 3213      20232323 
 3214 00fe 20232023 		.ascii	" # #    \000"
 3214      20202020 
 3214      00
 3215              		.data
 3216              		.align	2
 3219              	enemy_defn:
 3220 0024 98000000 		.word	.LC65
 3221              		.global	laser_defn
 3222              		.section	.rodata
 3223 0107 00       		.align	2
 3224              	.LC66:
 3225 0108 23232323 		.ascii	"###########\000"
 3225      23232323 
 3225      23232300 
 3226              		.data
 3227              		.align	2
 3230              	laser_defn:
 3231 0028 08010000 		.word	.LC66
 3232              		.section	.rodata
 3233              		.align	2
 3234              	.LC1:
 3235 0114 1F000000 		.word	31
 3236 0118 04000000 		.word	4
 3237              		.align	2
 3238              	.LC2:
 3239 011c 1F000000 		.word	31
 3240 0120 64000000 		.word	100
 3241              		.text
 3242              		.align	2
 3243              		.global	main
 3244              		.code	16
 3245              		.thumb_func
 3247              	main:
 3248              	.LFB36:
 599:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 600:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** char *ship_defn=
 601:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "      #      "
 602:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "     ###     "
 603:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "     ###     "
 604:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** " ########### "
 605:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "#############"
 606:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "#############"
 607:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "#############"
 608:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "#############";
 609:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         
 610:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** char *bullet_defn =
 611:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "  #  "
 612:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** " ### "
 613:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "#####"
 614:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** " ### "
 615:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "  #  ";
 616:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** char *enemy_defn = 
 617:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "  #     #  "
 618:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "   #   #   "
 619:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "  #######  "
 620:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "  # ### #  "
 621:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** " ## ### ## "
 622:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "###########"
 623:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "# ####### #"
 624:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "# #     # #"
 625:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "   #   #   "
 626:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** "    # #    ";
 627:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 628:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 629:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** char *laser_defn = "###########";
 630:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 631:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** int main()
 632:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** {
 3249              		.loc 1 632 0
 3250              		.cfi_startproc
 3251 101c B0B5     		push	{r4, r5, r7, lr}
 3252              		.cfi_def_cfa_offset 16
 3253              		.cfi_offset 4, -16
 3254              		.cfi_offset 5, -12
 3255              		.cfi_offset 7, -8
 3256              		.cfi_offset 14, -4
 3257 101e 96B0     		sub	sp, sp, #88
 3258              		.cfi_def_cfa_offset 104
 3259 1020 02AF     		add	r7, sp, #8
 3260              		.cfi_def_cfa 7, 96
 633:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     { //init app
 634:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         e->MODER = 0x55555555; //set write entire e
 3261              		.loc 1 634 0
 3262 1022 974B     		ldr	r3, .L186
 3263 1024 1B68     		ldr	r3, [r3]
 3264 1026 974A     		ldr	r2, .L186+4
 3265 1028 1A60     		str	r2, [r3]
 635:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		d->MODER = 0x55005555;
 3266              		.loc 1 635 0
 3267 102a 974B     		ldr	r3, .L186+8
 3268 102c 1B68     		ldr	r3, [r3]
 3269 102e 974A     		ldr	r2, .L186+12
 3270 1030 1A60     		str	r2, [r3]
 636:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		d->OTYPER = 0x0000;     //set push-pull 
 3271              		.loc 1 636 0
 3272 1032 954B     		ldr	r3, .L186+8
 3273 1034 1B68     		ldr	r3, [r3]
 3274 1036 0022     		movs	r2, #0
 3275 1038 5A60     		str	r2, [r3, #4]
 637:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		d->PUPDR  = 0xAA000000; //set pull-down
 3276              		.loc 1 637 0
 3277 103a 934B     		ldr	r3, .L186+8
 3278 103c 1B68     		ldr	r3, [r3]
 3279 103e AA22     		movs	r2, #170
 3280 1040 1206     		lsls	r2, r2, #24
 3281 1042 DA60     		str	r2, [r3, #12]
 638:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     }
 639:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     graphics_initialize();
 3282              		.loc 1 639 0
 3283 1044 FFF7FEFF 		bl	graphics_initialize
 640:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	set_all(0xff);
 3284              		.loc 1 640 0
 3285 1048 FF20     		movs	r0, #255
 3286 104a FFF7FEFF 		bl	set_all
 641:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     
 642:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 643:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	Sprite *ship_sprite = make_sprite(ship_defn,13,8,1);
 3287              		.loc 1 643 0
 3288 104e 904B     		ldr	r3, .L186+16
 3289 1050 1868     		ldr	r0, [r3]
 3290 1052 0123     		movs	r3, #1
 3291 1054 0822     		movs	r2, #8
 3292 1056 0D21     		movs	r1, #13
 3293 1058 FFF7FEFF 		bl	make_sprite
 3294 105c 0300     		movs	r3, r0
 3295 105e 7B64     		str	r3, [r7, #68]
 644:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	Sprite *bullet_sprite = make_sprite(bullet_defn,5,5,1);
 3296              		.loc 1 644 0
 3297 1060 8C4B     		ldr	r3, .L186+20
 3298 1062 1868     		ldr	r0, [r3]
 3299 1064 0123     		movs	r3, #1
 3300 1066 0522     		movs	r2, #5
 3301 1068 0521     		movs	r1, #5
 3302 106a FFF7FEFF 		bl	make_sprite
 3303 106e 0300     		movs	r3, r0
 3304 1070 3B64     		str	r3, [r7, #64]
 645:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     Sprite *laser_sprite = make_sprite(laser_defn,1,8,1);
 3305              		.loc 1 645 0
 3306 1072 894B     		ldr	r3, .L186+24
 3307 1074 1868     		ldr	r0, [r3]
 3308 1076 0123     		movs	r3, #1
 3309 1078 0822     		movs	r2, #8
 3310 107a 0121     		movs	r1, #1
 3311 107c FFF7FEFF 		bl	make_sprite
 3312 1080 0300     		movs	r3, r0
 3313 1082 FB63     		str	r3, [r7, #60]
 646:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     Sprite *enemy_sprite = make_sprite(enemy_defn,11,10,1);
 3314              		.loc 1 646 0
 3315 1084 854B     		ldr	r3, .L186+28
 3316 1086 1868     		ldr	r0, [r3]
 3317 1088 0123     		movs	r3, #1
 3318 108a 0A22     		movs	r2, #10
 3319 108c 0B21     		movs	r1, #11
 3320 108e FFF7FEFF 		bl	make_sprite
 3321 1092 0300     		movs	r3, r0
 3322 1094 BB63     		str	r3, [r7, #56]
 647:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 648:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	int *player_id = make_entity(ship_sprite, entity_type_player,(Vec2){31,4},(Vec2){0,0});
 3323              		.loc 1 648 0
 3324 1096 3B00     		movs	r3, r7
 3325 1098 814A     		ldr	r2, .L186+32
 3326 109a 03CA     		ldmia	r2!, {r0, r1}
 3327 109c 03C3     		stmia	r3!, {r0, r1}
 3328 109e 0823     		movs	r3, #8
 3329 10a0 FB18     		adds	r3, r7, r3
 3330 10a2 0022     		movs	r2, #0
 3331 10a4 1A60     		str	r2, [r3]
 3332 10a6 0823     		movs	r3, #8
 3333 10a8 FB18     		adds	r3, r7, r3
 3334 10aa 0022     		movs	r2, #0
 3335 10ac 5A60     		str	r2, [r3, #4]
 3336 10ae 3B00     		movs	r3, r7
 3337 10b0 786C     		ldr	r0, [r7, #68]
 3338 10b2 0822     		movs	r2, #8
 3339 10b4 B918     		adds	r1, r7, r2
 3340 10b6 6A46     		mov	r2, sp
 3341 10b8 30C9     		ldmia	r1!, {r4, r5}
 3342 10ba 30C2     		stmia	r2!, {r4, r5}
 3343 10bc 1A68     		ldr	r2, [r3]
 3344 10be 5B68     		ldr	r3, [r3, #4]
 3345 10c0 0021     		movs	r1, #0
 3346 10c2 FFF7FEFF 		bl	make_entity
 3347 10c6 0300     		movs	r3, r0
 3348 10c8 7B63     		str	r3, [r7, #52]
 649:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     make_entity(enemy_sprite,entity_type_enemy,(Vec2){31,100},(Vec2){0,0});
 3349              		.loc 1 649 0
 3350 10ca 1023     		movs	r3, #16
 3351 10cc FB18     		adds	r3, r7, r3
 3352 10ce 754A     		ldr	r2, .L186+36
 3353 10d0 03CA     		ldmia	r2!, {r0, r1}
 3354 10d2 03C3     		stmia	r3!, {r0, r1}
 3355 10d4 1823     		movs	r3, #24
 3356 10d6 FB18     		adds	r3, r7, r3
 3357 10d8 0022     		movs	r2, #0
 3358 10da 1A60     		str	r2, [r3]
 3359 10dc 1823     		movs	r3, #24
 3360 10de FB18     		adds	r3, r7, r3
 3361 10e0 0022     		movs	r2, #0
 3362 10e2 5A60     		str	r2, [r3, #4]
 3363 10e4 1023     		movs	r3, #16
 3364 10e6 FB18     		adds	r3, r7, r3
 3365 10e8 B86B     		ldr	r0, [r7, #56]
 3366 10ea 1822     		movs	r2, #24
 3367 10ec B918     		adds	r1, r7, r2
 3368 10ee 6A46     		mov	r2, sp
 3369 10f0 30C9     		ldmia	r1!, {r4, r5}
 3370 10f2 30C2     		stmia	r2!, {r4, r5}
 3371 10f4 1A68     		ldr	r2, [r3]
 3372 10f6 5B68     		ldr	r3, [r3, #4]
 3373 10f8 0221     		movs	r1, #2
 3374 10fa FFF7FEFF 		bl	make_entity
 650:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 	set_all(0);
 3375              		.loc 1 650 0
 3376 10fe 0020     		movs	r0, #0
 3377 1100 FFF7FEFF 		bl	set_all
 651:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 652:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     int speed = 2;
 3378              		.loc 1 652 0
 3379 1104 0223     		movs	r3, #2
 3380 1106 3B63     		str	r3, [r7, #48]
 3381              	.L185:
 3382              	.LBB28:
 653:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     for(;;)
 654:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     {
 655:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         char c = keyb();
 3383              		.loc 1 655 0
 3384 1108 2F23     		movs	r3, #47
 3385 110a FC18     		adds	r4, r7, r3
 3386 110c FFF7FEFF 		bl	keyb
 3387 1110 0300     		movs	r3, r0
 3388 1112 2370     		strb	r3, [r4]
 656:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		Entity *player = entity_from_id(player_id);
 3389              		.loc 1 656 0
 3390 1114 7B6B     		ldr	r3, [r7, #52]
 3391 1116 1800     		movs	r0, r3
 3392 1118 FFF7FEFF 		bl	entity_from_id
 3393 111c 0300     		movs	r3, r0
 3394 111e BB62     		str	r3, [r7, #40]
 657:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         if(c == '6') player->velocity.x = 2;
 3395              		.loc 1 657 0
 3396 1120 2F23     		movs	r3, #47
 3397 1122 FB18     		adds	r3, r7, r3
 3398 1124 1B78     		ldrb	r3, [r3]
 3399 1126 362B     		cmp	r3, #54
 3400 1128 03D1     		bne	.L174
 3401              		.loc 1 657 0 is_stmt 0 discriminator 1
 3402 112a BB6A     		ldr	r3, [r7, #40]
 3403 112c 0222     		movs	r2, #2
 3404 112e 1A61     		str	r2, [r3, #16]
 3405 1130 0CE0     		b	.L175
 3406              	.L174:
 658:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         else if(c == '4') player->velocity.x = -2;
 3407              		.loc 1 658 0 is_stmt 1
 3408 1132 2F23     		movs	r3, #47
 3409 1134 FB18     		adds	r3, r7, r3
 3410 1136 1B78     		ldrb	r3, [r3]
 3411 1138 342B     		cmp	r3, #52
 3412 113a 04D1     		bne	.L176
 3413              		.loc 1 658 0 is_stmt 0 discriminator 1
 3414 113c BB6A     		ldr	r3, [r7, #40]
 3415 113e 0222     		movs	r2, #2
 3416 1140 5242     		rsbs	r2, r2, #0
 3417 1142 1A61     		str	r2, [r3, #16]
 3418 1144 02E0     		b	.L175
 3419              	.L176:
 659:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         else player->velocity.x = 0;
 3420              		.loc 1 659 0 is_stmt 1
 3421 1146 BB6A     		ldr	r3, [r7, #40]
 3422 1148 0022     		movs	r2, #0
 3423 114a 1A61     		str	r2, [r3, #16]
 3424              	.L175:
 660:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		if (c == '2') 
 3425              		.loc 1 660 0
 3426 114c 2F23     		movs	r3, #47
 3427 114e FB18     		adds	r3, r7, r3
 3428 1150 1B78     		ldrb	r3, [r3]
 3429 1152 322B     		cmp	r3, #50
 3430 1154 13D1     		bne	.L177
 661:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         {
 662:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             make_entity(laser_sprite, entity_type_bullet, player->pos, (Vec2) { 0, 10});
 3431              		.loc 1 662 0
 3432 1156 2023     		movs	r3, #32
 3433 1158 FB18     		adds	r3, r7, r3
 3434 115a 0022     		movs	r2, #0
 3435 115c 1A60     		str	r2, [r3]
 3436 115e 2023     		movs	r3, #32
 3437 1160 FB18     		adds	r3, r7, r3
 3438 1162 0A22     		movs	r2, #10
 3439 1164 5A60     		str	r2, [r3, #4]
 3440 1166 BB6A     		ldr	r3, [r7, #40]
 3441 1168 F86B     		ldr	r0, [r7, #60]
 3442 116a 2022     		movs	r2, #32
 3443 116c B918     		adds	r1, r7, r2
 3444 116e 6A46     		mov	r2, sp
 3445 1170 30C9     		ldmia	r1!, {r4, r5}
 3446 1172 30C2     		stmia	r2!, {r4, r5}
 3447 1174 9A68     		ldr	r2, [r3, #8]
 3448 1176 DB68     		ldr	r3, [r3, #12]
 3449 1178 0121     		movs	r1, #1
 3450 117a FFF7FEFF 		bl	make_entity
 3451              	.L177:
 663:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         }
 664:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		
 665:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		step_physics(false);
 3452              		.loc 1 665 0
 3453 117e 0020     		movs	r0, #0
 3454 1180 FFF7FEFF 		bl	step_physics
 3455              	.LBB29:
 666:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         for(int i = 0;i<num_entities;i++)
 3456              		.loc 1 666 0
 3457 1184 0023     		movs	r3, #0
 3458 1186 FB64     		str	r3, [r7, #76]
 3459 1188 6FE0     		b	.L178
 3460              	.L184:
 667:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         {
 668:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             if(wall_collision(&entities[i]))
 3461              		.loc 1 668 0
 3462 118a FA6C     		ldr	r2, [r7, #76]
 3463 118c 1300     		movs	r3, r2
 3464 118e DB00     		lsls	r3, r3, #3
 3465 1190 9B18     		adds	r3, r3, r2
 3466 1192 9B00     		lsls	r3, r3, #2
 3467 1194 444A     		ldr	r2, .L186+40
 3468 1196 9B18     		adds	r3, r3, r2
 3469 1198 1800     		movs	r0, r3
 3470 119a FFF7FEFF 		bl	wall_collision
 3471 119e 031E     		subs	r3, r0, #0
 3472 11a0 15D0     		beq	.L179
 669:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             {
 670:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 				if (entities[i].type == entity_type_bullet)entities[i].destroy = true;
 3473              		.loc 1 670 0
 3474 11a2 4149     		ldr	r1, .L186+40
 3475 11a4 FA6C     		ldr	r2, [r7, #76]
 3476 11a6 2020     		movs	r0, #32
 3477 11a8 1300     		movs	r3, r2
 3478 11aa DB00     		lsls	r3, r3, #3
 3479 11ac 9B18     		adds	r3, r3, r2
 3480 11ae 9B00     		lsls	r3, r3, #2
 3481 11b0 CB18     		adds	r3, r1, r3
 3482 11b2 1B18     		adds	r3, r3, r0
 3483 11b4 1B78     		ldrb	r3, [r3]
 3484 11b6 012B     		cmp	r3, #1
 3485 11b8 09D1     		bne	.L179
 3486              		.loc 1 670 0 is_stmt 0 discriminator 1
 3487 11ba 3B49     		ldr	r1, .L186+40
 3488 11bc FA6C     		ldr	r2, [r7, #76]
 3489 11be 1300     		movs	r3, r2
 3490 11c0 DB00     		lsls	r3, r3, #3
 3491 11c2 9B18     		adds	r3, r3, r2
 3492 11c4 9B00     		lsls	r3, r3, #2
 3493 11c6 CB18     		adds	r3, r1, r3
 3494 11c8 1833     		adds	r3, r3, #24
 3495 11ca 0122     		movs	r2, #1
 3496 11cc 1A70     		strb	r2, [r3]
 3497              	.L179:
 671:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             }
 672:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             if (entities[i].type == entity_type_bullet)
 3498              		.loc 1 672 0 is_stmt 1
 3499 11ce 3649     		ldr	r1, .L186+40
 3500 11d0 FA6C     		ldr	r2, [r7, #76]
 3501 11d2 2020     		movs	r0, #32
 3502 11d4 1300     		movs	r3, r2
 3503 11d6 DB00     		lsls	r3, r3, #3
 3504 11d8 9B18     		adds	r3, r3, r2
 3505 11da 9B00     		lsls	r3, r3, #2
 3506 11dc CB18     		adds	r3, r1, r3
 3507 11de 1B18     		adds	r3, r3, r0
 3508 11e0 1B78     		ldrb	r3, [r3]
 3509 11e2 012B     		cmp	r3, #1
 3510 11e4 3ED1     		bne	.L180
 3511              	.LBB30:
 673:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             {
 674:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                 for(int j = 0;j<num_entities;j++)
 3512              		.loc 1 674 0
 3513 11e6 0023     		movs	r3, #0
 3514 11e8 BB64     		str	r3, [r7, #72]
 3515 11ea 36E0     		b	.L181
 3516              	.L183:
 675:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                 {
 676:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                     if(entities[j].type == entity_type_enemy)
 3517              		.loc 1 676 0
 3518 11ec 2E49     		ldr	r1, .L186+40
 3519 11ee BA6C     		ldr	r2, [r7, #72]
 3520 11f0 2020     		movs	r0, #32
 3521 11f2 1300     		movs	r3, r2
 3522 11f4 DB00     		lsls	r3, r3, #3
 3523 11f6 9B18     		adds	r3, r3, r2
 3524 11f8 9B00     		lsls	r3, r3, #2
 3525 11fa CB18     		adds	r3, r1, r3
 3526 11fc 1B18     		adds	r3, r3, r0
 3527 11fe 1B78     		ldrb	r3, [r3]
 3528 1200 022B     		cmp	r3, #2
 3529 1202 27D1     		bne	.L182
 677:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                     {
 678:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                         if(entity_collision(&entities[i],&entities[j]))
 3530              		.loc 1 678 0
 3531 1204 FA6C     		ldr	r2, [r7, #76]
 3532 1206 1300     		movs	r3, r2
 3533 1208 DB00     		lsls	r3, r3, #3
 3534 120a 9B18     		adds	r3, r3, r2
 3535 120c 9B00     		lsls	r3, r3, #2
 3536 120e 264A     		ldr	r2, .L186+40
 3537 1210 9818     		adds	r0, r3, r2
 3538 1212 BA6C     		ldr	r2, [r7, #72]
 3539 1214 1300     		movs	r3, r2
 3540 1216 DB00     		lsls	r3, r3, #3
 3541 1218 9B18     		adds	r3, r3, r2
 3542 121a 9B00     		lsls	r3, r3, #2
 3543 121c 224A     		ldr	r2, .L186+40
 3544 121e 9B18     		adds	r3, r3, r2
 3545 1220 1900     		movs	r1, r3
 3546 1222 FFF7FEFF 		bl	entity_collision
 3547 1226 031E     		subs	r3, r0, #0
 3548 1228 14D0     		beq	.L182
 679:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                         {
 680:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                             entities[j].destroy = true;
 3549              		.loc 1 680 0
 3550 122a 1F49     		ldr	r1, .L186+40
 3551 122c BA6C     		ldr	r2, [r7, #72]
 3552 122e 1300     		movs	r3, r2
 3553 1230 DB00     		lsls	r3, r3, #3
 3554 1232 9B18     		adds	r3, r3, r2
 3555 1234 9B00     		lsls	r3, r3, #2
 3556 1236 CB18     		adds	r3, r1, r3
 3557 1238 1833     		adds	r3, r3, #24
 3558 123a 0122     		movs	r2, #1
 3559 123c 1A70     		strb	r2, [r3]
 681:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                             entities[i].destroy = true;
 3560              		.loc 1 681 0
 3561 123e 1A49     		ldr	r1, .L186+40
 3562 1240 FA6C     		ldr	r2, [r7, #76]
 3563 1242 1300     		movs	r3, r2
 3564 1244 DB00     		lsls	r3, r3, #3
 3565 1246 9B18     		adds	r3, r3, r2
 3566 1248 9B00     		lsls	r3, r3, #2
 3567 124a CB18     		adds	r3, r1, r3
 3568 124c 1833     		adds	r3, r3, #24
 3569 124e 0122     		movs	r2, #1
 3570 1250 1A70     		strb	r2, [r3]
 682:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                             break;
 3571              		.loc 1 682 0
 3572 1252 07E0     		b	.L180
 3573              	.L182:
 674:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                 {
 3574              		.loc 1 674 0 discriminator 2
 3575 1254 BB6C     		ldr	r3, [r7, #72]
 3576 1256 0133     		adds	r3, r3, #1
 3577 1258 BB64     		str	r3, [r7, #72]
 3578              	.L181:
 674:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                 {
 3579              		.loc 1 674 0 is_stmt 0 discriminator 1
 3580 125a 144B     		ldr	r3, .L186+44
 3581 125c 1B68     		ldr	r3, [r3]
 3582 125e BA6C     		ldr	r2, [r7, #72]
 3583 1260 9A42     		cmp	r2, r3
 3584 1262 C3DB     		blt	.L183
 3585              	.L180:
 3586              	.LBE30:
 666:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         {
 3587              		.loc 1 666 0 is_stmt 1 discriminator 2
 3588 1264 FB6C     		ldr	r3, [r7, #76]
 3589 1266 0133     		adds	r3, r3, #1
 3590 1268 FB64     		str	r3, [r7, #76]
 3591              	.L178:
 666:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         {
 3592              		.loc 1 666 0 is_stmt 0 discriminator 1
 3593 126a 104B     		ldr	r3, .L186+44
 3594 126c 1B68     		ldr	r3, [r3]
 3595 126e FA6C     		ldr	r2, [r7, #76]
 3596 1270 9A42     		cmp	r2, r3
 3597 1272 8ADB     		blt	.L184
 3598              	.LBE29:
 683:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                         }
 684:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                     }
 685:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****                 }
 686:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****             }
 687:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 
 688:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****         }
 689:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		render();
 3599              		.loc 1 689 0 is_stmt 1
 3600 1274 FFF7FEFF 		bl	render
 690:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c **** 		cleanup_entities();
 3601              		.loc 1 690 0
 3602 1278 FFF7FEFF 		bl	cleanup_entities
 3603              	.LBE28:
 691:C:/Users/Arvid/Documents/GitHub/maskin_orienterad_space_invaders/space_invaders\startup.c ****     }
 3604              		.loc 1 691 0
 3605 127c 44E7     		b	.L185
 3606              	.L187:
 3607 127e C046     		.align	2
 3608              	.L186:
 3609 1280 00000000 		.word	e
 3610 1284 55555555 		.word	1431655765
 3611 1288 00000000 		.word	d
 3612 128c 55550055 		.word	1426085205
 3613 1290 00000000 		.word	ship_defn
 3614 1294 00000000 		.word	bullet_defn
 3615 1298 00000000 		.word	laser_defn
 3616 129c 00000000 		.word	enemy_defn
 3617 12a0 14010000 		.word	.LC1
 3618 12a4 1C010000 		.word	.LC2
 3619 12a8 C0440000 		.word	entities
 3620 12ac C0560000 		.word	num_entities
 3621              		.cfi_endproc
 3622              	.LFE36:
 3624              		.bss
 3625              		.align	2
 3626              	id_counter.4357:
 3627 56c8 00000000 		.space	4
 3628              		.text
 3629              	.Letext0:
