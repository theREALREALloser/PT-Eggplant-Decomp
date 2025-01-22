dialog[0] = dialog_create("You gotta pay your fee!")
loop = true
persistent = false
scene_info = [[function() //anon_gml_RoomCC_hub_pizzalandexit_4_Create_110_gml_RoomCC_hub_pizzalandexit_4_Create
{
    if (!global.exitfeecutscene)
    {
        with (obj_player)
        {
            if (x > other.x)
            {
                with (other)
                    cutscene_end_action()
            }
        }
    }
}
], [cutscene_set_player_actor], [cutscene_do_dialog, dialog], [cutscene_waitfor_dialog], [cutscene_set_player_actor], [cutscene_move_player, 322, (x - 200), 8, 12], [cutscene_set_player_normal]]
if (global.exitfeecutscene == -4)
    global.exitfeecutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "exitfee", false)
if global.exitfeecutscene
    instance_destroy()
