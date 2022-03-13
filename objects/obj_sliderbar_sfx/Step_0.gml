/// @description  the pinX position ( forced to stay between min and max )
/// @param  forced to stay between min and max 
if grab
{
    pinX = max(Xmin, min(Xmax, mouse_x));  
    global.Sound = (pinX - Xmin) / (Xmax - Xmin);
    
    grab = !mouse_check_button_released(mb_left);
    if(!grab)
    {
        scr_sfx_gain();
        ini_open("Save.ini");
        ini_write_real("Sound", "sound", global.Sound);
        ini_close();  
        audio_play_sound(snd_button_clicked, 1, false);
    }
}

