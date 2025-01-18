if global.horse
    return;
with (obj_player)
{
    if (other.image_yscale == 1)
    {
        if (((key_down && (!(place_meeting(x, (y + 1), obj_destructibles))) && place_meeting(x, (y + 1), other) && (state == (100 << 0) || character == "S" || character == "M" || state == (65 << 0) || (state == (5 << 0) && sprite_index == spr_dive))) || ((state == (102 << 0) || state == (108 << 0) || state == (111 << 0) || (state == (5 << 0) && sprite_index == spr_machroll)) && (!(place_meeting(x, (y + 1), obj_destructibles))) && place_meeting(x, (y + 1), other))) && (!instance_exists(obj_fadeout)) && state != (112 << 0) && state != (95 << 0))
        {
            obj_player1.lastroom = room
            obj_player2.lastroom = room
            other.depth = -10
            scr_soundeffect(sfx_box)
            obj_player1.box = true
            obj_player2.box = true
            mach2 = 0
            obj_camera.chargecamera = 0
            x = other.x
            obj_player1.targetDoor = other.targetDoor
            obj_player1.targetRoom = other.targetRoom
            obj_player2.targetDoor = other.targetDoor
            obj_player2.targetRoom = other.targetRoom
            if (global.coop == true)
            {
                var _box = other.id
                with (obj_player)
                {
                    x = _box.x
                    y = _box.y - 76
                }
                obj_player1.sprite_index = obj_player1.spr_downpizzabox
                obj_player1.image_index = 0
                obj_player1.state = (112 << 0)
                obj_player2.sprite_index = obj_player2.spr_downpizzabox
                obj_player2.image_index = 0
                if (obj_player2.state != (186 << 0))
                    obj_player2.state = (112 << 0)
            }
            else
            {
                sprite_index = spr_downpizzabox
                image_index = 0
                state = (112 << 0)
            }
        }
    }
    if (other.image_yscale == -1)
    {
        if (((key_up && (!(place_meeting(x, (y - 1), obj_destructibles))) && place_meeting(x, (y - 10), other) && (state == (0 << 0) || state == (58 << 0) || state == (92 << 0) || state == (103 << 0) || state == (104 << 0) || state == (121 << 0) || state == (99 << 0) || (state == (80 << 0) && sprite_index == spr_player_breakdanceuppercut))) || ((state == (97 << 0) || state == (123 << 0)) && (!(place_meeting(x, (y - 1), obj_destructibles))) && place_meeting(x, (y - 1), other))) && (!instance_exists(obj_fadeout)) && state != (112 << 0) && state != (95 << 0))
        {
            obj_player1.lastroom = room
            obj_player2.lastroom = room
            scr_soundeffect(sfx_box)
            other.depth = -10
            obj_player1.box = true
            obj_player2.box = true
            other.depth = -8
            mach2 = 0
            obj_camera.chargecamera = 0
            x = other.x
            y = other.y + 24
            obj_player1.targetDoor = other.targetDoor
            obj_player1.targetRoom = other.targetRoom
            obj_player2.targetDoor = other.targetDoor
            obj_player2.targetRoom = other.targetRoom
            obj_player1.vsp = 0
            obj_player2.vsp = 0
            if (global.coop == true)
            {
                _box = other.id
                with (obj_player)
                {
                    x = _box.x
                    y = _box.y + 24
                }
                obj_player1.sprite_index = obj_player1.spr_uppizzabox
                obj_player1.image_index = 0
                obj_player1.state = (112 << 0)
                obj_player2.sprite_index = obj_player2.spr_uppizzabox
                obj_player2.image_index = 0
                if (obj_player2.state != (186 << 0))
                    obj_player2.state = (112 << 0)
            }
            else
            {
                sprite_index = spr_uppizzabox
                image_index = 0
                state = (112 << 0)
            }
        }
    }
}
if (place_meeting(x, (y + 1), obj_doorA) || place_meeting(x, (y - 1), obj_doorA))
    targetDoor = "A"
if (place_meeting(x, (y + 1), obj_doorB) || place_meeting(x, (y - 1), obj_doorB))
    targetDoor = "B"
if (place_meeting(x, (y + 1), obj_doorC) || place_meeting(x, (y - 1), obj_doorC))
    targetDoor = "C"
if (place_meeting(x, (y + 1), obj_doorD) || place_meeting(x, (y - 1), obj_doorD))
    targetDoor = "D"
if (place_meeting(x, (y + 1), obj_doorE) || place_meeting(x, (y - 1), obj_doorE))
    targetDoor = "E"
if (place_meeting(x, (y + 1), obj_doorF) || place_meeting(x, (y - 1), obj_doorF))
    targetDoor = "F"
