// Note added by UTMTCE: "GMS2.3 object function definitions" has been automatically enabled
event_inherited()
dmg = 40
var t = obj_player1
if global.coop
    t = instance_nearest(x, y, obj_player)
direction = (point_direction(x, y, t.x, t.y)) + (irandom_range(-4, 4))
parryable = true
parried = false
function parry() //parry_gml_Object_obj_wordhitbox_Create_0
{
    var prevparried = parried
    self.SUPER_parry()
    if (prevparried != parried)
    {
        direction *= -1
        dmg = 100
        spd = 30
    }
}

