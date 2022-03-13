if(open = 0) 
{ 
    if(image_xscale < 1.2) 
    { 
        image_xscale += 0.2; 
        image_yscale += 0.2; 
        image_alpha += 0.2;
    } 
    else 
    { 
        open = 1; 
    } 
}
if(open = 1) 
{ 
    if(image_xscale > 1) 
    { 
        image_xscale -= 0.1; 
        image_yscale -= 0.1; 
    } 
    else 
    { 
        open = 2; 
    } 
}
if(open = 2) 
{ 
    if(txtalph < 1) 
    { 
        txtalph += 0.1; 
    } 
    else 
    { 
        open = 3; 
    } 
}
if(open = 3) 
{ 
    if(txtalpha < 1) 
    { 
        txtalpha += 0.1; 
    } 
    else 
    { 
        open = 4; 
    } 
}
if(open = 4) 
{
    if(btn1text == "NULL")
    {
        btn = instance_create(x, y+55, obj_mb_ok_btn); 
        btn.text = btntext;
    }
    else
    {
        btn = instance_create(x-134, y+55, obj_mb_ok_btn); 
        btn.text = btntext;
        btn1 = instance_create(x+134, y+55, obj_mb_cancel_btn); 
        btn1.text = btn1text;
    } 
    
    open = 5; 
}
if(open = 6) 
{ 
    txtalph = 0; 
    txtalpha = 0; 
    if(image_xscale < 1.2) 
    { 
        image_xscale += 0.2; 
        image_yscale += 0.2; 
        image_alpha += 0.2;
    } 
    else 
    { 
        open = 7; 
    } 
}
if(open = 7) 
{ 
    if(image_alpha > 0) 
    { 
        image_xscale -= 0.2; 
        image_yscale -= 0.2; 
        image_alpha -= 0.2; 
    } 
    else 
    {
        open = 8; 
    } 
}
if(open = 8) 
{ 
    //instance_activate_all(); 
    instance_destroy(); 
}

