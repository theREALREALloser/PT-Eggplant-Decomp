if (other.state != (61 << 0))
{
    repeat (8)
    {
        with (create_debris(x, y, spr_slimedebris))
        {
            vsp = random_range(-5, 0)
            hsp = random_range(-3, 3)
        }
    }
    if (other.state != (24 << 0))
        tv_push_prompt_once(tv_create_prompt("This is the cheese transformation text", (2 << 0), 2457, 3), "cheesepep")
    other.state = (24 << 0)
    other.movespeed = 0
    other.sprite_index = other.spr_cheesepepintro
    instance_destroy()
}
