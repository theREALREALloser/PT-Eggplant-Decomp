if (patroltimer > 0)
{
    patroltimer--
    alarm[5] = 60
}
else
{
    patrolfound = false
    state = states.punch
    sprite_index = spr_teeth_alert
    image_index = 0
    scr_monster_activate()
}
