if(global.world_selected > 0)
{
    audio_play_sound(snd_level_select, 1, false);
    global.world_selected -=1;
    obj_menu_current.sprite_index = global.land[global.world_selected];
    if(global.world_selected == 0)
    {
        obj_menu_current.img = 0;
    }
    else
    {
        obj_menu_current.img = 1
    }
                
    obj_menu_prev.sprite_index = global.land[global.world_selected];
    obj_menu_prev.img = obj_menu_current.img - 1;
    obj_menu_next.sprite_index = global.land[global.world_selected];
    obj_menu_next.img = obj_menu_current.img + 1;
}

