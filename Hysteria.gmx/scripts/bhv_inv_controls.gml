
var old_selected_inv_slot = selected_inventory_slot
if(mouse_wh_up) {
selected_inventory_slot = (selected_inventory_slot+1) * sign(max_inv_space - selected_inventory_slot - 1)
}
if(mouse_wh_down){
selected_inventory_slot = (selected_inventory_slot-1)* sign(selected_inventory_slot) + (max_inv_space-1) *sign(1 - sign(selected_inventory_slot))
}

if(old_selected_inv_slot == selected_inventory_slot){
    return 0
}
apply_inv_signals()

