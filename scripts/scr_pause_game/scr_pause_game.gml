function scr_pause_game() {
	if !global.paused
	{
	    global.paused = true;
	    instance_create(0, 0, obj_pause);
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
	        prev_bat_hspeed = hspeed;
	        hspeed = 0;
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
	}



}
