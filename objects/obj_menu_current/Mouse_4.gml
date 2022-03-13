/// @description  Center image is selected
if(active > 0 or instance_exists(obj_mb_bg)) {exit;}
audio_play_sound(snd_level_select, 1, false);
//if(active > 0 || global.land_access[global.world_selected, img] == 1) {exit;}

/* ///////////////////////////////////////////
         Level Select Code Goes Here 
   global.world_selected contains the world
   level contains the level for that world
/////////////////////////////////////////// */

if(global.land_access[global.world_selected, img] == 1)
{
    
    //show_message("Level Locked");
    if(global.world_selected == simpsonpackIndex and global.simpsonpack_enabled == false)
        scr_msgbox(0,0,room_width,room_height,"BUY Simpson Pack","Simpson Pack has 12 levels.#Would you like to play Simpson Pack?","BUY", "NOT NOW");
    else
        scr_msgbox(0,0,room_width,room_height,"LEVEL LOCKED!!!","SELECTED LEVEL WAS LOCKED.#PLEASE, COMPLETE PREVIOUS FIRST.","OK", "NULL");
    exit;
}
global.level_selected = level;
scr_goto_level_room();

/* */
/*  */
