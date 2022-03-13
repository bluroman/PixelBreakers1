action_sound(snd_getcoin, 0);
///increase global.Gems_Count and write ini file
global.Gems_Count++;
ini_open("Save.ini");
ini_write_real("Extras", "gems", global.Gems_Count);
ini_close(); 

action_change_object(obj_get_coin, 1);
action_create_object(obj_counter, -200, 100);
