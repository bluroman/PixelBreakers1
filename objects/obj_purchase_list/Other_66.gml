var i, q;
//q = iap_event_queue();
repeat(ds_queue_size(q))
{
    i = ds_queue_dequeue(q);
    if i == 0
    {
        if iap_is_purchased("com.bluroman.PixelBreakers.2000Gems")
        {
          global.Gems_Count += 2000;
          iap_consume("com.bluroman.PixelBreakers.2000Gems");
          //Add further code to notify the user, save to ini, reactivate the game instances etc...
        }
    }
    //You may want to add additional checks here for other purchases if you have them
}

