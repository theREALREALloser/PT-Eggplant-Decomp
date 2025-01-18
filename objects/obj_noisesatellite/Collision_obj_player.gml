if (state != (4 << 0))
{
    with (obj_player)
    {
        if (y < other.y && attacking == false && state == (92 << 0) && vsp > 0)
        {
            if (vsp > 0)
            {
                other.hp = 0
                other.stunned = 200
                if (x != other.x)
                    other.image_xscale = (-(sign(other.x - x)))
                image_index = 0
                if key_jump2
                {
                    other.vsp = -5
                    other.hsp = (-other.image_xscale) * 3
                    instance_create(x, (y + 50), obj_stompeffect)
                    other.state = (138 << 0)
                    stompAnim = true
                    other.image_index = 0
                    vsp = -14
                    sprite_index = spr_player_stompprep
                }
                else
                {
                    other.vsp = -5
                    other.hsp = (-other.image_xscale) * 3
                    instance_create(x, (y + 50), obj_stompeffect)
                    other.state = (138 << 0)
                    stompAnim = true
                    other.image_index = 0
                    vsp = -9
                    sprite_index = spr_player_stompprep
                }
            }
        }
        if (state == (103 << 0))
        {
            instance_create(x, y, obj_bumpeffect)
            other.stunned = 40
            if (x != other.x)
                other.image_xscale = (-(sign(other.x - x)))
            other.vsp = -5
            other.hsp = (-other.image_xscale) * 3
            hsp = (-xscale) * 4
            vsp = -4
            machpunchAnim = true
            if (x != other.x)
                other.image_xscale = (-(sign(other.x - x)))
            other.state = (138 << 0)
            image_index = 0
            state = (91 << 0)
        }
        if (state == (104 << 0) && other.grounded == true)
        {
            other.hp = 0
            instance_create(x, y, obj_bumpeffect)
            other.vsp = -10
            other.hsp = xscale
            other.image_index = 0
            other.stunned = 200
            other.state = (138 << 0)
            machpunchAnim = true
            if ((!(scr_solid(x, (y + 1)))) && state != (108 << 0))
                vsp = -10
        }
        if (attacking == true && state != (104 << 0))
        {
            if (state == (121 << 0))
                other.shot = true
            image_index = 0
            instance_destroy(other)
            machpunchAnim = true
            if ((!(scr_solid(x, (y + 1)))) && state != (108 << 0))
                vsp = -10
        }
        if (attacking == false && state != (91 << 0) && state != (107 << 0) && (!(y < other.y)) && grabbing == false && other.state != (138 << 0))
        {
            if (x != other.x)
            {
                other.image_xscale = (-(sign(other.x - x)))
                xscale = (-(sign(x - other.x)))
            }
            hsp = (-xscale) * 4
            vsp = -4
            other.image_xscale = (-xscale)
            other.hsp = (-other.image_xscale) * 4
            other.vsp = -4
            if (other.state == (134 << 0) || other.state == (130 << 0))
                other.state = (126 << 0)
            image_index = 0
            state = (106 << 0)
            if (other.state == (136 << 0))
                other.state = (126 << 0)
        }
    }
}
