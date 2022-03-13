/*
    Calculate our target positions to move to based upon direction.
    This alarm is triggered from the create event to ensure the variables 
    passed on creation are populated correctly.
*/
targetx = x+sprite_width;
// set the target accoring to direction
if(direction == 180){targetx = x-sprite_width;}
move_towards_point(targetx,y,10);


/* */
/*  */
