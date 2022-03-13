function scr_goto_level_room() {
	level = global.level_selected;
	var roomName;
	if (global.world_selected == 6)
	{
	    roomName = "rm_level" + string(global.world_selected + 1);
	    room_goto(ds_map_find_value(global.room_map, roomName));
	    show_debug_message("Go To Room:" + roomName);
	    exit;
	}

    
	if (global.Config > 0)
	    roomName  = "rm_level" + string(global.world_selected + 1) + "_" + string(level);
	else
	    roomName  = "rm_level" + string(global.world_selected + 1) + "_" + string(level) + "_pad";

	//room = ds_map_find_value(global.map, roomName);
	room_goto(ds_map_find_value(global.room_map, roomName));



}
