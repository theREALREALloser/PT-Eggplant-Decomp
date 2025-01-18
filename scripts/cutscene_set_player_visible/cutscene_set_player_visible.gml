function cutscene_set_player_visible(argument0) //cutscene_set_player_visible
{
    with (obj_player)
        visible = argument0
    cutscene_end_action()
}

