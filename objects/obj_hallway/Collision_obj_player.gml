if (obj_player1.state == states.debugstate)
    return;
with (other)
{
    x = other.x
    y = other.y + (other.sprite_height - 46)
    if (!instance_exists(obj_fadeout))
    {
        obj_player1.lastroom = room
        obj_player2.lastroom = room
        obj_player1.targetDoor = other.targetDoor
        obj_player1.targetRoom = other.targetRoom
        obj_player1.hallway = true
        obj_player1.hallwaydirection = other.image_xscale
        if instance_exists(obj_player2)
        {
            obj_player2.targetDoor = other.targetDoor
            obj_player2.targetRoom = other.targetRoom
            obj_player2.hallway = true
            obj_player2.hallwaydirection = other.image_xscale
        }
        other.visited = true
        scr_soundeffect(sfx_door)
        instance_create(x, y, obj_fadeout)
    }
}
