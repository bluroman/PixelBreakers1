//instance_destroy();
global.previous_room = room;
global.playTimes++;
audio_play_sound(snd_button_clicked, 1, false);
if (global.Config > 0)
    room_goto(rm_select_stage);
else
    room_goto(rm_select_stage_pad);

