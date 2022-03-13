// Set fonts
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(font4);
// Clear the view
col = make_color_rgb(255,0,0);
draw_rectangle_color(__view_get( e__VW.XView, 0 ), __view_get( e__VW.HView, 0 )/4, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 )/2, col, col, col, col, 0);

// Set the starting y offset and height
yy = __view_get( e__VW.HView, 0 )/4+banner_height+offset;
height = 0;
selected_item = -1;

if jj > 5
    jj = 0;

/*
 Start Loop
 We use 13 because we only added 12 variables at the beggining (12=<i<13)
 You can add as many as you like!
*/
for (i=0; i<6; i+=1) {
    ii = 0;
    // This will check if we are currently pressing this item
    if in_rectangle(__view_get( e__VW.XView, 0 ), yy, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ), yy+list_height) {
        if (mouse_check_button(mb_left))
            ii = 1;// Set the image index
        if (mouse_check_button_pressed(mb_left))
            pressed = mouse_y;// For drag or tap recognition
        if (mouse_check_button_released(mb_left))
            released = mouse_y;// For drag or tap recognition
    }
    // Draw the current item
    draw_sprite_ext(spr_list_new, ii, __view_get( e__VW.XView, 0 ), yy, __view_get( e__VW.WView, 0 ), 1, 0, c_white, 1);
    
    // Draw the text corresponding to this item
    draw_text(__view_get( e__VW.XView, 0 ) + 57, yy + list_height/2, string_hash_to_newline(txt[i]));
    // Here you can draw anything you want for this item, even sprites or animations
    draw_sprite(spr_jewelry, jj, __view_get( e__VW.XView, 0 ) + 31, yy + 92); 
        
    // Icrease offset and height
    yy += list_height;
    height += list_height;
    /*
     NOTE: If you want to change the height of the items
     change the value from the two variables above (96px)
    */
    
    if (point_distance(pressed, 0, released, 0) < 10 && mouse_y > banner_height) {
        selected_item = i;
        released = -99999;
    }
}
jj++;
//if (next_jj) jj++;
// Reset variables
released = -9999;



// Draw the position indicator bar on the right
bar_pos = ((__view_get( e__VW.HView, 0 )/2-banner_height)/height) * offset*-1;
bar_hei = ((__view_get( e__VW.HView, 0 )/2-banner_height)/height) * (__view_get( e__VW.HView, 0 )/2-banner_height)
draw_set_color(c_white);
draw_set_alpha(sidebar_alpha);
draw_rectangle(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 )/4+banner_height+bar_pos, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-8, __view_get( e__VW.HView, 0 )/4+banner_height+bar_pos+bar_hei, 0);

// Draw the banner on top
draw_set_alpha(1);
draw_sprite_ext(spr_title_list, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.HView, 0 )/4, __view_get( e__VW.WView, 0 ), 1, 0, c_white, 1);
//draw_sprite_ext(banner_spr, 0, view_xview, view_yview, view_wview, 1, 0, c_white, 1);
draw_set_color(c_white);
draw_set_font(font4);
draw_set_halign(fa_center);
draw_text(__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2), __view_get( e__VW.HView, 0 )/4+36, string_hash_to_newline("MORE GEMS..."));




//s = iap_status()
//li = ds_map_find_value(s, "purchases")

//if li >= 0 {
//    for (i = 0; i < ds_list_size(li); i += 1) {
//      m = ds_list_find_value(li, i)
//      draw_text(300, 20 * (i+1), "IAP status (purchase " + string(i) + "): " + string(ds_map_find_value(m, "status")));
//    }
//}
// Check if we have selected any item
if (selected_item != -1) {
    if selected_item == 0
        scr_msgbox(0,0,room_width,room_height,"STARTER PACK","Get 2,000 coins with the starter pack.","OK", "NO");
    //exit;
    //show_message("You selected the item nº "+string(selected_item)+"!");
}


/* */
/*  */
