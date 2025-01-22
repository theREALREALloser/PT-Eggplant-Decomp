var myplayer = obj_player1.id
if (player_id == obj_banditochicken_dynamite)
    myplayer = obj_player2.id
with (myplayer)
{
    state = states.parry_
    sprite_index = choose(spr_parry1, spr_parry2, spr_parry3)
    image_index = 0
    image_speed = 0.35
    taunttimer = 20
    movespeed = 8
    parry_inst = -4
    parry_count = parry_max
    with (instance_create(x, y, obj_parryeffect))
        image_xscale = other.xscale
    flash = true
}
alarm[0] = die_time
collisioned = true
