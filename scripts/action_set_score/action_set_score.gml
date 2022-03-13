/// @description (Old DnD) - set score
/// @param val value to set score
function action_set_score(argument0) {
	var val = argument0;
	if (global.__argument_relative) {
		val += score;
	}  // end if
	score = val;



}
