event_inherited()
got_func = function() //anon_gml_Object_obj_bottletreasure_Create_0_33_gml_Object_obj_bottletreasure_Create_0
{
    if (global.bottlecutscene == -4 || (!global.bottlecutscene))
    {
        global.bottlecutscene = true
        quick_ini_write_real(get_savefile_ini(), "cutscene", "bottle", true)
    }
}

if (global.bottlecutscene == -4)
    global.bottlecutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "bottle", false)
if global.bottlecutscene
    instance_destroy()
