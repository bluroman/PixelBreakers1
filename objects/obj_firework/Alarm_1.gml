//Check the system to see if any particles exist
if part_particles_count(Sname) > 0
{
//Particles are still about so repeat the alarm
alarm[1] = 1;
}
else
{
//This is VERY IMPORTANT as failure to remove systems, emitters or particles when no longer needed acn give memory leaks and crash the game
//Destroy the particles
//part_type_destroy(trail);
part_type_destroy(stars);
//Destroy the system
part_system_destroy(Sname);
//No particles are about, so destroy the instance
instance_destroy();
}

