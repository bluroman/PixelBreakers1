draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
if(ima > 0) {
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_blue,ima);
}

draw_set_color(c_blue);
draw_set_font(font2);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x,y,string_hash_to_newline(string(text)));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);


