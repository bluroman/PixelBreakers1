/// @description Get longbat Item so change width of sprite
draw_sprite_ext(sprite_index, image_index, x, y + recoil, image_xscale, 1.0, 0, -1, 1);

/*if( shader_is_compiled(sShaderDemo6) )
    {              
        shader_set(sShaderDemo6);        
    
        // NOTE: SIN() will give 1 to -1. The -1 will make the image seem "darker"
        var s = sin( degtorad(lerp_value) );
        lerp_value+=5;
        if( lerp_value>360 ) lerp_value-=360;
    
        // lerp to WHITE (1,1,1)
        shader_set_uniform_f(colour_to_find, 1,1,1, s );  
        draw_sprite_ext(sprite_index, image_index, x, y + recoil, image_xscale, 1.0, 0, -1, 1);  
        //draw_sprite(sprite_index,image_index,x+24, y);              
    
        shader_reset();
        
        
    }else{
        draw_text(10,40,"sShaderDemo6 did not compile");
    }*/
    
    /*if( shader_is_compiled(shader0))
    {
        move+=0.04;;

        var time = shader_get_uniform(shader0,"time")

        shader_set(shader0);
        shader_set_uniform_f(time,move);
        draw_sprite_ext(sprite_index, image_index, x, y + recoil, image_xscale, 1.0, 0, -1, 1);  
        //draw_background(texDiffuse,0,0);
        shader_reset();
    }
    else
    {
        draw_text(10, 10, "shader0 did not compile");
    }*/

/* */
/*  */
