if (global.levelcomplete && (!global.kidspartycutscene))
{
    currentroom = room
    mechactor = -4
    scene_info = [[cutscene_entrance_start], [cutscene_waitfor_sprite, 324], [cutscene_player_idleanim], [cutscene_change_room, 171], [cutscene_set_player_visible, false], [cutscene_set_player_pos, 1848, 750], [cutscene_player_float, true], [cutscene_wait, 50], [function() //anon_gml_RoomCC_hub_pizzaboypizzpizza_3_Create_423_gml_RoomCC_hub_pizzaboypizzpizza_3_Create
    {
        mechactor = instance_create(1632, 416, obj_actor)
        mechactor.sprite_index = spr_pizzamech
        cutscene_end_action()
    }
], [function() //anon_gml_RoomCC_hub_pizzaboypizzpizza_3_Create_589_gml_RoomCC_hub_pizzaboypizzpizza_3_Create
    {
        with (mechactor)
        {
            y -= 2
            if (y < 118)
            {
                y = 118
                with (other)
                    cutscene_end_action()
            }
        }
        with (obj_camera)
        {
            shake_mag = 3
            shake_mag_acc = 3 / room_speed
        }
    }
], [cutscene_wait, 100], [cutscene_change_room, currentroom], [cutscene_set_player_visible, true], [cutscene_player_float, false], [function() //anon_gml_RoomCC_hub_pizzaboypizzpizza_3_Create_1046_gml_RoomCC_hub_pizzaboypizzpizza_3_Create
    {
        with (obj_player)
        {
            state = (0 << 0)
            x = backtohubstartx
            y = backtohubstarty
        }
        global.levelcomplete = false
        global.kidspartycutscene = true
        quick_ini_write_real(get_savefile_ini(), "cutscene", "kidsparty", true)
        cutscene_end_action()
    }
], [cutscene_save_game]]
}
else if global.levelcomplete
{
    global.levelcomplete = false
    scene_info = [[cutscene_save_game]]
}
else
    scene_info = [[cutscene_wait, 20]]
