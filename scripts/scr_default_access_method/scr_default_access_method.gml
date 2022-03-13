/// @description argument0:land index argument1:level index
function scr_default_access_method(argument0, argument1) {
	land_index = argument0;//from 0
	level_index = argument1;//from 1

	for( i = 0; i < global.worlds; i++)
	{
	    levels = sprite_get_number(global.land[i]);
	    for( j = 0; j < levels; j++)
	        global.land_access[i, j] = 0;
	}

	num_levels = sprite_get_number(global.land[land_index]);
	//impossible
	if(num_levels < level_index)
	    exit;
	//if next world exists, open next world    
	if(num_levels == level_index)
	{
	    if(land_index + 1 < global.worlds)
	    {
	        global.land_access[land_index + 1, 0] = 0;
	        //tmp_land = land_index + 1;
	        for(tmp_land = land_index + 1; tmp_land < global.worlds; tmp_land++)
	        {
	            tmp_levels = sprite_get_number(global.land[tmp_land]);
	            if(tmp_land == land_index + 1)
	                tmp = 1;
	            else 
	                tmp = 0;
	            for(; tmp < tmp_levels; tmp++)
	                global.land_access[tmp_land, tmp] = 1;
	        }
	    }
	}


	if(argument1)
	{
	    for( i = 0; i < num_levels; i++)
	    {
	        global.land_access[argument0, i] = 0;  
	    }
	}
	else
	{
	    global.land_access[argument0, 0] = 0;
	    for( i = 1; i < num_levels; i++)
	    {
	        global.land_access[argument0, i] = 1;  
	    }
	}



}
