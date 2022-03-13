function adjust_view() {
	globalvar display_w, display_h, gray_alpha;
	display_w = display_get_width();
	display_h = display_get_height();
	if (os_type == os_android || os_type == os_ios) {
	    w = display_w;
	    h = display_h;
	    __view_set( e__VW.WView, 0, w );
	    __view_set( e__VW.HView, 0, h );
	    __view_set( e__VW.WPort, 0, w );
	    __view_set( e__VW.HPort, 0, h );
	    show_debug_message("display_w:" + string(w) + "display_h" + string(h));
    
	//    room_set_view(room0, 0, 1, 0, 0, w, h, 0, 0, w, h, 0, 0, -1, -1, noone);
	}



}
