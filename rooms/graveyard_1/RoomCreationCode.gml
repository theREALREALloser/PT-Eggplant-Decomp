pal_swap_init_system(shd_pal_swapper)
global.roommessage = "PIZZA TOWER WITH THE DEAD"
if (!obj_secretmanager.init)
{
    obj_secretmanager.init = true
    secret_add(-4, function() //anon_gml_Room_graveyard_1_Create_204_gml_Room_graveyard_1_Create
    {
        if secret_check_trigger(0)
            secret_open_portal(0)
    }
)
    secret_add(-4, function() //anon_gml_Room_graveyard_1_Create_337_gml_Room_graveyard_1_Create
    {
        secret_open_portal(1)
    }
)
    secret_add(-4, function() //anon_gml_Room_graveyard_1_Create_420_gml_Room_graveyard_1_Create
    {
        if secret_check_trigger(2)
            secret_open_portal(2)
    }
)
}
