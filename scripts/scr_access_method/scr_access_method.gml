/// @description argument0:land index argument1:enabled or not
function scr_access_method(argument0, argument1) {
	num_levels = sprite_get_number(global.land[argument0]);

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
