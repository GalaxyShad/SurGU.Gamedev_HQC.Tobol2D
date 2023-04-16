/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

var cam = view_camera[0];

var r = global.hp / global.hpmax;
var l = 100;

x = camera_get_view_x(cam) + 210;
y = camera_get_view_y(cam) + 120;


draw_set_color(c_white);

draw_text(x- l /2, y+ 96 - 12, "HP Tobol Fortress");

draw_rectangle(x - l /2 -2, y + 96 - 2 - 2, x -l/2  + l + 2, y + 96 + 2 + 2, false);
draw_set_color(c_black);
draw_rectangle(x - l /2, y + 96 - 2, x -l/2  + l, y + 96 + 2, false);
draw_set_color(c_blue);
draw_rectangle(x - l / 2, y + 96 - 2, x -l/2 + l*r, y + 96 + 2, false);
draw_set_color(c_white);

r = global.enemyHp / global.enemyHpMax;
l = 100;

draw_text(x- l /2, y - 96 - 12, "HP Djungari");
draw_set_color(c_white);
draw_rectangle(x - l /2 -2, y - 96 - 2 - 2, x -l/2  + l + 2, y - 96 + 2 + 2, false);

draw_set_color(c_black);
draw_rectangle(x - l /2, y - 96 - 2, x -l/2  + l, y - 96 + 2, false);

draw_set_color(c_red);
draw_rectangle(x - l / 2, y - 96 - 2, x -l/2 + l*r, y - 96 + 2, false);

draw_set_color(c_white);