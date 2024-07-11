/// @description Initialize all the global variables
function scr_init_globals() {
	//Open the ini file for reading
	ini_open("Save.ini");

	//General Vars
	global.Music = ini_read_real("Sound", "music", 0.5);
	global.Sound = ini_read_real("Sound", "sound", 0.5);
	global.Gems_Count = ini_read_real("Extras", "gems", 0);
	global.Bricks_Count = ini_read_real("Extras", "bricks", 0);
	global.Heart_Count = ini_read_real("Extras", "heart", 0);
	global.Level_Access = ini_read_real("Extras", "access_level", 1);
	global.World_Access = ini_read_real("Extras", "access_world", 0);
	global.Ach_Newbie = ini_read_real("Achievements", "ach_newbie", 0);
	global.Ach_Novice = ini_read_real("Achievements", "ach_novice", 0);
	global.Ach_Amateur = ini_read_real("Achievements", "ach_amateur", 0);
	global.Ach_Professional = ini_read_real("Achievements", "ach_professional", 0);
	global.Ach_Expert = ini_read_real("Achievements", "ach_expert", 0);
	global.Ach_MoreGems = ini_read_real("Achievements", "ach_moregems", 0);
	global.Ach_JackPot = ini_read_real("Achievements", "ach_jackpot", 0);
	global.Ach_GemCollector = ini_read_real("Achievements", "ach_gemcollector", 0);
	global.Ach_PixelBreakers = ini_read_real("Achievements", "ach_pixelbreakers", 0);
	global.Ach_LoveHeart = ini_read_real("Achievements", "ach_loveheart", 0);

	//sound_volume(snd_music, global.Music);
	//audio_master_gain(global.Music);
	audio_sound_gain(snd_music, global.Music, 1000);
	audio_sound_gain(snd_title, global.Music, 1000);
	scr_sfx_gain();

	//if global.Music 
	//sound_play(snd_music);
	//sound_loop(snd_music);
	//audio_play_music(snd_title, true);

	//Close the ini file
	ini_close();

	global.paused = false;
	global.paused_by_os = false;
	//global.interLoading = false;
	global.interstitial_loaded = false;
	global.playTimes = 0;
	global.playLevels = 0;
	scr_init_achievements();
	globalvar bat_length_level;
	bat_length_level[0] = 0.25;
	bat_length_level[1] = 0.5;
	bat_length_level[2] = 1.0;
	bat_length_level[3] = 2.0;
	bat_length_level[4] = 3.0;
	bat_length_level[5] = 4.0;

	if (os_type == os_ios) 
	{ 
	    //GoogleMobileAds_Init("ca-app-pub-6964194614288140/3259706912", "ca-app-pub-6964194614288140~9306240514"); //interstitial
	    global.bannerId = "ca-app-pub-6964194614288140/1782973712";// banner
	    global.rewardedId = "ca-app-pub-6964194614288140/2735554105";// rewarded
		global.interstitialId = "ca-app-pub-6964194614288140/3259706912";//interstitial
		
	}
	else if(os_type == os_android)//android case
	{ 
	    //GoogleMobileAds_Init("ca-app-pub-6964194614288140/3120106118", "ca-app-pub-6964194614288140~9166639715");
	    global.bannerId = "ca-app-pub-6964194614288140/1643372910";
	    global.rewardedId = "ca-app-pub-6964194614288140/1994561349";
		global.interstitialId = "ca-app-pub-6964194614288140/3120106118";//interstitial
	}
	else
	{
	    //GoogleMobileAds_Init("ca-app-pub-6964194614288140/3120106118", "ca-app-pub-6964194614288140~9166639715");
	    global.bannerId = "ca-app-pub-6964194614288140/1643372910";
	    global.rewardedId = "ca-app-pub-6964194614288140/1994561349";
		global.interstitialId = "ca-app-pub-6964194614288140/3120106118";//interstitial
	}
	AdMob_Initialize();
	//AdMob_Banner_Init(global.bannerId);
	//AdMob_Interstitial_Init(global.interstitialId);
	//AdMob_RewardedVideo_Init(global.rewardedId);
	
	//AdMob_Consent_RequestInfoUpdate(AdMob_Consent_Mode_DEBUG_GEOGRAPHY_EEA);
	//AdMob_Consent_RequestInfoUpdate(AdMob_Consent_Mode_DEBUG_GEOGRAPHY_DISABLED);
	//AdMob_Consent_RequestInfoUpdate(AdMob_Consent_Mode_DEBUG_GEOGRAPHY_NOT_EEA);
	//AdMob_Consent_RequestInfoUpdate(AdMob_Consent_Mode_PRODUCTION);
	//AdMob_Interstitial_Load();
	//GoogleMobileAds_UseTestAds(true,"8F2E910B1C2864240E73D1731151AEAC");


	//Prepare text drawing
	//draw_set_halign(fa_center);
	//draw_set_valign(fa_middle);
	//draw_set_font(font0);
	//draw_set_color(c_white);



}
