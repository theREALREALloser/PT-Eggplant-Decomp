if (other.state == states.gotoplayer)
    return;
if (sprite_index == spr_boxcrusher_fall)
{
    other.image_index = 0
    other.state = states.bump
    other.x = x
    other.y = y
}
else if (sprite_index == spr_boxcrusher_land)
{
    if (other.state != states.boxxedpep)
        tv_push_prompt_once(tv_create_prompt("This is the boxxed transformation text", (2 << 0), 2832, 3), "boxxedpep")
    other.boxxed = true
    other.movespeed = 0
    other.state = states.boxxedpep
    if (other.sprite_index != other.spr_boxxedpepintro)
        other.sprite_index = other.spr_boxxedpepintro
    other.image_index = 0
    other.hsp = 0
    other.vsp = 0
    other.x = x
    other.y = y - 20
}
