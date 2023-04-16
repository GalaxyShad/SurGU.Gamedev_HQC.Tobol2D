/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе


draw_self();

draw_set_halign(fa_center);
draw_set_color(c_red);
draw_text(x, y+32, "Game Over");
draw_set_color(c_white);
draw_text(x, y+48, "Press enter to retry");
draw_set_halign(fa_left);