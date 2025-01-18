function cutscene_set_player_pos(argument0, argument1) //cutscene_set_player_pos
{
    with (obj_player)
    {
        if (object_index != obj_player2 || global.coop)
        {
            x = argument0
            y = argument1
        }
    }
    cutscene_end_action()
}

