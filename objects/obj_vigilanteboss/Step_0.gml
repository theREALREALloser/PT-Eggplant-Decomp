if (room == rm_editor)
    return;
targetplayer = instance_nearest(x, y, obj_player)
targetspot = instance_nearest(x, y, obj_vigi_attackspot)
wastedhits = 8 - elitehit
switch state
{
    case states.walk:
        scr_vigilante_walk()
        break
    case states.climbwall:
        scr_vigilante_climbwall()
        break
    case states.crouch:
        scr_vigilante_crouch()
        break
    case states.jump:
        scr_vigilante_jump()
        break
    case states.revolver:
        scr_vigilante_revolver()
        break
    case states.throwing:
        scr_vigilante_throwing()
        break
    case states.freefallprep:
        scr_vigilante_freefallprep()
        break
    case states.freefall:
        scr_vigilante_freefall()
        break
    case states.freefallland:
        scr_vigilante_freefallland()
        break
    case states.dynamite:
        scr_vigilante_dynamite()
        break
    case states.hit:
        scr_enemy_hit()
        break
    case states.stun:
        scr_enemy_stun()
        break
    case states.grabbed:
        scr_enemy_grabbed()
        break
    case states.pummel:
        scr_enemy_pummel()
        break
    case states.staggered:
        scr_enemy_staggered()
        break
}

if (state != states.freefall && state != states.freefallland)
    hit = false
if (state == states.crouch)
    mask_index = spr_crouchmask
else
    mask_index = spr_player_mask
if (state == states.stun)
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
if (state == states.stun && stunned > 100 && birdcreated == false)
{
    birdcreated = true
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state == states.jump)
{
    use_collision = false
    x += hsp
    y += vsp
    if (vsp < 20)
        vsp += grav
}
else
    use_collision = true
if (state == states.stun || state == states.shoulderbash || state == states.walk || state == states.crouch || state == states.climbwall || (!use_collision))
    invincible = true
else
    invincible = false
if (state != states.stun)
    birdcreated = false
if (flash == true && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
if (state != states.grabbed)
    depth = 0
if (state != states.stun)
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
