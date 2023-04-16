/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе


if (action == ACT_RUN) {
	sprite_index = sprEnemyRun;
	
	image_speed = 0.75;
}

if (action == ACT_ATK) {
	sprite_index = sprEnemyAtk;
	image_speed = 0.25;
}

if (action == ACT_HURT) {
	sprite_index = sprEnemyHurt;
}

var _da = image_angle;

if (action == ACT_HURT) {
 	image_angle = point_direction(x, y, xprevious, yprevious) + 90;
} else {
	image_angle = 0;	
}

draw_self();
image_angle = _da;

draw_sprite(sprEnemyHpBar, 0, x-5, y+5);
draw_sprite_ext(sprEnemyHpBar, 1, x-5, y+5, (hp >= 0) ? (hp / hpmax) : 0, 1, 0, c_white, 1);