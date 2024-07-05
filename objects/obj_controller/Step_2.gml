if !global.Ach_MoreGems and global.Gems_Count = 100
{
    global.Ach_MoreGems = 1;
	if os_type == os_android
	{
		if GooglePlayServices_IsAuthenticated()
		{
			GooglePlayServices_Achievements_SetSteps("CgkI7ImpkKkSEAIQBg", 100);
		}
	}
	else if os_type == os_ios
	{
		if GameCenter_LocalPlayer_IsAuthenticated()
		{
			GameCenter_Achievement_Report("com.bluroman.PixelBreakers.achievement.moregems", 100);
		}
	}
	else show_debug_message("No MoreGems Ach available");
    //scr_achievement_met(global.ach_title_info[5,0], global.ach_title_info[5,1]);
    ini_open("Save.ini");
    ini_write_real("Achievements", "ach_moregems", global.Ach_MoreGems);
    ini_close();  
}
if !global.Ach_JackPot and global.Gems_Count = 777
{
    global.Ach_JackPot = 1;
	if os_type == os_android
	{
		if GooglePlayServices_IsAuthenticated()
		{
			GooglePlayServices_Achievements_SetSteps("CgkI7ImpkKkSEAIQBw", 100);
		}
	}
	else if os_type == os_ios
	{
		if GameCenter_LocalPlayer_IsAuthenticated()
		{
			GameCenter_Achievement_Report("com.bluroman.PixelBreakers.achievement.jackpot", 100);
		}
	}
	else show_debug_message("No JackPot Ach available");
    //scr_achievement_met(global.ach_title_info[6,0], global.ach_title_info[6,1]);
    ini_open("Save.ini");
    ini_write_real("Achievements", "ach_moregems", global.Ach_JackPot);
    ini_close();  
}
if !global.Ach_GemCollector and global.Gems_Count = 1000
{
    global.Ach_GemCollector = 1;
	if os_type == os_android
	{
		if GooglePlayServices_IsAuthenticated()
		{
			GooglePlayServices_Achievements_SetSteps("CgkI7ImpkKkSEAIQCA", 100);
		}
	}
	else if os_type == os_ios
	{
		if GameCenter_LocalPlayer_IsAuthenticated()
		{
			GameCenter_Achievement_Report("com.bluroman.PixelBreakers.achievement.gemcollector", 100);
		}
	}
	else show_debug_message("No GemCollector Ach available");
    //scr_achievement_met(global.ach_title_info[7,0], global.ach_title_info[7,1]);
    ini_open("Save.ini");
    ini_write_real("Achievements", "ach_gemcollector", global.Ach_GemCollector);
    ini_close();  
}
if !global.Ach_PixelBreakers and global.Bricks_Count = 10000
{
    global.Ach_PixelBreakers = 1;
	if os_type == os_android
	{
		if GooglePlayServices_IsAuthenticated()
		{
			GooglePlayServices_Achievements_SetSteps("CgkI7ImpkKkSEAIQCQ", 100);
		}
	}
	else if os_type == os_ios
	{
		if GameCenter_LocalPlayer_IsAuthenticated()
		{
			GameCenter_Achievement_Report("com.bluroman.PixelBreakers.achievement.pixelbreakers", 100);
		}
	}
	else show_debug_message("No PixelBreakers Ach available");
    //scr_achievement_met(global.ach_title_info[8,0], global.ach_title_info[8,1]);
    ini_open("Save.ini");
    ini_write_real("Achievements", "ach_pixelbreakers", global.Ach_PixelBreakers);
    ini_close();  
}
if !global.Ach_LoveHeart and global.Heart_Count = 1
{
    global.Ach_LoveHeart = 1;
	if os_type == os_android
	{
		if GooglePlayServices_IsAuthenticated()
		{
			GooglePlayServices_Achievements_SetSteps("CgkI7ImpkKkSEAIQCg", 100);
		}
	}
	else if os_type == os_ios
	{
		if GameCenter_LocalPlayer_IsAuthenticated()
		{
			GameCenter_Achievement_Report("com.bluroman.PixelBreakers.achievement.loveheart", 100);
		}
	}
	else show_debug_message("No LoveHeart Ach available");
    //scr_achievement_met(global.ach_title_info[9,0], global.ach_title_info[9,1]);
    ini_open("Save.ini");
    ini_write_real("Achievements", "ach_loveheart", global.Ach_LoveHeart);
    ini_close();  
}

