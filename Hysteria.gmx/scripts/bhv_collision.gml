var hatom = instance_place(x+hsp, y, oAtom);
if (instance_exists(hatom))
{
    if(hatom.collideable){
        while(!place_meeting(x+sign(hsp),y,oAtom))
        {
            x += sign(hsp);
        }
        if(!SendSignal(hatom,SIG_COLLISION,id) && !SendSignal(id,SIG_COLLIDED,hatom) && !SendSignal(id,SIG_COLLIDED_HORIZONTAL,hatom)){
            hsp = 0;
        }
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
        if(!SendSignal(vatom,SIG_COLLISION,id) && !SendSignal(id,SIG_COLLIDED,vatom) && !SendSignal(id,SIG_COLLIDED_VERTICAL,vatom)){
            vsp = 0;
        }
    }else{
       SendSignal(vatom,SIG_STEP_ON,id)
    }
}
y += vsp;

