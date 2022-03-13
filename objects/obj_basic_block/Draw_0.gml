if color_alpha < 1
    color_alpha += 0.1;
else 
    color_alpha = 0;
    
//draw_set_blend_mode( bm_add );
draw_sprite_ext(spr_white_block, 0, x, y, 1, 1, 0, merge_color(c_blue, draw_getpixel(x, y), 0.5), 1);


