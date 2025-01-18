if (state != (18 << 0) && other.grounded && other.key_up2)
{
    if other.isgustavo
        isgustavo = true
    else
        isgustavo = false
    state = (18 << 0)
    playerid = other.id
    other.state = (146 << 0)
    other.key_up2 = false
    other.movespeed = 0
    other.hsp = 0
    other.sprite_index = other.spr_idle
    other.image_speed = 0.35
}
