if (global.levelcomplete && (!global.pinballcutscene))
{
    currentroom = room
    scene_info = [[function() //anon_gml_RoomCC_hub_pub_2_Create_100_gml_RoomCC_hub_pub_2_Create
    {
        with (obj_player)
        {
            state = states.normal
            x = backtohubstartx
            y = backtohubstarty
        }
        global.levelcomplete = false
        global.pinballcutscene = true
        global.levelcompletename = -4
        quick_ini_write_real(get_savefile_ini(), "cutscene", "pinball", true)
        cutscene_end_action()
    }
], [cutscene_save_game]]
}
else if global.levelcomplete
{
    global.levelcomplete = false
    scene_info = [[cutscene_save_game]]
}
else
    scene_info = [[cutscene_wait, 20]]
