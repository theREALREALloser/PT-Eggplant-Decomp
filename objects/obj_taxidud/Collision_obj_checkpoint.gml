if (playerid.visible == false)
{
    global.hp = 8
    global.failcutscene = false
    with (obj_player1)
    {
        scr_soundeffect(sfx_taxi1)
        state = states.normal
        instance_create(x, y, obj_genericpoofeffect)
        cutscene = false
    }
    if (global.coop == true)
    {
        with (obj_player2)
        {
            state = states.normal
            cutscene = false
        }
    }
    obj_player1.visible = true
    obj_player2.visible = true
}
