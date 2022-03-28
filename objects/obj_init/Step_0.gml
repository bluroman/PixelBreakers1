/// @description Insert description here
// You can write your code in this editor
if !tracking_needed and !gpdr_needed 
{
	if (global.Config > 0)
		room_goto(rm_title);
	else
	{
	    //show_message("pad room go");
	    room_goto(rm_title_pad);
	}
}
