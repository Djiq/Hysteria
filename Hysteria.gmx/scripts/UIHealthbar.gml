uiwidth = 320
uiheight = 48
var args = argument2
var hp = args[0]
var maxhp = args[1]
var draw_hp = (hp /maxhp)*100
UIFancyBox(argument0,argument1)
draw_healthbar(argument0+12,argument1+12,argument0-12+uiwidth,argument1-12+uiheight,draw_hp,c_black,c_black,c_white,0,false,false)
