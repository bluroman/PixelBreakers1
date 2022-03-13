while(place_meeting(x,y,other))
{
    y-=1;
}

//direction=90-(x-other.x);
/*direction:=(direction-0.2*(x-(other.x-24)))mod(360);
if direction>170 and direction<270 then direction:=170;
if direction>270 or direction<10 then direction:=10; */

if (x < other.x)
    { direction = 110 + 80*(other.x-x)/other.sprite_width;}
  else
    { direction = 70 + 80*(other.x-x)/other.sprite_width;}
  if (y > other.y) direction := 360-direction;
//y:=194;
if start = false
{
    audio_play_sound(snd_with_wall_paddle, 1, false);
    with (other)
    {
        recoil=16;
    }
}

//num_collide++;
//if num_collide == 10
//{
    //speed_up = true;
    //alarm[1] = 1;
//}

/* */
/*  */
