///CreateItem(ID,x,y)
var item = instance_create(argument1,argument2,oItem)
var properties = global.Items[argument0];
item.properties = properties;
item.image_angle = random_range(0,359);
ApplyItemProperties(item,properties)
