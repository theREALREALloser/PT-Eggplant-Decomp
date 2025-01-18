if (global.spaceblockswitch == true)
{
    x = -100
    y = -100
    sprite_index = spr_spaceblock_open
    image_alpha = 0.5
}
else if (global.spaceblockswitch == false && (x != xstart || sprite_index != spr_spaceblock_closed) && (!(place_meeting(xstart, ystart, obj_player))) && (!(place_meeting(xstart, ystart, obj_baddie))) && (!(place_meeting(xstart, ystart, obj_clownmato))))
{
    mask_index = spr_spaceblock_closed
    sprite_index = spr_spaceblock_closed
    x = xstart
    y = ystart
    image_alpha = 1
}
