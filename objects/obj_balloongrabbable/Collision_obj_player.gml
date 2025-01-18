if active
{
    if (other.isgustavo && other.brick)
    {
        other.state = (200 << 0)
        active = false
        cooldown = 100
        other.balloonbuffer = 250
    }
    else if (other.isgustavo == false)
    {
        other.state = (207 << 0)
        other.movespeed = other.hsp
        active = false
        with (other)
        {
            if isgustavo
                vsp = -7
        }
        cooldown = 100
        other.balloonbuffer = 250
    }
}
