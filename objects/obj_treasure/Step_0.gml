if (player == obj_grindrailslope)
{
    if (got && obj_player1.state != (46 << 0))
        instance_destroy()
}
if (player == obj_banditochicken_dynamite)
{
    if (got && obj_player2.state != (46 << 0))
        instance_destroy()
}
if (player == obj_hardmode && place_meeting(x, y, obj_player))
{
    var num = instance_place_list(x, y, obj_player, global.instancelist, false)
    for (var i = 0; i < num; i++)
    {
        var _player = ds_list_find_value(global.instancelist, i)
        with (_player)
        {
            if (state != (186 << 0))
            {
                treasure_x = x
                treasure_y = y
                treasure_room = room
                global.combotime = 60
                if grounded
                {
                    ds_list_add(global.saveroom, other.id)
                    global.treasure = true
                    hsp = 0
                    vsp = 0
                    if (!other.got)
                    {
                        other.alarm[0] = 150
                        state = (46 << 0)
                        scr_soundeffect(sfx_secretfound)
                    }
                    other.got = true
                    other.x = x - 18
                    other.y = y - 35
                    other.effectid = instance_create((other.x + 18), other.y, obj_treasureeffect)
                    other.vsp = 0
                    obj_tv.showtext = true
                    obj_tv.message = "YOU GOT A TOWER SECRET TREASURE!!!"
                    obj_tv.alarm[0] = 200
                    other.player = (object_index == obj_player1 ? obj_grindrailslope : obj_banditochicken_dynamite)
                }
                ds_list_clear(global.instancelist)
            }
        }
    }
    ds_list_clear(global.instancelist)
}
