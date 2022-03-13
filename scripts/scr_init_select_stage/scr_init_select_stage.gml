function scr_init_select_stage() {
	scr_land_access();
	obj_menu_current.sprite_index = global.land[global.world_selected];
	if(global.world_selected == 0)
	{
	    obj_menu_current.img = 0;
	}
	else
	{
	    obj_menu_current.img = 1
	}
	obj_menu_current.img = global.level_selected - 1;          
	obj_menu_prev.sprite_index = global.land[global.world_selected];
	obj_menu_prev.img = obj_menu_current.img - 1;
	obj_menu_next.sprite_index = global.land[global.world_selected];
	obj_menu_next.img = obj_menu_current.img + 1;



}
