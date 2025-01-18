function scr_player_crouchjump() //scr_player_crouchjump
{
    move = key_left + key_right
    mask_index = spr_crouchmask
    hsp = move * movespeed
    movespeed = 4
    if ((!key_jump2) && jumpstop == false && jumpAnim == true)
    {
        vsp /= 2
        jumpstop = true
    }
    if (scr_solid(x, (y - 1)) && jumpstop == false && jumpAnim == true)
    {
        vsp = grav
        jumpstop = true
    }
    if grounded
    {
        state = (100 << 0)
        jumpAnim = true
        crouchAnim = true
        image_index = 0
        jumpstop = false
        scr_soundeffect(sfx_step)
    }
    if (jumpAnim == true)
    {
        if (shotgunAnim == false)
            sprite_index = spr_crouchjump
        else
            sprite_index = spr_crouchjump
        if (floor(image_index) == (image_number - 1))
            jumpAnim = false
    }
    if (jumpAnim == false)
    {
        if (shotgunAnim == false)
            sprite_index = spr_crouchfall
        else
            sprite_index = spr_crouchfall
    }
    if (move != 0)
        xscale = move
    image_speed = 0.35
}

