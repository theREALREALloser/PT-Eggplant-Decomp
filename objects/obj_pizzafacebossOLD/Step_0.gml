targetplayer = (global.coop ? instance_nearest(x, y, obj_player) : obj_player1)
if (obj_bosscontroller.state == states.arenaintro)
    return;
if (hp <= 0 && state != (145 << 0) && state != (162 << 0))
{
    if ((!thrown) && (!destroyable))
        self.boss_destroy(lastplayerid)
}
image_speed = 0.35
if (knightbuffer > 0)
    knightbuffer--
switch phase
{
    case states.normal:
        normal_func = boss_pizzaface_phase1normal
        break
    case states.revolver:
        normal_func = boss_pizzahead_phase2normal
        break
    case states.dynamite:
        normal_func = boss_pizzahead_phase3normal
        break
}

switch state
{
    case (145 << 0):
        grav = 0.5
        break
    case states.normal:
        grav = 0.5
        self.normal_func()
        break
    case (230 << 0):
        grav = 0.5
        self.boss_pizzaface_ram()
        break
    case (226 << 0):
        grav = 0.5
        self.boss_pizzaface_moustache()
        break
    case (228 << 0):
        grav = 0.5
        self.boss_pizzaface_eyes()
        break
    case (227 << 0):
        grav = 0.5
        self.boss_pizzaface_mouth()
        break
    case (229 << 0):
        grav = 0.5
        self.boss_pizzaface_nose()
        break
    case (231 << 0):
        self.boss_pizzaface_phase2transition()
        break
    case (232 << 0):
        self.boss_pizzahead_look()
        break
    case (233 << 0):
        self.boss_pizzahead_fishing()
        break
    case (235 << 0):
        self.boss_pizzahead_bombrun()
        break
    case (236 << 0):
        self.boss_pizzahead_npcthrow()
        break
    case (237 << 0):
        self.boss_pizzahead_portraitthrow()
        break
    case (238 << 0):
        self.boss_pizzahead_enguarde()
        break
    case (239 << 0):
        self.boss_pizzahead_sexypicture()
        break
    case (240 << 0):
        self.boss_pizzahead_pullinglevel()
        break
    case (241 << 0):
        self.boss_pizzahead_eat()
        break
    case (242 << 0):
        self.boss_pizzahead_surprisebox()
        break
    case (243 << 0):
        self.boss_pizzahead_spinningrun()
        break
    case (244 << 0):
        self.boss_pizzahead_spinningkick()
        break
    case (245 << 0):
        self.boss_pizzahead_spinningpunch()
        break
    case (246 << 0):
        self.boss_pizzahead_groundpunch()
        break
    case (247 << 0):
        self.boss_pizzahead_bigkick()
        break
    case (248 << 0):
        self.boss_pizzahead_slamhead()
        break
    case (249 << 0):
        self.boss_pizzahead_slamhead2()
        break
    case states.walk:
        grav = 0.5
        if grounded
            state = states.normal
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
        stunned = 30
        break
    case states.stun:
        grav = 0.5
        state_boss_stun()
        break
}

if (phase == 0 && state != (230 << 0))
    invincible = true
else
    invincible = false
attacking = (state == (230 << 0) || state == (229 << 0) || state == (244 << 0) || state == (245 << 0) || state == (246 << 0) || state == (248 << 0) || state == (249 << 0))
colliding = state != (230 << 0)
if (phase > 0)
{
    mask_index = spr_pizzahead_giddy
    stunfallspr = spr_pizzahead_giddy
    walkspr = spr_pizzahead_giddy
}
