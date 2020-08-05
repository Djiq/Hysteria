///InitFlag Adds an entry to global flag list.
var idnum = argument0
var list = ds_map_create()
ds_map_add_map(global.flags, string(idnum),list)
