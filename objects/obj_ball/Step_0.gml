//keep ball from getting stuck side to side
if direction==0 || direction=180 then direction+=5;
if speed > 0
{
    if speed > maxSpeed
        speed = maxSpeed;
    if speed < minSpeed
        speed = minSpeed;
    //effect_create_below(ef_smoke, x, y, 0, c_gray);
    //Lets create some particles in the simplest way possible
    if sprite_index = spr_fastball
    {
        start_color = make_color_rgb(255, 38, 28);
        end_color = make_color_rgb(255, 88, 87);
    }
    else if sprite_index = spr_ball
    {
        start_color = make_color_rgb(0, 0, 205);//make_color_rgb(63, 198, 241);
        end_color = make_color_rgb(161, 220, 239);
    }
    else if sprite_index = spr_metalball
    {
        start_color = make_color_rgb(211, 211, 211);//make_color_rgb(63, 198, 241);
        end_color = make_color_rgb(255, 255, 255);
    }
    part_type_color1(trail, start_color);
    //part_type_color2(trail, start_color, end_color); 
    part_particles_create(Sname, x, y, trail, 1);
    //alarm[0] = 1;
    
}


