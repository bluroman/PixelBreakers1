function scr_gameover() {
	room_persistent = false;
	        highscore_add("Local", score);
	        //Send the achievement
			if os_type == os_android
			{
				if GooglePlayServices_IsAuthenticated()
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
	        audio_stop_all();
	        audio_play_sound(snd_gameover, 1, false);
	        if (global.Config > 0)
	            room_goto(rm_gameover);
	        else
	            room_goto(rm_gameover_pad);



}
