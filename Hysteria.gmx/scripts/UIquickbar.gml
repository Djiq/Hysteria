uiwidth = 48
uiheight = 48
var args = argument2
var inventory = args[1]
var current_pointer = args[0]

for(var i = 0 ; i < 10; i++){
    UIFancyBox(argument0+i*48,argument1)
    var properties = inventory[i]
    
    if(properties != 0){
        draw_sprite_ext(properties[? "Sprite"],0,argument0+i*48+24,argument1+24,2,2,0,c_white,1)
        if(!is_undefined(properties[? "DisplayVar"])){
            draw_text(argument0+i*48,argument1+4,string(properties[? properties[? "DisplayVar"]]));
        }
    }
        
    if(current_pointer == i){
        draw_rectangle_colour(argument0+i*48+8,argument1+8,argument0+i*48+40,argument1+40,c_white,c_white,c_white,c_white,true);
    }
}
