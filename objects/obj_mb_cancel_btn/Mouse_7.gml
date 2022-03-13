obj_mb_bg.open = 6;
if(text == "BACK")
{
    scr_resume_game();
    room_persistent = false;
    //room_goto(rm_select_stage);
    if (global.Config > 0)
        room_goto(rm_select_stage);
    else
        room_goto(rm_select_stage_pad);
}
if obj_mb_bg.text_title == "Continue?"
{
    scr_gameover();
}
instance_destroy();
with(obj_mb_ok_btn)
    instance_destroy();


