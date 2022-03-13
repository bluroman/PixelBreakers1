function scr_arrow_button(argument0, argument1, argument2) {
	//By terminator7256 / van0014

	//Put this in a draw event. It handles EVERYTHING!
	//This allows you to have full button functionality, in one script! Its designed for convenience.

	//How to use: First, make sure your button sprite has 3 subimages. Make sure they are the same size.
	//The first subimage should be how the button normally looks.
	//The second one is shown when the mouse is over the button
	//The third one is shown when the button is pressed

	//The script takes only one argument.
	//The example should help explain how to use it.
	//example for a close button: "button('game_end();');"
	sprite_index = argument0;
	x = argument1;
	y = argument2;
	if image_speed
	{
	    image_speed = 0;
	    kp = 0; global.bx = 0; global.by = 0;
	}
	ind = 0
	lpr = mouse_check_button(mb_left)
	lrl = mouse_check_button_released(mb_left)
	bx1 = x
	by1 = y
	bx2 = x + sprite_width
	by2 = y + sprite_height
	bmx = mouse_x
	bmy = mouse_y

	if bmx >= bx1 and bmx <= bx2 and bmy >= by1 and bmy <= by2 
	    in = 1 
	else
	    in = 0

	if lpr = 1 and in = 1 
	{
	    ind = 2; 
	    draw_sprite(sprite_index, ind, x, y); 
	    kp = 1; global.bx = bx1; global.by = by1; 
	    exit;
	}
	if lpr = 1 and in = 0 
	{
	    ind = 0; 
	    if kp = 1 and global.bx = bx1 and global.by = by1 
	        ind=1; 
	    draw_sprite(sprite_index, ind, x, y); 
	    exit;
	}
	if lrl 
	    kp = 0;
	if lrl = 1 and in = 1 
	{
	    ind = 1; 
	    draw_sprite(sprite_index,ind,x,y);
	    var ind_sprite = argument0;
	    spr_arrow_below = 0;
	    spr_arrow_upper = 1; 

	    switch (ind_sprite) 
	    {
	        case spr_arrow_below:
	            // Next level or world selected
	            // check if next world exists was selected
	            if(global.world_selected + 1 < global.worlds)
	            {
	                show_message("Next world Selected");
	                global.world_selected +=1;
	                obj_menu_current.sprite_index = global.land[global.world_selected];
	                obj_menu_current.img = 1;
	                //global.land_access[global.world_selected,0] = 0; // unlock level
	                //global.land_access[global.world_selected,1] = 0; // unlock level
               
	                obj_menu_prev.sprite_index = global.land[global.world_selected];
	                obj_menu_prev.img = 0;
	                obj_menu_next.sprite_index = global.land[global.world_selected];
	                obj_menu_next.img = 2;
	            }
	            break;
	        case spr_arrow_upper:
	            // Previous level or world was selected
	            if(global.world_selected > 0)
	            {
	                show_message("Previous world Selected");
	                global.world_selected -=1;
	                obj_menu_current.sprite_index = global.land[global.world_selected];
	                if(global.world_selected == 0)
	                {
	                    obj_menu_current.img = 0;
	                }
	                else
	                {
	                    obj_menu_current.img = 1
	                }
                
	                obj_menu_prev.sprite_index = global.land[global.world_selected];
	                obj_menu_prev.img = obj_menu_current.img - 1;
	                obj_menu_next.sprite_index = global.land[global.world_selected];
	                obj_menu_next.img = obj_menu_current.img + 1;
	            }
            
	            break;
	        default:
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
	    else 
	        ind = 2; 
	    draw_sprite(sprite_index, ind, x, y); 
	    exit;
	}

	/*Don't worry about giving credit if you use this in a game. 
	Buttons might make up for less than 5% of a game. 
	Unless the stage boss is a button, then give credit XD. 

	If you use this in a program, please mention the button coding was by me. 
	If you agree not to claim you made the script, 
	and you agree not to change a few small parts of it and call it your own, 
	then no credit is necessary.*/



}
