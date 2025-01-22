function cutscene_taxi_end(argument0, argument1) //cutscene_taxi_end
{
    var player = argument0
    var target_room = argument1
    with (player)
    {
        var handler = other
        cutscene = true
        state = states.actor
        if (grounded && state != states.hurt)
        {
            hsp = 0
            vsp = 0
            with (instance_create((x - 1000), y, obj_taxi_cutscene))
            {
                targetplayer = player
                depth = -127
                targetDoor = "E"
                targetRoom = target_room
            }
            with (handler)
            {
                global.failcutscene = true
                cutscene_end_action()
            }
        }
    }
}

