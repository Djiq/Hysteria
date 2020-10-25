///declareSignal(list,signal,behaviour)
var list = argument0
var sigtype = argument1
var bhvtype = argument2

var signal = ds_map_create();

signal[? sigtype] = bhvtype;

ds_list_add(list,signal);
