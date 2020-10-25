var properties = Inventory[@ selected_inventory_slot]

if(properties[? "CurrentBullets"] <= 0){
    return false
}

if(properties[? "CurrentCooldown"] < properties[? "MaxCooldown"]){
    return false
}

var projectile = instance_create(x,y,oProjectile);
randomize()
projectile.damage = properties[? "Damage"];
projectile.hsp = lengthdir_x(properties[? "Speed"],mouse_dir+irandom_range(-properties[? "Spread"],properties[? "Spread"]))
projectile.vsp = lengthdir_y(properties[? "Speed"],mouse_dir+irandom_range(-properties[? "Spread"],properties[? "Spread"]))
projectile.image_angle = mouse_dir
projectile.sprite_index = properties[? "BulletSprite"]
properties[? "CurrentCooldown"] = 0
properties[? "CurrentBullets"]--
RegisterSignal(projectile,SIG_COLLIDED,bhv_delete)

