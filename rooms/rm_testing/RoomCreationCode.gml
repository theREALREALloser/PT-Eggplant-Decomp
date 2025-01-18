pal_swap_init_system(shd_pal_swapper)
global.roommessage = "PIZZA TOWER ISLAND"
global.pizzadelivery = true
global.hp = 8
global.use_temperature = true
if (!obj_secretmanager.init)
{
    obj_secretmanager.init = true
    secret_add(function() //anon_gml_Room_rm_testing_Create_333_gml_Room_rm_testing_Create
    {
        touchedtriggers = 0
    }
, function() //anon_gml_Room_rm_testing_Create_377_gml_Room_rm_testing_Create
    {
        if (touchedtriggers >= 2)
            secret_open_portal(0)
    }
)
    secret_add(function() //anon_gml_Room_rm_testing_Create_474_gml_Room_rm_testing_Create
    {
        hittriggers = 0
    }
, function() //anon_gml_Room_rm_testing_Create_514_gml_Room_rm_testing_Create
    {
        if (hittriggers >= 2)
            secret_open_portal(4)
    }
)
    secret_add(-4, function() //anon_gml_Room_rm_testing_Create_640_gml_Room_rm_testing_Create
    {
        if secret_check_trigger(1)
            secret_open_portal(1)
    }
)
    secret_add(-4, function() //anon_gml_Room_rm_testing_Create_771_gml_Room_rm_testing_Create
    {
        secret_open_portal(2)
    }
)
    secret_add(-4, function() //anon_gml_Room_rm_testing_Create_862_gml_Room_rm_testing_Create
    {
        if secret_check_trigger(3)
            secret_open_portal(3)
        else
            secret_close_portal(3)
    }
)
    secret_add(function() //anon_gml_Room_rm_testing_Create_1027_gml_Room_rm_testing_Create
    {
        totems = 0
    }
, function() //anon_gml_Room_rm_testing_Create_1062_gml_Room_rm_testing_Create
    {
        if (totems >= 3)
            secret_open_portal(5)
    }
)
    secret_add(-4, function() //anon_gml_Room_rm_testing_Create_1178_gml_Room_rm_testing_Create
    {
        if secret_check_trigger(6)
            secret_open_portal(6)
    }
)
    secret_add(-4, function() //anon_gml_Room_rm_testing_Create_1308_gml_Room_rm_testing_Create
    {
        if secret_check_trigger(7)
            secret_open_portal(7)
    }
)
}
