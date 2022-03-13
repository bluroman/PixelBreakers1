if(!ds_map_exists(async_load, "type"))
	exit;

show_debug_message("type key: " + json_encode(async_load));
switch(async_load[?"type"])
{
	// @triggered by GameCenter_LocalPlayer_Authenticate()
	case "GameCenter_Authenticate":
		show_debug_message("GameCenter Authenticated");
	// @triggered by GameCenter_Leaderboard_Submit()
	case "GameCenter_Leaderboard_Submit":
		show_debug_message("GameCenter Leaderboard Submit Score");
	// @triggered by GameCenter_Achievement_Report()
	case "GameCenter_Achievement_Report":
	// @triggered by GameCenter_Achievement_ResetAll()
	case "GameCenter_Achievement_ResetAll":
	
		// At this point on of the requests above just triggered it's callback.
		// However we still need to check if the task was successfull or not,
		// for that purposed we can read the flag 'success'.
		if (!async_load[?"success"])
		{
			// Here we just use an async message to inform the user that the
			// task failed.
			show_message_async(async_load[?"type"] + " FAILED");
		}
		break;
	
	// @triggered by GameCenter_PresentView_Default()
	// @triggered by GameCenter_PresentView_Achievement()
	// @triggered by GameCenter_PresentView_Achievements()
	// @triggered by GameCenter_PresentView_Leaderboard()
	// @triggered by GameCenter_PresentView_Leaderboards()
	case "GameCenter_PresentView_DidFinish":
		
		// At this point we just dismissed a GameCenter's overlay view.
		// Here we just use a debug message saying that the view was dismissed.
		show_debug_message("View DidFinish")
		break;
	// @triggered by GooglePlayServices_StartSignInIntent()
	case "GooglePlayServices_SignIn":
		// At this point we are now signed in to the google play account.
		show_debug_message("GooglePlayServices SignIn");
		break;
	
	// @triggered by GooglePlayServices_RevokeAccess()
	case "GooglePlayServices_RevokeAccess":
	// @triggered by GooglePlayServices_SignOut()
	case "GooglePlayServices_SignOut":
		// At this point we are now signed out of the google play account.
		show_debug_message("GooglePlayServices SignOut");
		break;	
	
	// AdMob_Initialize finished
	case "AdMob_OnInitialized":
		// At this point the AdMob API succeeded to initialize.
		// We use this event to load both the interstitial/rewarded video ads.
		//AdMob_Interstitial_Load();
		//AdMob_RewardedVideo_Load();
		show_debug_message("AdMob OnInitialized");
		break;
	
	// AdMob_Banner_Create succeeded
	case "AdMob_Banner_OnLoaded": 
		// At this point the banner ad succeeded to be created.
		AdMob_Banner_Move(false);
		break;
	
	// AdMob_Banner_Create failed
	case "AdMob_Banner_OnLoadFailed":
		// At this point the banner ad failed to be created.
		break;
	
	// AdMob_Interstitial_Load succeeded
	case "AdMob_Interstitial_OnLoaded":
		// At this point the interstitial ad succeeded to load.
		show_debug_message("AdMob Interstitial OnLoaded");
		//global.interstitial_loaded = true;
		//global.interLoading = false; 
		global.interstitial_loaded = true;
		break;
	
	// AdMob_Interstitial_Load failed
	case "AdMob_Interstitial_OnLoadFailed":
		// At this point the interstitial ad failed to load.
		//AdMob_Interstitial_load() // This can create an infinite loop if load always fails!!
		break;
	
	// AdMob_Interstitial_Show succeeded
	case "AdMob_Interstitial_OnFullyShown":
		// At this point the interstitial ad succeeded to show.
		break;

	// AdMob_Interstitial_Show failed
	case "AdMob_Interstitial_OnShowFailed":
		// At this point the interstitial ad failed to show.
		// Here we use this event to load the interstitial ad again (it could be a load problem).
		AdMob_Interstitial_Load();
		break;
	
	// AdMob_Interstitial got dismissed
	case "AdMob_Interstitial_OnDismissed":
		// At this point the interstitial just got dismissed.
		// Here we use this event to load the next interstitial ad.
		AdMob_Interstitial_Load();
		break;
	
	// AdMob_RewardedVideo_Load succeeded
	case "AdMob_RewardedVideo_OnLoaded":
		// At this point the rewarded video succeeded to load.
		rewarded_loaded = true;
		break;

	// AdMob_RewardedVideo_Load failed
	case "AdMob_RewardedVideo_OnLoadFailed":
		// At this point the rewarded video failed to load.
		//AdMob_RewardedVideo_Load() // This can create an infinite loop if load always fails!!
		break;
	
	// AdMob_RewardedVideo_Show succeeded
	case "AdMob_RewardedVideo_OnFullyShown":
		// At this point the rewarded video succeeded to show.
		break;
	
	// AdMob_RewardedVideo_Show failed
	case "AdMob_RewardedVideo_OnShowFailed":
		// At this point the rewarded video failed to show.
		// Here we use this event to load the rewarded video again (it could be a load problem).
		AdMob_RewardedVideo_Load();
		break;
	
	// AdMob_RewardedVideo got dismissed
	case "AdMob_RewardedVideo_OnDismissed":
		// At this point the rewarded video just got dismissed.
		// Here we use this event to load the next rewarded video.
		if rewarded_viewed == false
        {
        // Reward video was closed before the end
        // Here you can set button states, show a message, etc...
        }
        else rewarded_viewed = false;
		alarm[2] = 1;
		AdMob_RewardedVideo_Load();
		break;
	
	// AdMob_RewardedVideo triggered reward event
	case "AdMob_RewardedVideo_OnReward":
		// At this point you can reward the user.
		show_message_async("User Earned Reward");
		rewarded_viewed = true;
        lives++;
		break;
}
//var _id = async_load[? "id"];
//    if _id == GoogleMobileAds_ASyncEvent
//    {
//    var ident = async_load[? "type"];
//    switch (ident)
//        {
//        case "rewardedvideo_adloaded":
//            rewarded_loaded = true;
//            break;
//        case "rewardedvideo_loadfailed":
//            show_debug_message("Error Code: " + string(async_load[? "errorcode"]));
//            GoogleMobileAds_LoadRewardedVideo(global.rewardedId);
//            break;
//        case "rewardedvideo_adopened":
//            show_debug_message("Rewards Video Opened");
//            break;
//        case "rewardedvideo_videostarted":
//            show_debug_message("Rewards Video Started");
//            break;
//        case "rewardedvideo_watched":
//            show_debug_message("Rewards Video Watched");
//            rewarded_viewed = true;
//            lives++;
//            //global.Money += async_load[? "amount"];
//            break;
//        case "rewardedvideo_adclosed":
//            show_debug_message("Rewards Video Closed");
//            if rewarded_viewed == false
//                {
//                // Reward video was closed before the end
//                // Here you can set button states, show a message, etc...
//                }
//            else rewarded_viewed = false;
//            alarm[2] = 1;
//            GoogleMobileAds_LoadRewardedVideo(global.rewardedId);
//            break;
//        }
//    }


