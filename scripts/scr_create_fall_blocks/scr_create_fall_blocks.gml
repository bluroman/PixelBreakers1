function scr_create_fall_blocks(argument0, argument1, argument2) {
	var ii;
	ii = instance_create(argument0,argument1,obj_blocks_fall);
	ii.image_blend = c_white;
	ii.sprite_index = argument2;
	ii.diagLen = point_distance(0,0,sprite_width,sprite_height); //diagonal length used for rotating



}
