if active
{
    if (other.isgustavo && other.brick)
    {
        other.state = states.ratmountballoon
        active = false
        cooldown = 100
        other.balloonbuffer = 250
    }
    else if (other.isgustavo == false)
    {
        other.state = states.balloon
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
