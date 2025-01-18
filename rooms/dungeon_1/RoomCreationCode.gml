pal_swap_init_system(shd_pal_swapper)
global.roommessage = "PIZZA TOWER OF HELL!"
if (!obj_secretmanager.init)
{
    obj_secretmanager.init = true
    secret_add(-4, function() //anon_gml_Room_dungeon_1_Create_277_gml_Room_dungeon_1_Create
    {
        secret_open_portal(0)
    }
)
    secret_add(-4, function() //anon_gml_Room_dungeon_1_Create_368_gml_Room_dungeon_1_Create
    {
        secret_open_portal(1)
    }
)
    secret_add(-4, function() //anon_gml_Room_dungeon_1_Create_461_gml_Room_dungeon_1_Create
    {
        secret_open_portal(2)
    }
)
}
