/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if (timer > 0) {
	timer--;
	return;
}
	
//instance_create_depth()
var _x = random_range(0, 100.0) - 50;
instance_create_depth(objPlayer.x+_x, objPlayer.y-200, 0, objArrow);	
timer = 100;
