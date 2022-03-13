action_set_relative(1);
action_sound(snd_get_item, 0);
action_set_life(1);
global.Heart_Count += 1;
action_kill_object();
action_set_relative(0);
