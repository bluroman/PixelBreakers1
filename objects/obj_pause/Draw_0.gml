/// @description Draw the background and draw buttons
//draw_background_stretched(pause_bg,0, 0, view_wview[0],view_hview[0]);
draw_sprite( spr_pause_bg , 0, room_width / 2 , room_height / 2 - 100);
xoffset = sprite_get_width(spr_pause_bg)/5;

scr_button(spr_resume, room_width/2 - 1.5*xoffset - sprite_get_width(spr_resume)/2, room_height / 2 - 100 - sprite_get_height(spr_resume)/2);
scr_button(spr_restart, room_width/2 - 0.5*xoffset - sprite_get_width(spr_restart)/2, room_height / 2 - 100 - sprite_get_height(spr_restart)/2);
scr_button(spr_settings, room_width/2 + 0.5*xoffset - sprite_get_width(spr_settings)/2, room_height / 2 - 100 - sprite_get_height(spr_settings)/2);
scr_button(spr_levels, room_width/2 + 1.5*xoffset - sprite_get_width(spr_levels)/2, room_height / 2 - 100 - sprite_get_height(spr_levels)/2);



