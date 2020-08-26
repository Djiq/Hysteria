down = keyboard_check(ord("S"))
up = keyboard_check(ord("W"))
right = keyboard_check(ord("D"))
left = keyboard_check(ord("A"))
interact1 = keyboard_check_pressed(ord("F"))
mouse_dir = point_direction(x,y,mouse_x,mouse_y)
right_click = mouse_check_button(mb_right)
left_click = mouse_check_button(mb_left)
right_pressed = mouse_check_button_pressed(mb_right)
left_pressed = mouse_check_button_pressed(mb_left)
right_released = mouse_check_button_released(mb_right)
left_released = mouse_check_button_released(mb_left)

//other helpers
vertical = down - up
horizontal = right - left


