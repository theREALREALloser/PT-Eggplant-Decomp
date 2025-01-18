// Note added by UTMTCE: "GMS2.3 object function definitions" has been automatically enabled
event_inherited()
ds_map_set(player_hurtstates, (42 << 0), 30)
ds_map_set(player_hurtstates, (41 << 0), 50)
ds_map_set(player_hurtstates, (104 << 0), 20)
ds_map_set(player_hurtstates, (121 << 0), 30)
ds_map_set(player_hurtstates, (47 << 0), 60)
ds_map_set(boss_hurtstates, (244 << 0), 60)
ds_map_set(boss_hurtstates, (245 << 0), 50)
ds_map_set(boss_hurtstates, (246 << 0), 50)
ds_map_set(boss_hurtstates, (248 << 0), 50)
ds_map_set(boss_hurtstates, (249 << 0), 50)
hitlist = ds_list_create()
image_speed = 0.35
max_hp = 3600
hp = max_hp
shot = false
phase = 0
has_attacked = false
floatdir = 1
attackbuffermax = 180
attackbuffer = attackbuffermax
phase1attacks = [(226 << 0), (228 << 0), (227 << 0), (229 << 0)]
lostattacks = array_length(phase1attacks)
parrycount = 0
transitionstate = 0
bombtimer = 0
hasbomb = false
bombgrabID = -4
knightbuffer = 0
spawnpool = [obj_forknight, obj_cheeseslime]
hitplayer = false
function player_hurt(argument0, argument1) //player_hurt_gml_Object_obj_pizzafacebossOLD_Create_0
{
    var _prevstate = state
    if (phase < 2)
        self.SUPER_player_hurt(argument0, argument1)
    else if ((argument1.state != (84 << 0) || argument1.parry_inst == -4) && argument1.state != (147 << 0) && ds_list_find_index(hitlist, argument1) == -1)
    {
        ds_list_add(hitlist, argument1)
        self.SUPER_player_hurt(argument0, argument1)
        state = _prevstate
        hitplayer = true
    }
}

function boss_hurt(argument0, argument1) //boss_hurt_gml_Object_obj_pizzafacebossOLD_Create_0
{
    if (phase == 0)
        self.SUPER_boss_hurt(argument0, argument1)
    else
    {
        var _removehp = true
        with (argument1)
        {
            if (state != (43 << 0) && state != (47 << 0))
                scr_pummel()
            else if (state == (47 << 0) && vsp > 0 && y < (other.y - 30))
            {
                sprite_index = spr_knightpep_doublejump
                image_index = 0
                vsp = -11
                movespeed = 6
            }
            else if (state != (43 << 0) && state != (147 << 0))
                _removehp = false
            if (state == (43 << 0))
                movespeed = 4
        }
        if _removehp
        {
            hp -= argument0
            scr_soundeffect(sfx_killingblow)
        }
    }
}

function boss_hurt_noplayer(argument0) //boss_hurt_noplayer_gml_Object_obj_pizzafacebossOLD_Create_0
{
    if (inv_timer <= 0)
    {
        hp -= argument0
        inv_timer = 10
    }
}

