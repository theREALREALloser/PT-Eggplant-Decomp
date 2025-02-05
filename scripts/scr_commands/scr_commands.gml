function scr_do_command(argument0) //scr_do_command
{
    with (obj_editor)
    {
        while (undo > 1)
        {
            undo--
            var t = ds_list_size(commandlist) - undo
            ds_list_find_value(commandlist, t).OnDelete()
            ds_list_delete(commandlist, t)
        }
        argument0.Do()
        ds_list_add(commandlist, argument0)
    }
}

function scr_undo_command() //scr_undo_command
{
    if (!ds_list_empty(commandlist))
    {
        var b = ds_list_find_value(commandlist, (ds_list_size(commandlist) - undo))
        if (b.state == states.revolver)
        {
            b.Undo()
            b.state = states.normal
        }
        if (undo < ds_list_size(commandlist))
            undo++
    }
}

function scr_redo_command() //scr_redo_command
{
    if (!ds_list_empty(commandlist))
    {
        var b = ds_list_find_value(commandlist, (ds_list_size(commandlist) - undo))
        if (b.state == states.normal)
        {
            b.Do()
            b.state = states.revolver
        }
        if (undo > 1)
            undo--
    }
}

