if(global.Music < 0.2)
    global.Music = 0;
else 
    global.Music = global.Music - 0.2;
audio_sound_gain(snd_music, global.Music, 100);
audio_sound_gain(snd_title, global.Music, 100);
ini_open("Save.ini");
ini_write_real("Sound", "music", global.Music);
ini_close();   

with(obj_sliderbar_music)
    pinX = Xmin +(Xmax-Xmin) * global.Music; 

