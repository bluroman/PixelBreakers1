/// @description  Used for testing locked and unlocked levels
txt = "Level Locking##";
for(i=0; i<sprite_get_number(global.land[global.world_selected]); i+=1){
  txt += string(i)+" > "+string(global.land_access[i])+" #";
}
show_message(txt);

