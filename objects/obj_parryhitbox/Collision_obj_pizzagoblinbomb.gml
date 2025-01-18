var b = false
var p = (player_id == obj_grindrailslope ? obj_player1.id : obj_player2.id)
with (other)
{
    if defused
    {
        b = true
        var current_hspd = abs(hsp)
        var _dir = sign(hsp)
        if (x != other.x)
            _dir = sign(x - other.x)
        if (_dir != 0)
            image_xscale = _dir
        if (current_hspd == 0)
        {
            image_xscale = p.xscale
            hsp = image_xscale * 6
            vsp = -5
        }
        else
            hsp = _dir * current_hspd
    }
}
if (b && (!collisioned))
    event_user(0)
