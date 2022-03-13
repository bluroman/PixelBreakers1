//io_clear();
//keyboard_key_press(vk_right);
if instance_exists(obj_mb_bg)
    exit;
audio_play_sound(snd_level_select, 1, false);
if(img > -1){
  if(instance_exists(move_inst)) {exit;}
  active = 1;  
}

