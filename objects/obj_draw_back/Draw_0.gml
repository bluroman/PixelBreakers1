draw_sprite_stretched(spr_selectBG, 0, room_width/2 - 250, room_height/2 - 170, 500, 500);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(font3);
draw_set_color(c_white);
if(global.world_selected + 1 < global.worlds)
{
    draw_text_color(room_width/2, room_height/2 + 300, string_hash_to_newline("Tap Here Go to Next Pack"), c_orange, c_orange, c_orange, c_orange, text_alpha);
    if in_rectangle(__view_get( e__VW.XView, 0 ), room_height/2 + 250, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ), room_height/2 + 350) 
    {
        if (mouse_check_button(mb_left) and !instance_exists(obj_mb_bg))
        {
            if alarm[1] <= 0
                alarm[1] = 5;
        } //show_message("Next Pack"); 
    }
}
if(global.world_selected > 0)
{
    draw_text_color(room_width/2, room_height/2 - 140, string_hash_to_newline("Tap Here Go to Previous Pack"), c_orange, c_orange, c_orange, c_orange, text_alpha);
    if in_rectangle(__view_get( e__VW.XView, 0 ), room_height/2 - 190, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ), room_height/2 - 90) 
    {
        if (mouse_check_button(mb_left) and !instance_exists(obj_mb_bg))
        {
            if alarm[2] <= 0
                alarm[2] = 5;  
        }
    }
}

if alarm[0] <= 0
    alarm[0] = room_speed/10;



