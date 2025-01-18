function cutscene_taxi_start(argument0) //cutscene_taxi_start
{
    var player = argument0
    with (player)
    {
        global.failcutscene = true
        global.showgnomelist = false
        state = (146 << 0)
        cutscene = true
        image_speed = 0.5
        sprite_index = spr_player_outofpizza1
        image_index = 0
        vsp = -14
        image_speed = 0.35
    }
    cutscene_end_action()
}

