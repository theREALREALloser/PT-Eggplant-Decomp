if (state != states.parry_ && state != states.backbreaker)
    return;
with (other)
{
    var _maxhsp = abs(spd)
    var _dir = sign(spd)
    if (x != other.x)
        _dir = sign(x - other.x)
    spd = _maxhsp * _dir
}
if (state != states.parry_)
{
    sprite_index = parryspr
    movespeed = 8
    state = states.parry_
    image_index = 0
}
