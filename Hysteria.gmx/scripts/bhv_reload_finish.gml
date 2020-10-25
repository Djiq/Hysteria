var properties = Inventory[@ selected_inventory_slot]
var look_amt = properties[? "MaxBullets"] - properties[? "CurrentBullets"]

for(var i = 0 ; i < array_length_1d(Inventory); i++){
    var found_map = Inventory[@ i]
    if(found_map[? "Id"] == 1){
        var take_amt = min(found_map[? "CurrentStack"],look_amt);
        look_amt -= take_amt;
        useStack(found_map,take_amt)
        properties[? "CurrentBullets"] += take_amt;
    }
    
    if(look_amt == 0){
        return true
    }
}
