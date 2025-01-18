if (active && sprite_index != spr_secretportal_open && (!instance_exists(obj_jumpscare)) && ds_list_find_index(global.saveroom, id) == -1)
{
    if (sprite_index != spr_secretportal_close)
    {
        sprite_index = spr_secretportal_close
        image_index = 0
    }
    if (!touched)
    {
        if (!obj_music.secret)
        {
            obj_music.secret = true
            obj_music.secretend = false
        }
        else
        {
            obj_music.secretend = true
            obj_music.secret = false
        }
    }
    touched = true
    playerid = other.id
    other.x = x
    other.y = y - 30
    other.vsp = 0
    other.hsp = 0
    other.cutscene = true
    with (obj_heatafterimage)
        visible = false
}
