if (global.farmcutscene == -4)
    global.farmcutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "farm", false)
if global.farmcutscene
    instance_destroy()
