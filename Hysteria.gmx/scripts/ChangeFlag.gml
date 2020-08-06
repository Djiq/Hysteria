///Changes a global persistent variable ChangeFlag(ID,key,val)
var idnum = argument0
var flagval = argument1
var startval = argument2
if(!is_string(flagval)){
    flagval = string(flagval)
}

var map = global.flags[? string(idnum)];
map[? flagval] = startval;
