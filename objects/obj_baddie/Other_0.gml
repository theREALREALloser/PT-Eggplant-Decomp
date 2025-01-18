if (y > (room_height + 100))
{
    trace("destroyed 1")
    instance_destroy()
}
if (x > (room_width * 2) || x < (-room_width))
{
    trace("destroyed 2")
    instance_destroy()
}
