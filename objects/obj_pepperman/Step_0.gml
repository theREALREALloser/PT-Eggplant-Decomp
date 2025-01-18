if (room == rm_editor)
    return;
targetplayer = instance_nearest(x, y, obj_player)
targetblock = instance_nearest(x, y, obj_pepper_marbleblock)
wastedhits = 8 - elitehit
switch state
{
    case (134 << 0):
        scr_pepperman_walk()
        break
    case (153 << 0):
        scr_pepperman_shoulderbash()
        break
    case (92 << 0):
        scr_pepperman_jump()
        break
    case (108 << 0):
        scr_pepperman_freefall()
        break
    case (137 << 0):
        scr_enemy_hit()
        break
    case (138 << 0):
        scr_enemy_stun()
        break
    case (4 << 0):
        scr_enemy_grabbed()
        break
    case (154 << 0):
        scr_enemy_pummel()
        break
    case (155 << 0):
        scr_enemy_staggered()
        break
}

if (state == (138 << 0))
{
    if thrown
        savedthrown = true
    if (grounded && vsp > 0 && savedthrown)
    {
        stunned = 1
        idle_timer = 1
    }
}
else
    savedthrown = false
if (state == (138 << 0) && stunned > 100 && birdcreated == false)
{
    birdcreated = true
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state == (92 << 0))
{
    use_collision = false
    x += hsp
    y += vsp
    if (vsp < 20)
        vsp += grav
}
else
    use_collision = true
if (state == (138 << 0) || state == (153 << 0) || (!use_collision) || elitehit <= 1)
    invincible = true
else
    invincible = false
if (state != (138 << 0))
    birdcreated = false
if (flash == true && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
if (state != (4 << 0))
    depth = 0
if (state != (138 << 0))
    thrown = false
if (boundbox == false)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        mask_index = other.sprite_index
        baddieID = other.id
        other.boundbox = true
    }
}
