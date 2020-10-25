bhv_unregister_item_signals()

var properties_map = Inventory[selected_inventory_slot]

if(properties_map == 0){
    return false
}

var signal_list = properties_map[? "Signals"]

if(ds_list_empty(signal_list)){
    return false
}

var signal_map
var key
for(var sig_index = 0; sig_index < ds_list_size(signal_list); sig_index++){
   signal_map = signal_list[| sig_index]
   key = ds_map_find_first(signal_map)
   var found = ds_list_find_index(allowed_signal_list,key)
   if(found == -1){
        continue
   }
   UnregisterSignalScripts(global.Player,key)
   RegisterSignal(global.Player,key,signal_map[? key])
}
