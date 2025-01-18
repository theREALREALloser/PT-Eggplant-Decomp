if (instance_exists(baddieID) && instance_exists(other.baddieID) && baddieID.instantkillable && baddieID.destroyable)
{
    instance_destroy(baddieID)
    instance_destroy()
}
