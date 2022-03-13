function scr_set_screen_size() {
	/* Script to set the size of the game screen
	 *
	 * returns nothing
	 *
	 */

	switch (os_type) {
	  // desktop
	  case os_windows:
	  case os_linux:
	  case os_macosx:
	    var max_w = 640;  // change this to the desired window width
	    var max_h = 960;  // change this to the desired window height
	    __view_set( e__VW.WView, 0, max_w );
	    __view_set( e__VW.HView, 0, max_h );
	    __view_set( e__VW.WPort, 0, max_w );
	    __view_set( e__VW.HPort, 0, max_h );
	    window_set_size(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
	    touch = false;
	  break;
  
	  // mobile
	  case os_android:
	  case os_ios:
	  case os_winphone:
	  case os_tizen:
	    var max_w = display_get_width();
	    var max_h = display_get_height();
	    var base_w = 1024;
	    var base_h = 768;
	    var aspect = display_get_width() / display_get_height();
	    if (max_w < max_h) {
	      var VIEW_WIDTH = min(base_w, max_w);
	      var VIEW_HEIGHT = VIEW_WIDTH / aspect;
	    } else {
	      var VIEW_HEIGHT = min(base_h, max_h);
	      var VIEW_WIDTH = VIEW_HEIGHT * aspect;
	    }
	    __view_set( e__VW.WView, 0, floor(VIEW_WIDTH) );
	    __view_set( e__VW.HView, 0, floor(VIEW_HEIGHT) );
	    __view_set( e__VW.WPort, 0, max_w );
	    __view_set( e__VW.HPort, 0, max_h );
	    touch = true;
	  break;
	}

	// change screen size
	surface_resize(application_surface, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
	global.window_width = __view_get( e__VW.WView, 0 );
	global.window_height = __view_get( e__VW.HView, 0 );



}
