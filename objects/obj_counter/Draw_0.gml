
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

draw_set_color(text_color);
draw_set_font(font4);
draw_set_alpha(1);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

draw_text(x + sprite_width - 20, y + sprite_height - 14, string_hash_to_newline(string(global.Gems_Count)));
if (global.paused)
    exit;
if x < 0
    x += 10;
//draw_set_halign(fa_left);
//draw_set_valign(fa_top);
//draw_set_color(c_black);
if fade = true
{
    text_alpha -= 0.01;
    if text_alpha <= 0
    {
        instance_destroy();
    }
} 

