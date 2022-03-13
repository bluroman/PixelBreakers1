if (global.paused)
    exit;
with(obj_ball)
{
    if start = true
    {
        start = false;
        direction = 70;
        speed = 12;//change by levels....
        
        if timeline_running
        {
            //show_message("time line already start");
            timeline_position = 0;
        }
        else
        {
            //show_message("time line start");
            timeline_index = timeline0;
            timeline_position = 0;
            timeline_running = true;
        }
    }
}

