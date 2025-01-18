with (obj_player)
{
    if (state == (32 << 0) && place_meeting((x + hsp), y, other))
    {
        other.destroy = true
        instance_destroy(other)
    }
}
