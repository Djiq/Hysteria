///Returns flag value GetFlag(ID,key,val)
var idnum = argument0
var flagval = argument1
var startval = argument2
if(!is_string(flagval)){
    flagval = string(flagval)
}

var map = global.flags[? string(idnum)];
if(ds_map_exists(map, flagval)){
    return map[? flagval]
}
return false

