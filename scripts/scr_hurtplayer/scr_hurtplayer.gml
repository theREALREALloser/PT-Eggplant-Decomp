function scr_hurtplayer(argument0) //scr_hurtplayer
{
    var _hurt = false
    with (argument0)
    {
        if global.failcutscene
        {
        }
        else if (state == (147 << 0) || state == (208 << 0) || state == (148 << 0) || state == (165 << 0))
        {
        }
        else if (state == (42 << 0) && flash == true)
        {
        }
        else if (state == (84 << 0) || state == (61 << 0))
        {
        }
        else if global.kungfu
        {
            if (state == (206 << 0))
            {
                if (sprite_index != spr_player_airattackstart)
                {
                    instance_create(x, y, obj_parryeffect)
                    image_index = 0
                }
                sprite_index = spr_player_airattackstart
                hsp = (-xscale) * 2
            }
            else if (state != (156 << 0) && state != (137 << 0) && (!hurted))
            {
                instance_create(x, y, obj_parryeffect)
                repeat (5)
                {
                    with (create_debris(x, y, spr_slapstar))
                        vsp = irandom_range(-6, -11)
                }
                hitLag = 3
                hitxscale = (x != other.x ? sign(other.x - x) : (-other.image_xscale))
                state = (137 << 0)
                hitstunned = 50
                hurted = true
                alarm[7] = hitstunned + 30
                hithsp = 12
                hitvsp = -5
                hitX = x
                hitY = y
                sprite_index = spr_hurt
                if (global.hp > 1)
                {
                    global.hp--
                    with (obj_camera)
                        healthshaketime = 60
                }
                else
                {
                    with (obj_music)
                        arena = false
                    global.kungfu = false
                    if (!instance_exists(obj_fadeout))
                    {
                        with (obj_player)
                            targetRoom = lastroom
                        instance_create(x, y, obj_fadeout)
                    }
                }
            }
        }
        else if isgustavo
        {
            if (!hurted)
            {
                state = (196 << 0)
                movespeed = 6
                vsp = -9
                flash = true
                scr_soundeffect(sfx_pephurt)
                alarm[8] = 100
                hurted = true
                instance_create(x, y, obj_spikehurteffect)
                _hurt = true
            }
        }
        else if (state == (70 << 0))
        {
        }
        else if ((state == (47 << 0) || state == (48 << 0) || state == (38 << 0) || state == (49 << 0)) && cutscene == false)
        {
        }
        else if (state == (16 << 0))
        {
        }
        else if (state == (17 << 0))
        {
            if (instance_exists(possessID) && object_get_parent(possessID) == 407)
            {
                state = (16 << 0)
                with (obj_baddie)
                {
                    if (is_controllable && state == (17 << 0) && playerid == other.id)
                        instance_destroy()
                }
            }
        }
        else if (state == (94 << 0))
        {
        }
        else if (state == (187 << 0))
        {
        }
        else if (state == (41 << 0))
        {
        }
        else if (state == (51 << 0) && hurted == false)
        {
        }
        else if (state == (31 << 0))
        {
        }
        else if (state == (94 << 0))
        {
        }
        else if (state == (33 << 0))
        {
            hsp = (-xscale) * 4
            vsp = -5
            state = (106 << 0)
            sprite_index = spr_bump
            alarm[5] = 2
            alarm[8] = 60
            alarm[7] = 120
            hurted = true
        }
        else if (pizzashield == true)
        {
            pizzashield = false
            with (instance_create(x, y, obj_sausageman_dead))
                sprite_index = spr_pizzashield_collectible
            hsp = (-xscale) * 4
            vsp = -5
            state = (106 << 0)
            sprite_index = spr_bump
            invhurt_buffer = 120
            alarm[8] = 60
            alarm[7] = 120
            hurted = true
            scr_soundeffect(sfx_pephurt)
        }
        else if (state != (107 << 0) && state != (196 << 0) && state != (4 << 0) && (hurted == false || state == (24 << 0) || state == (29 << 0) || state == (30 << 0)) && cutscene == false)
        {
            if (state == (11 << 0) || state == (14 << 0) || state == (12 << 0) || state == (13 << 0))
            {
                with (instance_create(x, y, obj_mortflyaway))
                    image_xscale = (-other.xscale)
            }
            if instance_exists(obj_hardmode)
                global.heatmeter_count = (global.heatmeter_threshold - 1) * global.heatmeter_threshold_count
            _hurt = true
            if (character == "V")
                global.playerhealth -= 25
            if (state == (113 << 0) || state == (115 << 0) || state == (114 << 0) || state == (116 << 0))
            {
                repeat (4)
                    create_debris(x, y, spr_barreldebris)
            }
            if global.kungfu
            {
                if (global.hp > 1)
                {
                    global.hp--
                    with (obj_camera)
                        healthshaketime = 60
                }
                else
                {
                    with (obj_music)
                        arena = false
                    global.kungfu = false
                    if (!instance_exists(obj_fadeout))
                    {
                        with (obj_player)
                            targetRoom = lastroom
                        instance_create(x, y, obj_fadeout)
                    }
                }
            }
            if (state == (4 << 0))
            {
                if (object_index == obj_player1)
                    y = obj_player2.y
                else
                    y = obj_player1.y
            }
            scr_soundeffect(sfx_pephurt)
            alarm[8] = 100
            alarm[7] = 50
            hurted = true
            if (xscale == other.image_xscale)
                sprite_index = spr_hurtjump
            else
                sprite_index = spr_hurt
            movespeed = 8
            vsp = -14
            timeuntilhpback = 300
            instance_create(x, y, obj_spikehurteffect)
            state = (107 << 0)
            image_index = 0
            flash = true
        }
        if _hurt
        {
            global.combotime -= 25
            global.style -= 25
            global.hurtcounter += 1
            var loseamount = 50 * (global.stylethreshold + 1)
            if (!global.pizzadelivery)
            {
                if (global.collect > loseamount)
                    global.collect -= loseamount
                else
                    global.collect = 0
                if (global.collect != 0)
                {
                    if (character == "P" || character == "V")
                    {
                        repeat (10)
                        {
                            with (instance_create(x, y, obj_pizzaloss))
                                sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
                        }
                    }
                    else
                    {
                        repeat (10)
                            instance_create(x, y, obj_pizzaloss)
                    }
                }
            }
        }
    }
}

