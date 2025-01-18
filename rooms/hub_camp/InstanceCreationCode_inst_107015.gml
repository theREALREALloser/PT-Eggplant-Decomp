if (global.forestcutscene == -4)
    global.forestcutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "forest", false)
if (!global.forestcutscene)
    instance_destroy()
