function tv_set_idle() //tv_set_idle
{
    with (obj_tv)
    {
        state = (0 << 0)
        sprite_index = spr_tv_idle
    }
}

function tv_reset() //tv_reset
{
    with (obj_tv)
    {
        state = (0 << 0)
        sprite_index = spr_tv_idle
        ds_list_clear(tvprompts_list)
    }
}

function tv_create_prompt(argument0, argument1, argument2, argument3) //tv_create_prompt
{
    return [argument0, argument1, argument2, argument3];
}

function tv_push_prompt(argument0, argument1, argument2, argument3) //tv_push_prompt
{
    with (obj_tv)
    {
        var b = [argument0, argument1, argument2, argument3]
        var play = false
        switch argument1
        {
            case (0 << 0):
                play = true
                ds_list_insert(tvprompts_list, 0, b)
                break
            case (1 << 0):
                var placed = false
                var i = 0
                while (i < ds_list_size(tvprompts_list))
                {
                    var b2 = ds_list_find_value(tvprompts_list, i)
                    if (b2[1] == (2 << 0))
                    {
                        if (i == 0)
                            play = true
                        ds_list_insert(tvprompts_list, i, b)
                        placed = true
                        break
                    }
                    else
                        i++
                }
                if (!placed)
                    ds_list_add(tvprompts_list, b)
                break
            case (2 << 0):
                ds_list_add(tvprompts_list, b)
                break
        }

        if play
            state = (0 << 0)
    }
}

function tv_push_prompt_array(argument0) //tv_push_prompt_array
{
    for (var i = 0; i < array_length(argument0); i++)
    {
        with (obj_tv)
        {
            var b = argument0[i]
            tv_push_prompt(b[0], b[1], b[2], b[3])
        }
    }
}

function tv_push_prompt_once(argument0, argument1) //tv_push_prompt_once
{
    with (obj_tv)
    {
        if (special_prompts == -4)
            return false;
        var b = ds_map_find_value(special_prompts, argument1)
        if is_undefined(b)
            return false;
        if (b != 1)
        {
            tv_push_prompt(argument0[0], argument0[1], argument0[2], argument0[3])
            ds_map_set(special_prompts, argument1, 1)
            ini_open_from_string(obj_savesystem.ini_str)
            ini_write_real("Prompts", argument1, 1)
            obj_savesystem.ini_str = ini_close()
            return true;
        }
        return false;
    }
}

function tv_default_condition() //tv_default_condition
{
    return place_meeting(x, y, obj_player);
}

function tv_do_expression(argument0) //tv_do_expression
{
    with (obj_tv)
    {
        if (expressionsprite != argument0 && bubblespr == -4)
        {
            state = (250 << 0)
            expressionsprite = argument0
            sprite_index = spr_tv_whitenoise
            switch expressionsprite
            {
                case spr_tv_exprhurt:
                case spr_tv_hurtG:
                    expressionbuffer = 60
                    break
                case spr_tv_exprcollect:
                    expressionbuffer = 150
                    if obj_player.isgustavo
                        expressionsprite = spr_tv_happyG
                    break
            }

        }
    }
}

