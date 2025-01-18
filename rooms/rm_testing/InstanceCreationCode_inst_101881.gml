trigger = 6
func = function(argument0) //anon_gml_RoomCC_rm_testing_18_Create_23_gml_RoomCC_rm_testing_18_Create
{
    if (!active)
    {
        if following_has_follower(786)
        {
            active = true
            instance_destroy(obj_alienfollow)
        }
    }
}

