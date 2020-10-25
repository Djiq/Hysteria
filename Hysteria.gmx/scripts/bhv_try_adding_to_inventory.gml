var args = argument0
var player = args[0]

bhv_controls()

if(!collect){
    return false
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


