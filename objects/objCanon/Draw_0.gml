/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if (recharge_timer > 0)
	recharge_timer--;

image_alpha = 1 - (recharge_timer / RECHARGE) / 2;

draw_self();

draw_set_color(c_black);
draw_rectangle(x-50-10, y-1, x-50 + 10, y+1, false );

draw_set_color(c_blue);
draw_rectangle(x-50-10, y-1, x-50-10 + 20 * (1-(recharge_timer / RECHARGE)), y+1, false );

draw_set_color(c_white);