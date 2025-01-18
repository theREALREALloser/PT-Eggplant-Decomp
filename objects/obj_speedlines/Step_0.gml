x = playerid.x
y = playerid.y
image_xscale = playerid.xscale
if (abs(playerid.hsp) <= 0 || playerid.movespeed < 16 || playerid.state == (95 << 0) || playerid.state == (112 << 0) || room == timesuproom)
    instance_destroy()
if (room == timesuproom)
    instance_destroy()
