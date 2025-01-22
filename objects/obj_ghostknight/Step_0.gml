if (room == rm_editor)
    return;
switch state
{
    case states.idle:
        scr_enemy_idle()
        break
    case states.charge:
        scr_enemy_charge()
        break
    case states.turn:
        scr_enemy_turn()
        break
    case states.walk:
        scr_enemy_walk()
        break
    case states.land:
        scr_enemy_land()
        break
    case states.hit:
        scr_enemy_hit()
        break
    case states.stun:
        scr_enemy_stun()
        break
    case states.throw_:
        scr_pizzagoblin_throw()
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
    case states.rage:
        scr_enemy_rage()
        break
    case states.ghostpossess:
        scr_enemy_ghostpossess()
        break
}

if (state == states.stun && stunned > 100 && birdcreated == false)
{
    birdcreated = true
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != states.stun)
    birdcreated = false
scr_scareenemy()
if (flash == true && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
if (hitboxcreate == false && state == states.walk)
{
    hitboxcreate = true
    with (instance_create(x, y, obj_forkhitbox))
        ID = other.id
}
if (state != states.grabbed)
    depth = 0
if (state != states.stun)
    thrown = false
