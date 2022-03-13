//show_message("Next Pack");
if(global.world_selected + 1 < global.worlds)
{
    audio_play_sound(snd_level_select, 1, false);
    global.world_selected +=1;
    obj_menu_current.sprite_index = global.land[global.world_selected];
    obj_menu_current.img = 1;
    //global.land_access[global.world_selected,0] = 0; // unlock level
    //global.land_access[global.world_selected,1] = 0; // unlock level
               
    obj_menu_prev.sprite_index = global.land[global.world_selected];
    obj_menu_prev.img = 0;
    obj_menu_next.sprite_index = global.land[global.world_selected];
    obj_menu_next.img = 2;
}

