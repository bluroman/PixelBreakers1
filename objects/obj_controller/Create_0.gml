//if !audio_is_playing(snd_music)
//{
    //audio_play_music(snd_music, true);
    if audio_is_playing(snd_title)
        audio_stop_sound(snd_title);
		
	if !audio_is_playing(snd_music)
		audio_play_sound(snd_music, 0, true);
    game_clear = false;
    ball_lost = false;
    var new_ball;
    new_ball = instance_create(x, y, obj_ball);
    new_ball.speed = 0;
    new_ball.start = true;  
    text_alpha = 1;
    randomize();
	global.playLevels++;
	AdMob_RewardedVideo_Load();
	AdMob_Interstitial_Load();
    //GoogleMobileAds_LoadRewardedVideo(global.rewardedId);
    rewarded_loaded = false;
    rewarded_viewed = false;
	//if(global.playLevels > 1 && global.interstitial_loaded)
    //{
	//	AdMob_Interstitial_Show();
    //    global.interstitial_loaded = false;
    //    global.paused = false;
    //}
	
    
if 0
{
    var i, j, count, block_id;
    dup_count = 0;
    dup_block_map = ds_map_create();
    count = 0;
    with(obj_block)
    {
        block_id[count] = id;
        count++;
    }
    for(i = 0; i < count; i += 1)
    {
        for(j = 0; j < count; j += 1)
        {
            if(i != j and block_id[i].x == block_id[j].x and block_id[i].y == block_id[j].y)
            {
                //add map
                dup_count++;
                //ds_map_add(dup_block_map, block_id[i], dup_count);
            }
        }
        if (dup_count > 0)
        {
            ds_map_add(dup_block_map, block_id[i], dup_count);
            dup_count = 0;
        }
            
    }
} 
   //}
//audio_stop_music();//for testing sound

