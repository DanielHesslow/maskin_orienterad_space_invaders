/*
 * 	startup.c
 *
 */
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	".L1: B .L1\n"				/* never return */
	) ;
}

#define FORI(limit)for(int i = 0; i < limit; i++)
#define MAX_POINTS 20

typedef unsigned char  u8;
typedef unsigned short u16;
typedef unsigned long  u32;
typedef signed char    s8;
typedef signed short   s16 ;
typedef signed long    s32 ;

typedef enum{
    false = 0,
    true = 1,
}bool;

typedef struct
{
    volatile u32 MODER;
    volatile u32 OTYPER;
    volatile u32 OSPEEDER;
    volatile u32 PUPDR;
    volatile u32 IDR;
    volatile u32 ODR;
    volatile u32 BSRR;
    volatile u32 LCKR;
    volatile u32 AFRL;
    volatile u32 AFRH;
} GPIO_REG;

typedef struct
{
    volatile u32 STK_CTRL;
    volatile u32 STK_LOAD;
    volatile u32 STK_VAL;
    volatile u32 STK_CALIB;
} SysTick;


typedef unsigned char uint8_t;

GPIO_REG *d = (GPIO_REG *)0x40020C00;
GPIO_REG *e = (GPIO_REG *)0x40021000;
SysTick *sys_tick = (SysTick *)0xe000e010;

uint8_t B_CS1 = 0x8;
uint8_t	B_CS2 = 0x10;
uint8_t B_RST = 0x20;

uint8_t LCD_OFF = 0b00111110;
uint8_t LCD_ON = 0b00011111;
uint8_t LCD_SET_ADD = 0b01000000;
uint8_t LCD_SET_PAGE = 0b010111000;
uint8_t LCD_DISP_START =  0b11000000;
uint8_t LCD_BUSY = 0b10000000;

#define SIMULATOR
void delay250xns(u32 num)
{
    #ifndef SIMULATOR
    sys_tick->STK_CTRL = 0;
    sys_tick->STK_LOAD = num*168/4-1;
    sys_tick->STK_VAL = 0;
    sys_tick->STK_CTRL = 5;
    while(!(sys_tick->STK_CTRL & 0x10000));
    sys_tick->STK_CTRL = 0;
    #endif
}

void delay250ns(void)
{
    delay250xns(1);
}

void delay500ns(void)
{
    delay250xns(2);
}

void delay_micro(u32 num)
{

    delay250xns(4*num);
}

void delay_milli(u32 num)
{
    for(int i = 0;i<num;i++)
    {
        delay_micro(1000);
    }
}

u8 bit_E = 0b01000000;
u8 bit_SELECT = 0b100;
u8 bit_RW = 0b10;
u8 bit_RS = 0b1;

void ascii_set_bit(u8 byte)
{
    e->ODR |= byte & 0b1111111111111011;
}

void ascii_clear_bit(u8 byte)
{
    //e->ODR &= 0xff0|~byte;
	e->ODR &= 0xffff-byte;
	e->ODR &= 0b1111111111111011; //reset bit clear
}

void select_controller(uint8_t controller)
{
	e->ODR &= 0b1111111111100011;
    e->ODR |= controller;
	//scii_clear_bit(bit_SELECT | B_CS1 | B_CS2);
}

void graphics_wait_ready()
{
	ascii_clear_bit(bit_E); //ascii_clear_bit(B_E | B_RS); possible?
	e->MODER = 0x00005555;
	ascii_clear_bit(bit_RS);
	delay500ns();
	
	bool done = false;
	
	while(!done)
	{
		ascii_set_bit(bit_E);
		delay500ns();
		ascii_clear_bit(bit_E);
		ascii_set_bit(bit_RW);
		
		bool lcd_busy = e->IDR & LCD_BUSY;
		
		if(lcd_busy == false)
			done = true;
		delay500ns();
	}
	ascii_set_bit(bit_E);
	e->MODER = 0x55555555;
}

unsigned char graphics_read(uint8_t controller)
{
	ascii_clear_bit(bit_E); //ascii_clear_bit(bit_E | bit_RS); possible?
	e->MODER = 0x00005555;
	ascii_set_bit(bit_RS);
	ascii_set_bit(bit_RW);
	
	select_controller(controller);
	
	delay500ns();
	
	ascii_set_bit(bit_E);
	delay500ns();
	
	unsigned char RV = e->IDR >> 8;
	
	if(controller == B_CS1)
	{
		select_controller(B_CS1);
		graphics_wait_ready();
	}
	else if(controller == B_CS2)
	{
		select_controller(B_CS2);
		graphics_wait_ready();
	}
	
	return RV;
}

