
function PlayerCollision() {

  x += xsp;
  y += ysp;
  
  x = clamp(x, 0 + sensor.wall_box.hradius, room_width - sensor.wall_box.hradius);
  
  if ( (sensor.angle <= 15 || sensor.angle >= 345 ) && ground) {
    sensor.wall_box.vradius = 8;  
  } else {
    sensor.wall_box.vradius = 0;
  }
    
	
  while (sensor.is_collision_right()) {
	gsp = 0;
	xsp = 0;
    x -= dcos(sensor.angle);
    y += dsin(sensor.angle);
  }

  while (sensor.is_collision_left()) {
	gsp = 0;
	xsp = 0;
    x += dcos(sensor.angle);
    y -= dsin(sensor.angle);
  }
  
  if (!ground) {  
    sensor.angle = 0;
    
    if (sensor.is_collision_top() && ysp < 0) {
  
      sensor.angle = 0;
      ysp = 0;
      
      while (sensor.is_collision_top()) 
		y += 1;
      
    }
    
  
    // Landing
    if (sensor.is_collision_bottom() && ysp > 0) {
      ground = true;
      
      var _ang = sensor.get_ground_angle();
	  
	  action = ACT_NORMAL;

      _ang = abs(sensor.angle);
      if (_ang >= 180) 
        _ang = 360 - _ang;
    
      if ( _ang >= 0 &&  _ang <= 23)
        gsp = xsp;
        
      else if ( _ang >= 24 &&  _ang <= 45) {
        if (abs(xsp) > abs(ysp)) 
          gsp = xsp;
        else 
          gsp = ysp / 2 * -sign(sin(degtorad(sensor.angle)));
      
      } else if ( _ang >= 46 &&  _ang <= 100) {
        if (abs(xsp) > abs(ysp))
          gsp = xsp;
        else 
          gsp = ysp * -sign(sin(degtorad(sensor.angle)));
      }
      
      ysp = 0;
    }
  

  }
  
  if (ground) {
    
    while (sensor.is_collision_bottom()) {
      y -= dcos(sensor.angle);  
      x -= dsin(sensor.angle);
    }
    
    while (sensor.is_collision_bottom(parSolid, 1)) {
      y -= dcos(sensor.angle);  
      x -= dsin(sensor.angle);
    }
    
    while (!sensor.is_collision_bottom() && 
        sensor.is_collision_ground()
    ) {
      y += dcos(sensor.angle);  
      x += dsin(sensor.angle);
    }
    
    if (!sensor.is_collision_ground()) {
      sensor.angle = 0;
      ground = false;
    } 

  } 
  


}