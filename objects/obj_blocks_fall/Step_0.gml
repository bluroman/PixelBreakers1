if (global.paused)
    exit;
image_angle+=BSpin;
if(image_xscale > 0)
{
    image_xscale -= 0.02;
    //image_yscale = image_xscale;
}
else
    instance_destroy();
//image_alpha -= 0.1;

