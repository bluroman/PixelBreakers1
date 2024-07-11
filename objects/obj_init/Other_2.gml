/// @description select os type
//show_message("Game start");
//ads_enable(0, 0, 0);
//This will log you into the Game Center.
//It should be called at the start of the game in any instance
//achievement_login();
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

//global.Config = 0;//for test

//if (global.Config > 0)
//{
//    var r;
//    r = room_first;
//    while (r >= 0) {
//        if (string_pos("pad", room_get_name(r)) == 0) {
//            room_set_view_enabled(r,true);
//            room_set_view(r,0,true,0,0, 640, 960, 0,0, 640, 960,0,0,-1,-1,-1);
//        }
//        r = room_next(r); // This is not room_goto_next()!
//    }
//}
//if (global.Config > 0)
//    room_goto(rm_title);
//else
//{
//    //show_message("pad room go");
//    room_goto(rm_title_pad);
//}

