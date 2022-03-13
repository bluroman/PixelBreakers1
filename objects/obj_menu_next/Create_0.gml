/// @description  Displays the Next level (if available)
/// @param if available
sprite_index = global.land[global.world_selected];
img = -1; // used as image_index to allow negative values.
image_speed = 0;
alpha = 0.5;
scale = 0.5;
scale = 96 / sprite_width;
move_inst = noone;
active = 0;
level = 0;

