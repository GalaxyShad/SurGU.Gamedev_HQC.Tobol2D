/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if (global.hp <= 0) {
	instance_create_depth(x, y, -50, objFadeGameover);
	instance_destroy();	
}

if (global.enemyHp <= 0) {
	global.enemyHp = 0;
	instance_create_depth(x, y, -50, objFadeWin);
	instance_destroy();
}

