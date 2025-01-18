with (other)
{
    if (other.hurtplayer == false)
    {
        if key_jump2
        {
            vsp = -20
            if (state == (0 << 0) || state == (92 << 0) || hsp == 0)
            {
                sprite_index = spr_playerV_superjump
                state = (92 << 0)
            }
            image_index = 0
            jumpAnim = true
            jumpstop = true
            other.hurtplayer = true
        }
    }
}
