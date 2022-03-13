function scr_draw_pixel(argument0) {
	var sf, w, h, inst;
	w = 32;
	h = 32;
	sprite_set_offset(argument0, 0, 0);
	sf = surface_create(w, h);
	surface_set_target(sf);
	draw_clear_alpha(c_white, 0);
	draw_sprite_ext(argument0, global.level_selected-1, 0, 0, 32/sprite_get_width(argument0), 32/sprite_get_height(argument0), 0, c_white, 1);
	surface_reset_target();
	//color = surface_getpixel(x, y);
	for(i = 0; i < w; i++)
	{
	    for(j = 0; j < h; j++)
	    {
	        color = surface_getpixel_ext(sf, i, j);
	        alpha = (color >> 24) & 255;
	        blue = (color >> 16) & 255;
	        green = (color >> 8) & 255;
	        red = color & 255;
	        rgb = make_colour_rgb(red, green, blue);
	        if alpha == 0 or (red == 255 and green == 204 and blue == 51)
	            continue;
	        inst = instance_create(i * 20, j * 20, obj_white_block);
	        inst.image_blend = rgb;
	        inst.image_alpha = alpha;
	    }
	}
	surface_free(sf);
	sprite_set_offset(argument0, sprite_get_width(argument0)/2, sprite_get_height(argument0)/2);



}
