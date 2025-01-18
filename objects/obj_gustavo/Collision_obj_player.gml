if (sprite_index == spr_gustavo_showpizza)
{
    sprite_index = spr_gustavo_givepizza
    image_index = 0
    global.showgnomelist = true
    global.failcutscene = false
    global.pizzadelivery = true
    global.hp = 8
    state = (0 << 0)
    global.heattime = 60
}
