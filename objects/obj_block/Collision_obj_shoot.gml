audio_play_sound(snd_explosion, 1, false);
instance_destroy();
scr_create_fall_blocks(x, y, sprite_index);
global.Bricks_Count += 1;

with(other)
    instance_destroy();

