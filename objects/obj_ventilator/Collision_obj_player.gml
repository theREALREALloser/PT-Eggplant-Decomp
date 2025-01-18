with (other)
{
    vsp = Approach(vsp, -5, 5)
    jumpstop = true
    if (state == (105 << 0))
    {
        state = (92 << 0)
        if (sprite_index == spr_mach3boost || sprite_index == spr_machslideboost)
            xscale *= -1
        sprite_index = spr_machfreefall
    }
}
