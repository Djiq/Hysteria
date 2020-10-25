down = keyboard_check(ord("S"))
up = keyboard_check(ord("W"))
right = keyboard_check(ord("D"))
left = keyboard_check(ord("A"))
interact1 = keyboard_check_pressed(ord("F"))
reload = keyboard_check_pressed(ord("R"))
drop = keyboard_check_pressed(ord("Q"))
collect = keyboard_check_pressed(ord("C"))
mouse_dir = point_direction(x,y,mouse_x,mouse_y)
right_click = mouse_check_button(mb_right)
left_click = mouse_check_button(mb_left)
right_pressed = mouse_check_button_pressed(mb_right)
left_pressed = mouse_check_button_pressed(mb_left)
right_released = mouse_check_button_released(mb_right)
left_released = mouse_check_button_released(mb_left)
mouse_wh_up = mouse_wheel_up()
mouse_wh_down = mouse_wheel_down()

//other helpers
vertical = down - up
horizontal = right - left

any_press = down || up || right || left || interact1 || drop || collect || right_click || left_click || mouse_wh_up || mouse_wh_down


global.moves[? "right"] = right
global.moves[? "up"] = up
global.moves[? "down"] = down
global.moves[? "left"] = left
global.moves[? "interact1"] = interact1
global.moves[? "reload"] = reload
global.moves[? "drop"] = drop
global.moves[? "collect"] = collect
global.moves[? "mouse_dir"] = mouse_dir
global.moves[? "right_click"] = right_click
global.moves[? "left_click"] = left_click
global.moves[? "right_pressed"] = right_pressed
global.moves[? "left_pressed"] = left_pressed
global.moves[? "right_released"] = right_released
global.moves[? "left_released"] = left_released
global.moves[? "mouse_wh_up"] = mouse_wh_up
global.moves[? "mouse_wh_down"] = mouse_wh_down

