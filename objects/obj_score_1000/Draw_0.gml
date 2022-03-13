
draw_set_color(c_green);
draw_set_font(font4);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_color(obj_bat.x, obj_bat.y - obj_bat.sprite_height - fly_margin, string_hash_to_newline("+ 1000"),  c_lime, c_lime, c_green, c_green, text_alpha);
if (global.paused)
    exit;
fly_margin += 1;
//draw_text_transformed(room_width / 2, room_height / 2, "+ 250", 1, 1, image_angle);
/*if scale<1
{
    scale+=0.1;
}
else
{
    scale=1;
    y-=2;
    fade=true
}*/

if fade=true
{
    text_alpha-=0.01;
    if text_alpha<=0
    {
        instance_destroy();
    }
}

/* */
/*  */
