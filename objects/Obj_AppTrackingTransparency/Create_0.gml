global.room_map = ds_map_create();
scr_ds_map_rooms(global.room_map); 

if (os_type == os_ios)
{
    if (os_device == device_ios_ipad || os_device == device_ios_ipad_retina)
        global.Config = 0;
    else if (os_device == device_ios_iphone || os_device == device_ios_iphone_retina)
        global.Config = 1;
    else if (os_device == device_ios_iphone5)
        global.Config = 2;
    else if (os_device == device_ios_iphone6 || os_device == device_ios_iphone6plus)
        global.Config = 3;
    else
        global.Config = 4;
}
else if (os_type == os_windows || os_type == os_macosx || os_browser != browser_not_a_browser)
{
    global.Config = 1;
}
else if (os_type == os_android)
    global.Config = 3;
else global.Config = 1;
//Call this code block before of any other extension that collect data

// First we need to make sure we are running under iOS
if(os_type == os_ios)
{
	// This checks if the "Allow Apps to Request to Track" option is enabled
	if(AppTrackingTransparency_available())
	{
		// If the tracking status is NotDetermined (user hasn't been asked yet)
		if(AppTrackingTransparency_status() == AppTrackingTransparency_NotDetermined)
		{
			// Request for tracking application data
			// @triggers Social Async Event
			AppTrackingTransparency_request();
		}
		else
		{
			//room_goto(rm_setup);
		}
	}
	else
	{
		//room_goto(rm_setup);
	}
}
else
{
	//room_goto(rm_setup);
}