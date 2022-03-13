action_set_relative(1);
//This is VERY IMPORTANT as failure to remove systems, emitters or particles when no longer needed acn give memory leaks and crash the game
//Destroy the particles
part_type_destroy(trail);
//Destroy the system
part_system_destroy(Sname);
//No particles are about, so destroy the instance
//instance_destroy();

action_kill_object();
var __b__;
__b__ = action_if_number(obj_ball, 0, 0);
if __b__
{
action_set_life(-1);
}
action_set_relative(0);
