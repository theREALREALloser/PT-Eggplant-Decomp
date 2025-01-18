sprite_index = spr_mrstick_idle
dialog = [dialog_create("alright lets fight", -4, function() //anon_gml_RoomCC_hub_pizzatowercomplex_6_Create_92_gml_RoomCC_hub_pizzatowercomplex_6_Create
{
    if (!global.mrstickcutscene2)
    {
        global.mrstickcutscene2 = true
        quick_ini_write_real(get_savefile_ini(), "cutscene", "mrstick2", true)
    }
}
)]
if (global.mrstickcutscene1 == -4)
    global.mrstickcutscene1 = quick_ini_read_real(get_savefile_ini(), "cutscene", "mrstick1", false)
if (!global.mrstickcutscene1)
    instance_destroy()
if (global.mrstickcutscene2 == -4)
    global.mrstickcutscene2 = quick_ini_read_real(get_savefile_ini(), "cutscene", "mrstick2", false)
if global.mrstickcutscene2
    instance_destroy()
