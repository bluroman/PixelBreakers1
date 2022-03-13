/// @description decrease time_left to 0
if(time_left == 0)
    instance_destroy();
else
    alarm[0] = 30;
if(global.paused)
    exit;
time_left -= 1;

