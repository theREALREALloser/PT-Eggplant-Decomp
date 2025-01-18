function scr_player_shotgundash() //scr_player_shotgundash
{
    image_speed = 0.35
    hsp = xscale * movespeed
    if (floor(image_index) == (image_number - 1) || (!key_attack))
    {
        state = (66 << 0)
        sprite_index = spr_shotgunidle
        landAnim = false
        movespeed = 6
        if (!grounded)
        {
            state = (57 << 0)
            sprite_index = spr_shotgunfall
        }
    }
}

