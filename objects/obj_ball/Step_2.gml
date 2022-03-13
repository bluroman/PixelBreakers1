if start=1 //stick with the player!
{
    x = obj_bat.x;
    y = obj_bat.y - sprite_height/2 - obj_bat.sprite_height/2;
}

if direction <=90 and direction >60
{
    direction=70;
}
else
if direction>=90 and direction < 120
{
    direction=120;
}
else
if direction <=180 and direction >150
{
    direction=150;
}
else
if direction >=180 and direction <210
{
    direction=210;
}
else
if direction <=270 and direction > 240
{
    direction=240;
}
else
if direction>=270 and direction < 300
{
    direction=300;
}
else
if direction <=360 and direction > 330
{
    direction=330;
}
else
if direction >=0 and direction < 30
{
    direction=30;
}

