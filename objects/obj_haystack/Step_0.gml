mask_index = spr_haystack
if (sprite_index != spr_haystackburning && sprite_index != spr_haystackburningup)
{
    with (obj_peasanto)
    {
        if (state == (128 << 0) && place_meeting((x + hsp), y, other))
            other.sprite_index = spr_haystackburningup
    }
    with (obj_player)
    {
        if ((state == (10 << 0) && (place_meeting((x + hsp), y, other) || place_meeting(x, (y + 1), other))) || (state == (9 << 0) && place_meeting(x, (y + 1), other)))
            other.sprite_index = spr_haystackburningup
    }
}
else if (sprite_index == spr_haystackburningup)
{
    if (floor(image_index) == (image_number - 1))
        sprite_index = spr_haystackburning
}
else if (sprite_index == spr_haystackburning)
{
    with (instance_place((x + 1), y, obj_haystack))
    {
        if (sprite_index != spr_haystackburningup && sprite_index != spr_haystackburning)
            sprite_index = spr_haystackburningup
    }
    with (instance_place((x - 1), y, obj_haystack))
    {
        if (sprite_index != spr_haystackburningup && sprite_index != spr_haystackburning)
            sprite_index = spr_haystackburningup
    }
    with (instance_place(x, (y + 1), obj_haystack))
    {
        if (sprite_index != spr_haystackburningup && sprite_index != spr_haystackburning)
            sprite_index = spr_haystackburningup
    }
    with (instance_place(x, (y - 1), obj_haystack))
    {
        if (sprite_index != spr_haystackburningup && sprite_index != spr_haystackburning)
            sprite_index = spr_haystackburningup
    }
    with (instance_place(x, (y - 1), obj_baddie))
    {
        if (state != (4 << 0))
            instance_destroy()
    }
    if (ds_list_find_index(global.saveroom, id) == -1)
        ds_list_add(global.saveroom, id)
    if (firetimer > 0 && sprite_index == spr_haystackburning && firetimeinf == false)
        firetimer--
    if (firetimer <= 0 && sprite_index == spr_haystackburning && firetimeinf == false)
    {
        sprite_index = spr_haystack
        firetimer = 200
    }
    playerid = instance_place(x, (y - 1), obj_player)
    with (playerid)
    {
        if (state != (9 << 0) && state != (47 << 0))
        {
            if (character == "V")
                scr_hurtplayer(id)
            else if scr_transformationcheck()
            {
                scr_losepoints()
                scr_soundeffect(sfx_scream3)
                if (state != (9 << 0))
                    tv_push_prompt_once(tv_create_prompt("This is the fireass transformation text", (2 << 0), 550, 3), "fireass")
                state = (9 << 0)
                image_index = 0
                vsp = -5
                sprite_index = spr_fireass
            }
        }
    }
}
if (state == (8 << 0))
{
    hsp = movespeed * dir
    if (place_meeting((x + sign(hsp)), y, obj_solid) && ((!(place_meeting((x + sign(hsp)), y, obj_slope))) || place_meeting((x + sign(hsp)), (y - 4), obj_solid)))
        x_to = x
    if ((dir > 0 && x >= x_to) || (dir < 0 && x <= x_to))
    {
        x = x_to
        hsp = 0
        state = (0 << 0)
    }
}
