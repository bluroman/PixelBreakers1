if(global.Sound > 0.8)
    global.Sound = 1.0;
else 
    global.Sound = global.Sound + 0.2;
scr_sfx_gain();
ini_open("Save.ini");
ini_write_real("Sound", "sound", global.Sound);
ini_close();  
audio_play_sound(snd_button_clicked, 1, false);
with(obj_sliderbar_sfx)
    pinX = Xmin +(Xmax-Xmin) * global.Sound;

