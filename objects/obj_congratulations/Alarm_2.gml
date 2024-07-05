/// @description achivement met?newbie, novice, amateur, professional, expert
if global.world_selected = 0 and global.level_selected = 1 and !global.Ach_Newbie
{
    global.Ach_Newbie = 1;
	if os_type == os_android
	{
		if GooglePlayServices_IsAuthenticated()
		{
			GooglePlayServices_Achievements_SetSteps("CgkI7ImpkKkSEAIQAQ", 100);
		}
	}
	else if os_type == os_ios
	{
		if GameCenter_LocalPlayer_IsAuthenticated()
		{
			GameCenter_Achievement_Report("com.bluroman.PixelBreakers.achievement.newbie", 100);
		}
	}
	else show_debug_message("No Newbie Ach available");
    //scr_achievement_met(global.ach_title_info[0,0], global.ach_title_info[0,1]);
    ini_open("Save.ini");
    ini_write_real("Achievements", "ach_newbie", global.Ach_Newbie);
    ini_close();  
}
if global.world_selected = 0 and global.level_selected = sprite_get_number(global.land[global.world_selected]) and !global.Ach_Novice
{
    global.Ach_Novice = 1;
	if os_type == os_android
	{
		if GooglePlayServices_IsAuthenticated()
		{
			GooglePlayServices_Achievements_SetSteps("CgkI7ImpkKkSEAIQAg", 100);
		}
	}
	else if os_type == os_ios
	{
		if GameCenter_LocalPlayer_IsAuthenticated()
		{
			GameCenter_Achievement_Report("com.bluroman.PixelBreakers.achievement.novice", 100);
		}
	}
	else show_debug_message("No Novice Ach available");
    //scr_achievement_met(global.ach_title_info[1,0], global.ach_title_info[1,1]);
    ini_open("Save.ini");
    ini_write_real("Achievements", "ach_novice", global.Ach_Novice);
    ini_close();  
}
if global.world_selected = 2 and global.level_selected = sprite_get_number(global.land[global.world_selected]) and !global.Ach_Amateur
{
    global.Ach_Amateur = 1;
	if os_type == os_android
	{
		if GooglePlayServices_IsAuthenticated()
		{
			GooglePlayServices_Achievements_SetSteps("CgkI7ImpkKkSEAIQAw", 100);
		}
	}
	else if os_type == os_ios
	{
		if GameCenter_LocalPlayer_IsAuthenticated()
		{
			GameCenter_Achievement_Report("com.bluroman.PixelBreakers.achievement.amateur", 100);
		}
	}
	else show_debug_message("No Amateur Ach available");
    //scr_achievement_met(global.ach_title_info[2,0], global.ach_title_info[2,1]);
    ini_open("Save.ini");
    ini_write_real("Achievements", "ach_amateur", global.Ach_Amateur);
    ini_close();  
}
if global.world_selected = 4 and global.level_selected = sprite_get_number(global.land[global.world_selected]) and !global.Ach_Professional
{
    global.Ach_Professional = 1;
	if os_type == os_android
	{
		if GooglePlayServices_IsAuthenticated()
		{
			GooglePlayServices_Achievements_SetSteps("CgkI7ImpkKkSEAIQBA", 100);
		}
	}
	else if os_type == os_ios
	{
		if GameCenter_LocalPlayer_IsAuthenticated()
		{
			GameCenter_Achievement_Report("com.bluroman.PixelBreakers.achievement.professional", 100);
		}
	}
	else show_debug_message("No Professional Ach available");
    //scr_achievement_met(global.ach_title_info[3,0], global.ach_title_info[3,1]);
    ini_open("Save.ini");
    ini_write_real("Achievements", "ach_professional", global.Ach_Professional);
    ini_close();  
}
if global.world_selected = 5 and global.level_selected = sprite_get_number(global.land[global.world_selected]) and !global.Ach_Expert
{
    global.Ach_Expert = 1;
	if os_type == os_android
	{
		if GooglePlayServices_IsAuthenticated()
		{
			GooglePlayServices_Achievements_SetSteps("CgkI7ImpkKkSEAIQBQ", 100);
		}
	}
	else if os_type == os_ios
	{
		if GameCenter_LocalPlayer_IsAuthenticated()
		{
			GameCenter_Achievement_Report("com.bluroman.PixelBreakers.achievement.expert", 100);
		}
	}
	else show_debug_message("No Expert Ach available");
    //scr_achievement_met(global.ach_title_info[4,0], global.ach_title_info[4,1]);
    ini_open("Save.ini");
    ini_write_real("Achievements", "ach_expert", global.Ach_Expert);
    ini_close();  
}

