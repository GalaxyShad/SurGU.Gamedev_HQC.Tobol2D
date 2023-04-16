/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if (action != ACT_ATTACK) {
	if (xsp < 0)
		image_xscale = -1;
	else if (xsp > 0)
		image_xscale = +1;
} else {
	if (is_key_left) image_xscale = -1;
	if (is_key_right) image_xscale = 1;
}
	

image_speed = 0.25;

if (action == ACT_NORMAL) {
	if (gsp == 0)	
		sprite_index = sprPlayer;
	else if (abs(gsp) > 0) {
		image_speed = 0.15 + abs(gsp) / 25;
		sprite_index = sprPlayerRun;
	}
} else if (action == ACT_JUMP) {
	sprite_index = sprPlayerJump;	
} else if (action == ACT_ATTACK) {
	image_speed = 1;
	sprite_index = sprPlayerAttack;	
	if (image_index >= 3)
		image_index = 3;
}

image_angle = sensor.get_ground_angle();
	
if (invis_timer == 0 || (invis_timer > 0 && invis_timer % 4 > 2)) 
	draw_self();
	
if (invis_timer > 0)
	invis_timer--;
	
//draw_text(x, y, hp);