action_sound(snd_get_item, 0);
action_kill_object();
if instance_exists(obj_shield_protection)
    obj_shield_protection.time_left = 10;
else
    instance_create(room_width/2, obj_bat.y, obj_shield_protection);

