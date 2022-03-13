//scr_init_levels();
if audio_is_playing(snd_music)
    audio_stop_sound(snd_music);
    
if !audio_is_playing(snd_title)
{
audio_play_sound(snd_title, 0, true);
}
scr_init_select_stage();

