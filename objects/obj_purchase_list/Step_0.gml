adjust_view();// I put this on the step event to allow both portrait and landscape modes

/*
 This is all for draggin porpouses
 We set the distance between this step and the step before, then
 we add this value to the offset from the item list
*/

if (mouse_check_button_pressed(mb_left)) {
    mouse_yprevious = mouse_y;
}

if (mouse_check_button(mb_left)) {
    dragy = mouse_y-mouse_yprevious;
    sidebar_alpha = 5;
}
else {
    dragy *= 0.85;// Slow it down if we are not pressing anything
    sidebar_alpha = max(0, sidebar_alpha-0.05);// Fade out the sidebar
}

offset += dragy;
mouse_yprevious = mouse_y;

/*
 Here we take care we are not moving the offset too high or too low
 making the items stay always inside the view 
*/
if (offset > 0)
    offset = 0;
if (height > __view_get( e__VW.HView, 0 )-banner_height) {
    if (offset < -height+__view_get( e__VW.HView, 0 )-banner_height)
        offset = -height+__view_get( e__VW.HView, 0 )-banner_height;
}
else
    offset = 0;

// You shouldnt need to understand this, unless you found a bug and want to fix it :)



/* */
/*  */
