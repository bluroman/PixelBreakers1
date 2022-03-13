/// @description   Display the current world caption This is the number of worlds or lands containing levels

draw_set_color(c_white);
draw_set_font(font3);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(global.menu_x, global.menu_y - 136, string_hash_to_newline(global.world_label[global.world_selected]));

//scr_arrow_button(spr_arrow_below, global.menu_x, global.menu_y + 186);
//scr_arrow_button(spr_arrow_upper, global.menu_x, global.menu_y - 186);

//draw_set_halign(fa_left);

/* Display some instructions
   you can safely remove all these lines */
//draw_text(50,50,"Press F1 for Help");
//draw_set_halign(fa_right);
//draw_text(room_width-50,50,"Press Escape to Exit");
//draw_set_halign(fa_center);
//draw_text(room_width div(2),10,"Press R to Restart");
//draw_text(room_width div(2),room_height-50,"Left mouse button selects
//Or Left/Right Arrow Keys to rotate, Enter to select");

/* */
/*  */
