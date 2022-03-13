obj_mb_bg.open = 6;
instance_destroy();
with(obj_mb_cancel_btn)
    instance_destroy();
if obj_mb_bg.text_title == "BUY Simpson Pack"
{
    scr_purchase_inapp();
}
else if obj_mb_bg.text_title == "QUIT GAME"
{
    game_end();
}
else if obj_mb_bg.text_title == "Continue?"
{
	AdMob_RewardedVideo_Show();
    obj_controller.rewarded_loaded = false;
}
    

