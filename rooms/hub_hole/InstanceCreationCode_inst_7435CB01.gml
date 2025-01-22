if (global.graveyardcutscene == -4)
    global.graveyardcutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "graveyard", false)
if ((!global.levelcomplete) && (!global.graveyardcutscene))
    instance_destroy()
