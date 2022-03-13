/// @description Set the center position of the menu, level selection objects
global.menu_x = floor(room_width/2);
global.menu_y = 480 + sprite_get_height(global.land[global.world_selected])/2;
global.menu_y = 480 + 192 / 2;

// create level selection objects
var w;
w = sprite_get_width(global.land[global.world_selected]);
w = 192;
with (instance_create(global.menu_x - w, global.menu_y, obj_menu_prev)) {img = -1;}
with (instance_create(global.menu_x, global.menu_y, obj_menu_current)) {img = 0;}
with (instance_create(global.menu_x + w, global.menu_y, obj_menu_next)) {img = 1;}

