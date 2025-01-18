pal_swap_init_system(shd_pal_swapper)
global.roommessage = "PIZZA TOWER ISLAND"
if (!obj_secretmanager.init)
{
    obj_secretmanager.init = true
    secret_add(function() //anon_gml_Room_street_intro_Create_201_gml_Room_street_intro_Create
    {
        touchedtriggers = 0
    }
, function() //anon_gml_Room_street_intro_Create_245_gml_Room_street_intro_Create
    {
        if (touchedtriggers >= 6)
            secret_open_portal(0)
    }
)
    secret_add(-4, function() //anon_gml_Room_street_intro_Create_375_gml_Room_street_intro_Create
    {
        secret_open_portal(1)
    }
)
    secret_add(-4, function() //anon_gml_Room_street_intro_Create_471_gml_Room_street_intro_Create
    {
        if secret_check_trigger(2)
            secret_open_portal(2)
    }
)
}
