///ApplyItemProperties(ID,properties)
var properties = argument1
var _id = argument0
if(ds_map_find_value(properties, "Signals")){
    var list = properties[? "Signals"]
    for(var i = 0; i < ds_list_size(list);i++){
        var submap = list[| i]
        var signal = ds_map_find_first(submap);
        show_debug_message(signal)
        var script = submap[? signal]
        show_debug_message(script)
        show_debug_message(_id)
        RegisterSignal(_id,signal,script)
    }
}

if(ds_map_find_value(properties, "Sprite")){
    _id.sprite_index = properties[? "Sprite"];
}
