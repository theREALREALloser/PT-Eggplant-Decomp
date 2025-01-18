if (other.cutscene == false && sprite_index != spr_bigmushroom_bounce && other.state != (108 << 0) && other.state != (122 << 0) && other.state != (186 << 0))
{
    other.jumpstop = true
    with (other)
    {
        if (state == (105 << 0))
        {
            state = (92 << 0)
            if (sprite_index == spr_mach3boost || sprite_index == spr_machslideboost)
                xscale *= -1
        }
        if (state == (0 << 0))
            state = (92 << 0)
        if (state == (37 << 0))
            state = (104 << 0)
    }
    sprite_index = spr_bigmushroom_bounce
    if (other.state == (92 << 0) || other.state == (0 << 0))
    {
        other.sprite_index = other.spr_machfreefall
        other.image_index = 0
    }
    image_index = 0
    other.vsp = -14
    other.jumpstop = true
    if other.isgustavo
    {
        other.sprite_index = spr_player_ratmountmushroombounce
        if (!other.brick)
            other.sprite_index = spr_lonegustavo_jumpstart
        other.jumpAnim = true
        other.state = (192 << 0)
        other.image_index = 0
    }
}
