function scr_room_updated(argument0) //scr_room_updated
{
    if (argument0 == room || (room == live_blank_room && live_live_room == argument0))
    {
        with (obj_player)
        {
            hallway = savedhallway
            hallwaydirection = savedhallwaydirection
            vhallwaydirection = savedvhallwaydirection
            verticalhallway = savedverticalhallway
        }
        self.room_goto_live(argument0)
    }
}

