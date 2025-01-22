ef_dialog[0] = [dialog_create("The exit fee is a bajillion dollars, sorry")]
ef_dialog[1] = [dialog_create("Is that beer I see? Go right ahead", -4, function() //anon_gml_RoomCC_hub_pizzalandexit_5_Create_158_gml_RoomCC_hub_pizzalandexit_5_Create
{
    global.exitfeecutscene = true
    quick_ini_write_real(get_savefile_ini(), "cutscene", "exitfee", true)
}
)]
ef_dialog[2] = [dialog_create("Your exit fee is paid, go right ahead!")]
sprite_index = spr_pizzaslug_idle
dialog_func = function() //anon_gml_RoomCC_hub_pizzalandexit_5_Create_415_gml_RoomCC_hub_pizzalandexit_5_Create
{
    if (global.beercutscene == -4)
        global.beercutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "beer", false)
    if (global.exitfeecutscene == -4)
        global.exitfeecutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "exitfee", false)
    if (!global.exitfeecutscene)
    {
        if (!global.beercutscene)
            do_dialog(ef_dialog[0])
        else
            do_dialog(ef_dialog[1])
    }
    else
        do_dialog(ef_dialog[2])
}

