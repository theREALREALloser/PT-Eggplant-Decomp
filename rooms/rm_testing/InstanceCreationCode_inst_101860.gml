trigger = 3
stepfunc = function() //anon_gml_RoomCC_rm_testing_8_Create_27_gml_RoomCC_rm_testing_8_Create
{
    active = false
    if place_meeting(x, y, obj_baddie)
        active = true
    with (obj_player)
    {
        if (state == (55 << 0) && place_meeting(x, y, other))
            other.active = true
    }
}

