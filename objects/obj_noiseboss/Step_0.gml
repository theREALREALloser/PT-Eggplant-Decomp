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
    case (134 << 0):
        scr_noise_walk()
        break
    case (92 << 0):
        scr_noise_jump()
        break
    case (80 << 0):
        scr_noise_punch()
        break
    case (174 << 0):
        scr_noise_shield()
        break
    case (72 << 0):
        scr_noise_pistol()
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
if (state == (138 << 0))
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
if (state == (138 << 0) && stunned > 100 && birdcreated == false)
{
    birdcreated = true
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state == (92 << 0) || (state == (174 << 0) && substate == (92 << 0)))
{
    use_collision = false
    x += hsp
    y += vsp
    if (vsp < 20)
        vsp += grav
}
else
    use_collision = true
if ((state == (72 << 0) && substate == (66 << 0)) || (state == (174 << 0) && substate == (174 << 0)) || (state == (134 << 0) && ((!placedtraps) || ((!obj_player1.brick) && (!instance_exists(obj_brickball))))) || state == (80 << 0) || state == (138 << 0) || (!use_collision))
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
