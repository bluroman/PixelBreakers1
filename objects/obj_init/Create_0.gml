/// @description Initialize variables
scr_init_globals();
global.simpsonpack_enabled = true;//no more inapp
//scr_check_secure_purchasemap();
//scr_iap_activate();
if(os_type == os_ios)
if(AppTrackingTransparency_available())
if(AppTrackingTransparency_status() == AppTrackingTransparency_NotDetermined)
	AppTrackingTransparency_request()

