action_sound(snd_with_bricks, 0);
//move_bounce_solid(1);
if (metal_ball == false)
    move_bounce_solid(1);

with (other)
{
    if solid = true
    { 
        //show_message("near_destroy set true"+ "x:"+string(x) + "y:"+ string(y));  
        //image_speed = 1;
        instance_destroy();
        global.Bricks_Count += 1;
        scr_create_fall_blocks(x, y, sprite_index);
        
        //instance_destroy();
    }
}
near_destroy = true;
target_x = other.x;
target_y = other.y;
alarm[0] = 1;



