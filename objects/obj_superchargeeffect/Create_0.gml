playerid = instance_place(x, y, obj_player).id
image_speed = 0.5
image_xscale = playerid.xscale
if (instance_exists(playerid) && playerid.supercharged == false)
{
    playerid.superchargedeffectid = noone
    instance_destroy()
}
if (global.combotime == 0)
{
    playerid.supercharged = false
    playerid.superchargedeffectid = noone
    instance_destroy()
}
depth = -8
