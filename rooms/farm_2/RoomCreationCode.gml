pal_swap_init_system(shd_pal_swapper)
global.roommessage = "COW STACK"
if (!obj_secretmanager.init)
{
    obj_secretmanager.init = true
    secret_add(-4, function() //anon_gml_Room_farm_2_Create_243_gml_Room_farm_2_Create
    {
        secret_open_portal(0)
    }
)
    secret_add(-4, function() //anon_gml_Room_farm_2_Create_337_gml_Room_farm_2_Create
    {
        if secret_check_trigger(1)
            secret_open_portal(1)
    }
)
}
