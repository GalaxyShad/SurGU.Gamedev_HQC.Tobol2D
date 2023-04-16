/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

xsp				= 0;		
ysp				= 0;

hp				= 3;
invis_timer		= 0;

acc				= 0.055;	// ускорение
grv				= 0.2;		// гравитация

gsp				= 0;		// скорость на земле

frc				= acc;		// трение
airacc			= acc*2;	// ускорение в воздухе

angle			= 0;		// угол

sensor			= new Sensor();

ACT_NORMAL		= 0;
ACT_JUMP		= 1;
ACT_ATTACK		= 2;

action			= ACT_NORMAL;

is_key_left		= false;
is_key_right	= false;
is_key_action	= false;
is_key_jump		= false;

top				= 4;
dec				= 0.5;

slp				= 0.125;

ground			= false;

atk_timer = 20;
