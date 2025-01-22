targetplayer = (global.coop ? instance_nearest(x, y, obj_player) : obj_player1)
if (hp <= 0 && state != (145 << 0))
{
    if ((!destroyed) && (!thrown) && (!destroyable))
        self.boss_destroy(lastplayerid)
}
switch state
{
    case (145 << 0):
        grav = 0.5
        state_boss_arenaround()
        break
    case states.normal:
        grav = 0.5
        boss_mrstick_normal()
        break
    case states.shield:
        grav = 0.5
        boss_mrstick_shield()
        break
    case (175 << 0):
        grav = 0.5
        boss_mrstick_helicopterhat()
        break
    case (176 << 0):
        grav = 0.5
        boss_mrstick_panicjump()
        break
    case states.jump:
        grav = 0.5
        boss_mrstick_jump()
        break
    case (177 << 0):
        grav = 0.5
        boss_mrstick_smokebombstart()
        break
    case (178 << 0):
        grav = 0.5
        boss_mrstick_smokebombcrawl()
        break
    case (179 << 0):
        grav = 0.5
        boss_mrstick_springshoes()
        break
    case (180 << 0):
        grav = 0.5
        boss_mrstick_cardboard()
        break
    case (181 << 0):
        grav = 0.5
        boss_mrstick_cardboardend()
        break
    case (182 << 0):
        grav = 0.5
        boss_mrstick_mockery()
        break
    case states.walk:
        grav = 0.5
        state_boss_walk(boss_mrstick_decide_attack)
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

colliding = (!((state == states.jump || state == (180 << 0) || state == (181 << 0))))
attacking = (state == states.shield || state == states.jump || state == (180 << 0) || state == (181 << 0) || state == (177 << 0))
