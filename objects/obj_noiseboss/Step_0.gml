if (room == rm_editor)
    return;
targetplayer = instance_nearest(x, y, obj_player)
wastedhits = 8 - elitehit
if (elitehit <= 2)
    attackpool = [(174 << 0), (130 << 0), (72 << 0), (72 << 0), (72 << 0)]
else if (elitehit <= 4)
    attackpool = [(174 << 0), (174 << 0), (174 << 0), (130 << 0)]
else if (elitehit <= 6)
    attackpool = [(130 << 0)]
switch state
{
    case states.walk:
        scr_noise_walk()
        break
    case states.jump:
        scr_noise_jump()
        break
    case states.punch:
        scr_noise_punch()
        break
    case states.shield:
        scr_noise_shield()
        break
    case states.pistol:
        scr_noise_pistol()
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
if (state == states.stun)
{
    movespeed = 0
    if thrown
    {
        savedthrown = true
        placedtraps = false
        jumpbuffer = 1
        attacked = false
        with (obj_noisetrap)
            instance_destroy()
    }
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
if (state == states.jump || (state == states.shield && substate == states.jump))
{
    use_collision = false
    x += hsp
    y += vsp
    if (vsp < 20)
        vsp += grav
}
else
    use_collision = true
if ((state == states.pistol && substate == states.shotgun) || (state == states.shield && substate == states.shield) || (state == states.walk && ((!placedtraps) || ((!obj_player1.brick) && (!instance_exists(obj_brickball))))) || state == states.punch || state == states.stun || (!use_collision))
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
