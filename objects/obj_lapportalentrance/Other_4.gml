var p = false
with (obj_player)
{
    if (targetDoor == "LAP")
    {
        p = true
        state = (146 << 0)
        x = other.x
        y = other.y
        roomstartx = x
        roomstarty = y
        visible = false
        with (obj_pizzaface)
        {
            x = other.x
            y = other.y
        }
    }
}
if (!p)
    instance_destroy()
else
    active = true
