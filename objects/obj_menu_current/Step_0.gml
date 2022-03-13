/// @description  Create a moving copy of this item
if(active == 1)
{
    active = 2;
    move_inst = instance_create(x,y,obj_menu_move);
    move_inst.direction = direction;
    move_inst.img = img;
    visible = false;
}


