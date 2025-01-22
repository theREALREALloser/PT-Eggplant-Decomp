if (other.instakillmove || other.state == states.handstandjump)
{
    with (other)
    {
        scr_pummel()
        instance_destroy(other)
    }
}
