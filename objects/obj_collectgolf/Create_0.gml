if (room == rm_editor)
    return;
with (other)
{
    image_speed = 0.35
    global.collected = false
    global.collectsound = sfx_cheesejump
}
if (obj_player.character == "S")
    sprite_index = spr_snickcollectible1
depth = 11
