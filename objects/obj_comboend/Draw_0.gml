var xx = obj_player1.x
var yy = obj_player1.y - 100
draw_sprite(spr_comboend, 0, xx, yy)
var title = floor(combo / 5)
title = clamp(title, 0, floor(sprite_get_number(spr_comboend_title1) / 5))
draw_sprite(spr_comboend_title1, (title * 2 + title_index), xx, (yy + 30))
draw_set_font(global.smallfont)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_text(xx, (yy + 60), comboscore)
