with (other)
{
    if (state == (42 << 0) || state == (80 << 0))
    {
        state = (31 << 0)
        movespeed = hsp
        sprite_index = spr_rideweenie
        xscale = other.image_xscale
        jumpstop = true
        if (vsp < 0)
            vsp = 0
        instance_destroy(other)
    }
}
