if (global.levelcomplete && (!global.sewercutscene))
{
    currentroom = room
    scene_info = [[cutscene_entrance_start], [cutscene_waitfor_sprite, 324], [cutscene_player_idleanim], [cutscene_change_room, 191], [cutscene_set_player_visible, false], [cutscene_player_float, true], [cutscene_set_player_pos, 320, 288], [cutscene_wait, 39], [function() //anon_gml_RoomCC_hub_sewer_3_Create_401_gml_RoomCC_hub_sewer_3_Create
    {
        with (obj_hubwater)
        {
            y++
            if (y > (ystart + 32))
            {
                with (other)
                    cutscene_end_action()
            }
        }
    }
], [cutscene_wait, 150], [cutscene_change_room, currentroom], [cutscene_player_float, false], [cutscene_set_player_visible, true], [cutscene_sewer_end], [cutscene_save_game]]
}
else if global.levelcomplete
{
    global.levelcomplete = false
    scene_info = [[cutscene_save_game]]
}
else
    scene_info = [[cutscene_wait, 20]]
