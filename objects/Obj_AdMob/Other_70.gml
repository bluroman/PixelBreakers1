/// @description AdMob event handlers

// We do an early exit if the 'async_load' map doesn't contain a "type" key.
if(!ds_map_exists(async_load, "type"))
	exit;

show_debug_message("AdMob: " + json_encode(async_load));

// We switch on the type of the event being fired
switch(async_load[?"type"])
{

	// AdMob_Initialize finished
	case "AdMob_OnInitialized":
		// At this point the AdMob API succeeded to initialize.
		// We use this event to load both the interstitial/rewarded video ads.
		AdMob_Interstitial_Load();
		AdMob_RewardedVideo_Load();
		AdMob_RewardedInterstitial_Load();
		break;
	
	// AdMob_Banner_Create succeeded
	case "AdMob_Banner_OnLoaded": 
		// At this point the banner ad succeeded to be created.
		break;
	
	// AdMob_Banner_Create failed
	case "AdMob_Banner_OnLoadFailed":
		// At this point the banner ad failed to be created.
		break;
	
	// ########### INTERSTITIAL  ###########
	
	// AdMob_Interstitial_Load succeeded
	case "AdMob_Interstitial_OnLoaded":
		// At this point the interstitial ad succeeded to load.
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

	// ########### REWARDED VIDEO ###########

	// AdMob_RewardedVideo_Load succeeded
	case "AdMob_RewardedVideo_OnLoaded":
		// At this point the rewarded video succeeded to load.
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
		AdMob_RewardedVideo_Load();
		break;
	
	// AdMob_RewardedVideo triggered reward event
	case "AdMob_RewardedVideo_OnReward":
		// At this point you can reward the user.
		show_message_async("User Earned Reward");
		break;
	
	
	// ########### REWARDED INTERSTITIAL ###########
	
	// AdMob_RewardedInterstitial_Load succeeded
	case "AdMob_RewardedInterstitial_OnLoaded": 
		// At this point the rewarded interstitial ad succeeded to load.
		break;
	
	case "AdMob_RewardedInterstitial_OnLoadFailed":
		// At this point the rewarded interstitial ad failed to load.
		// AdMob_RewardedInterstitial__load() // This can create an infinite loop if load always fails!!
		break;
	
	case "AdMob_RewardedInterstitial_OnFullyShown":
		// At this point the rewarded interstitial ad succeeded to show.
		break;	
	
	// AdMob_RewardedInterstitial_Show failed
	case "AdMob_RewardedInterstitial_OnShowFailed":
		// At this point the rewarded interstitial ad failed to show.
		// Here we use this event to load the rewarded interstitial ad again (it could be a load problem).
		AdMob_RewardedInterstitial_Load();
		break;
	
	// AdMob_RewardedInterstitial got dismissed
	case "AdMob_RewardedInterstitial_OnDismissed":
		// At this point the rewarded interstitial just got dismissed.
		// Here we use this event to load the next rewarded interstitial ad.
		AdMob_RewardedInterstitial_Load();
		break;
	
	// AdMob_RewardedInsterstitial triggered reward event
	case "AdMob_RewardedInterstitial_OnReward":
		// At this point you can reward the user.
		show_message_async("User Earned Reward");
		break;
}

