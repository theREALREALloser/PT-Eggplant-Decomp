if (other.state == states.gotoplayer)
    return;
create_particle(x, y, (6 << 0), 0)
other.vsp = -14
other.jumpstop = true
visible = false
x = -100
y = -100
respawn = 100
if (other.state == states.jump)
    other.sprite_index = other.spr_machfreefall
if (other.state == states.climbwall)
{
    other.sprite_index = other.spr_machfreefall
    other.state = states.jump
}
