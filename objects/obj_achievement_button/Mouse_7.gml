global.previous_room = room;
audio_play_sound(snd_button_clicked, 1, false);
if os_type == os_android
{
	if GooglePlayServices_IsSignedIn()
	{
		//audio_play_sound(snd_active, 1, false);
		GooglePlayServices_Achievements_Show();
	}
	else
	{
		//audio_play_sound(snd_inactive, 1, false);
		if (!GooglePlayServices_IsSignedIn()) 
		{
			GooglePlayServices_StartSignInIntent();
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

