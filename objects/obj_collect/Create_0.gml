if (room == rm_editor)
    return;
with (other)
{
    if (obj_player1.character == "P" && obj_player1.spotlight == true && obj_player1.ispeppino)
        sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
    if ((obj_player1.character == "N" || (!obj_player1.ispeppino)) && obj_player1.spotlight == true)
        sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5)
    image_speed = 0.35
    global.collected = false
    global.collectsound = 0
}
if (obj_player.character == "S")
    sprite_index = spr_snickcollectible1
depth = 11
gotowardsplayer = false
movespeed = 5
