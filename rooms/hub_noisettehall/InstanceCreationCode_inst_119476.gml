if (global.levelcomplete && (!global.streetcutscene))
{
    currentroom = room
    scene_info = [[function() //anon_gml_RoomCC_hub_noisettehall_3_Create_99_gml_RoomCC_hub_noisettehall_3_Create
    {
        with (obj_player)
        {
            state = (0 << 0)
            x = backtohubstartx
            y = backtohubstarty
        }
        global.levelcomplete = false
        global.streetcutscene = true
        global.levelcompletename = -4
        quick_ini_write_real(get_savefile_ini(), "cutscene", "street", true)
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
    scene_info = [[cutscene_wait, 15]]
