///useStack(properties,amount)
var properties = argument0;
var num = argument1;
properties[? "CurrentStack" ] -= num;
if(properties[? "CurrentStack" ] <= 0){
    for(var i = 0 ; i < array_length_1d(Inventory) ; i++){
        if(properties == Inventory[i] ){
            Inventory[@ i] = 0
        }
    }
    ds_map_destroy(properties);
}
