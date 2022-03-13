/// @description If ball lost and lives remain, create ball
if lives >= 0
{
    audio_play_sound(snd_life_lost, 1, false);
    with (obj_bat)
    {
        BAT_LENGTH = 2;
        image_xscale = bat_length_level[BAT_LENGTH];
    }
    var new_ball;
    new_ball = instance_create(obj_bat.x, obj_bat.y, obj_ball);
    new_ball.speed = 0;
    new_ball.start = true; 
    
    ball_lost = false; 
}
else
{
    if(rewarded_loaded)
        scr_msgbox(0,0,room_width,room_height,"Continue?","Extra Life will be given By Watching Video Ads.","OK", "CANCEL");
    else
    {
		AdMob_RewardedVideo_Load();
        scr_gameover();
    }
    
}

