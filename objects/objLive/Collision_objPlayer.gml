/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

global.hp += 150;
if (global.hp > global.hpmax)
	global.hp =  global.hpmax;

instance_destroy();

var _msg = instance_create_depth(x, y, -2, objFloatMessage);
_msg.text = "HP +150";
