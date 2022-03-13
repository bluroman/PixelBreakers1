function scr_ds_map_rooms(argument0) {
	/*
	**  Usage:
	**      map_rooms(ds_map)
	**
	**  Arguments:
	**      ds_map      map to which all rooms are loaded.
	**
	**  Notes:
	**      Fills the map with {key=name, val=index} pairs.
	**      To find the maximum number of rooms, it creates an extra
	**      room. The name of this room will be added to the map
	**      unless a room with the same name already exists.
	**
	**  Returns:
	**      the index of the created room
	**
	**  GMLscripts.com
	*/
	{
	    var no,i,ds_map;
	    ds_map = argument0
	    no = room_add();
	    for (i=0;i<no;i+=1) {
	        if (room_exists(i)) {
	            ds_map_add(ds_map,room_get_name(i),i);
	        }
	    }
	    if (!ds_map_exists(ds_map,room_get_name(no))) ds_map_add(ds_map,room_get_name(no),i);
	    return no;
	}



}
