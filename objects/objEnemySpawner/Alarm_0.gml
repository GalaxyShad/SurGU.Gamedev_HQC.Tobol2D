/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

var count = choose(2, 3, 4, 2, 3);

for (var i = 0; i < count; i++)
	instance_create_depth( x+i*32, y, 1, objEnemy );
alarm[0] = time;