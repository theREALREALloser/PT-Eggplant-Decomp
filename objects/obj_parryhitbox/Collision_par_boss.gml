var _boss = other.id
var hb = id
if collisioned
    return;
with (_boss)
{
    var upb = ds_map_find_value(boss_unparryablestates, state)
    var sb = ds_map_find_value(boss_hurtstates, state)
    if ((!is_undefined(sb)) && is_undefined(upb))
    {
        var p = (hb.player_id == obj_grindrailslope ? obj_player1.id : obj_player2.id)
        var pstate = p.tauntstoredstate
        var pmovespeed = p.tauntstoredmovespeed
        var psprite = p.tauntstoredsprite
        if (object_index == obj_pizzafaceboss && phase > 1)
            self.SUPER_boss_hurt(30, p)
        else
        {
            self.boss_hurt(30, p)
            hitvsp = -14
            movespeed = 0
            hithsp = 0
        }
        with (hb)
        {
            if (!collisioned)
                event_user(0)
        }
        with (p)
        {
            tauntstoredstate = pstate
            tauntstoredmovespeed = pmovespeed
            tauntstoredsprite = psprite
        }
    }
}
