pal_swap_init_system(shd_pal_swapper)
global.roommessage = "WELCOME TO PIZZA TOWER"
if (!obj_secretmanager.init)
{
    trace("secret init")
    obj_secretmanager.init = true
    secret_add(function() //anon_gml_Room_entrance_lap_Create_280_gml_Room_entrance_lap_Create
    {
        touchedtriggers = 0
    }
, function() //anon_gml_Room_entrance_lap_Create_324_gml_Room_entrance_lap_Create
    {
        if (touchedtriggers >= 4)
            secret_open_portal(0)
    }
)
    secret_add(-4, function() //anon_gml_Room_entrance_lap_Create_451_gml_Room_entrance_lap_Create
    {
        secret_open_portal(1)
    }
)
    secret_add(-4, function() //anon_gml_Room_entrance_lap_Create_551_gml_Room_entrance_lap_Create
    {
        if secret_check_trigger(2)
            secret_open_portal(2)
    }
)
}
