/// @description Collision check with mouse
if instance_position(mouse_x, mouse_y, id)
{
    if image_index != 2
    {
        image_index = 1;
        if mouse_check_button_pressed(mb_left)
        {
            alarm[0] = room_speed / 2;
            image_index = 2;
            global.previous_room = room;
            audio_play_sound(snd_button_clicked, 1, false);
            scr_purchase_inapp();
            //room_goto(rm_purchase_list);
        }
    }
}
else
{
    if image_index != 2
    {
        image_index =0;
    }
}

