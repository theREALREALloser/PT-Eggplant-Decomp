if (global.vigilantecutscene3 == -4)
    global.vigilantecutscene3 = quick_ini_read_real(get_savefile_ini(), "cutscene", "vigilante3", false)
if (!global.vigilantecutscene3)
    instance_destroy()
