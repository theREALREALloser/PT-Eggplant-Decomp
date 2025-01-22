if ((!kick) && countdown <= 0)
{
    other.vsp = -14
    other.jumpstop = true
    if (other.state == states.jump)
    {
        other.sprite_index = other.spr_stompprep
        other.image_index = 0
        other.jumpAnim = true
    }
    countdown = 10
    scr_soundeffect(sfx_stompenemy)
    create_particle(x, y, (5 << 0), 0)
}
