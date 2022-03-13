/// @description draw next level image
if(img < 0 || img == image_number){exit;}
level = img + 1;
image_index = img;
//draw_set_font(font3);
//draw_set_halign(fa_center);
//draw_set_valign(fa_middle);
//draw_set_color(c_white);
//draw_text(x, y+60, "Level" + string(level));
//draw_set_halign(fa_left);

draw_sprite_ext(sprite_index, image_index, x, y, scale, scale, 0, c_white, 1);
draw_sprite_ext(spr_no_entry, global.land_access[global.world_selected,image_index], x, y, scale, scale, 0, c_white, 0.6);
draw_sprite_ext(spr_frame_mask1, 0, x, y, scale, scale, 0, c_white, alpha);

