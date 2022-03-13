function scr_display_test() {
	{
	// Determine the size of the view
	var aspect;
	aspect = display_get_width() / display_get_height();
	globalvar VIEW_WIDTH, VIEW_HEIGHT;
	if (os_type = os_ios && os_device == device_ios_ipad)
	{ VIEW_WIDTH = 768; VIEW_HEIGHT = 1024; }
	else if (os_type == os_windows || os_type == os_macosx ||
	os_browser != browser_not_a_browser)
	{ VIEW_WIDTH = 640; VIEW_HEIGHT = 960; }
	else if (aspect < 640 / 960)
	{ VIEW_WIDTH = 640; VIEW_HEIGHT = 640/aspect; }
	else
	{ VIEW_WIDTH = 960*aspect; VIEW_HEIGHT = 960; }
	// Set the views in the rooms
	room_set_view_enabled(rm_purchase_list,true);
	room_set_view(rm_purchase_list,0,true,(768 - VIEW_WIDTH) div 2,
	(1024 - VIEW_HEIGHT) div 2, VIEW_WIDTH, VIEW_HEIGHT,
	0,0, VIEW_WIDTH, VIEW_HEIGHT,0,0,-1,-1,-1);
	// Add views for the other rooms here
	// Now go to the title menu room
	}



}
