if (room == rm_editor || room == custom_lvl_room)
    return;
if (ds_list_find_index(global.saveroom, id) != -1)
    instance_destroy()
