xx = 0;
yy = room_height - 50;

draw_set_color(c_black);
//draw_set_alpha(0.8);
draw_rectangle(xx,yy,xx+room_width,yy+50,false);


action_draw_life_images(10, room_height - 30, spr_heart_small);
///draw game score
draw_set_font(font3);
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_text(room_width - 30, room_height, string_hash_to_newline(string(score)));
//if instance_number(obj_block) == 1
//{
    //with(instance_find(obj_block, 0))
        //draw_text(room_width/2, room_height -40, "X:"+ string(x) + "Y" + string(y));
//}
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(room_width / 2, room_height - 25, string_hash_to_newline("LEVEL " + string(global.world_selected * 6 + global.level_selected)));
with(obj_ball)
{
    if start = true and other.game_clear = false
    {
        xx = room_width/2;
        yy = room_height/2 + 100;
        
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_font(font3);
        draw_set_color(c_white);
        draw_text_color(xx, yy, string_hash_to_newline("DOUBLE TAP TO START"), c_white, c_white, c_white, c_white, other.text_alpha);
        if other.alarm[3] <= 0
            other.alarm[3] = room_speed/2;
    }
}

//if(instance_exists(obj_ball))
    //draw_text(30, 30, "Speed:" + string(obj_ball.speed));
draw_set_font(-1);
draw_set_font(font0);
draw_set_color(c_blue);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if 0
{
if (ds_map_size(dup_block_map) > 0)
{
    var temp_id;
    temp_id = ds_map_find_first(dup_block_map);
    for(i = 0; i < ds_map_size(dup_block_map); i += 1) 
    {
        draw_text(room_width/2, room_height/2 + 100 + 15*i, string_hash_to_newline("X:" + string(temp_id.x) + "Y:" + string(temp_id.y) + "COUNT:" +string(ds_map_find_value(dup_block_map, temp_id))));  
        temp_id = ds_map_find_next(dup_block_map, temp_id);
    }
}
}

