/// @description argument0:sprite_index, argument1:x position, argument2:y position
function scr_button(argument0, argument1, argument2) {

	//Put this in a draw event. It handles EVERYTHING!
	//This allows you to have full button functionality, in one script! Its designed for convenience.

	//How to use: First, make sure your button sprite has 3 subimages. Make sure they are the same size.
	//The first subimage should be how the button normally looks.
	//The second one is shown when the mouse is over the button
	//The third one is shown when the button is pressed

	sprite_index = argument0;
	x = argument1;
	y = argument2;
	if image_speed
	{
	    image_speed = 0;
	    kp = 0; 
	    global.bx = 0; global.by = 0;
	}
	ind = 0;
	lpr = mouse_check_button(mb_left);
	lrl = mouse_check_button_released(mb_left);
	bx1 = x;
	by1 = y;
	bx2 = x + sprite_get_width(sprite_index);
	by2 = y + sprite_get_height(sprite_index);
	bmx = mouse_x;
	bmy = mouse_y;

	//draw_set_color(c_yellow);
	//draw_rectangle(bx1, by1, bx2, by2, true);
 
	//draw_set_color(c_black);
	//draw_circle(bmx, bmy, 80, true);

	//draw_text(40, x - 40, "x:"+ string(mouse_x) + " y:" + string(mouse_y) + " bx1:" + string(bx1) + " bx2:" + string(bx2) + " by1:" + string(by1) + " by2:" + string(by2));

	if bmx >= bx1 and bmx <= bx2 and bmy >= by1 and bmy <= by2 
	{
	    //show_message("mouse click in" + sprite_get_name(sprite_index));    
	    in = 1; 
	}
	else
	    in = 0;

	if lpr = 1 and in = 1 
	{
	    ind = 2; 
	    draw_sprite(sprite_index, ind, x, y); 
	    kp = 1; 
	    global.bx = bx1; global.by = by1; 
	    exit;
	}
	if lpr = 1 and in = 0 
	{
	    ind = 0; 
	    if kp = 1 and global.bx = bx1 and global.by = by1 
	        ind = 1; 
	    draw_sprite(sprite_index, ind, x, y); 
	    exit;
	}
	if lrl 
	    kp = 0;
	if lrl = 1 and in = 1 
	{
	    ind = 1; 
	    draw_sprite(sprite_index, ind, x, y); 

	    //What happens when the button is pressed
	    //show_message("Here we go");
    
	    global.previous_room = room;
	    switch (argument0) 
	    {
	        case spr_settings:
	            //room_goto(rm_settings);
	            if (global.Config > 0)
	                room_goto(rm_settings);
	            else
	                room_goto(rm_settings_pad);
	            break;
	        case spr_resume:
	            scr_resume_game();
	            break;
	        case spr_restart:
	            scr_resume_game();
	            room_persistent = false;
	            room_restart();
	            break;
	        case spr_levels:
	            scr_resume_game();
	            room_persistent = false;
	            //room_goto(rm_select_stage);
	            if (global.Config > 0)
	                room_goto(rm_select_stage);
	            else
	                room_goto(rm_select_stage_pad);
	            break;
	    }
	    exit;
	}

	if in = 1 
	{
	    ind = 1; 
	    draw_sprite(sprite_index, ind, x, y); 
	    exit;
	}
	if in = 0 
	{
	    if mouse_check_button_pressed(mb_left) = 0 
	        ind = 0; 
	    else ind = 2; 
	    draw_sprite(sprite_index, ind, x, y); 
	    exit;
	}



}
