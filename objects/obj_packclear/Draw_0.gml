/// @description draw current scores and highscore on gameover room
//title_x += title_margin_x;
draw_sprite(title_sprite, -1, title_x, title_last_y);
draw_set_font(font3);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(obj_yourscore.x + obj_yourscore.sprite_width + 10, obj_yourscore.y + obj_yourscore.sprite_height / 2, string_hash_to_newline(string(score)));
draw_text(obj_highscore.x + obj_highscore.sprite_width + 10, obj_highscore.y + obj_highscore.sprite_height / 2, string_hash_to_newline(string(highscore_value(1))));
//draw_set_halign(fa_left);
draw_set_font(-1);

if (title_x + fly_title_margin < title_last_x)
    title_x += fly_title_margin;
else title_x = title_last_x;

if (title_x == title_last_x)
{
    xx = room_width/2;
    yy = room_height/2 + 200;

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(font3);
    draw_set_color(c_white);
    //draw_set_alpha(text_alpha);
    //draw_text(xx,yy,"TAP TO CONTINUE");
    draw_text_color(xx, yy, string_hash_to_newline("TAP HERE GO TO NEXT PACK"), c_white, c_white, c_white, c_white, text_alpha);
    if in_rectangle(0, yy - 50, room_width, yy + 50) 
    {
        if (mouse_check_button(mb_left))
        {
            audio_stop_sound(snd_fireworkandapplause);
            global.world_selected += 1;
            global.level_selected = 1;
            scr_goto_level_room();
        }
    }
    if alarm[1] <= 0
        alarm[1] = room_speed/2;
        
}

