if (fadealpha > 1)
{
    fadein = true
    if instance_exists(obj_player)
    {
        if (custom_level == false)
        {
            with (obj_player)
            {
                if place_meeting(x, y, obj_goldendoor)
                    game_restart()
            }
            if (room != obj_player1.targetRoom || roomreset)
            {
                scr_room_goto(obj_player1.targetRoom)
                with (obj_player)
                {
                    if (state == states.ejected || state == states.taxi2)
                    {
                        visible = true
                        state = states.normal
                    }
                }
            }
            if (global.coop == true)
            {
                if (room != obj_player2.targetRoom || roomreset)
                    scr_room_goto(obj_player1.targetRoom)
                with (obj_player)
                {
                    if (state == states.ejected)
                        state = states.normal
                }
                with (obj_player2)
                {
                    if instance_exists(obj_coopplayerfollow)
                        state = states.gotoplayer
                }
            }
        }
    }
}
if (fadein == false)
    fadealpha += 0.1
else if (fadein == true)
    fadealpha -= 0.1
if instance_exists(obj_player)
{
    with (obj_player1)
    {
        if (other.fadein == true && (obj_player1.state == states.door || obj_player1.state == states.victory) && (sprite_index == spr_victory || place_meeting(x, y, obj_door) || place_meeting(x, y, obj_startgate)))
        {
            state = states.comingoutdoor
            image_index = 0
            if (global.coop == true)
            {
                obj_player2.state = states.comingoutdoor
                obj_player2.image_index = 0
            }
        }
        if (other.fadein == true && obj_player1.state == states.door && (obj_player1.sprite_index == spr_downpizzabox || obj_player1.sprite_index == spr_uppizzabox))
        {
            state = states.crouchjump
            if (global.coop == true)
                obj_player2.state = states.crouchjump
        }
    }
    if instance_exists(obj_player2)
    {
        with (obj_player2)
        {
            if (other.fadein == true && (obj_player2.state == states.door || obj_player2.state == states.victory) && (place_meeting(x, y, obj_door) || place_meeting(x, y, obj_startgate)))
            {
                state = states.comingoutdoor
                image_index = 0
                if (global.coop == true)
                {
                    obj_player1.state = states.comingoutdoor
                    obj_player1.image_index = 0
                }
            }
            if (other.fadein == true && obj_player2.state == states.door && (obj_player2.sprite_index == spr_downpizzabox || obj_player2.sprite_index == spr_uppizzabox))
            {
                state = states.crouchjump
                if (global.coop == true)
                    obj_player1.state = states.crouchjump
            }
        }
    }
    with (obj_player2)
    {
        if instance_exists(obj_coopplayerfollow)
            state = states.gotoplayer
    }
}
if (fadein == true && fadealpha < 0)
    instance_destroy()
