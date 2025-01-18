pal_swap_init_system(shd_pal_swapper)
global.roommessage = "PIZZA TOWER ISLAND"
if (!obj_secretmanager.init)
{
    obj_secretmanager.init = true
    secret_add(function() //anon_gml_Room_saloon_5_Create_197_gml_Room_saloon_5_Create
    {
        touchedtriggers = 0
    }
, function() //anon_gml_Room_saloon_5_Create_241_gml_Room_saloon_5_Create
    {
        if (touchedtriggers >= 6)
            secret_open_portal(0)
    }
)
    secret_add(-4, function() //anon_gml_Room_saloon_5_Create_366_gml_Room_saloon_5_Create
    {
        if secret_check_trigger(1)
            secret_open_portal(1)
    }
)
}
