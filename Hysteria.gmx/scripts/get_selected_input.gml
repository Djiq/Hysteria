var args = argument0
if(!is_array(args)){
    return false
}
for(var i = 0 ; i < array_length_1d(args) ; i++){
    if(global.moves[? args[i]] == true){
        return true
    }
}

return false
