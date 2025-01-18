function cutscene_player_pos_lerp(argument0, argument1, argument2) //cutscene_player_pos_lerp
{
    var _finish = false
    with (obj_player)
    {
        hsp = 0
        vsp = 0
        if (object_index != obj_player2 || global.coop)
        {
            x = lerp(x, argument0, argument2)
            y = lerp(y, argument1, argument2)
            if (x > (argument0 - 4) && x < (x + 4) && y > (argument1 - 4) && y < (argument1 + 4))
                _finish = true
        }
    }
    if _finish
        cutscene_end_action()
}

