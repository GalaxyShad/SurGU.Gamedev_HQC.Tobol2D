


if (xsp > 0 && place_meeting(x+3, y-2, parSolid)) {
	xsp = 0;
	
	//while(place_meeting(x+4, y, parSolid))
		//x--;
}
	
if (xsp < 0 && place_meeting(x-3, y-2, parSolid)) {
	xsp = 0;
	
	//while(place_meeting(x-4, y, parSolid))
		//x++;
}

if (action != ACT_HURT) {

	if (ground) {
		if (xsp > 0 && place_meeting(x+64, y, parSolid))
			ysp = -5;
		if (xsp < 0 && place_meeting(x-64, y, parSolid))
			ysp = -5;
	}
	

	var _house = instance_nearest(x + 5 * sign(image_xscale), y, objHouse);
	if (_house) {
		
		if (abs(_house.x - x) > 60) {
			action = ACT_RUN;
			xsp += 0.1 * sign(_house.x - x);
		
			if (xsp > 4)  xsp =  4;
			if (xsp < -4) xsp = -4;
		} else {
			action = ACT_ATK;	
		}
		
		if (action == ACT_ATK && floor(image_index) == 2) {
			global.hp -= 1;
	
			//if (_house.hp <= 0)
				//with _house instance_destroy();	
		}
	
	}

} else {
	if (ground) {
		if (hp <= 0) {
			global.enemyHp -= 40;
			instance_create_depth(x, y, -1, objSfxEnemyDie);
			
			if (random(100) < 40)
				instance_create_depth(x, y, -1, objLive);
				
			
			instance_destroy();	
			
		}
		
		action = ACT_RUN;
	}
}

x += xsp;
y += ysp;

if (!place_meeting(x, y+1, parSolid)) {
	ground = false;
	ysp += grv;
}

if (place_meeting(x, y+1, parSolid) && ysp >= 0) {
	ground = true;	
	ysp = 0;
}

if (ground) {
	while (place_meeting(x, y+1, parSolid))	
		y--;
		
	//while (!place_meeting(x, y, parSolid) && place_meeting(x, y+1, parSolid))	
		//y++;
}


if (action != ACT_HURT) {
	if (xsp > 0)
		image_xscale = 1;
	else if (xsp < 0)
		image_xscale = -1;
}

if (ground)
	xsp -= min(abs(xsp), 0.2) * sign(xsp);