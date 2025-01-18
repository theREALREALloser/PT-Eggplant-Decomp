function cutscene_wait(argument0) //cutscene_wait
{
    timer++
    if (timer >= argument0)
    {
        timer = 0
        cutscene_end_action()
    }
}

