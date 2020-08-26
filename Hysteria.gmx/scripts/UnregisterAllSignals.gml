///UnregisterAllSignals(ID) Unregisters ALL signals from an object
var map
var list
if(!is_undefined(global.registered_signals[? argument0])){
    map = global.registered_signals[? argument0];
} else {
    return false
}

ds_map_delete(global.registered_signals,argument0);
ds_map_destroy(map);

return true
