/// @description set can_shoot true
time_left = time_left - 1;
if time_left = 0
{
    gunbat = false;
    can_shoot = true;
    time_left = 10;
}
else
    can_shoot = true;

