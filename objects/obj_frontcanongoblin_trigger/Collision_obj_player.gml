if ((!active) && (!instance_exists(obj_frontcanongoblin)))
{
    active = true
    start = true
    instance_create(x, y, obj_frontcanongoblin)
    with (obj_frontcanongoblin_trigger)
        active = true
}
