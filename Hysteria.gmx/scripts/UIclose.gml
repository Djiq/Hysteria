///UIclose (id)
var found_index
if(!ds_list_empty(global.UImanager.OpenUIlist)){

    for(var i = 0; i < ds_list_size(global.UImanager.OpenUIlist);i++){
        if(i = argument0){
            ds_map_destroy(global.UImanager.OpenUIlist[| i])
            ds_list_delete(global.UImanager.OpenUIlist, i); 
        }
    }
}
