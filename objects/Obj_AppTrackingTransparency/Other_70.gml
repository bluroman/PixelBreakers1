
//Most of apps/games not requeries this event, feel free of delete/ignore it

if(ds_map_exists(async_load,"type"))
if(async_load[?"type"] == "AppTrackingTransparency")
switch(AppTrackingTransparency_status())//in theory only 'Authorized' and 'Denied' cases can be called here
{
	case AppTrackingTransparency_NotDetermined:
		// The user has not yet received an authorization request to authorize access to app-related data that can be used for tracking the user or the device.
		show_debug_message("AppTrackingTransparency ASYNC: Not Determined")
	break
	
	case AppTrackingTransparency_Authorized:
		// The user authorizes access to app-related data that can be used for tracking the user or the device.
		show_debug_message("AppTrackingTransparency ASYNC: Authorized")
	break
	
	case AppTrackingTransparency_Denied:
		// The user denies authorization to access app-related data that can be used for tracking the user or the device.
		show_debug_message("AppTrackingTransparency ASYNC: Denied")
	break
	
	case AppTrackingTransparency_Restricted:
		// The authorization to access app-related data that can be used for tracking the user or the device is restricted.
		show_debug_message("AppTrackingTransparency ASYNC: Restricted")
	break
}

