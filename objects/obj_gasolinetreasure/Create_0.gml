event_inherited()
got_func = function() //anon_gml_Object_obj_gasolinetreasure_Create_0_33_gml_Object_obj_gasolinetreasure_Create_0
{
    if (global.gasolinecutscene == -4 || (!global.gasolinecutscene))
    {
        global.gasolinecutscene = true
        quick_ini_write_real(get_savefile_ini(), "cutscene", "gasoline", true)
    }
}

if (global.gasolinecutscene == -4)
    global.gasolinecutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "gasoline", false)
if global.gasolinecutscene
    instance_destroy()
if (global.mansioncutscene == -4)
    global.mansioncutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "mansion", false)
if ((!global.mansioncutscene) && (!global.levelcomplete))
    instance_destroy()
