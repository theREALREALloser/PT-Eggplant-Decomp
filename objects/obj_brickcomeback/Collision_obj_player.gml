if (!trapped)
{
    if (comeback == true)
    {
        other.brick = true
        if (other.state != (260 << 0) && other.state != (84 << 0))
        {
            if (!other.grounded)
                other.sprite_index = spr_player_ratmountfall
            else
                other.sprite_index = spr_player_ratmountidle
        }
        instance_create(other.x, other.y, obj_genericpoofeffect)
        instance_destroy()
    }
}
else if (other.state == (259 << 0) && baddieID == noone)
{
    scr_soundeffect(sfx_punch)
    vsp = -6
    hsp = other.xscale * 8
    trapped = false
    wait = true
    comeback = false
    alarm[0] = 30
}
