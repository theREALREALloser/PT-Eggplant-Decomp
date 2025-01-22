if (hurted == false && other.grounded == false && state != states.backbreaker && state != states.parry_)
{
    instance_destroy(other)
    instance_create(x, y, obj_canonexplosion)
}
