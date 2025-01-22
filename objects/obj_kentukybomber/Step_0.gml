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
}

if (state == states.stun && stunned > 100 && birdcreated == false)
{
    birdcreated = true
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != states.stun)
    birdcreated = false
if (state == states.walk && y > ystart && (!(scr_solid(x, (y - 1)))))
    y--
if (state == states.walk && y < ystart && (!(scr_solid(x, (y + 1)))))
    y++
if (state == states.stun)
    grav = 0.5
else
    grav = 0
if (bombreset > 0 && state == states.walk)
    bombreset--
var player = instance_nearest(x, y, obj_player)
if (ragebuffer > 0)
    ragebuffer--
if (player.x > (x - 200) && player.x < (x + 200) && player.y <= (y + 400) && player.y >= (y - 60))
{
    if (x != player.x && state != states.throw_ && bombreset == 0)
    {
        if (state == states.walk || state == states.idle)
        {
            sprite_index = spr_kentukybomber_attack
            image_index = 0
            state = states.throw_
        }
    }
}
if (flash == true && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
if (state == states.throw_ || state == states.rage)
{
    hsp = 0
    vsp = 0
}
if (state != states.grabbed)
    depth = 0
scr_scareenemy()
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
