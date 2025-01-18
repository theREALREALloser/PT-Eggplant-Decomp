if (playerid.state != (43 << 0) && playerid.state != (42 << 0))
{
    instance_destroy()
    return;
}
x = playerid.x + 24 * playerid.xscale
y = playerid.y
