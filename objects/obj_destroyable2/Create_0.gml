global.breaksound = sfx_cheesejump
if (obj_player1.character == "P" && obj_player1.spotlight == true && obj_player1.ispeppino)
    sprite_index = spr_destroyable2
if ((obj_player1.character == "N" || (!obj_player1.ispeppino)) && obj_player1.spotlight == true)
    sprite_index = spr_halloweensmallblock
image_index = random_range(0, (image_number - 1))
depth = 1
