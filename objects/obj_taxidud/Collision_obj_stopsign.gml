if (playerid.visible == false)
{
    with (obj_player1)
    {
        scr_soundeffect(sfx_taxi1)
        if isgustavo
            state = (191 << 0)
        else
            state = (0 << 0)
        instance_create(x, y, obj_genericpoofeffect)
        cutscene = false
    }
    if (global.coop == true)
    {
        with (obj_player2)
        {
            state = (0 << 0)
            cutscene = false
        }
    }
    obj_player1.visible = true
    obj_player2.visible = true
}
