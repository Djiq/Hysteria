///do_progress(duration,finish_script,passover_args,allow_interaction_types)
duration = argument0
finish_script = argument1
passover_args = argument2
allow_interaction_types = argument3
original_id = id

var args = ARGS_DEFAULT;

args[0] = duration;
args[1] = finish_script;
args[2] = original_id;
args[3] = passover_args;
args[4] = allow_interaction_types

UIopen(UIprogress,0,0,args);
