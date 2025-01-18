if (state != (206 << 0))
{
    obj_player1.brick = false
    state = (206 << 0)
    sprite_index = spr_hamkuff_chain1
    state = (206 << 0)
    with (instance_create(other.x, other.y, obj_brickcomeback))
    {
        trapped = true
        baddieID = other.id
        other.playerid = id
    }
    instance_destroy(other, false)
}
