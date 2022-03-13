if (global.paused)
    exit;
if grabbed=true then
{
    if not mouse_check_button(mb_left) then
    {
        grabbed=false;
    }
}
if recoil>0
{
    recoil-=1;
}

