action_sound(snd_mega_multi_grip, 0);
action_kill_object();
with (other) {
longbat = true;
}
with (other)
{
    alarm[0] = 300;
    if (BAT_LENGTH < 5)
        BAT_LENGTH += 1;
        
    image_xscale = bat_length_level[BAT_LENGTH];
    
    //image_xscale = min(image_xscale*1.5, 4);
    //image_xscale *= 1.2;
}

