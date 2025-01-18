switch state
{
    case (126 << 0):
        scr_enemy_idle()
        break
    case (130 << 0):
        scr_enemy_turn()
        break
    case (134 << 0):
        scr_enemy_walk()
        break
    case (136 << 0):
        scr_enemy_land()
        break
    case (137 << 0):
        scr_enemy_hit()
        break
    case (138 << 0):
        scr_enemy_stun()
        break
    case (4 << 0):
        scr_enemy_grabbed()
        break
}

if (state == (138 << 0) && stunned > 40 && birdcreated == false)
{
    birdcreated = true
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != (138 << 0))
    birdcreated = false
if (hp <= 0)
    instance_destroy()
if (cigar == true)
{
    landspr = spr_sausageman_land
    idlespr = spr_sausageman_idle
    fallspr = spr_sausageman_fall
    hitceillingspr = spr_sausageman_hitceilling
    stunfalltransspr = spr_sausageman_stunfalltrans
    hitwallspr = spr_sausageman_hitwall
    stunfallspr = spr_sausageman_stunfall
    rollingspr = spr_sausageman_rolling
    walkspr = spr_sausageman_walk
    turnspr = spr_sausageman_turn
    flyingspr = spr_sausageman_flying
    hitspr = spr_sausageman_hit
    stunlandspr = spr_sausageman_stunland
    stunspr = spr_sausageman_stun
    recoveryspr = spr_sausageman_recovery
    stompedspr = spr_sausageman_stomped
    grabbedspr = spr_sausageman_grabbed
}
if (cigar == false)
{
    landspr = spr_sausagemannocigar_land
    idlespr = spr_sausagemannocigar_idle
    fallspr = spr_sausagemannocigar_fall
    hitceillingspr = spr_sausagemannocigar_hitceilling
    stunfalltransspr = spr_sausagemannocigar_stunfalltrans
    hitwallspr = spr_sausagemannocigar_hitwall
    stunfallspr = spr_sausagemannocigar_stunfall
    rollingspr = spr_sausagemannocigar_rolling
    walkspr = spr_sausagemannocigar_walk
    turnspr = spr_sausagemannocigar_turn
    flyingspr = spr_sausagemannocigar_flying
    hitspr = spr_sausagemannocigar_hit
    stunlandspr = spr_sausagemannocigar_stunland
    stunspr = spr_sausagemannocigar_stun
    recoveryspr = spr_sausagemannocigar_recovery
    stompedspr = spr_sausagemannocigar_stomped
    grabbedspr = spr_sausagemannocigar_grabbed
}
if (cigar == true && cigarcreate == false && (state == (126 << 0) || state == (134 << 0) || state == (130 << 0) || state == (136 << 0)))
{
    cigarcreate = true
    with (instance_create(x, y, obj_sausagemancigar))
        ID = other.id
}
if (state != (4 << 0))
    depth = 0
if (state != (138 << 0))
    thrown = false
if (flash == true && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed
