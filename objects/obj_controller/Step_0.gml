if !instance_exists(obj_block) and !game_clear
{
    //if level=21
    //{
        //instance_create(x,y,obj_congrats);
        //instance_destroy();
    //}
    //else
    if alarm[0] <=0
    {
        game_clear = true;
        alarm[0] = 1;
    }
}
if instance_number(obj_ball)<=0 and !ball_lost
{
    //lives = lives - 1;
    if alarm[2] <= 0
    {
        ball_lost = true;
        alarm[2] = 1;
    }
}
 if AdMob_RewardedVideo_IsLoaded()
        {
        if rewarded_loaded != true
            {
            rewarded_loaded = true;
            }
        }
with(obj_ball)
{
    if (metal_ball = true)
        sprite_index = spr_metalball;
    else
    {
        if speed > 23
            sprite_index = spr_fastball;
        else if speed < 24
            sprite_index = spr_ball;
    }
    
        
}
//if os_is_paused()
//{
//    alarm[1] = 1;
//}

