function create_item_gem() {
	//if instance_exists(obj_ball) and !obj_bat.longbat and random(10) < 1
	if random(100) < 1
	{
	    instance_create(x + 10, y + 10, obj_random);
	    exit;
	}
	if random(100) < 1
	{
	    instance_create(x + 10, y + 10, obj_metalball_item);
	    exit;
	}
	if random(100) < 1
	{
	    instance_create(x + 10, y + 10, choose(obj_gem1, obj_longbat_item, obj_shortbat_item));
	    exit;
	}
	//if instance_number(obj_ball) < 3 and random(20) < 1
	else if random(100) < 1
	{
	    instance_create(x + 10, y + 10, choose(obj_gem1, obj_split, obj_gun));
	    exit;
	}
	//if instance_exists(obj_ball) and obj_ball.speed > 18 and random(20) < 1
	else if random(100) < 1
	{
	    instance_create(x + 10, y + 10, choose(obj_gem1, obj_slow, obj_fast));
	    exit;
	}
	else if random(100) < 1
	{
	    instance_create(x + 10, y + 10, choose(obj_gem1, obj_shield));
	    exit;
	}
	else if lives < 3  and random(120) < 1
	{
	    instance_create(x + 10, y + 10, choose(obj_gem1, obj_live));
	    exit;
	}
	else if random(100) < 1
	{
	    instance_create(x + 10, y + 10, choose(obj_gem1, obj_coin));
	    exit;
	}



}
