pal_swap_init_system(shd_pal_swapper)
global.roommessage = "PIZZA TOWER OF THE WEST"
if (!obj_secretmanager.init)
{
    obj_secretmanager.init = true
    secret_add(function() //anon_gml_Room_badland_mart5_Create_254_gml_Room_badland_mart5_Create
    {
        touchedtriggers = 0
    }
, function() //anon_gml_Room_badland_mart5_Create_298_gml_Room_badland_mart5_Create
    {
        if (touchedtriggers >= 6)
            secret_open_portal(0)
    }
)
    secret_add(-4, function() //anon_gml_Room_badland_mart5_Create_423_gml_Room_badland_mart5_Create
    {
        secret_open_portal(1)
    }
)
    secret_add(-4, function() //anon_gml_Room_badland_mart5_Create_513_gml_Room_badland_mart5_Create
    {
        if secret_check_trigger(2)
            secret_open_portal(2)
    }
)
}
