if (!(ds_exists(tex_list, 2)))
    return;
var p = tex_max - ds_list_size(tex_list)
var t = p / tex_max * 100
draw_healthbar(0, 524, 960, 540, t, c_black, c_white, c_white, 0, false, false)
