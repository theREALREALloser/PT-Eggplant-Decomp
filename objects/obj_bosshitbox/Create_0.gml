// Note added by UTMTCE: "GMS2.3 object function definitions" has been automatically enabled
collisioned = false
dmg = 30
parryable = false
parried = false
team = 1
function SUPER_player_hurt(argument0, argument1) //SUPER_player_hurt_gml_Object_obj_bosshitbox_Create_0
{
    if ((!collisioned) && argument1.state != (145 << 0))
    {
        if instance_exists(obj_bosscontroller)
            obj_bosscontroller.player_hp -= argument0
        collisioned = true
        with (argument1)
        {
            scr_soundeffect(sfx_killingblow)
            var lag = 8
            if (state == states.chainsaw || state == states.hit)
            {
                x = hitX
                y = hitY
            }
            hitLag = lag
            hitX = x
            hitY = y
            xscale = (x != other.x ? sign(other.x - x) : other.image_xscale)
            hitxscale = (x != other.x ? sign(other.x - x) : other.image_xscale)
            sprite_index = spr_hurt
            hithsp = 15
            hitstunned = 100
            hitvsp = -8
            state = states.hit
            instance_create(other.x, other.y, obj_parryeffect)
            instance_create(x, y, obj_slapstar)
            instance_create(x, y, obj_slapstar)
            instance_create(x, y, obj_baddiegibs)
            instance_create(x, y, obj_baddiegibs)
            with (obj_camera)
            {
                shake_mag = 3
                shake_mag_acc = 3 / room_speed
            }
        }
    }
}

function SUPER_parry() //SUPER_parry_gml_Object_obj_bosshitbox_Create_0
{
    if (!parried)
    {
        team = 0
        parried = true
    }
}

function SUPER_boss_hurt(argument0) //SUPER_boss_hurt_gml_Object_obj_bosshitbox_Create_0
{
    if ((!collisioned) && team != argument0.team)
    {
        with (argument0)
            self.boss_hurt_noplayer(other.dmg)
        collisioned = true
    }
}

function boss_hurt(argument0) //boss_hurt_gml_Object_obj_bosshitbox_Create_0
{
    self.SUPER_boss_hurt(argument0)
}

function parry() //parry_gml_Object_obj_bosshitbox_Create_0
{
    self.SUPER_parry()
}

function player_hurt(argument0, argument1) //player_hurt_gml_Object_obj_bosshitbox_Create_0
{
    self.SUPER_player_hurt(argument0, argument1)
}

