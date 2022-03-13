action_sound(snd_mega_multi_grip, 0);
action_kill_object();
with (obj_ball)
{
    metal_ball = true;
    alarm[1] = room_speed;
    metal_time = 5;
    //sprite_index = spr_metalball;
}

