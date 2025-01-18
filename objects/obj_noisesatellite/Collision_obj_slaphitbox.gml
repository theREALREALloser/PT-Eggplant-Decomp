if (state == (138 << 0) && hp == 0 && stunned > 40 && slapped == false)
{
    slapped = true
    instance_create((x + obj_player.xscale * 40), y, obj_punchdust)
    state = (4 << 0)
    obj_player.state = (79 << 0)
    instance_destroy(other)
}
if (hp == 0 && (!((state == (138 << 0) && stunned > 40))) && state != (4 << 0) && slapped == false)
{
    instance_create(x, y, obj_spikehurteffect)
    other.image_xscale = image_xscale
    slapped = true
    flash = true
    instance_create(x, y, obj_bumpeffect)
    stunned = 200
    if (other.x != x)
        image_xscale = (-(sign(x - other.x)))
    vsp = -5
    hsp = (-image_xscale) * 3
    state = (138 << 0)
}
else if (state != (4 << 0) && slapped == false)
{
    if (hp > 0)
        hp -= 1
    if (slapped == false)
        instance_create(x, y, obj_slapstar)
    with (instance_create(x, y, obj_spikehurteffect))
        other.image_xscale = image_xscale
    slapped = true
    state = (138 << 0)
    stunned = 40
    if (other.x != x)
        image_xscale = (-(sign(x - other.x)))
    vsp = -3
    hsp = (-image_xscale) * 2
}
