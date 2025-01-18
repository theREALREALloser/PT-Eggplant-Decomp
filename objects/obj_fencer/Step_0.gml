if (room == rm_editor)
    return;
switch state
{
    case (126 << 0):
        scr_enemy_idle()
        break
    case (128 << 0):
        scr_enemy_charge()
        break
    case (130 << 0):
        scr_enemy_turn()
        break
    case (134 << 0):
        scr_enemy_walk()
        break
    case (136 << 0):
        scr_enemy_land()
        break
    case (137 << 0):
        scr_enemy_hit()
        break
    case (138 << 0):
        scr_enemy_stun()
        break
    case (129 << 0):
        scr_pizzagoblin_throw()
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
    case (125 << 0):
        scr_enemy_rage()
        break
}

if (state == (138 << 0) && stunned > 100 && birdcreated == false)
{
    birdcreated = true
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != (138 << 0))
    birdcreated = false
scr_scareenemy()
var player = instance_nearest(x, y, obj_player)
if (ragebuffer > 0)
    ragebuffer--
if (player.x > (x - 400) && player.x < (x + 400) && y <= (player.y + 60) && y >= (player.y - 60))
{
    if (state != (125 << 0) && ragebuffer == 0 && elite && (state == (134 << 0) || state == (128 << 0)))
    {
        state = (125 << 0)
        sprite_index = spr_fencer_rage
        if (x != player.x)
            image_xscale = (-(sign(x - player.x)))
        ragebuffer = 100
        image_index = 0
        image_speed = 0.5
        flash = true
        alarm[4] = 5
        create_heatattack_afterimage(x, y, sprite_index, image_index, image_xscale)
    }
    else if (x != player.x && grounded)
    {
        if (state == (134 << 0) && charging == false)
        {
            with (instance_create(x, y, obj_forkhitbox))
                ID = other.id
            charging = true
            state = (128 << 0)
            movespeed = 5
            vsp = -7
            sprite_index = spr_fencer_chargestart
        }
    }
}
if (state == (138 << 0) || state == (134 << 0))
{
    charging = false
    movespeed = 0
}
if (sprite_index == spr_fencer_chargestart && floor(image_index) == (image_number - 1))
    sprite_index = spr_fencer_charge
if (flash == true && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
if (hitboxcreate == false && (state == (134 << 0) || state == (125 << 0) || state == (128 << 0)))
{
    hitboxcreate = true
    with (instance_create(x, y, obj_forkhitbox))
        ID = other.id
}
if (state != (4 << 0))
    depth = 0
if (state != (138 << 0))
    thrown = false
if (boundbox == false)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        baddieID = other.id
        other.boundbox = true
    }
}