void graphics_write(uint8_t value, uint8_t controller) {
	
	e->ODR = value << 8 | (e->ODR & 0xf);
	select_controller(controller);
    delay500ns();
	ascii_set_bit(bit_E);
	delay500ns();
	#ifndef SIMULATOR
    ascii_clear_bit(bit_E);
	
	if(controller == B_CS1)
	{
		select_controller(B_CS1);
		graphics_wait_ready();
	}
	else if(controller == B_CS2)
	{
		select_controller(B_CS2);
		graphics_wait_ready();
	}
	#endif
    
	e->ODR &= 0x0f;
	
	ascii_set_bit(bit_E);
	select_controller(0);
}

void graphics_write_command(uint8_t command, uint8_t controller)
{
#ifndef SIMULATOR
	ascii_clear_bit(bit_E);
	select_controller(controller);
#endif
    ascii_clear_bit(bit_RS);
	ascii_clear_bit(bit_RW);
	graphics_write(command, controller);
}

void graphics_write_data(uint8_t write_data, uint8_t controller)
{
#ifndef SIMULATOR
	ascii_clear_bit(bit_E);
	select_controller(controller);
#endif
	ascii_set_bit(bit_RS);
	ascii_clear_bit(bit_RW);
	graphics_write(write_data, controller);
}

uint8_t graphics_read_data(uint8_t controller)
{
	(void) graphics_read(controller);
	return graphics_read(controller);
}

void graphics_initialize()
{
	ascii_set_bit(bit_E);
	delay_micro(10);
	ascii_clear_bit(B_CS1);
	ascii_clear_bit(B_CS2);
	ascii_clear_bit(B_RST);
	ascii_clear_bit(bit_E);
	delay_milli(30);
	ascii_set_bit(B_RST);
	graphics_write_command(LCD_OFF , B_CS1 | B_CS2);
	graphics_write_command(LCD_ON , B_CS1 | B_CS2);
	graphics_write_command(LCD_DISP_START , B_CS1 | B_CS2);
	graphics_write_command(LCD_SET_ADD , B_CS1 | B_CS2);
	graphics_write_command(LCD_SET_PAGE , B_CS1 | B_CS2);
	select_controller(0);
}

void graphics_clear_screen()
{
	for(int page = 0; page < 8; page++)
	{
		graphics_write_command(LCD_SET_PAGE | page, B_CS1 | B_CS2);
		graphics_write_command(LCD_SET_ADD | 0, B_CS1 | B_CS2);
		for(int add = 0; add < 64; add++)
		{
            graphics_write_data(0, B_CS1 | B_CS2);
		}
	}
}

uint8_t off_screen_buffer[8][128];
static uint8_t modified[8][128];

void flush_screen()
{
	for (int x = 0; x < 8; x++)
	{
		graphics_write_command(LCD_SET_PAGE | x, B_CS1 | B_CS2);
		for(int y = 0; y < 64; y++)
		{
			bool set=false;
			if (modified[x][y] && modified[x][y + 64])
			{
				graphics_write_command(LCD_SET_ADD | y, B_CS1|B_CS2);
				set = true;
			}

            if(modified[x][y])
            {
                if(!set)graphics_write_command(LCD_SET_ADD | y, B_CS1);
                graphics_write_data(off_screen_buffer[x][y], B_CS1);
                modified[x][y]=0;
            }
            if(modified[x][y + 64])
            {
				if (!set)graphics_write_command(LCD_SET_ADD | y, B_CS2);
                graphics_write_data(off_screen_buffer[x][y + 64], B_CS2);
                modified[x][y+64]=0;
            }
		}
	}  
}

void set_all(uint8_t value)
{
	for (int x = 0; x < 8; x++)
	{
		graphics_write_command(LCD_SET_PAGE | x, B_CS1 | B_CS2);
		graphics_write_command(LCD_SET_ADD | 0, B_CS1 | B_CS2);
		for (int y = 0; y < 64; y++)
			graphics_write_data(value, B_CS1|B_CS2);
	}
}

