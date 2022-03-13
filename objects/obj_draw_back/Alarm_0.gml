if(text_alpha >= 1)
{
    decreasing = true;
    increasing = false;
}
    
if(text_alpha <= 0)
{
    increasing = true;
    decreasing = false;
}

if(decreasing)
    text_alpha -= 0.2;


if(increasing)
    text_alpha += 0.15;
alarm[0] = room_speed/10;

