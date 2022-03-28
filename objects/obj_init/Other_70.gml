/// @description Insert description here
// You can write your code in this editor
if(ds_map_exists(async_load,"type"))
if(async_load[?"type"] == "AppTrackingTransparency")
switch(AppTrackingTransparency_status())//in theory only 'Authorized' and 'Denied' cases can be called here
{
	case AppTrackingTransparency_NotDetermined:
		// The user has not yet received an authorization request to authorize access to app-related data that can be used for tracking the user or the device.
		show_debug_message("AppTrackingTransparency ASYNC: Not Determined")
	break
	
	case AppTrackingTransparency_Authorized:
		tracking_needed = false;
		// The user authorizes access to app-related data that can be used for tracking the user or the device.
		show_debug_message("AppTrackingTransparency ASYNC: Authorized")
	break
	
	case AppTrackingTransparency_Denied:
		tracking_needed = false;
		// The user denies authorization to access app-related data that can be used for tracking the user or the device.
		show_debug_message("AppTrackingTransparency ASYNC: Denied")
	break
	
	case AppTrackingTransparency_Restricted:
		tracking_needed = false;
		// The authorization to access app-related data that can be used for tracking the user or the device is restricted.
		show_debug_message("AppTrackingTransparency ASYNC: Restricted")
	break
}
else 
switch(async_load[? "type"])
{
	// AdMob_Consent_RequestInfoUpdate succeeded
	case "AdMob_Consent_OnRequestInfoUpdated":
		// At this point the extension succeeded on selecting consent mode.
		// We use this event to query the current consent status, if GDPR consent
		// is required (AdMob_Consent_Status_REQUIRED) then we start loading the consent form.
		if(AdMob_Consent_GetStatus() == AdMob_Consent_Status_REQUIRED)//https://developers.google.com/admob/ump/android/api/reference/com/google/android/ump/ConsentInformation.ConsentStatus.html#REQUIRED
		{
			gpdr_needed = true;
			AdMob_Consent_Load();
		}
		else
			show_debug_message("OnRequestInfoUpdated Not required")
			//AdMob_Consent_showDebugInfo();
	break
	
	// AdMob_Consent_RequestInfoUpdate failed
	case "AdMob_Consent_OnRequestInfoUpdateFailed":
		// At this point the extension failed to select consent mode.
	break
	
	// AdMob_Consent_Load succeeded
	case "AdMob_Consent_OnLoaded":
		// At this point the consent form loaded successfully.
		// We uses this event to show the consent to the user.
		AdMob_Consent_Show()
	break
	
	// AdMob_Consent_Load failed
	case "AdMob_Consent_OnLoadFailed":
		// At this point there was a problem loading the consent form.
	break
	
	// AdMob_Consent_Show succeeded & user answered
	case "AdMob_Consent_OnShown":
		// At this point the user already saw and answered the consent request so we can
		// process the results.
		//AdMob_Consent_showDebugInfo();
		show_debug_message("Consent On shown")
		gpdr_needed = false;
	break
	
	case "AdMob_Consent_OnShowFailed":
		// At this point there was a problem showing the consent form.
		gpdr_needed = false;
	break
}