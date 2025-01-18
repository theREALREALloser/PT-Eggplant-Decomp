pal_swap_init_system(shd_pal_swapper)
global.roommessage = "WELCOME TO PIZZA TOWER"
if (!obj_secretmanager.init)
{
    obj_secretmanager.init = true
    secret_add(-4, function() //anon_gml_Room_industrial_1_Create_198_gml_Room_industrial_1_Create
    {
        secret_open_portal(0)
    }
)
    secret_add(-4, function() //anon_gml_Room_industrial_1_Create_293_gml_Room_industrial_1_Create
    {
        secret_open_portal(1)
    }
)
}
