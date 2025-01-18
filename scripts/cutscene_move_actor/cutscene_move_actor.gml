function cutscene_move_actor(argument0, argument1, argument2, argument3) //cutscene_move_actor
{
    var _obj = argument0
    var xx = argument1
    var yy = argument2
    var interp = argument3
    var finish = false
    with (_obj)
    {
        x = lerp(x, xx, interp)
        y = lerp(y, yy, interp)
        if (x > (xx - 6) && x < (xx + 6) && y > (yy - 6) && y < (yy + 6))
            finish = true
    }
    if finish
        cutscene_end_action()
}

