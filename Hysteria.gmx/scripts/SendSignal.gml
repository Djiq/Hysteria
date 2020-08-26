///SendSignal(Target,Signal,args...)

if(argument_count < 2){
    return false
}

if(!ds_map_find_value(global.registered_signals, argument[0])){
    return false
}
var map = global.registered_signals[? argument[0]]

if(!ds_map_find_value(map, argument[1])){
    return false
}

var list = map[? argument[1]]

var args = array_create(argument_count-2)

for(var i = 0; i < argument_count-2;i++){
    args[i] = argument[i+2]
}

for(var i = 0; i < ds_list_size(list);i++){
    with(argument[0]){
        script_execute(list[| i],args)
    }
}
return true
