var _temp_local_var_4;
function scr_monster_collide() //scr_monster_collide
{
    var _temp_local_var_4 = abs(vsp)
    if (abs(vsp) <= 0)
    {
    }
    else
    {
        while (true)
        {
            if (!(scr_monster_solid(x, (y + sign(vsp)))))
            {
                y += sign(vsp)
                var _temp_local_var_4 = (abs(vsp) - 1)
                if (abs(vsp) - 1)
                    continue
                break
            }
            else
                vsp = 0
        }
    }
    var _temp_local_var_4 = abs(hsp)
    if (abs(hsp) <= 0)
    {
    }
    else
    {
        while (true)
        {
            var k = 1
            if (k <= 4)
            {
                if (scr_monster_solid((x + sign(hsp)), y) && (!(scr_monster_solid((x + sign(hsp)), (y - k)))))
                    y -= k
                if ((!(scr_monster_solid((x + sign(hsp)), y))) && (!(scr_monster_solid((x + sign(hsp)), (y + 1)))) && scr_monster_solid((x + sign(hsp)), (y + (k + 1))))
                    y += k
                k++
                break
            }
            if (!(scr_monster_solid((x + sign(hsp)), y)))
            {
                x += sign(hsp)
                var _temp_local_var_4 = (abs(hsp) - 1)
                if (abs(hsp) - 1)
                    continue
                break
            }
            else
                hsp = 0
        }
    }
    if (grav > 0)
    {
        if (vsp < 20)
            vsp += grav
    }
    else if (vsp > -20)
        vsp += grav
    grounded = scr_monster_solid(x, (y + 1))
}

function scr_monster_solid(argument0, argument1) //scr_monster_solid
{
    var old_x = x
    var old_y = y
    x = argument0
    y = argument1
    if place_meeting(x, y, obj_monstersolid)
    {
        x = old_x
        y = old_y
        return true;
    }
    if check_slope(obj_monsterslope)
    {
        x = old_x
        y = old_y
        return true;
    }
    x = old_x
    y = old_y
    return false;
}

