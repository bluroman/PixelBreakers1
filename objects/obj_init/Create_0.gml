/// @description Initialize variables
scr_init_globals();
gpdr_needed = false;
tracking_needed = false;
global.simpsonpack_enabled = true;//no more inapp
if(AdMob_Consent_GetStatus() == AdMob_Consent_Status_REQUIRED)
{
	gpdr_needed = true;
	show_debug_message("GPDR NEEDED");
}
else
{
	gpdr_needed = false;
	show_debug_message("GPDR NOT NEEDED : " + string(AdMob_Consent_GetStatus()));
}
tracking_needed = false;
//scr_check_secure_purchasemap();
//scr_iap_activate();
if(os_type == os_ios)
if(AppTrackingTransparency_available())
if(AppTrackingTransparency_status() == AppTrackingTransparency_NotDetermined)
{
	tracking_needed = true
	AppTrackingTransparency_request()
}
