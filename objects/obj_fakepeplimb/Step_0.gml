if (room == rm_editor)
    return;
targetplayer = instance_nearest(x, y, obj_player)
if (ceiling && (state == (100 << 0) || state == (80 << 0)))
    grav = 0
else if (ceiling && state != (100 << 0) && state != (80 << 0))
    grav = 0.5
switch state
{
    case (126 << 0):
        scr_enemy_idle()
        break
    case (130 << 0):
        scr_enemy_turn()
        break
    case (134 << 0):
        ceiling = false
        state = (100 << 0)
        grav = 0.5
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
    case (17 << 0):
        scr_enemy_ghostpossess()
        break
    case (80 << 0):
        hidden = false
        cooldown = 100
        if (sprite_index != spr_attack)
        {
            sprite_index = spr_attack
            image_index = 0
            with (instance_create(x, y, obj_forkhitbox))
            {
                visible = false
                sprite_index = other.sprite_index
                other.hitboxID = id
                ID = other.id
            }
        }
        else if (floor(image_index) == (image_number - 1))
        {
            image_speed = 0.35
            state = (100 << 0)
            instance_destroy(hitboxID)
            sprite_index = spr_hidden
        }
        break
    case (100 << 0):
        if hidden
        {
            sprite_index = spr_hidden
            if (targetplayer.x > (x - 200) && targetplayer.x < (x + 200) && targetplayer.y < (y + 300) && targetplayer.y > (y - 300))
            {
                hidden = false
                state = (80 << 0)
            }
        }
        else
        {
            sprite_index = spr_hidden
            if (cooldown > 0)
                cooldown--
            else
                state = (80 << 0)
        }
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
if (flash == true && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
if hidden
    invincible = true
else
    invincible = false
if (state != (4 << 0))
    depth = 0
if (state != (138 << 0))
    thrown = false
