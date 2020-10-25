var properties = Inventory[@ selected_inventory_slot]

if(properties[? "CurrentBullets"] == properties[? "MaxBullets"]){
    return false
}
var allowed_move_types = ARGS_DEFAULT;
allowed_move_types[0] = "down";
allowed_move_types[1] = "right";
allowed_move_types[2] = "left";
allowed_move_types[3] = "up";
allowed_move_types[4] = "collect";
do_progress(properties[? "ReloadTime"],bhv_reload_finish,ARGS_DEFAULT,allowed_move_types)
