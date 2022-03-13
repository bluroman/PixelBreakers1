/// @description This object displays the selected level sprite(The normal sized image in the center)
/// @param The normal sized image in the center
sprite_index = global.land[global.world_selected];
image_speed = 0;
img = -2;
alpha = 0.5;
scale = 0.5;
scale = 192 / sprite_get_width(sprite_index);
//show_debug_message("Scale:" + string(scale));
active = 0;
level = 0;

