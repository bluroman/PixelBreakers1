//instance_destroy();
global.previous_room = room;
audio_play_sound(snd_button_clicked, 1, false);
if (global.Config > 0)
    room_goto(rm_settings);
else
    room_goto(rm_settings_pad);

