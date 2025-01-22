sprite_index = spr_gnome4_idle
if (global.chateauswap == -4)
    global.chateauswap = quick_ini_read_real(get_savefile_ini(), "cutscene", "chateauswap", false)
dialog = [dialog_create("Abracadabra", -4, function() //anon_gml_RoomCC_hub_grandpizzardtowerinterior_1_Create_219_gml_RoomCC_hub_grandpizzardtowerinterior_1_Create
{
    global.chateauswap = (!global.chateauswap)
    quick_ini_write_real(get_savefile_ini(), "cutscene", "chateauswap", global.chateauswap)
}
)]
