/// @description  Draws the moving image
image_index = img;

draw_sprite_ext(sprite_index, image_index, x, y, scale, scale, 0, c_white, 1);
draw_sprite_ext(spr_no_entry, global.land_access[global.world_selected,image_index], 
  x, y, scale, scale, 0, c_white, 0.6);
draw_sprite_ext(spr_frame_mask1, 0, x, y, scale, scale, 0, c_white, alpha);

