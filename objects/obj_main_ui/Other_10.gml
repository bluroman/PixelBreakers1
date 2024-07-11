/// @description Insert description here
// You can write your code in this editor
if other.uiControlName=="play_button"
{
	global.previous_room = room;
	global.playTimes++;
	audio_play_sound(snd_button_clicked, 1, false);
	if (global.Config > 0)
	    room_goto(rm_select_stage);
	else
	    room_goto(rm_select_stage_pad);
}
else if other.uiControlName=="leaderboard_button"
{
	global.previous_room = room;
	audio_play_sound(snd_button_clicked, 1, false);
	if os_type == os_android
	{
		if GooglePlayServices_IsAuthenticated()
		{
			//audio_play_sound(snd_active, 1, false);
			GooglePlayServices_Leaderboard_ShowAll();
		}
		else
		{
			//audio_play_sound(snd_inactive, 1, false);
			if (!GooglePlayServices_IsAuthenticated()) 
			{
				GooglePlayServices_SignIn();
			}
		}

	}
	else if os_type == os_ios
	{
		if GameCenter_LocalPlayer_IsAuthenticated() 
		{
			//audio_play_sound(snd_active, 1, false);
			GameCenter_PresentView_Leaderboards();
		}
		else
		{
			//audio_play_sound(snd_active, 1, false);
			if (!GameCenter_LocalPlayer_IsAuthenticated()) 
			{
				GameCenter_LocalPlayer_Authenticate();
			}
		}
	}
	else show_debug_message("No GameCenter or No GooglePlayServices");
}
else if other.uiControlName=="achievement_button"
{
	global.previous_room = room;
	audio_play_sound(snd_button_clicked, 1, false);
	if os_type == os_android
	{
		if GooglePlayServices_IsAuthenticated()
		{
			//audio_play_sound(snd_active, 1, false);
			GooglePlayServices_Achievements_Show();
		}
		else
		{
			//audio_play_sound(snd_inactive, 1, false);
			if (!GooglePlayServices_IsAuthenticated()) 
			{
				GooglePlayServices_SignIn();
			}
		}

	}
	else if os_type == os_ios
	{
		if GameCenter_LocalPlayer_IsAuthenticated() 
		{
			//audio_play_sound(snd_active, 1, false);
			GameCenter_PresentView_Achievements();
		}
		else
		{
			//audio_play_sound(snd_active, 1, false);
			if (!GameCenter_LocalPlayer_IsAuthenticated()) 
			{
				GameCenter_LocalPlayer_Authenticate();
			}
		}
	}
	else show_debug_message("No GameCenter or No GooglePlayServices");
}
else if other.uiControlName=="settings_button"
{
	global.previous_room = room;
	audio_play_sound(snd_button_clicked, 1, false);
	if (global.Config > 0)
	    room_goto(rm_settings);
	else
	    room_goto(rm_settings_pad);
}