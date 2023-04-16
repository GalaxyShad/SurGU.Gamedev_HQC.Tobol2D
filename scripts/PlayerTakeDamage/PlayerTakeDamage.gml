// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function PlayerTakeDamage() {
	if (invis_timer != 0) return;
	
	hp--;
	invis_timer = 30;
}