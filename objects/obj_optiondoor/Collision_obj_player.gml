var _actor = false
with (obj_player)
{
    if (state == (146 << 0))
        _actor = true
}
if _actor
    return;
with (other)
{
    if (key_up && grounded && (!instance_exists(obj_option)) && (state == (0 << 0) || state == (103 << 0) || state == (104 << 0) || state == (58 << 0) || state == (121 << 0) || state == (99 << 0)))
    {
        instance_create(x, y, obj_option)
        state = (146 << 0)
    }
}
