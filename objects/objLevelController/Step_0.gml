/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if (global.hp <= 0)
	room_goto(rmRetry);
	
if (global.enemyHp <= 0) {
	global.enemyHp = 0;
}