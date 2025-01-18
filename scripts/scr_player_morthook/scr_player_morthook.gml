function scr_player_morthook() //scr_player_morthook
{
    jumpstop = true
    doublejump = false
    hsp = 0
    vsp = 0
    if (!instance_exists(morthookID))
    {
        state = (12 << 0)
        sprite_index = spr_fall
        return;
    }
    image_speed = 0.35
    x = Approach(x, morthookID.x, movespeed)
    y = Approach(y, morthookID.y, movespeed)
    if (floor(x) == morthookID.x && floor(y) == morthookID.y)
    {
        if (sprite_index != spr_player_morthook)
        {
            sprite_index = spr_player_morthook
            image_index = 0
        }
        else if (floor(image_index) == (image_number - 1))
        {
            state = (12 << 0)
            sprite_index = spr_mortdoublejumpstart
            image_index = 0
            vsp = -14
            movespeed = xscale * 12
        }
    }
}

