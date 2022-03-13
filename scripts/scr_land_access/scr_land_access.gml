/// @description determine land access
function scr_land_access() {
	/*global.beginnerpack_enabled = true;
	global.amateurpack1_enabled = false;
	global.amateurpack2_enabled = false;
	global.professionalpack1_enabled = false;
	global.professionalpack2_enabled = false;
	global.expertpack_enabled = false;
	global.simpsonpack_endabled = false;
	scr_access_method(beginnerpackIndex, global.beginnerpack_enabled);
	scr_access_method(amateurpack1Index, global.amateurpack1_enabled);
	scr_access_method(amateurpack2Index, global.amateurpack2_enabled);
	scr_access_method(professionalpack1Index, global.professionalpack1_enabled);
	scr_access_method(professionalpack2Index, global.professionalpack2_enabled);
	scr_access_method(expertpackIndex, global.expertpack_enabled);
	scr_access_method(simpsonpackIndex, global.simpsonpack_enabled);*/
	for( i = 0; i < global.worlds; i++)
	{
	    levels = sprite_get_number(global.land[i]);
	    for( j = 0; j < levels; j++)
	        global.land_access[i, j] = 0;
	}
	//global.World_Access = 7;
	//global.Level_Access = 4;
	for( i = global.World_Access; i < global.worlds; i++)
	{
	    levels = sprite_get_number(global.land[i]);
	    if( i > global.World_Access)
	        tmp = 0;
	    else tmp = global.Level_Access;
	    for( ; tmp < levels; tmp++)
	        global.land_access[i, tmp] = 1;
	}



}
