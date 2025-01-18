pal_swap_init_system(shd_pal_swapper)
global.roommessage = "PIZZA TOWER ISLAND"
if (!obj_secretmanager.init)
{
    obj_secretmanager.init = true
    secret_add(-4, function() //anon_gml_Room_plage_cavern2_Create_252_gml_Room_plage_cavern2_Create
    {
        if secret_check_trigger(1)
            secret_open_portal(1)
        else
            secret_close_portal(1)
    }
)
    secret_add(function() //anon_gml_Room_plage_cavern2_Create_420_gml_Room_plage_cavern2_Create
    {
        touchedtriggers = 0
    }
, function() //anon_gml_Room_plage_cavern2_Create_464_gml_Room_plage_cavern2_Create
    {
        if (touchedtriggers >= 6)
            secret_open_portal(0)
    }
)
}
