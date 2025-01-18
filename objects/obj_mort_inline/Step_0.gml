with (obj_player)
{
    if ((object_index != obj_player2 || global.coop) && state != (146 << 0) && (!instance_exists(obj_dialogcontroller)))
    {
        if ((other.dir > 0 && x > (other.x - 50)) || (other.dir < 0 && x < (other.x + 50)))
        {
            with (other)
            {
                scr_hurtplayer(other)
                waitforhurt = true
            }
        }
    }
}
if (waitforhurt && (!instance_exists(obj_dialogcontroller)))
{
    var b = false
    with (obj_player)
    {
        if (state == (107 << 0))
            b = true
    }
    if (!b)
    {
        waitforhurt = false
        dialog[0] = dialog_create("Becaw!")
        dialog[1] = dialog_create("You gotta wait in line sir.")
        do_dialog(dialog)
        dialog = -4
        warned = true
    }
}
