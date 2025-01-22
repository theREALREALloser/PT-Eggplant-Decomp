if (room == rm_editor)
    return;
targetplayer = instance_nearest(x, y, obj_player)
targetblock = instance_nearest(x, y, obj_pepper_marbleblock)
wastedhits = 8 - elitehit
switch state
{
    case states.walk:
        scr_pepperman_walk()
        break
    case states.shoulderbash:
        scr_pepperman_shoulderbash()
        break
    case states.jump:
        scr_pepperman_jump()
        break
    case states.freefall:
        scr_pepperman_freefall()
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

if (state == states.stun)
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
if (state == states.stun || state == states.shoulderbash || (!use_collision) || elitehit <= 1)
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
