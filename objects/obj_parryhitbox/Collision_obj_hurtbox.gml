if (other.object_index == obj_spitcheesespike || other.object_index == obj_banditochicken_projectile || other.object_index == obj_robotknife)
{
    with (other)
    {
        var current_hspd = abs(hsp)
        var _dir = sign(hsp)
        if (x != other.x)
            _dir = sign(x - other.x)
        hsp = _dir * current_hspd
        image_xscale = _dir
    }
}
else if (other.object_index == obj_noisegoblin_arrow)
{
    with (other)
    {
        current_hspd = abs(speed)
        _dir = sign(speed)
        if (((direction < 90 || direction > 270) && x < other.x) || ((direction > 90 || direction < 270) && x > other.x))
            _dir = -1
        speed = _dir * speed
        image_angle = point_direction(x, y, xstart, ystart)
    }
}
if (!collisioned)
    event_user(0)
