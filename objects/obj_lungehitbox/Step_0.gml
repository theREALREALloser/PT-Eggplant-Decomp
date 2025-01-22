if (playerid.state != states.lungeattack && playerid.state != states.handstandjump)
{
    instance_destroy()
    return;
}
x = playerid.x + 24 * playerid.xscale
y = playerid.y
