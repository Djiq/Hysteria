///UnregisterSignal(ID,Signal,Script) Unregisters a single script from a signal
var map
var list
if(!is_undefined(global.registered_signals[? argument0])){
    map = global.registered_signals[? argument0];
} else {
    return false
}

if(!is_undefined(map[? argument1])){
    list = map[? argument1]
}else{
    return false
}

if(!ds_list_find_index(list, argument2)){
    return false
}
ds_list_delete(list, argument2);

if(ds_list_size(list) == 0){
    ds_map_delete(map,argument1);
    ds_list_destroy(list);
}


if(ds_map_size(map) == 0){
    ds_map_delete(global.registered_signals,argument0);
    ds_map_destroy(map);
}

return true
