/// @description set sfx gain if any sfx added then add gain for that sound
function scr_sfx_gain() {
	audio_sound_gain(snd_button_pressed, global.Sound, 100);
	audio_sound_gain(snd_gem, global.Sound, 100);
	audio_sound_gain(snd_shoot, global.Sound, 100);
	audio_sound_gain(snd_getcoin, global.Sound, 100);
	audio_sound_gain(snd_with_bricks, global.Sound, 100);
	audio_sound_gain(snd_with_wall_paddle, global.Sound, 100);
	audio_sound_gain(snd_button_clicked, global.Sound, 100);
	audio_sound_gain(snd_level_select, global.Sound, 100);
	audio_sound_gain(snd_next_level, global.Sound, 100);
	audio_sound_gain(snd_life_lost, global.Sound, 100);
	audio_sound_gain(snd_get_item, global.Sound, 100);
	audio_sound_gain(snd_gameover, global.Sound, 100);
	audio_sound_gain(snd_explosion, global.Sound, 100);



}
