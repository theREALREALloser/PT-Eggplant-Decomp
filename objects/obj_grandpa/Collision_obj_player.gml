with (obj_player)
{
    if (state == (47 << 0) || state == (38 << 0))
    {
        global.combotime = 60
        instance_destroy(other)
    }
}
if (other.state != (16 << 0))
{
    sprite_index = spr_grandpa_punch
    image_index = 0
    other.hurted = false
    scr_hurtplayer(other)
}
else
{
    global.combotime = 60
    instance_destroy()
}
