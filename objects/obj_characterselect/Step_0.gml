image_speed = 0.35
if ((obj_player1.key_right2 || (-obj_player2.key_left2)) && selected == 0 && ready == false)
{
    selected += 1
    scr_soundeffect(sfx_step)
}
if (((-obj_player1.key_left2) || obj_player2.key_right2) && selected == 1 && ready == false)
{
    selected -= 1
    scr_soundeffect(sfx_step)
}
if (obj_player1.key_jump && selected == 0 && obj_peppinoselect.sprite_index != spr_peppinoselected)
{
    ready = true
    scr_soundeffect(sfx_collecttoppin)
    obj_peppinoselect.sprite_index = spr_peppinoselected
    obj_peppinoselect.image_index = 0
    with (obj_player1)
    {
        character = "P"
        ispeppino = true
        scr_characterspr()
    }
    with (obj_player2)
    {
        character = "P"
        ispeppino = false
        scr_characterspr()
        if (global.coop == true)
        {
            obj_noiseselect.sprite_index = spr_noiseselected
            obj_noiseselect.image_index = 0
        }
    }
    alarm[0] = 100
}
if (obj_player1.key_jump && selected == 1 && obj_noiseselect.sprite_index != spr_noiseselected)
{
    ready = true
    scr_soundeffect(sfx_collecttoppin)
    obj_noiseselect.sprite_index = spr_noiseselected
    obj_noiseselect.image_index = 0
    with (obj_player1)
    {
        character = "P"
        ispeppino = false
        scr_characterspr()
    }
    with (obj_player2)
    {
        character = "P"
        ispeppino = true
        scr_characterspr()
        if (global.coop == true)
        {
            obj_peppinoselect.sprite_index = spr_peppinoselected
            obj_peppinoselect.image_index = 0
        }
    }
    alarm[0] = 100
}
