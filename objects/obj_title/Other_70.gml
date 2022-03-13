/*var ident = ds_map_find_value(async_load, "id");
 if ident == achievement_our_info
    {
    var name = ds_map_find_value(async_load, "name" );
    var playerid = ds_map_find_value(async_load, "playerid" );
    global.OurName = name;
    global.OurId = playerid;
    if os_type == os_android
       {
       //achievement_load_leaderboard("CgkIs9_51u0PEAIQBw", 1, 100, achievement_filter_friends_only);
       show_debug_message("Our Id:" + global.OurId + "Name:" + global.OurName);
       }
    else
       {
       //achievement_load_leaderboard("leaderboard1id", 1, 100, achievement_filter_friends_only);
       }
    //achievement_get_challenges();
    //achievement_load_friends();
    //achievement_load_progress();
    }*/
 ///Get banner info and reposition it if we wish

//show_debug_message("Social async event...");

//var ident = string(ds_map_find_value(async_load, "type" ));
//var loaded = ds_map_find_value(async_load, "loaded");  

//if (ident == "banner_load")
//{
//    if (loaded)
//    {
//        var bw = ds_map_find_value(async_load, "width");
//        var bh = ds_map_find_value(async_load, "height");
        
//        show_debug_message("Banner loaded: size=" + string(bw) + "," + string(bh) );
        
//        // Centre the ad on the screen (override what's in the AddBanner button code)
//        var px = (display_get_width() - bw)/2;
//        var py = (display_get_height() - bh)/2;
//        GoogleMobileAds_MoveBanner(px, 0);
//        show_debug_message("Banner moved via Social event to " + string(px) + "," + string(py) );
        
//        /*
//         The commented-out lines above are what we would have to do for some other ad providers if
//         we wanted to load a banner at a specified location. The code is here for Google also just 
//         to demonstrate how you can still use the event to control positioning ads with this provider.
//        */
//    }
//    else { show_debug_message("Banner failed to load!"); }
//}
//else if (ident == "interstitial_load")
//{
//    //GoogleMobileAds_InterstitialStatus()
//    global.interLoading = false; 
    
//    if (loaded) 
//    { 
//        show_debug_message("Interstitial loaded");
//        global.interstitial_loaded = true;
//        //GoogleMobileAds_ShowInterstitial(); 
//    }
//    else { show_debug_message("Interstitial failed to load!"); }
//}

/* */
/*  */
