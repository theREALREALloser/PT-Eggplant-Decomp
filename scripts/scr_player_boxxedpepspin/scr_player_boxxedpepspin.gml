function scr_player_boxxedpepspin() //scr_player_boxxedpepspin
{
    image_speed = 0.5
    hsp = xscale * movespeed
    doublejump = true
    if place_meeting(x, (y + 1), obj_railparent)
    {
        var _railinst = instance_place(x, (y + 1), obj_railparent)
        railmovespeed = _railinst.movespeed
        raildir = _railinst.dir
    }
    move = key_left + key_right
    hsp = movespeed + railmovespeed * raildir
    if (move != 0)
    {
        if (abs(movespeed) <= 8)
            movespeed += (move * 0.3)
    }
    else
        movespeed = Approach(movespeed, 0, 0.25)
    if grounded
    {
        vsp = -6
        instance_create(x, y, obj_stompeffect)
    }
    if (scr_solid((x + sign(hsp)), y) && (!(place_meeting((x + hsp), y, obj_destructibles))) && ((!(place_meeting((x + hsp), y, obj_slope))) || scr_solid_slope((x + hsp), y)))
        movespeed = (-((sign(hsp) * 6)))
    instance_destroy(instance_place((x + hsp), y, obj_destructibles))
    if (!key_slap)
    {
        state = (35 << 0)
        sprite_index = spr_boxxedpepair
    }
}

