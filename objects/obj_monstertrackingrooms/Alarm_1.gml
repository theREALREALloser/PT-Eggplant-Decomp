var blob_pos = monster_pos[1]
if (self.room_place(blob_pos.x, blob_pos.y) != room_get_name(room))
{
    var _h = monster_dir[1].x
    if (_h == 0)
        _h = choose(-1, 1)
    if (sound_pos.x != -1 && sound_pos.y != -1 && sound_pos.y == blob_pos.y && blob_pos.x != sound_pos.x)
        _h = (sound_pos.x < blob_pos.x ? -1 : 1)
    if self.grid_meeting((blob_pos.x + _h), blob_pos.y)
        blob_pos.x += _h
    else
        _h *= -1
    monster_dir[1].x = _h
    if (self.room_place(blob_pos.x, blob_pos.y) == room_get_name(room))
        self.blob_create(true, false)
    if (sound_pos.x == blob_pos.x && sound_pos.y == blob_pos.y)
    {
        sound_buffer = 0
        with (obj_blobmonster)
        {
            investigatestate = 0
            state = (221 << 0)
        }
    }
}
