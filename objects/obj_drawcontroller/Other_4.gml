if (room != kidsparty_entrance1)
{
    var roomname = room_get_name(room)
    roomname = string_letters(roomname)
    if (roomname == "kidspartyfloor" || roomname == "kidspartyentrance")
    {
        kidsparty_lightning = true
        dark_lightning = false
    }
    else
    {
        kidsparty_lightning = false
        dark_lightning = false
    }
}
else
{
    kidsparty_lightning = false
    dark_lightning = false
}
if (room == dungeon_5 || room == dungeon_6)
{
    use_dark = true
    for (var i = 0; i < array_length(dark_arr); i++)
        layer_shader(dark_arr[i], 5)
}
else
    use_dark = false
