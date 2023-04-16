/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

draw_set_halign(fa_center);

draw_set_font(fntAtk);

draw_set_color(c_black);
draw_text(x+1, y+1, text);
draw_set_color(c_red);

draw_text(x, y, text);

draw_set_halign(fa_left);
draw_set_color(c_white);