//Call this code block before of any other extension that collect data

if(os_type == os_ios)
if(AppTrackingTransparency_available())
if(AppTrackingTransparency_status() == AppTrackingTransparency_NotDetermined)
	AppTrackingTransparency_request()
