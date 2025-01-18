pal_swap_init_system(shd_pal_swapper)
global.roommessage = "PIZZA TOWER ISLAND"
if (!obj_secretmanager.init)
{
    obj_secretmanager.init = true
    secret_add(-4, function() //anon_gml_Room_sewer_1_Create_191_gml_Room_sewer_1_Create
    {
        secret_open_portal(0)
    }
)
    secret_add(-4, function() //anon_gml_Room_sewer_1_Create_280_gml_Room_sewer_1_Create
    {
        if secret_check_trigger(1)
            secret_open_portal(1)
    }
)
    secret_add(-4, function() //anon_gml_Room_sewer_1_Create_425_gml_Room_sewer_1_Create
    {
        secret_open_portal(2)
    }
)
}
