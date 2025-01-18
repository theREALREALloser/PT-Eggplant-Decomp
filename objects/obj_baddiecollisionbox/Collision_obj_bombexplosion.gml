if (instance_exists(baddieID) && instance_exists(other.baddieID) && baddieID.object_index != obj_pizzagoblin && baddieID.object_index != obj_canongoblin && baddieID.object_index != obj_tank && baddieID.destroyable)
{
    instance_destroy(baddieID)
    instance_destroy()
}
