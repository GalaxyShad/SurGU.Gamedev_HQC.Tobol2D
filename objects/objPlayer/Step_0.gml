/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

is_key_left = keyboard_check(vk_left);
is_key_right = keyboard_check(vk_right);
is_key_action = keyboard_check(ord("X"));
is_key_jump = keyboard_check(ord("Z"));


PlayerCollision();
PlayerGroundMovement();
PlayerAirMovement();



if (ground && is_key_jump) {
	ground = false;
	
	var _ang =  sensor.get_ground_angle();
	ysp =- 6 * dcos(_ang) + ysp;
	xsp =- 6 * dsin(_ang) + xsp;
	
	
	action = ACT_JUMP;
}

if (action == ACT_JUMP && !ground && ysp < -2 && !is_key_jump) {
	ysp = -2;
}

if (is_key_action) {
	action = ACT_NORMAL;
	atk_timer   = 30;
	image_index = 1;
	action = ACT_ATTACK;
	gsp *= 0.4;
}

if (action == ACT_ATTACK) {
	if (atk_timer > 0)
		atk_timer--;
	else 
		action = ACT_NORMAL;
}

var _list = ds_list_create();
var _num = instance_place_list(x, y, objEnemy, _list, false);

if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
		var enemy = _list[|i];
		if (enemy && action == ACT_ATTACK && image_index == 2) {

			enemy.xsp +=  ((0.25 + random_range(-0.1, +0.1)) * sign(image_xscale));
			enemy.ysp = -2;
			enemy.action = enemy.ACT_HURT;
			enemy.hp--;
			
			instance_create_depth(x+10* image_xscale, y, -1, objSfxAtk);
			var _msg = instance_create_depth(enemy.x, enemy.y, -2, objFloatMessage);
			_msg.text = string(enemy.hp);
		}
    }
}

ds_list_destroy(_list);

var _canon = instance_place(x, y, objCanon);
if (_canon && action == ACT_ATTACK) {
	if (_canon.recharge_timer == 0) {
		instance_create_depth(_canon.x, _canon.y, -1, objSfxExplosion);
		
		var _cb = instance_create_depth(_canon.x, _canon.y, -1, objCanonBall);
		_cb.vspeed = -5;
		_cb.hspeed = 16;
		_canon.recharge_timer = _canon.RECHARGE;
		
		xsp =- 12;
		ysp = -4;
		
		ground = false;
		
		action = ACT_JUMP;
	}
}

