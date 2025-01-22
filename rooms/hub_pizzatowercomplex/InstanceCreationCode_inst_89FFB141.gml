if (global.dungeoncutscene == -4)
    global.dungeoncutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "dungeon", false)
if (!global.dungeoncutscene)
    instance_destroy()
