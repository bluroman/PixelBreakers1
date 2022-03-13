function scr_achievement_met(argument0, argument1) {
	achievement_box = instance_create(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2, -200, obj_achievemet);

	achievement_box.title = argument0;
	achievement_box.subtitle = argument1;



}
