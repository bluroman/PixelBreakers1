start = 0;
target_x = 0;
target_y = 0;
near_destroy = false;
num_collide = 0;
speed_up = false;
fast_ball = false;
metal_ball = false;
metal_time = 5;
prev_ball_speed = 0;
prev_timeline_speed = 0;

start_color = make_color_rgb(0, 0, 205);
end_color = make_color_rgb(161, 220, 239);

//Create the particle system
Sname = part_system_create();

//create the trail particle
trail = part_type_create();
//part_type_shape(trail, sprite_index);                     //Use a "spark" built in shape
part_type_sprite(trail,sprite_index,0,0,0);
//part_type_color1(trail, start_color);
//part_type_alpha2(imagePart,1,0);
//part_type_size(trail, 0.50, 0.50, 0, 0);                    //Set a random size from 20% up to 50% of the original particle scale
//part_type_scale(trail, 1, 1);                               //Scale at 1:1
//part_type_color2(trail, start_color, end_color);                   //Set the color to fade from white to grey
part_type_alpha2(trail, 0.3, 0);                              //Set the alpha to fade from 1 (opaque) to 0 (transparent)
//part_type_speed(trail, 2, 2, -0.50, 0);                     //Choose a random speed from 2 to 5 and then reduce it by 0.2pixels-per-step
//part_type_direction(trail, 0, 359, 0, 0);                   //Choose a random direction for each particle created
//part_type_gravity(trail, 0.5, 270);                         //Gravity is set to 0.5 and down (so the particles fall)
//part_type_orientation(trail, 0, 359, 0, 0, 0);              //Each particle will have a random "image angle" when created
part_type_blend(trail, 0);                                  //Additive blending is off
part_type_life(trail, 3, 5);                               //The particle life is between 8 and 30 steps