void write_px(int x, int y, bool set)
{
    x = 63-x;
    y = 127-y;
    uint8_t old_values = off_screen_buffer[x>>3][y];
    uint8_t shift = x&0x7;
    if(((old_values>>(shift))&0x1)!=set)
    {
        modified[x>>3][y] ^= (1<<shift);
        off_screen_buffer[x>>3][y] ^= (1<<shift);
    }
}

void slow_clear()
{
    for(int i = 0; i<64;i++)
    {
		write_px(i, i * 2, false);
		write_px(i, i * 2 + 1, false);
    }
    flush_screen();
}
void slow_fill()
{
    for(int i = 0; i<64;i++)
    {
		write_px(i, i * 2, true);
		write_px(i, i * 2 + 1, true);
    }

    flush_screen();
}

typedef struct tPoint
{
	uint8_t x;
	uint8_t y;
}POINT;

typedef struct 
{
	bool sprite[4][16][16];
	int num_frames,h,w;
} Sprite;


typedef struct 
{
    int x;
    int y;
} Vec2;

typedef enum
{
	entity_type_player,
	entity_type_bullet,
	entity_type_enemy,
    entity_type_fx,
} EntityType;

typedef struct 
{
    Sprite *sprite;
	int id;
    Vec2 pos, velocity;
	bool destroy;
	int damage;
	EntityType type;
} Entity;

static Sprite sprites[16];
static Entity entities[128];
static int num_entities=0;
static num_sprites = 0;

int make_entity(Sprite *sprite, EntityType type, Vec2 pos, Vec2 velocity)
{
	static id_counter = 0;
	Entity *ret = &entities[num_entities++];
	Entity zeroed = {};
    *ret = zeroed;
	ret->sprite = sprite;
	ret->id = id_counter++;
    ret->pos = pos;
    ret->velocity = velocity;
    ret->type = type;
	return ret->id;
}


void blit_sprite(Sprite *sprite, int x, int y, int frame)
{
	for (int x_ = 0; x_ < sprite->w; x_++)
	{
		for (int y_ = 0; y_ < sprite->h; y_++)
		{
			bool set = sprite->sprite[frame][x_][y_];
			if (set)
				write_px(x + x_, y + y_, true);
		}
	}
}

void clear_sprite(Sprite *sprite, int x, int y, int frame)
{
	for (int x_ = 0; x_ < sprite->w; x_++)
	{
		for (int y_ = 0; y_ < sprite->h; y_++)
		{
			bool set = sprite->sprite[frame][x_][y_];
			if (set)
				write_px(x + x_, y + y_, false);
		}
	}
}

Sprite *make_sprite(char *sprite, int w, int h, int num_frames)
{
	Sprite *ret = &sprites[num_sprites++];
    ret->num_frames = num_frames;
    ret->w = w;
    ret->h = h;
	for (int frame = 0; frame < num_frames; frame++)
    {
        for (int y = 0; y < h; y++)
        {
            for (int x = 0; x < w; x++)
            {
		
				ret->sprite[frame][x][h-y-1] = (*(sprite++)) == '#';
			}
		}
	}

	return ret;
}

void step_physics()
{
	for (int i = 0; i < num_entities; i++)
	{
		entities[i].pos.x += entities[i].velocity.x;
		entities[i].pos.y += entities[i].velocity.y;
	}
}

void render()
{
	for (int i = 0; i < num_entities; i++)
	{
		blit_sprite(entities[i].sprite, 
            entities[i].pos.x-entities[i].sprite->w/2,
            entities[i].pos.y-entities[i].sprite->h/2, 0);
	}
	flush_screen();
	for (int i = 0; i < num_entities; i++)
	{
		clear_sprite(entities[i].sprite, 
            entities[i].pos.x-entities[i].sprite->w/2, 
            entities[i].pos.y-entities[i].sprite->h/2, 0);
	}
}

//note will change between frames
Entity *entity_from_id(int id)
{
	for (int i = 0; i < num_entities; i++)
	{
		if (entities[i].id == id)return &entities[i];
	}
    return 0;
}

void cleanup_entities()
{
	for (int i = 0; i < num_entities; i++)
	{
		if (entities[i].destroy) entities[i] = entities[--num_entities];
	}
}




