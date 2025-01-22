func = function(argument0) //anon_gml_RoomCC_rm_testing_11_Create_11_gml_RoomCC_rm_testing_11_Create
{
    if ((!active) && argument0.state == states.handstandjump)
    {
        active = true
        obj_secretmanager.hittriggers++
        with (argument0)
            scr_pummel()
    }
}

