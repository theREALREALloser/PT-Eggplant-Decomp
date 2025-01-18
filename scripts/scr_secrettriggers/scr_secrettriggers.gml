function secret_add(argument0, argument1) //secret_add
{
    with (obj_secretmanager)
    {
        ds_list_add(secrettriggers, [argument1])
        if (argument0 != -4)
            method(id, argument0)()
    }
}

function secret_add_touchall(argument0, argument1, argument2) //secret_add_touchall
{
    with (obj_secretmanager)
        ds_list_add(touchall, [argument0, argument1, argument2])
}

function secret_add_touchall_requirement(argument0, argument1) //secret_add_touchall_requirement
{
    touchrequirement[argument0] = [argument1, false]
}

function secret_check_touchall() //secret_check_touchall
{
    if (touchrequirement != -4 && is_array(touchrequirement))
    {
        for (var xx = 0; xx < array_length(touchrequirement); xx++)
        {
            var t = 0
            for (var i = 0; i < ds_list_size(touchall); i++)
            {
                var b = ds_list_find_value(touchall, i)
                if (b[1] == xx)
                    t++
            }
            if (t == touchrequirement[xx][0])
                touchrequirement[xx][1] = true
        }
        b = true
        i = 0
        while (i < array_length(touchrequirement))
        {
            if (!touchrequirement[i][1])
            {
                b = false
                break
            }
            else
                i++
        }
        if b
            return true;
    }
    return false;
}

function secret_check_trigger(argument0) //secret_check_trigger
{
    var _found = false
    with (obj_secrettrigger)
    {
        if (trigger == argument0 && active)
            _found = true
    }
    if _found
    {
        trace(
        {
            found: _found
        }
)
    }
    return _found;
}

function secret_open_portal(argument0) //secret_open_portal
{
    with (obj_secretportal)
    {
        if (trigger == argument0 && ds_list_find_index(global.saveroom, id) == -1 && (!(place_meeting(x, y, obj_marbleblock))) && (!(place_meeting(x, y, obj_secretblock))) && (!(place_meeting(x, y, obj_secretbigblock))) && (!(place_meeting(x, y, obj_secretmetalblock))) && (!(place_meeting(x, y, obj_secretdestroyable))))
            active = true
    }
}

function secret_close_portal(argument0, argument1) //secret_close_portal
{
    if (argument1 == undefined)
        argument1 = false
    with (obj_secretportal)
    {
        if (trigger == argument0 && sprite_index != spr_secretportal_close)
        {
            sprite_index = spr_secretportal_close
            if (!argument1)
                image_index = 0
            else
                image_index = 14
            active = false
        }
    }
}

function secret_close_portalID(argument0) //secret_close_portalID
{
    with (argument0)
    {
        sprite_index = spr_secretportal_close
        image_index = 14
        active = false
    }
}

