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
            scr_set_lives_score();
            scr_goto_level_room();
            //room_goto(global.previous_room);
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

