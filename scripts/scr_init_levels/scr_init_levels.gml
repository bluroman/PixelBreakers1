/// @description Setup the world and level menu
function scr_init_levels() {
	/*           (This is best done in an initialization room)
	   Each land sprite contains a sub-image for each level in that World.
	   The menu will adjust to show the number of lands in each automatically.
	///////////////////////////////////////////////////////////////////////////*/
	ini_open("Save.ini");
	global.Level_Access = ini_read_real("Extras", "access_level", 1);
	global.World_Access = ini_read_real("Extras", "access_world", 0);
	ini_close();
	global.land[0] = spr_stage1_L; // World 1 levels
	global.land[1] = spr_stage2_L; // World 2 levels
	global.land[2] = spr_stage3_L; // World 3 levels
	global.land[3] = spr_stage4_L; // World 4 levels
	global.land[4] = spr_stage5_L; // World 5 levels
	global.land[5] = spr_stage6_L; // World 6 levels
	global.land[6] = spr_stage7_L; // World 7 levels


	global.worlds = 7;          // Total worlds (1 more than the array index above)
	global.world_selected = 0;//global.World_Access;  // Select our starting world
	global.level_selected = 1;//global.Level_Access;  // Select our starting level

	global.world_label[0] = "Beginner Pack";
	global.world_label[1] = "Amateur Pack1";
	global.world_label[2] = "Amateur Pack2";
	global.world_label[3] = "Professional Pack1";
	global.world_label[4] = "Professional Pack2";
	global.world_label[5] = "Expert Pack";
	global.world_label[6] = "Simpson Pack";

	scr_land_access();

	//global.World_Access = 6;
	//global.Level_Access = 2;



}
