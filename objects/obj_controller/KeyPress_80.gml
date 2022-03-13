if !global.paused
{
    global.paused = true;
    with(obj_ball)
    {
        prev_ball_speed = speed;
        prev_timeline_speed = timeline_speed;
        speed = 0;
        timeline_speed = 0;
        if (alarm[0]>0) alarm[0]+=1;
    }
    with(obj_bat)
    {
        if (alarm[0]>0) alarm[0]+=1;
        if (alarm[1]>0) alarm[1]+=1;
        if (alarm[2]>0) alarm[2]+=1;
    }
    with(obj_gem1)
    {
        prev_gem1_speed = speed;
        prev_gem1_image_speed = image_speed;
        speed = 0;
        image_speed = 0;
    }
    with(obj_magnet)
    {
        prev_magnet_speed = speed;
        speed = 0;
    }
    with(obj_shoot)
    {
        prev_shoot_speed = speed;
        speed = 0;
    }
    with(obj_blocks_fall)
    {
        prev_fallblock_speed = speed;
        prev_fallblock_gravity = gravity;
        speed = 0;
        gravity = 0;
        if (alarm[0]>0) alarm[0]+=1;
    }
    with(obj_shield_protection)
        if (alarm[0]>0) alarm[0]+=1;
    /*with ( all ) //Saves the state of all "pausable" instances and put all their local variable to 0.
   {
        //if ( pausable )
        {
           prev_image_speed=image_speed;
           prev_vspeed=vspeed;
           prev_hspeed=hspeed;
           prev_gravity=gravity;
           prev_path_speed=path_speed;
           prev_timeline_speed=timeline_speed;
           image_speed=0;
           vspeed=0;
           hspeed=0;
           gravity=0;
           path_speed=0;
           timeline_speed=0;
        }
    }*/
}
else
{
    global.paused = false;
    //with (obj_pause) instance_destroy(); //Destroys the pause object.
    with(obj_ball)
    {
        speed = prev_ball_speed;
        timeline_speed = prev_timeline_speed;
    }
    with(obj_gem1)
    {
        speed = prev_gem1_speed;
        image_speed = prev_gem1_image_speed;
    }
    with(obj_magnet)
    {
        speed = prev_magnet_speed;
    }
    with(obj_shoot)
    {
        speed = prev_shoot_speed;
    }
    with(obj_blocks_fall)
    {
        speed = prev_fallblock_speed;
        gravity = prev_fallblock_gravity;
    }
    /*with ( all ) //Restore the state of all instances.
     {
     //if ( pausable )
     {
        image_speed=prev_image_speed;
        vspeed=prev_vspeed;
        hspeed=prev_hspeed;
        gravity=prev_gravity;
        path_speed=prev_path_speed;
        timeline_speed=prev_timeline_speed;
     }
      }*/
}

/*if ( global.paused )
{
  with ( all ) //Maintains all the alarms of "pausable" objects to the same value while the game is paused.
  {
     //if ( pausable )
     {
        if (alarm[0]>0) alarm[0]+=1;
        if (alarm[1]>0) alarm[1]+=1;
        if (alarm[2]>0) alarm[2]+=1;
        if (alarm[3]>0) alarm[3]+=1;
        if (alarm[4]>0) alarm[4]+=1;
        if (alarm[5]>0) alarm[5]+=1;
        if (alarm[6]>0) alarm[6]+=1;
        if (alarm[7]>0) alarm[7]+=1;
        if (alarm[8]>0) alarm[8]+=1;
        if (alarm[9]>0) alarm[9]+=1;
        if (alarm[10]>0) alarm[10]+=1;
        if (alarm[11]>0) alarm[11]+=1;
     }
  }
}*/
    

/* */
/*  */
