if (sprite_index == spr_gustavoswitch2 && floor(image_index) == (image_number - 1))
{
    with (obj_player1)
    {
        visible = true
        create_particle(x, y, (9 << 0))
        ratmount_movespeed = 8
        gustavodash = 0
        isgustavo = true
        state = (191 << 0)
        brick = true
        x = obj_gustavoswitch.x
        y = obj_gustavoswitch.y
        global.switchbuffer = 100
    }
    sprite_index = spr_pepsign
}
