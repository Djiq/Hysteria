uiwidth = view_wview+32
uiheight = 30

bhv_controls()

UIFancyBox(32,0)
var useless1 = argument0
var useless2 = argument1
var args = argument2
var duration = args[@ 0]
var finish_script = args[1]
var original_id = args[2]
var passover = args[3]
var allow_interaction_types = args[4]


if(array_length_1d(args) == 5){
    args[@ 5] = duration
} else if(any_press && !get_selected_input(allow_interaction_types)){
    return UI_CLOSE
}

var draw_procentage = ((duration - args[5]) / duration)*100
draw_healthbar(argument0+32+12,argument1+12,argument0-12+uiwidth,argument1-12+uiheight,draw_procentage,c_black,c_black,c_white,0,false,false)

if(args[5] == 0){
    with(original_id){
        script_execute(finish_script,passover)
    }
    return UI_CLOSE
}

args[@ 5]--
