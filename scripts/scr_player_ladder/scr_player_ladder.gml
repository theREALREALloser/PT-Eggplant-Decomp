function scr_player_ladder() //scr_player_ladder
{
    jumpAnim = true
    dashAnim = true
    landAnim = false
    moveAnim = true
    stopAnim = true
    crouchslideAnim = true
    crouchAnim = false
    machhitAnim = false
    turning = false
    jumpstop = false
    movespeed = 0
    hsp = 0
    if (key_up && hooked == false)
    {
        sprite_index = spr_laddermove
        vsp = -6
        image_speed = 0.35
    }
    else if (key_down && hooked == false)
    {
        sprite_index = spr_ladderdown
        vsp = 10
        image_speed = -0.35
    }
    else
    {
        sprite_index = spr_Ladder
        vsp = 0
    }
    mach2 = 0
    jumpAnim = true
    dashAnim = true
    landAnim = false
    moveAnim = true
    stopAnim = true
    crouchslideAnim = true
    crouchAnim = true
    machhitAnim = false
    if ((!(place_meeting(x, y, obj_ladder))) && (!(place_meeting(x, y, obj_stairs))))
    {
        landAnim = false
        jumpAnim = false
        state = (0 << 0)
        image_index = 0
        vsp = 0
    }
    if key_jump
    {
        sprite_index = spr_jump
        ladderbuffer = 20
        jumpAnim = true
        state = (92 << 0)
        if key_down
            vsp = 5
        else
            vsp = -9
        image_index = 0
    }
    if (key_down && grounded && (!(place_meeting(x, y, obj_platform))))
    {
        state = (0 << 0)
        image_index = 0
    }
}

