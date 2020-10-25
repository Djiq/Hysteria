var properties = Inventory[@ selected_inventory_slot]

if(properties[? "CurrentCooldown"] < properties[? "MaxCooldown"]){
    properties[? "CurrentCooldown"] = properties[? "CurrentCooldown"] + 1
}
