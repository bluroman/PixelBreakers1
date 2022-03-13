/// @description Collision check with mouse
/*if instance_position(mouse_x, mouse_y, id)
{
    if image_index != 2
    {
        image_index = 1;
        if mouse_check_button_pressed(mb_left)
        {
            alarm[0] = room_speed / 4;
            image_index = 2;
            global.previous_room = room;
            audio_play_sound(snd_button_clicked, 1, false);
            if (global.Config > 0)
                room_goto(rm_select_stage);
            else
                room_goto(rm_select_stage_pad);
        }
    }
}
else
{
    if image_index != 2
    {
        image_index =0;
    }
}*/
if(image_alpha < 1) 
{ 
    image_alpha += 0.1; 
}
if(over = 1) 
{
    //image_index = 1; 
    if(alpha < 0.4) 
    { 
        alpha += 0.05; 
    } 
} 
else 
{ 
    if(alpha > 0) 
    {
        alpha -= 0.05; 
    } 
}

/* */
/*  */
