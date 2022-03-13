fly_title_margin = 20;
title_last_x = room_width/2;
title_last_y = 192 + sprite_height/2;
title_x = -200;
title_sprite = spr_gameover_title;
if(global.playTimes % 3 && global.interstitial_loaded)
    {
		AdMob_Interstitial_Show();
        global.interstitial_loaded = false;
        global.paused = false;
    }


