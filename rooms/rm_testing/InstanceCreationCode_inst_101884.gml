trigger = 7
func = function(argument0) //anon_gml_RoomCC_rm_testing_20_Create_23_gml_RoomCC_rm_testing_20_Create
{
    if (!active)
    {
        if (following_count(227) >= 3)
        {
            active = true
            instance_destroy(obj_chickenfollow)
        }
    }
}

