event_inherited()
got_func = function() //anon_gml_Object_obj_beertreasure_Create_0_33_gml_Object_obj_beertreasure_Create_0
{
    if (global.beercutscene == -4 || (!global.beercutscene))
    {
        global.beercutscene = true
        quick_ini_write_real(get_savefile_ini(), "cutscene", "beer", true)
    }
}

if (global.beercutscene == -4)
    global.beercutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "beer", false)
if global.beercutscene
    instance_destroy()
if (global.pinballcutscene == -4)
    global.pinballcutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "pinball", false)
if ((!global.pinballcutscene) && (!global.levelcomplete))
    instance_destroy()
