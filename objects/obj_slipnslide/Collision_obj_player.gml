with (other)
{
    if (state != states.trashroll && state != states.trashjump && state != states.cheeseball)
    {
        sprite_index = spr_slipbanan1
        other.drop = true
        vsp = -11
        movespeed += 2
        if (movespeed > 14)
            movespeed = 14
        hsp = movespeed * xscale
        image_index = 0
        state = states.slipbanan
    }
    instance_destroy(other)
}
