var args = argument0
var player = args[0]

bhv_controls()

if(!collect){
    return false
}

for(var i = 0 ; i < player.max_inv_space; i++){
    var second_properties = player.Inventory[i]
    
    if(second_properties[? "Id"] != properties[? "Id"]){
        continue
    }
    
    if(second_properties[? "CurrentStack"] < second_properties[? "MaxStack"]){
        var take_out_num = second_properties[? "MaxStack"] - second_properties[? "CurrentStack"];
        second_properties[? "CurrentStack"] += min(properties[? "CurrentStack"],take_out_num);
        properties[? "CurrentStack"] -= min(properties[? "CurrentStack"],take_out_num)
        if(properties[? "CurrentStack"] <= 0){
            SendSignal(player,SIG_INVENTORY_ADDED_ITEM)
            instance_destroy();
            return true;
        }
    }
    
}

for(var i = 0 ; i < player.max_inv_space; i++){
    if(player.Inventory[i] == 0){
        player.Inventory[@ i] = properties
        SendSignal(player,SIG_INVENTORY_ADDED_ITEM)
        instance_destroy();
        return true;
    }
}

return false


