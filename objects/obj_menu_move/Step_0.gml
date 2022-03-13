if(targetx == -1) {exit;} // not yet ready so just exit

if(targetx == global.menu_x){
  // fade out mask and scale up - lighten and enlarge
  if(alpha > 0) {alpha -= 0.1;}
  if(scale < 1) {scale += 0.03;}
}else{
  // fade in mask and scale down - darken and shrink
  if(alpha < 0.6) {alpha += 0.1;}
  if(scale > 0) {scale -= 0.03;}
}
// Prevent over-running target x
if(direction == 180 && x < targetx){x = targetx;}
if(direction == 0 && x > targetx){x = targetx;}

if(x == global.menu_x && x == targetx){
  // center select full image and no mask
  alpha = 0;
  scale = 1;
  done = true;
}
if(!done && x == targetx){
  // half scale image and full mask
  alpha = 0.5;
  scale = 0.5;
  done = true;
}
if(done){
  speed = 0;
  x = targetx;
  alarm[0] = 1;
}


