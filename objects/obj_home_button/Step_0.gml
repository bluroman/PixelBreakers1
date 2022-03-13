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
            //room_goto(rm_title);
            if (global.Config > 0)
                room_goto(rm_title);
            else
                room_goto(rm_title_pad);
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

