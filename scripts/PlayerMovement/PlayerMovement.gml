// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function PlayerGroundMovement() {
  if (!ground)
    return;
    
  // Deacceleration on slopes
  var sina = dsin(sensor.angle);
  
  gsp -= slp * sina;
  
  xsp = gsp *  dcos(sensor.angle);
  ysp = gsp * -dsin(sensor.angle);
  
  
  // Movement
      if (is_key_left) {
      
        if (gsp > 0) {
          gsp -= dec;  
          if (gsp <= 0) gsp = -0.5;      
        } else if (gsp > -top) {    
          gsp -= acc;
          if (gsp < -top) gsp = -top;      
        } 
      } else if (is_key_right) {
      
        if (gsp < 0) {
          gsp += dec;  
          if (gsp >= 0) gsp = 0.5;  
        } else if (gsp < top) {
          gsp += acc;
          if (gsp > top) gsp = top;  
        } 
      }

  
  
  // трение
  if (!is_key_left && !is_key_right) {
    gsp -= min(abs(gsp), frc) * sign(gsp);
  }

  
}