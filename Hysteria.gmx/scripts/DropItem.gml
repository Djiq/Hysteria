///DropItem(properties,x,y)
///CreateItem(ID,x,y)
var item = instance_create(argument1,argument2,oItem);
item.properties = argument0;
item.image_angle = random_range(0,359);
ApplyItemProperties(item,argument0);
item.initialized = true;
return item
