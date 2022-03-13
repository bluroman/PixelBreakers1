/// @description Save World_Access, Level_Access
if global.world_selected < global.World_Access or global.level_selected < global.Level_Access
    exit;
    
show_debug_message("Alarm[0] Level Selected:" + string(global.level_selected) + " Level Access:" + string(global.Level_Access));
show_debug_message("Alarm[0] World Selected:" + string(global.world_selected) + " World Access:" + string(global.World_Access));
/// Do we have a next level?
if(global.level_selected < sprite_get_number(global.land[global.world_selected]))
{
    // There is a next level
    global.World_Access = global.world_selected;
    global.Level_Access = global.level_selected + 1;
    global.land_access[global.World_Access, global.Level_Access] = 0;
    ini_open("Save.ini");
    ini_write_real("Extras", "access_world", global.World_Access);
    ini_write_real("Extras", "access_level", global.Level_Access);
    ini_close();
}
else
{
    // Is there a next world?
    if(global.world_selected + 1 < global.worlds)
    {
        global.World_Access = global.world_selected + 1;
        global.Level_Access = 1;
        global.land_access[global.World_Access, global.Level_Access] = 0;
        //show_message("Pack Clear");
        ini_open("Save.ini");
        ini_write_real("Extras", "access_world", global.World_Access);
        ini_write_real("Extras", "access_level", global.Level_Access);
        ini_close();
    }
    else
    {
        // Last level in the game has been selected
        //if(show_message_ext("Level "+string(level)+" Selected##This is le final level. Select Level Completed or Failed.",
        //"&Failed","","&Completed") == 3){
        //show_message("Game Clear"); // No more levels
        //game_end();
        //}
        exit;
    }
}

