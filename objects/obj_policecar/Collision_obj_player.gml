if (state == (152 << 0))
    return;
if (ds_queue_size(followqueue) < LAG_STEPS)
    return;
with (obj_player)
{
    targetRoom = other.targetRoom
    lastroom = room
    targetDoor = other.targetDoor
    visible = false
    if (state != (186 << 0))
        state = (152 << 0)
    cutscene = true
    hsp = 0
    vsp = 0
}
grav = 0
state = (152 << 0)
hsp = 10
image_xscale = 1
vsp = 0
