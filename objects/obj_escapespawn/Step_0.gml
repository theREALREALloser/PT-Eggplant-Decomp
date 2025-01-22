switch state
{
    case states.normal:
        if (!global.panic)
        {
            visible = false
            instance_deactivate_object(baddieID)
            with (obj_baddiecollisionbox)
            {
                if (baddieID == other.baddieID)
                    instance_destroy()
            }
        }
        else
            state = states.revolver
        break
    case states.revolver:
        var p = instance_nearest(x, y, obj_player)
        visible = false
        image_index = 0
        if distance_to_pos(x, y, p.x, p.y, 500, 100)
        {
            state = states.dynamite
            visible = true
        }
        break
    case states.dynamite:
        if (floor(image_index) > 5)
        {
            instance_activate_object(baddieID)
            with (baddieID)
            {
                x = other.x
                y = other.y
                state = states.stun
                sprite_index = stunfallspr
                stunned = 20
                boundbox = false
                create_particle(x, y, (9 << 0))
            }
            state = states.boots
        }
        break
    case states.boots:
        if (floor(image_index) == (image_number - 1))
            visible = false
        break
}

