targetplayer = (global.coop ? instance_nearest(x, y, obj_player) : obj_player1)
if (obj_bosscontroller.state == states.arenaintro)
    return;
if (hp <= 0 && state != (145 << 0) && state != (162 << 0))
{
    if ((!thrown) && (!destroyable))
        self.boss_destroy(lastplayerid)
}
if (chooseparry_buffer > 0)
    chooseparry_buffer--
switch phase
{
    case states.revolver:
    case states.dynamite:
        normal_func = boss_pepperman_normal
        break
    case states.boots:
    case states.grabbed:
    case states.tumble:
    case states.finishingblow:
        normal_func = boss_pepperman_phase3normal
        break
}

switch state
{
    case (145 << 0):
        grav = 0.5
        state_boss_arenaround()
        break
    case states.normal:
        grav = 0.5
        self.normal_func()
        break
    case states.jump:
        grav = 0.5
        boss_pepperman_jump()
        invincible = true
        inv_timer = 2
        break
    case states.freefall:
        grav = 0.5
        boss_pepperman_freefall()
        break
    case states.freefallland:
        grav = 0.5
        boss_pepperman_freefallland()
        break
    case states.freefallprep:
        grav = 0.5
        boss_pepperman_freefallprep()
        break
    case states.shoulderbash:
        grav = 0.5
        boss_pepperman_shoulderbash()
        break
    case (157 << 0):
        grav = 0.5
        boss_pepperman_supershoulderbash()
        break
    case (158 << 0):
        grav = 0.5
        boss_pepperman_superattackstart()
        break
    case (159 << 0):
        grav = 0.5
        boss_pepperman_superattackcharge()
        break
    case states.superslam:
        grav = 0.5
        boss_pepperman_superslam()
        break
    case (162 << 0):
        grav = 0.5
        boss_pepperman_fistmatch()
        break
    case (163 << 0):
        grav = 0.5
        boss_pepperman_fistmatchend()
        break
    case states.shoulder:
        grav = 0.5
        boss_pepperman_shoulder()
        break
    case (161 << 0):
        grav = 0.5
        boss_pepperman_shoulderturn()
        break
    case states.walk:
        grav = 0.5
        state_boss_walk(boss_pepperman_decide_attack)
        invincible = true
        inv_timer = 2
        break
    case states.charge:
        grav = 0.5
        boss_pepperman_charge()
        invincible = true
        inv_timer = 2
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

xscale = image_xscale
colliding = (!((state == states.superslam || state == (162 << 0) || state == (158 << 0) || state == (159 << 0))))
attacking = (state == states.shoulderbash || state == states.freefall || state == states.freefallprep || state == (157 << 0) || state == states.shoulder || state == states.superslam || state == (162 << 0) || state == (158 << 0) || state == (159 << 0) || state == states.walk)
