function cutscene_space_middle() //cutscene_space_middle
{
    instance_create(1024, -128, obj_cheeseboat)
    cutscene_end_action()
}

function cutscene_space_end() //cutscene_space_end
{
    with (obj_player)
    {
        state = (0 << 0)
        x = backtohubstartx
        y = backtohubstarty
    }
    global.levelcomplete = false
    global.spacecutscene = true
    global.levelcompletename = -4
    quick_ini_write_real(get_savefile_ini(), "cutscene", "space", true)
    cutscene_end_action()
}

