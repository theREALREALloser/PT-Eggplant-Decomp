if (room == rm_editor)
    return;
targetplayer = instance_nearest(x, y, obj_player)
targetspot = instance_nearest(x, y, obj_vigi_attackspot)
wastedhits = 8 - elitehit
switch state
{
    case (134 << 0):
        scr_vigilante_walk()
        break
    case (37 << 0):
        scr_vigilante_climbwall()
        break
    case (100 << 0):
        scr_vigilante_crouch()
        break
    case (92 << 0):
        scr_vigilante_jump()
        break
    case (1 << 0):
        scr_vigilante_revolver()
        break
    case (74 << 0):
        scr_vigilante_throwing()
        break
    case (122 << 0):
        scr_vigilante_freefallprep()
        break
    case (108 << 0):
        scr_vigilante_freefall()
        break
    case (111 << 0):
        scr_vigilante_freefallland()
        break
    case (2 << 0):
        scr_vigilante_dynamite()
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

if (state != (108 << 0) && state != (111 << 0))
    hit = false
if (state == (100 << 0))
    mask_index = spr_crouchmask
else
    mask_index = spr_player_mask
if (state == (138 << 0))
{
    movespeed = 0
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
if (state == (138 << 0) || state == (153 << 0) || state == (134 << 0) || state == (100 << 0) || state == (37 << 0) || (!use_collision))
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
