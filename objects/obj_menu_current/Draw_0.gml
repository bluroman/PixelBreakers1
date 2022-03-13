/// @description  This item must always exist so is always drawn
level = img + 1;
//if(global.world_selected > 0)
//{
  //level = img;
//}
scale = 192 / sprite_get_width(sprite_index);
//show_debug_message("Scale:" + string(scale));
image_index = img;
draw_sprite_ext(sprite_index, image_index, x, y, scale, scale, 0, c_white, 1);
draw_sprite(spr_no_entry, global.land_access[global.world_selected, image_index], x, y);

if(global.world_selected < global.worlds && level <= image_number && level > 0)
{
  draw_set_font(font3);
  draw_set_color(c_white);
  draw_set_halign(fa_center);
  draw_set_valign(fa_middle);
  draw_text(x, y + 130, string_hash_to_newline(string(level)+ "/" + string(image_number)));
  //draw_set_halign(fa_left);
}

