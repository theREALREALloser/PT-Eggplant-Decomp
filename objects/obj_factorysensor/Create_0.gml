closed = false
graffiti = false
if (global.factorygraffiti == -4)
    global.factorygraffiti = quick_ini_read_real(get_savefile_ini(), "cutscene", "factorygraffiti", false)
if (global.graffiticutscene == -4)
    global.graffiticutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "graffiti", false)
if global.factorygraffiti
    graffiti = true
