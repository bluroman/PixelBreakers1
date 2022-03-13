var val = ds_map_find_value(iap_data, "type");
switch (val)
{
   case iap_ev_purchase:
      var map = ds_map_create();
      var purchase_id = ds_map_find_value(iap_data, "index");
      iap_purchase_details(purchase_id, map);
      if ds_map_find_value(map, "status") == iap_purchased
      {
         var product_id = ds_map_find_value(map, "product");
         ds_map_replace(global.purchaseMap, product_id, 1);
         switch(product_id)
         {
            case "pixelbreakers2k15_simpson_pack":
            //case "pixelbreakers2k15_simpson_pack":
               global.simpsonpack_enabled = true;
               break;
            //case "catchthehaggis_gold":
            //case "catchthehaggis_mac_gold":
               //iap_consume(product_id);
               //break;
         }
      }
      ds_map_destroy(map);
      break;
   /*case iap_ev_consume:
      var product_id = ds_map_find_value(iap_data, "product");
      if ds_map_find_value(iap_data, "consumed")
      {
         ds_map_replace(global.purchaseMap, product_id, 0);
         global.Gold += 1000;
      }
      break;*/
}
ds_map_secure_save(global.purchaseMap, "iap_data.json");

/* */
/*  */
