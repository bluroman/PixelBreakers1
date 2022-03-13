// Displays a moving level image
sprite_index = global.land[global.world_selected];
image_speed = 0;
done = false;
img = -1;
targetx = -1;
alpha = 0.5;
scale = 0.5;
scale = 96 / sprite_width;
/* 
    Set fade and scaling factors so the prev/next
    images are half the size of the current selection
*/
if(x == global.menu_x){
  alpha = 0;
  scale = 1;
  scale = 192 / sprite_width;
}
alarm[1] = 1;

/* */
/*  */
