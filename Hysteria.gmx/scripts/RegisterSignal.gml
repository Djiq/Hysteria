///RegisterSignal(ID,Signal,Script)
var map
var list
if(!instance_exists(argument0)){
    show_debug_message("Instance doesn't exist")
    return false
}
if(!is_undefined(global.registered_signals[? argument0])){
    map = global.registered_signals[? argument0];
} else {
    map = ds_map_create();
}

if(!is_undefined(map[? argument1])){
    list = map[? argument1]
}else{
    list = ds_list_create()
}

//cannot register to same event twice
if(ds_list_find_index(list, argument2)){
    return false
}

ds_list_add(list, argument2);
ds_map_add_list(map,argument1,list);
ds_map_add_map(global.registered_signals,argument0,map)


return true
