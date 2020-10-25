///UI manager, this script manages open ui's and how to display them
if(ds_list_empty(global.UImanager.OpenUIlist))return false;

for(var i = 0; i < ds_list_size(global.UImanager.OpenUIlist);i++){
    var map = global.UImanager.OpenUIlist[| i]
    var ui = map[? "ui"]
    var xpos = map[? "xpos"]
    var ypos = map[? "ypos"]
    var args = map[? "args"]
    var return_val = script_execute(ui,xpos,ypos,args)
    if(return_val == UI_CLOSE){
        UIclose(i)
    }
}


