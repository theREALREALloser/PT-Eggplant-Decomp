with (other)
{
    if shotgunAnim
    {
        shotgunAnim = false
        with (instance_create(x, y, obj_sausageman_dead))
            sprite_index = spr_shotgunback
    }
}
