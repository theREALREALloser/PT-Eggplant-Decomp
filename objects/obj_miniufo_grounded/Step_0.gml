if (room == rm_editor)
    return;
switch state
{
    case states.idle:
        scr_enemy_idle()
        break
    case states.turn:
        scr_enemy_turn()
        break
    case states.walk:
        if (!grounded)
            sprite_index = spr_ufogrounded_fall
        if (sprite_index != spr_ufogrounded_fall && sprite_index != spr_ufogrounded_land)
        {
            invincible = false
            scr_enemy_walk()
        }
        else if (sprite_index == spr_ufogrounded_fall)
        {
            hsp = 0
            if grounded
            {
                sprite_index = spr_ufogrounded_land
                image_index = 0
            }
        }
        else
        {
            if (image_index > 11)
                hsp = sign(image_xscale)
            if (floor(image_index) == (image_number - 1))
            {
                sprite_index = spr_ufogrounded_walk
                invincible = false
            }
        }
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
}

if (state != states.walk)
    invincible = false
if (state == states.stun && stunned > 100 && birdcreated == false)
{
    birdcreated = true
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != states.stun)
    birdcreated = false
if (flash == true && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
scr_scareenemy()
var targetplayer = (global.coop ? instance_nearest(x, y, obj_player) : obj_player1)
if (bombreset > 0)
    bombreset--
if (x != targetplayer.x && state != states.throw_ && bombreset == 0 && grounded)
{
    if (targetplayer.x > (x - 400) && targetplayer.x < (x + 400) && y <= (targetplayer.y + 20) && y >= (targetplayer.y - 20))
    {
        if ((state == states.walk || state == states.idle) && (!scr_solid_line(targetplayer)))
        {
            sprite_index = spr_ufogrounded_shoot
            image_index = 0
            image_xscale = (-(sign(x - targetplayer.x)))
            state = states.throw_
        }
    }
}
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
