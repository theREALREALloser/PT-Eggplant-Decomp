event_inherited()
dialog[0] = dialog_create("Have my motorcycle lol", -4, function() //anon_gml_Object_obj_chieftainNPC_Create_0_110_gml_Object_obj_chieftainNPC_Create_0
{
    if (global.chieftaincutscene == -4 || (!global.chieftaincutscene))
    {
        global.chieftaincutscene = true
        quick_ini_write_real(get_savefile_ini(), "cutscene", "chieftain", true)
    }
}
)
