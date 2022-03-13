/// @description settings sound slider positions
// distance from the side to where the grab pin is
margin = 10;

// the bar start and end position
Xmin = x + margin;
Xmax = x + sprite_width - 1 - margin;
// pin position based on volume
pinX = Xmin +(Xmax-Xmin) * global.Sound; 

grab = false;

