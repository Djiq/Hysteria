///Interact Ray
var len = 48
draw_line( x, y, x+lengthdir_x(len,mouse_dir), y+lengthdir_y(len,mouse_dir))
if(interact1){
    var hit = collision_line( x, y, x+lengthdir_x(len,mouse_dir), y+lengthdir_y(len,mouse_dir) , oAtom, false, true)
    if(hit != noone) SendSignal(hit,SIG_INTERACT)
}

