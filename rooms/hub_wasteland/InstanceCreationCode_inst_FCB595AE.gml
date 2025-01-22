stationned = true
if (global.chieftaincutscene == -4)
    global.chieftaincutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "chieftain", false)
if (!global.chieftaincutscene)
    instance_destroy()
