var _id = argument0
var argnum = argument1
var newval = argument2

var map = ds_list_find_value(global.UImanager.OpenUIlist,_id)
if(is_undefined(map)){
    return false
}

var args = map[? "args"];
args[@ argnum] = newval;
return true
