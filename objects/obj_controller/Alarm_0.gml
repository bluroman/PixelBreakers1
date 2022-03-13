/// @description  Do we have a next level?
audio_stop_all();
audio_play_sound(snd_next_level, 1, false);
instance_create(x,y,obj_congratulations);
highscore_add("Local", score);
//Send the achievement
if os_type == os_android
{
	if GooglePlayServices_IsSignedIn()
	{
		show_debug_message("Achievement Available");
		GooglePlayServices_Leaderboard_SubmitScore("CgkI7ImpkKkSEAIQAA", score,"");
	}
}
else if os_type == os_ios
{
	if GameCenter_LocalPlayer_IsAuthenticated()
	{
		show_debug_message("Send Score: " + string(score) + "Leader board");
		GameCenter_Leaderboard_Submit("com.bluroman.PixelBreakers.Leaderboard", score);
	}
}
else show_debug_message("No achievements available");
with(obj_ball)
{
    start = true;
}
//instance_destroy();

