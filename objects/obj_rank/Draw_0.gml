shader_set(global.Pal_Shader)
if (global.collect >= global.collectN)
    pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, false)
if (global.collectN > global.collect)
    pal_swap_set(obj_player2.spr_palette, obj_player2.paletteselect, false)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
shader_reset()
