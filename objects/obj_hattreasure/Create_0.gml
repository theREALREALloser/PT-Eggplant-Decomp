event_inherited()
got_func = function() //anon_gml_Object_obj_hattreasure_Create_0_33_gml_Object_obj_hattreasure_Create_0
{
    if (global.hatcutscene2 == -4 || (!global.hatcutscene2))
    {
        global.hatcutscene2 = true
        quick_ini_write_real(get_savefile_ini(), "cutscene", "hat2", true)
    }
}

if (global.hatcutscene1 == -4)
    global.hatcutscene1 = quick_ini_read_real(get_savefile_ini(), "cutscene", "hat1", false)
if (!global.hatcutscene1)
    instance_destroy()
if (global.hatcutscene2 == -4)
    global.hatcutscene2 = quick_ini_read_real(get_savefile_ini(), "cutscene", "hat2", false)
if global.hatcutscene2
    instance_destroy()
