if (count < countmax)
{
    with (instance_place(x, (y - 1), obj_weenie))
    {
        if (state != (4 << 0))
        {
            other.count++
            other.savedcount++
            instance_destroy()
        }
    }
}
if (savedcount > 0 && alarm[0] < 0)
    alarm[0] = 20
