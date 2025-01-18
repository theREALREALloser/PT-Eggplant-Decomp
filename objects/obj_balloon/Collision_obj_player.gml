if (other.state == (186 << 0))
    return;
create_particle(x, y, (6 << 0), 0)
other.vsp = -14
other.jumpstop = true
visible = false
x = -100
y = -100
respawn = 100
if (other.state == (92 << 0))
    other.sprite_index = other.spr_machfreefall
if (other.state == (37 << 0))
{
    other.sprite_index = other.spr_machfreefall
    other.state = (92 << 0)
}
