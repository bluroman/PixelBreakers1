/// @description  the pinX position ( forced to stay between min and max )
/// @param  forced to stay between min and max 
if grab
{
    pinX = max(Xmin, min(Xmax, mouse_x));  
    global.Music = (pinX - Xmin) / (Xmax - Xmin);
    //sound_volume(snd_music, global.Music);
    //audio_master_gain(global.Music);
    audio_sound_gain(snd_music, global.Music, 100);
    audio_sound_gain(snd_title, global.Music, 100);
    ini_open("Save.ini");
    ini_write_real("Sound", "music", global.Music);
    ini_close();      
    grab = !mouse_check_button_released(mb_left);
}

