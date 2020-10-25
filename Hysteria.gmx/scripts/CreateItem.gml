///CreateItem(ID,x,y)
var item = instance_create(argument1,argument2,oItem)
var properties = ds_map_create()
ds_map_copy(properties,global.Items[argument0]);
item.properties = properties;
item.image_angle = random_range(0,359);
ApplyItemProperties(item,properties)
item.initialized = true;
return item
