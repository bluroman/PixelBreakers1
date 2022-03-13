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

