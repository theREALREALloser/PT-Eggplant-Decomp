if ((!grabbed) && (other.state == (42 << 0) || other.state == (80 << 0) || other.state == (43 << 0)) && unpickable == false)
{
    instance_create((x + obj_player1.xscale * 40), y, obj_punchdust)
    with (other)
    {
        image_index = 0
        sprite_index = spr_haulingstart
        baddiegrabbedID = other.id
        grabbingenemy = true
        state = (79 << 0)
    }
    playerid = other.object_index
    grabbed = true
}
if ((!grabbed) && unpickable == false && (!ratgrabbed) && other.state == (193 << 0))
{
    ratplayerid = other.id
    ratgrabbed = true
    state = (205 << 0)
    other.ratgrabbedID = id
    other.state = (191 << 0)
}
