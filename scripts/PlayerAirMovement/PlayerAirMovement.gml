function PlayerAirMovement(){
  if (ground)
    return;
  
  // Gravity
  ysp += grv;
  if (ysp > 16)
    ysp = 16;
    
  // Movement
  if (is_key_left && xsp > -top) 
    xsp -= airacc;
  else if (is_key_right && xsp < top) 
    xsp += airacc;
    
  // Air Drag
  if (!ground && ysp < 0 && ysp > -4) {
      //xsp -= (((xsp * 1000) div 125) / 256000);
	  xsp *= 0.975;
  }
}