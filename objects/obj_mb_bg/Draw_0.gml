//draw_background_ext(global.msgBox_TempBg,global.msgBox_bgx,global.msgBox_bgy,1,1,image_angle,image_blend,1);
//draw_background_ext(global.msgBox_TempBg,global.msgBox_bgx,global.msgBox_bgy,1,1,image_angle,c_gray,image_alpha);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_set_alpha(txtalph);
draw_set_color(c_yellow);
draw_set_font(font2);
draw_set_halign(fa_middle);
draw_set_valign(fa_top);
draw_text_ext(x,y-85,string_hash_to_newline(string(text_title)),-1,480);
draw_set_alpha(txtalpha);
draw_set_color(c_white);
draw_set_font(font1);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_text_ext(x,y,string_hash_to_newline(string(text)),-1,480);

draw_set_color(c_black);
draw_set_alpha(1);

