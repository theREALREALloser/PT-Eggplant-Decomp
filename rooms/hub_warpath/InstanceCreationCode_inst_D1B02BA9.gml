sprite_index = spr_soldier_walk
g_dialog[0] = [dialog_create("Don't have anything to do")]
g_dialog[1] = [dialog_create("The robot is busted", -4, function() //anon_gml_RoomCC_hub_warpath_3_Create_162_gml_RoomCC_hub_warpath_3_Create
{
    if (!global.mrstickcutscene1)
    {
        global.mrstickcutscene1 = true
        quick_ini_write_real(get_savefile_ini(), "cutscene", "mrstick1", true)
    }
}
)]
g_dialog[2] = [dialog_create("The robot has no gasoline")]
g_dialog[3] = [dialog_create("Go right ahead", -4, function() //anon_gml_RoomCC_hub_warpath_3_Create_456_gml_RoomCC_hub_warpath_3_Create
{
    if (!global.ghostsoldiercutscene)
    {
        global.ghostsoldiercutscene = true
        quick_ini_write_real(get_savefile_ini(), "cutscene", "ghostsoldier", true)
    }
    with (obj_pizzamech)
        poweredon = true
}
)]
dialog_func = function() //anon_gml_RoomCC_hub_warpath_3_Create_715_gml_RoomCC_hub_warpath_3_Create
{
    if (!global.kidspartycutscene)
        do_dialog(g_dialog[0])
    else if ((!global.mrstickcutscene1) || (!global.mrstickcutscene2) || (!global.mrstickcutscene3))
        do_dialog(g_dialog[1])
    else if (!global.gasolinecutscene)
        do_dialog(g_dialog[2])
    else
        do_dialog(g_dialog[3])
}

if (global.kidspartycutscene == -4)
    global.kidspartycutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "kidsparty", false)
if (global.mrstickcutscene1 == -4)
    global.mrstickcutscene1 = quick_ini_read_real(get_savefile_ini(), "cutscene", "mrstick1", false)
if (global.mrstickcutscene2 == -4)
    global.mrstickcutscene2 = quick_ini_read_real(get_savefile_ini(), "cutscene", "mrstick2", false)
if (global.mrstickcutscene3 == -4)
    global.mrstickcutscene3 = quick_ini_read_real(get_savefile_ini(), "cutscene", "mrstick3", false)
if (global.gasolinecutscene == -4)
    global.gasolinecutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "gasoline", false)
if (global.chateaucutscene == -4)
    global.chateaucutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "chateau", false)
if (!global.chateaucutscene)
    instance_destroy()
if (global.ghostsoldiercutscene == -4)
    global.ghostsoldiercutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "ghostsoldier", false)
if global.ghostsoldiercutscene
    instance_destroy()
