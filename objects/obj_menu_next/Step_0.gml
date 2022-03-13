if(active == 1){
  // show_message(string(img))
  // Create a moving copy of this item
  active = 2;
  move_inst = instance_create(x,y,obj_menu_move);
  move_inst.img = img;
  move_inst.direction = 180;
  with (obj_menu_current){
    active = 1;       // sigal current selection
    direction = 180;  // and pass it the direction
  }
  if(img < image_number) {
    img +=1;
  }
}


