event_inherited()
got_func = function() //anon_gml_Object_obj_graffititreasure_Create_0_33_gml_Object_obj_graffititreasure_Create_0
{
    if (global.graffiticutscene == -4 || (!global.graffiticutscene))
    {
        global.graffiticutscene = true
        quick_ini_write_real(get_savefile_ini(), "cutscene", "graffiti", true)
    }
}

if (global.graffiticutscene == -4)
    global.graffiticutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "graffiti", false)
if global.graffiticutscene
    instance_destroy()
if (global.streetcutscene == -4)
    global.streetcutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "street", false)
if ((!global.streetcutscene) && (!global.levelcomplete))
    instance_destroy()
