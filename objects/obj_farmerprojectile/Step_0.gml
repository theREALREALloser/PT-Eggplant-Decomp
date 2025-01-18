x += hsp
y += vsp
var num = collision_line_list(x, y, xprevious, yprevious, obj_haystack, false, true, global.instancelist, false)
if (num > 0)
{
    var i = 0
    while (i < num)
    {
        var b = ds_list_find_value(global.instancelist, i)
        var t = false
        with (b)
        {
            if (state == (0 << 0))
            {
                state = (8 << 0)
                if other.func(b, other.id)
                    t = true
                else
                {
                    state = (0 << 0)
                    t = false
                }
            }
        }
        if t
        {
            instance_destroy()
            break
        }
        else
            i++
    }
}
ds_list_clear(global.instancelist)
