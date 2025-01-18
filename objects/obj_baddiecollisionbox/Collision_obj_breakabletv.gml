if (instance_exists(baddieID) && instance_exists(other.baddieID) && other.thrown == true && (!baddieID.instantkillable))
{
    instance_destroy(other)
    instance_destroy()
    instance_destroy(baddieID)
}
