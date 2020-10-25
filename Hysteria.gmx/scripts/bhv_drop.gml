
var properties = Inventory[selected_inventory_slot]

if(properties == 0 || !drop){
    return false
}
bhv_unregister_item_signals()
DropItem(properties,x,y);
Inventory[@ selected_inventory_slot] = 0;
//ds_list_delete(Inventory, selected_inventory_slot);
