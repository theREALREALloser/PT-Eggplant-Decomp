targetplayer = (global.coop ? instance_nearest(x, y, obj_player) : obj_player1)
if (hp <= 0 && state != (145 << 0) && state != (162 << 0))
{
    if ((!thrown) && (!destroyable))
        self.boss_destroy(lastplayerid)
}
if ((state == states.mach1 || state == states.machslide || state == states.crouchslide || state == states.uppunch || state == states.punch || state == (166 << 0) || state == states.handstandjump) && alarm[0] <= 0)
    alarm[0] = 6
if (chooseparry_buffer > 0)
    chooseparry_buffer--
if (important && honor && nexthonor && phase > states.boots && state != (160 << 0))
{
    var ch = false
    with (obj_player)
    {
        if (state == states.chainsawbump)
            ch = true
    }
    if (instance_exists(obj_shotgunbullet) || ch)
    {
        nexthonor = false
        with (obj_tv)
        {
            showtext = true
            message = "NO HONOR"
            alarm[0] = 200
        }
    }
}
switch phase
{
    case states.grabbed:
    case states.tumble:
    case states.finishingblow:
        normal_func = boss_vigilante_normal_phase4
        break
    default:
        normal_func = boss_vigilante_normal
}

switch state
{
    case (145 << 0):
        grav = 0.5
        state_boss_arenaround()
        honor = nexthonor
        break
    case states.normal:
        grav = 0.5
        self.normal_func()
        break
    case (149 << 0):
        grav = 0.5
        boss_vigilante_float()
        break
    case states.revolver:
        grav = 0.5
        boss_vigilante_revolver()
        break
    case states.mach1:
        grav = 0.5
        boss_vigilante_mach1()
        break
    case states.crouchslide:
        grav = 0.5
        boss_vigilante_crouchslide()
        break
    case states.machslide:
        grav = 0.5
        boss_vigilante_machslide()
        break
    case states.bump:
        grav = 0.5
        state_boss_bump()
        break
    case states.jump:
        grav = 0.5
        boss_vigilante_jump()
        break
    case states.dynamite:
        grav = 0.5
        boss_vigilante_dynamite()
        break
    case states.charge:
        grav = 0.5
        boss_vigilante_charge()
        break
    case states.punch:
        grav = 0.5
        boss_vigilante_punch()
        break
    case (164 << 0):
        grav = 0.5
        boss_vigilante_groundpunchstart()
        break
    case states.freefallprep:
        grav = 0.5
        boss_vigilante_freefallprep()
        break
    case states.freefall:
        grav = 0.5
        boss_vigilante_freefall()
        break
    case states.freefallland:
        grav = 0.5
        boss_vigilante_freefallland()
        break
    case (166 << 0):
        grav = 0.5
        boss_vigilante_millionpunch()
        break
    case states.uppunch:
        grav = 0.5
        boss_vigilante_uppunch()
        break
    case states.handstandjump:
        grav = 0.5
        boss_vigilante_handstandjump()
        break
    case (158 << 0):
        grav = 0.5
        boss_vigilante_superattackstart()
        break
    case (160 << 0):
        grav = 0.5
        boss_vigilante_superattack()
        break
    case states.walk:
        grav = 0.5
        state_boss_walk(boss_vigilante_decide_attack)
        inv_timer = 2
        invincible = true
        break
    case states.chainsaw:
        grav = 0.5
        state_boss_chainsaw()
        break
    case states.backbreaker:
        grav = 0.5
        state_boss_taunt()
        invincible = true
        inv_timer = 2
        break
    case states.parry_:
        grav = 0.5
        state_boss_parry()
        invincible = true
        inv_timer = 2
        normalattack_cooldown = normalattack_max[(phase - 1)]
        break
    case states.hit:
        grav = 0.5
        scr_enemy_hit()
        stunned = targetstunned
        break
    case states.stun:
        grav = 0.5
        state_boss_stun()
        break
}

if (hitstate == (160 << 0) || state == (160 << 0))
{
    with (lastplayerid)
    {
        if (state != states.hit && state != states.thrown)
        {
            if (sprite_index == spr_player_pistolshot && image_index > (image_number - 1))
                sprite_index = spr_player_pistolidle
            if (sprite_index != spr_player_pistolshot && sprite_index != spr_idle && other.state == (160 << 0) && other.duel_buffer > 0)
                sprite_index = spr_idle
        }
    }
}
attacking = (state == states.revolver || state == states.mach1 || state == states.charge || state == states.punch || state == (164 << 0) || state == (166 << 0) || state == states.freefall || state == states.uppunch || state == states.handstandjump || state == (160 << 0) || state == (158 << 0) || state == states.crouchslide)
