if (!use_gravity)
{
    hsp = 0
    vsp = 0
}
if use_collision
{
    event_inherited()
    if (grounded && vsp > 0)
        noisethrow = false
}
else
{
    x += hsp
    y += vsp
    if (vsp < 20)
        vsp += grav
    thrown = false
    noisethrow = false
    if (y > (room_height + 100))
    {
        use_collision = true
        use_gravity = false
        x = xstart
        y = ystart
    }
}
