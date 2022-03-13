function scr_resume_game() {
	if global.paused
	{
	    global.paused = false;
	    with (obj_pause) instance_destroy(); //Destroys the pause object.
	    with(obj_ball)
	    {
	        speed = prev_ball_speed;
	        timeline_speed = prev_timeline_speed;
	    }
	    with(obj_bat)
	        hspeed = prev_bat_hspeed;
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
	}



}
