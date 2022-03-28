//Draw the background
//draw_background_stretched(congratulations_bg,0, 0, view_wview[0],view_hview[0]);
//d3d_set_projection_ortho(0,0,640,480,0);
//d3d_set_hidden(false);
draw_sprite_ext(sprite_index,image_index,x,y,scale,scale,0,-1,image_alpha);
//d3d_set_hidden(true);
//d3d_set_projection_perspective(0,0,640,480,0);


if scale<1
{
    scale+=0.1;
    y += room_height/(2*10);
}
else
{
    xx = room_width/2;
    yy = room_height - 200;

    //draw_set_color(c_black);
    //draw_set_alpha(0.8);
    //draw_rectangle(xx-150,yy-20,xx+150,yy+20,false);

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(font3);
    draw_set_color(c_white);
    //draw_set_alpha(text_alpha);
    //draw_text(xx,yy,"TAP TO CONTINUE");
    draw_text_color(xx, yy, string_hash_to_newline("TAP HERE TO CONTINUE"), c_white, c_white, c_white, c_white, text_alpha);
    if in_rectangle(0, yy - 50, room_width, yy + 50) 
    {
        if (mouse_check_button(mb_left))
        {
            //instance_destroy();
            room_persistent = false;
            
            //show_debug_message("Level Selected:" + string(global.level_selected) + " Level Access:" + string(global.Level_Access));
            //show_debug_message("World Selected:" + string(global.world_selected) + " World Access:" + string(global.World_Access));
            
             /// Do we have a next level?
            if(global.level_selected < sprite_get_number(global.land[global.world_selected]))
            {
                if(global.world_selected == simpsonpackIndex)
                {
                    if(global.simpsonpack_enabled)
                    {
                        global.level_selected++;
						if AdMob_Interstitial_IsLoaded()
						{
							AdMob_Interstitial_Show()
							global.interstitial_loaded = false
							obj_controller.go_to_next = true
						}
						else room_restart();
                        //room_restart();
                    }
                    else
                    {
                        scr_msgbox(0,0,room_width,room_height,"BUY Simpson Pack","Simpson Pack has 12 levels.#Would you like to play Simpson Pack?","BUY", "BACK");
                    }
                    
                }
                else
				{
					if AdMob_Interstitial_IsLoaded()
					{
						AdMob_Interstitial_Show()
						global.interstitial_loaded = false
						obj_controller.go_to_next = true
					}
					else room_goto_next()
					
				}//room_goto_next();
            }
            else
            {
               
                if(global.world_selected + 1 < global.worlds)
                {
                    if (global.Config > 0)
                        room_goto(rm_packclear);
                    else
                    {
                        //show_message("go to pack clear pad");
                        room_goto(rm_packclear_pad);
                    }
                }
                else
                {
                    if (global.Config > 0)
                        room_goto(rm_gamedone);
                    else
                        room_goto(rm_gamedone_pad);
                }
            }
        }
    }
    //goto_next = true;
    if alarm[1] <= 0
        alarm[1] = room_speed/2;
        
   
    //if alarm[0]<=0
    //{
        //alarm[0]=60;
    //}
}

