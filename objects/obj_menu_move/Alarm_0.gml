/*
    Target positions reached so pass this instances
    image to the target image before destroying it.
*/
if(x == global.menu_x){ // Target was center image
  // make active;
  obj_menu_current.img = img;
  obj_menu_current.active = 0; // reset to allow selection
  obj_menu_current.visible = true;
}else{
  if(x == global.menu_x-sprite_width){
    obj_menu_prev.img +=1; // target was previous level
  }else{
    obj_menu_next.img -=1; // target was next level
  }
  // reset both to allow selection
  obj_menu_prev.active = 0;
  obj_menu_next.active = 0;
}
instance_destroy();


/* */
/*  */
