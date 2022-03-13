repeat(10)
{
    effect_create_above(ef_firework, random(room_width), random(room_height), choose(0, 1, 2), make_color_hsv(random(255), 255, 255));
}
if audio_is_playing(snd_fireworkandapplause)
    alarm[0] = room_speed;

