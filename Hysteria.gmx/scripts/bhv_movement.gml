
hsp = horizontal * movespeed
vsp = vertical * movespeed

var hatom = instance_place(x+hsp, y, oAtom);
if (instance_exists(hatom))
{
    if(hatom.collideable){
        while(!place_meeting(x+sign(hsp),y,oAtom))
        {
            x += sign(hsp);
        }
        SendSignal(hatom,SIG_COLLISION,id)
        hsp = 0;
    }else{
        SendSignal(hatom,SIG_STEP_ON,id)
    }
}
x += hsp;

var vatom = instance_place(x, y+vsp, oAtom);
if (instance_exists(vatom))
{
    if(vatom.collideable){
        while(!place_meeting(x,y+sign(vsp),oAtom))
        {
            y += sign(vsp);
        }
        SendSignal(vatom,SIG_COLLISION,id)
        vsp = 0;
    }else{
        if(!SendSignal(vatom,SIG_STEP_ON,id)){
            show_debug_message("Stepon failed")
        }
    }
}
y += vsp;

