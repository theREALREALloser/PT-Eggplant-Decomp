if (global.switchbuffer == 0)
{
    with (other)
    {
        x = obj_gustavoswitch.x
        y = obj_gustavoswitch.y
        hsp = 0
        vsp = 0
        visible = false
        state = (146 << 0)
    }
    create_particle(x, y, (9 << 0))
    sprite_index = spr_peppinoswitch1
    playerid = other.id
    global.switchbuffer = 200
    with (obj_gustavoswitch)
    {
        sprite_index = spr_gustavoswitch2
        image_index = 0
    }
}
