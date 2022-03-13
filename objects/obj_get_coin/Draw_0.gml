
draw_sprite_ext(spr_get_jewelry, 3, obj_bat.x, obj_bat.y - obj_bat.sprite_height - fly_margin, 1.0, 1.0, 0, c_white, text_alpha);
if (global.paused)
    exit;
fly_margin += 1;

if fade=true
{
    text_alpha-=0.01;
    if text_alpha<=0
    {
        instance_destroy();
    }
} 

