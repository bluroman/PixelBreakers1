if(active == 1){
  // Create a moving copy of this image
  active = 2;
  move_inst = instance_create(x,y,obj_menu_move);
  move_inst.img = img;
  move_inst.direction = 0;
  if(img > -1){img -= 1;}
  with (obj_menu_current){
    active = 1;     // sigal current selection
    direction = 0;  // and pass it the direction
  }
}

