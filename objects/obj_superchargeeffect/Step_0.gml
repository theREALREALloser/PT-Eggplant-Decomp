image_xscale = playerid.xscale
if (playerid.supercharged == false)
{
    playerid.superchargedeffectid = noone
    instance_destroy()
}
x = playerid.x
y = playerid.y
if (playerid.state != states.comingoutdoor && playerid.state != states.door)
    visible = playerid.visible
else
    visible = false
if (global.combotime == 0)
{
    playerid.supercharged = false
    playerid.supercharge = 0
    playerid.superchargedeffectid = noone
    instance_destroy()
}
