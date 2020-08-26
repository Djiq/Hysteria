
hsp = horizontal * movespeed
vsp = vertical * movespeed

var hatom = instance_place(x+hsp, y, oAtom);
if (instance_exists(hatom) && hatom.collideable)
{
    while(!place_meeting(x+sign(hsp),y,oAtom))
    {
        x += sign(hsp);
    }
    SendSignal(hatom,SIG_COLLISION,id)
    hsp = 0;
}
x += hsp;

var vatom = instance_place(x, y+vsp, oAtom);
if (instance_exists(vatom) && vatom.collideable)
{
    while(!place_meeting(x,y+sign(vsp),oAtom))
    {
        y += sign(vsp);
    }
    SendSignal(vatom,"SSCollision",id)
    vsp = 0;
}
y += vsp;

