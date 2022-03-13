action_sound(snd_get_item, 0);
///find furthest ball if instance number of ball larger than 3 then no actions
//my_play_sound(snd_powerup);
instance_destroy();

var inst_ball;
inst_ball = instance_furthest(x, y, obj_ball);
if(inst_ball = noone) or instance_number(obj_ball) > 8
{
    exit;
    show_message("No ball instance found");
}
else
{
    var ii;
    ii = instance_create(inst_ball.x, inst_ball.y, obj_ball);
    ii.speed = inst_ball.speed;
    ii.start = inst_ball.start;
    ii.direction = 85;
   
    ii = instance_create(inst_ball.x, inst_ball.y, obj_ball);
    ii.speed = inst_ball.speed;
    ii.start = inst_ball.start;
    ii.direction = 95;
}

