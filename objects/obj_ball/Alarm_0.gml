//show_message("alarm0");
if (near_destroy == true)
{
    var inst1, inst2;
    //show_message("Near Destroy");
    inst1 = instance_position(target_x - 20, target_y, obj_block);
    if inst1
    {    
        with (inst1)
        {
            //image_speed = 1;
            instance_destroy();
            global.Bricks_Count += 1;
            scr_create_fall_blocks(x,y,sprite_index);
        } 
            
    }
    inst2 = instance_position(target_x + 20, target_y, obj_block);
    if inst2
    {    
        with (inst2)
        {
            //image_speed = 1;
            instance_destroy();
            global.Bricks_Count += 1;
            scr_create_fall_blocks(x,y,sprite_index);
        }
    }
    near_destroy = false;
}

