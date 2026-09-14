/// @description AdMob event handlers

// We do an early exit if the 'async_load' map doesn't contain a "type" key.
if(!ds_map_exists(async_load, "type")) exit;

show_debug_message("AdMob: " + json_encode(async_load));

// We switch on the type of the event being fired
switch(async_load[? "type"])
{
	// AdMob_Initialize finished
	case "AdMob_OnInitialized":
		// At this point the AdMob API succeeded to initialize.
		// We will now request a consent information update.	

		// Regarding consent request first of all we should select the mode we want to use for.
		// You can use one of the following constants:
		// 
		// AdMob_Consent_Mode_DEBUG_GEOGRAPHY_EEA (debug only)
		// AdMob_Consent_Mode_DEBUG_GEOGRAPHY_DISABLED (debug only)
		// AdMob_Consent_Mode_DEBUG_GEOGRAPHY_NOT_EEA (debug only)
		// AdMob_Consent_Mode_PRODUCTION (used for release)
		//
		//AdMob_Consent_RequestInfoUpdate(AdMob_Consent_Mode_DEBUG_GEOGRAPHY_EEA);
		AdMob_Consent_RequestInfoUpdate(AdMob_Consent_Mode_PRODUCTION);
		break;
	// ###############################################
	//                   CONSENT
	// ###############################################

	// AdMob_Consent_RequestInfoUpdate succeeded
	case "AdMob_Consent_OnRequestInfoUpdated":
		// At this point the extension succeeded on selecting consent mode.
		
		// We wil update the debug strings (used in draw event)
		updateConsentStrings();
		
		// We use this event to query the current consent status, if GDPR consent
		// is required (AdMob_Consent_Status_REQUIRED) then we start loading the consent form.
		if(AdMob_Consent_GetStatus() == AdMob_Consent_Status_REQUIRED) //https://developers.google.com/admob/ump/android/api/reference/com/google/android/ump/ConsentInformation.ConsentStatus.html#REQUIRED
			AdMob_Consent_Load();
		else
		{
			// We are not required to request consent
			// from the user so we can not load the ads
			loadAllAds();
		}
		break;
	// AdMob_Consent_RequestInfoUpdate failed
	case "AdMob_Consent_OnRequestInfoUpdateFailed":
	
		// We wil update the debug strings (used in draw event)
		updateConsentStrings();
		
		// At this point the extension failed to obtain a consent update
		// Since we don't know the user consent response we need to assume
		// that the ads MUST be non-personalized
		AdMob_NonPersonalizedAds_Set(true);
		
		// We can also now load the ads
		// NOTE: Ads should only be loaded after the consent is answered
		loadAllAds();
		break;
	
	// AdMob_Consent_Load succeeded
	case "AdMob_Consent_OnLoaded":
		// At this point the consent form loaded successfully.
		// We uses this event to show the consent to the user.
		AdMob_Consent_Show()
		break;
	
	// AdMob_Consent_Load failed
	case "AdMob_Consent_OnLoadFailed":
		// At this point there was a problem loading the consent form.
		// Since we don't know the user consent response we need to assume
		// that the ads MUST be non-personalized
		AdMob_NonPersonalizedAds_Set(true);
		
		// We can also now load the ads
		// NOTE: Ads should only be loaded after the consent is answered
		loadAllAds();
		break;
	
	// AdMob_Consent_Show succeeded & user answered
	case "AdMob_Consent_OnShown":
		// At this point the user already saw and answered the
		// consent request so we can process the results.
		showDebugInfo();
		updateConsentStrings();
		
		// We can also now load the ads
		// NOTE: Ads should only be loaded after the consent is answered
		loadAllAds();
		//if(alarm[0] < 0)
		//	alarm[0] = 1;
		break;
	
	case "AdMob_Consent_OnShowFailed":
		// At this point there was a problem showing the consent form.
		// Since we don't know the user consent response we need to assume
		// that the ads MUST be non-personalized
		AdMob_NonPersonalizedAds_Set(true);
		
		// We can also now load the ads
		// NOTE: Ads should only be loaded after the consent is answered
		loadAllAds();
		//if(alarm[0] < 0)
		//	alarm[0] = 1;
		break;
}