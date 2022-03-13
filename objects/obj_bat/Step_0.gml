if (global.paused)
    exit;
if mouse_check_button(mb_left) then
{
    x = mouse_x;
    /*x=mouse_x;

    if x > room_width + sprite_width/5
    {
        x=room_width + sprite_width/5;
    }

    if x < -sprite_width/5
    {
        x = -sprite_width/5;
    }*/
    
    /*if abs((mouse_x-x))<2
    {
        x=mouse_x;
    }
    else
    if (max(0,mouse_x)<x)
    {
        hspeed=(mouse_x-x) div 3;
    }
    else
    if (min(mouse_x,640)>x)
    {
        hspeed=(mouse_x-x) div 3;
    }*/
    
}
if x>room_width-sprite_width/2
    {
        x=room_width-sprite_width/2;
    }
    
    if x<sprite_width/2
    {
        x=sprite_width/2;
    }
///Get longbat Item so change width of sprite
if gunbat = true
{
    if longbat = true
    {
       
        //sprite_index = spr_longbat;
        //mask_index = spr_longbat;
        image_index = 1;
        //image_xscale = 1.8;
        //draw_sprite_ext(spr_longbat, 1, x, y + recoil, 1.0, 1.0, 0, -1, 1);
    }
    else
    {
        //mask_index = spr_bat;
        //sprite_index = spr_bat;
        image_index = 1;
        //image_xscale = 1;
        //draw_sprite_ext(spr_bat, 1, x, y + recoil, 1.0, 1.0, 0, -1, 1);
    }
    
}
else
{
    if longbat = true
    {
        
        //sprite_index = spr_longbat;
        //mask_index = spr_longbat;
        image_index = 0;
        //image_xscale = 1.8;
        //draw_sprite_ext(spr_longbat, 0, x, y + recoil, 1.0, 1.0, 0, -1, 1);
    }
    else
    {
        //mask_index = spr_bat;
        //sprite_index = spr_bat;
        image_index = 0;
        //image_xscale = 1;
        //draw_sprite_ext(spr_bat, 0, x, y + recoil, 1.0, 1.0, 0, -1, 1);
    }
}
if gunbat = true and can_shoot = true then
{
    audio_play_sound(snd_shoot, 1, false);
    instance_create(x - sprite_width/3, y, obj_shoot);
    instance_create(x + sprite_width/3, y, obj_shoot);
    can_shoot = false;
    alarm[2] = 30;
}

/* */
/*  */
