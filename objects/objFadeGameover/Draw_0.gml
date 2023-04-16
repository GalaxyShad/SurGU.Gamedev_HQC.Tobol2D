/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

alpha  += 0.005;

if (alpha  > 1)
	room_goto(rmRetry);



var _cam = view_camera[0];
draw_sprite_ext(sprFadeBlack, 0, 
	camera_get_view_x( _cam), camera_get_view_y( _cam), 
	420, 240, 0, c_white, alpha);
	


