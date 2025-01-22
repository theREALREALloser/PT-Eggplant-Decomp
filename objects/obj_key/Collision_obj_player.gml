if (room == rm_editor)
    return;
if global.key_inv
    return;
with (other)
{
    if (state != states.bombpep && state != states.gotoplayer && state != states.ghost && state != states.knightpep && state != states.cheeseball && state != states.boxxedpep && state != states.cheesepep && state != states.knightpepattack && state != states.knightpepslopes && state != states.hurt && state != states.knightpepbump)
    {
        instance_destroy(other)
        global.key_inv = true
        key_particles = true
        alarm[7] = 30
        scr_soundeffect(sfx_collecttoppin)
        state = states.keyget
        image_index = 0
        global.heattime = 60
    }
}
