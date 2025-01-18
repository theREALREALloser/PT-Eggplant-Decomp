with (other)
{
    if (state != (186 << 0))
    {
        if (state == (53 << 0) || state == (32 << 0) || state == (94 << 0) || state == (184 << 0) || state == (78 << 0) || state == (5 << 0) || state == (21 << 0) || state == (38 << 0) || state == (65 << 0) || state == (121 << 0) || state == (104 << 0))
        {
            other.sprite_index = spr_sidespringblock_bounce
            other.image_index = 0
            if (xscale != other.image_xscale)
                xscale = other.image_xscale
        }
    }
}
