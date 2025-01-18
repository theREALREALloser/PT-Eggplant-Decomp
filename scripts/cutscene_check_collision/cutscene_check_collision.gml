function cutscene_check_collision(argument0, argument1) //cutscene_check_collision
{
    var obj1 = argument0
    var obj2 = argument1
    var finish = false
    with (obj1)
    {
        if place_meeting(x, y, obj2)
            finish = true
    }
    if finish
        cutscene_end_action()
}