char keyb()
{
	GPIO_REG *d = (GPIO_REG *)0x40020C00;
	GPIO_REG *e = (GPIO_REG *)0x40021000;
	
	char res[4][4]=
	{{'1','2','3','A'},
	{'4','5','6','B'},
	{'7','8','9','C'},
	{'*','0','#','D'},};
	for(int i = 0; i<4;i++)
	{
		d->ODR = 0x1000<<i | d->ODR&0xff;
		for(int j = 0; j<4;j++)
		{
			if(d->IDR & 0x100<<j)
			{
				return res[i][j];
			}
		}
	}
	return 0;
}

void get_bounds(Entity *entity, int *x_min, int *x_max, int *y_min, int *y_max)
{
    *x_max = entity->pos.x + entities->sprite->w/2;
    *x_min = entity->pos.x - entities->sprite->w/2;

    *y_max = entity->pos.y + entities->sprite->h/2;
    *y_min = entity->pos.y - entities->sprite->h/2; 
}

bool wall_collision(Entity *entity)
{
    int x_min,x_max,y_min,y_max;
    get_bounds(entity,&x_min,&x_max,&y_min,&y_max);
    
    if(x_max >= 64  || 
       x_min < 0    ||
       y_max >= 128 || 
       y_min < 0) return true;
    
    return false;
}

bool entity_collision(Entity *a, Entity *b)
{
    int ax_min,ax_max,ay_min,ay_max;
    get_bounds(a,&ax_min,&ax_max,&ay_min,&ay_max);
    
    int bx_min,bx_max,by_min,by_max;
    get_bounds(b,&bx_min,&bx_max,&by_min,&by_max);
   
	if((ax_min <= bx_min && ax_max >= bx_min)||
        (bx_min <= ax_min && bx_max >= ax_min))
    {
        if((ay_min <= by_min && ay_max >= by_min)||
           (by_min <= ay_min && by_max >= ay_min))
        {
            return true;
        }
    }
    return false;
}

char *ship_defn=
"      #      "
"     ###     "
"     ###     "
" ########### "
"#############"
"#############"
"#############"
"#############";
        
char *bullet_defn =
"  #  "
" ### "
"#####"
" ### "
"  #  ";
char *enemy_defn = 
"  #     #  "
"   #   #   "
"  #######  "
"  # ### #  "
" ## ### ## "
"###########"
"# ####### #"
"# #     # #"
"   #   #   "
"    # #    ";


char *laser_defn = "###########";

int main()
{
    { //init app
        e->MODER = 0x55555555; //set write entire e
		d->MODER = 0x55005555;
		d->OTYPER = 0x0000;     //set push-pull 
		d->PUPDR  = 0xAA000000; //set pull-down
    }
    graphics_initialize();
	set_all(0xff);
	

    

	Sprite *ship_sprite = make_sprite(ship_defn,13,8,1);
	Sprite *bullet_sprite = make_sprite(bullet_defn,5,5,1);
    Sprite *laser_sprite = make_sprite(laser_defn,1,8,1);
    Sprite *enemy_sprite = make_sprite(enemy_defn,11,10,1);

	int *player_id = make_entity(ship_sprite, entity_type_player,(Vec2){31,4},(Vec2){0,0});
    make_entity(enemy_sprite,entity_type_enemy,(Vec2){31,100},(Vec2){0,0});
	set_all(0);

    int speed = 2;
    for(;;)
    {
        char c = keyb();
		Entity *player = entity_from_id(player_id);
        if(c == '6') player->velocity.x = 2;
        else if(c == '4') player->velocity.x = -2;
        else player->velocity.x = 0;
		if (c == '2') 
        {
            make_entity(laser_sprite, entity_type_bullet, player->pos, (Vec2) { 0, 10});
        }
		
		step_physics();
        for(int i = 0;i<num_entities;i++)
        {
            if(wall_collision(&entities[i]))
            {
				if (entities[i].type == entity_type_bullet)entities[i].destroy = true;
            }
            if (entities[i].type == entity_type_bullet)
            {
                for(int j = 0;j<num_entities;j++)
                {
                    if(entities[j].type == entity_type_enemy)
                    {
                        if(entity_collision(&entities[i],&entities[j]))
                        {
                            entities[j].destroy = true;
                            entities[i].destroy = true;
                            break;
                        }
                    }
                }
            }

        }
		render();
		cleanup_entities();
    }
}
