function scr_collide_destructibles()
{
    for (var i = 0; i < 2; i++)
    {
        var _obj_player = asset_get_index(concat("obj_player", i + 1));
        
        with (_obj_player)
        {
            if ((state == 92 && sprite_index == spr_playerN_noisebombspinjump) || state == 165 || state == 31 || state == 187 || state == 198 || (state == 58 && pogochargeactive == true))
            {
                with (instance_place(x + xscale, y, obj_destructibles))
                {
                    GamepadSetVibration(0, 0.8, 0.8, 0.5);
                    instance_destroy();
                }
                
                with (instance_place(x + hsp + xscale, y, obj_destructibles))
                {
                    GamepadSetVibration(0, 0.8, 0.8, 0.5);
                    instance_destroy();
                }
                
                with (instance_place(x, y + vsp + 1, obj_destructibles))
                {
                    GamepadSetVibration(0, 0.8, 0.8, 0.5);
                    instance_destroy();
                }
                
                with (instance_place(x, (y + vsp) - 1, obj_destructibles))
                {
                    GamepadSetVibration(0, 0.8, 0.8, 0.5);
                    instance_destroy();
                }
                
                with (instance_place(x, y + 1, obj_destructibles))
                {
                    GamepadSetVibration(0, 0.8, 0.8, 0.5);
                    instance_destroy();
                }
                
                with (instance_place(x, y - 1, obj_destructibles))
                {
                    GamepadSetVibration(0, 0.8, 0.8, 0.5);
                    instance_destroy();
                }
            }
            
            if (state == 5)
            {
                with (instance_place(x + xscale, y, obj_rollblock))
                    instance_destroy();
            }
            
            if (state == 121 && sprite_index == spr_player_fightball)
            {
                with (instance_place(x + xscale, y, obj_fightballblock))
                    instance_destroy();
            }
            
            if (state == 193 && place_meeting(x + hsp, y, obj_gustavodestroyable))
            {
                with (instance_place(x + hsp, y, obj_gustavodestroyable))
                {
                    GamepadSetVibration(0, 0.8, 0.8, 0.5);
                    instance_destroy();
                }
            }
            
            if (state == 211 || state == 34 || ratmount_movespeed == 12 || state == 259 || state == 201 || state == 80 || state == 42 || state == 193 || state == 43 || state == 21 || state == 53 || state == 184 || state == 70 || state == 124 || state == 94 || state == 20 || sprite_index == spr_barrelroll || state == 41 || state == 121 || state == 47 || state == 65 || state == 38 || state == 48 || state == 5 || state == 19 || state == 153)
            {
                if (place_meeting(x + hsp, y, obj_destructibles))
                {
                    if (character != "V")
                    {
                        with (instance_place(x + hsp, y, obj_destructibles))
                        {
                            GamepadSetVibration(0, 0.8, 0.8, 0.5);
                            instance_destroy();
                        }
                        
                        if (state == 104)
                            machpunchAnim = true;
                    }
                }
            }
            
            if (state == 107 && thrown == true)
            {
                if (place_meeting(x - hsp, y, obj_destructibles))
                {
                    with (instance_place(x - hsp, y, obj_destructibles))
                    {
                        GamepadSetVibration(0, 0.8, 0.8, 0.5);
                        instance_destroy();
                    }
                }
            }
            
            if ((state == 47 || sprite_index == spr_lonegustavo_groundpoundstart || sprite_index == spr_lonegustavo_groundpound || state == 254 || state == 10 || state == 165 || state == 76 || state == 19 || (state == 54 && bombup_dir == 1)) && vsp > 0)
            {
                if (place_meeting(x, y + 1, obj_destructibles))
                {
                    with (instance_place(x, y + 1, obj_destructibles))
                    {
                        GamepadSetVibration(0, 0.8, 0.8, 0.5);
                        instance_destroy();
                    }
                    
                    if (state == 10 || state == 254)
                    {
                        with (instance_place(x, y + 1, obj_tntblock))
                        {
                            GamepadSetVibration(0, 0.8, 0.8, 0.5);
                            instance_destroy();
                        }
                        
                        if (vsp > -11)
                            vsp = -11;
                        
                        jumpstop = false;
                    }
                }
            }
            
            var num = instance_place_list(x, y + 1, 592, global.instancelist, false);
            
            for (var k = 0; k < num; k++)
            {
                with (ds_list_find_value(global.instancelist, k))
                {
                    falling = true;
                    
                    if (falling == true)
                        image_speed = 0.35;
                }
            }
            
            ds_list_clear(global.instancelist);
            
            if (vsp <= 0.5 && (state == 92 || state == 192 || state == 121 || state == 104 || state == 265 || state == 58 || (state == 54 && bombup_dir == -1) || state == 80 || state == 37 || state == 9 || state == 97 || state == 22 || state == 121 || (state == 80 && (sprite_index == spr_player_breakdanceuppercut || sprite_index == spr_player_breakdanceuppercutend))))
            {
                var vy = -1;
                
                if (state == 80 && (sprite_index == spr_player_breakdanceuppercut || sprite_index == spr_player_breakdanceuppercutend))
                    vy = vsp;
                
                if (place_meeting(x, y + vy, obj_destructibles))
                {
                    with (instance_place(x, y + vy, obj_destructibles))
                    {
                        GamepadSetVibration(0, 0.6, 0.6, 0.5);
                        instance_destroy();
                        
                        with (other)
                        {
                            if (state != 97 && state != 80 && state != 37)
                                vsp = 0;
                            
                            if (state == 97)
                                vsp = -11;
                        }
                    }
                }
            }
            
            if (vsp >= 0 && (state == 108 || state == 76 || state == 111 || state == 197 || (state == 165 && vsp >= 10)))
            {
                if (place_meeting(x, y + vsp + 2, obj_destructibles))
                {
                    with (instance_place(x, y + vsp + 2, obj_destructibles))
                    {
                        with (_obj_player)
                        {
                            if (place_meeting(x, y + vsp + 2, obj_bigdestructibles))
                            {
                                var _inst = instance_place(x, y + vsp + 2, obj_bigdestructibles);
                                
                                if (instance_exists(_inst))
                                {
                                    var j = 0;
                                    var _max = 256;
                                    
                                    while (!place_meeting(x, y + 1, obj_bigdestructibles))
                                    {
                                        y += 1;
                                        j++;
                                        
                                        if (j >= _max)
                                            break;
                                    }
                                }
                                
                                if (freefallsmash <= 10 && state != 165 && !isgustavo)
                                {
                                    if (shotgunAnim == false)
                                        sprite_index = spr_bodyslamland;
                                    else
                                        sprite_index = spr_shotgunjump2;
                                    
                                    state = 111;
                                    image_index = 0;
                                }
                            }
                        }
                        
                        instance_destroy();
                    }
                }
            }
            
            if (state == 108 || state == 111 || state == 165)
            {
                if (place_meeting(x, y + 1, obj_metalblock) && (freefallsmash >= 10 || state == 165))
                {
                    with (instance_place(x, y + 1, obj_metalblock))
                        instance_destroy();
                }
            }
            
            if (state == 102 || state == 65 || state == 104 || state == 80)
            {
                with (obj_destructibles)
                {
                    if (place_meeting(x - _obj_player.hsp, y, _obj_player))
                    {
                        var _destroyed = false;
                        
                        with (_obj_player)
                        {
                            if (place_meeting(x + hsp, y, obj_bigdestructibles) && state != 102 && state != 104 && state != 65)
                            {
                                state = 6;
                                sprite_index = spr_player_lungehit;
                                image_index = 0;
                                instance_destroy(other);
                                _destroyed = true;
                            }
                            else if (other.object_index != obj_bigdestructibles)
                            {
                                instance_destroy(other);
                                _destroyed = true;
                            }
                            
                            if (_destroyed && state == 43)
                                hit_connected = true;
                        }
                    }
                }
            }
        }
    }
}
