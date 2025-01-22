x = playerid.x
y = playerid.y
image_xscale = playerid.xscale
if (abs(playerid.hsp) <= 0 || playerid.movespeed < 16 || playerid.state == states.comingoutdoor || playerid.state == states.door || room == timesuproom)
    instance_destroy()
if (room == timesuproom)
    instance_destroy()
