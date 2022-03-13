/// @description Set lives and score locally
scr_set_lives_score();
scr_init_levels();

if !audio_is_playing(snd_title)
{
audio_play_sound(snd_title, 0, true);
}
if os_type == os_android
{
	if (!GooglePlayServices_IsSignedIn()) 
	{
		GooglePlayServices_StartSignInIntent();
	}
}
else if os_type == os_ios
{
	show_debug_message("Want to authenticated???");
	if (!GameCenter_LocalPlayer_IsAuthenticated()) 
	{
		GameCenter_LocalPlayer_Authenticate();
		show_debug_message("authenticate request sent");
	}
}
else show_debug_message("No GameCenter or No GooglePlayServices");
AdMob_Banner_Create(AdMob_Banner_SMART, false);
//GoogleMobileAds_AddBannerAt(global.bannerId, GoogleMobileAds_Banner,0,0);

