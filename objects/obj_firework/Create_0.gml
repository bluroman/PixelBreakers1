
//Create the particle system
Sname = part_system_create();

//Create the firework itself
stars = part_type_create();
part_type_shape(stars, pt_shape_star);                      //Use a "star" built in shape
part_type_size(stars, 0.5, 1, -0.02, 0);                      //Set a random size from 50% up to 100% of the original particle scale
part_type_scale(stars, 1, 1);                               //Scale at 1:1
part_type_color3(stars, c_lime, c_fuchsia, c_blue);         //Set a three color gradient that will blend from one the other over the lifetime of the particle
part_type_alpha3(stars, 0, 1, 0);                           //Set the alpha to be transparent, opaque and then transparent over the particle lifetime
part_type_speed(stars, 2, 3, 0, 0);                         //Choose a random speed from 2 to 3 pixels per step
part_type_direction(stars, 0, 359, 0, 0);                   //Choose a random direction for all particles created
part_type_gravity(stars, 0.20, 270);                        //Set the gravity to pull down
part_type_orientation(stars, 0, 359, 0, 0, 0);              //Give the star sprites a random "image angle"
part_type_blend(stars, 1);                                  //Use additive blending (makes them brilliant when they overlap)
part_type_life(stars, 50, 70);                              //Give them a lifetime between 50 and 70 steps

alarm[0] = 1;

