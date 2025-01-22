event_inherited()
object_list = -4
surface = -4
scroll_y = 0
scroll_ymax = 0
hovered_object = -1
OnSelect = function() //anon_gml_Object_obj_objectlist_Create_0_230_gml_Object_obj_objectlist_Create_0
{
    if (hovered_object >= 0 && object_list != -4)
    {
        obj_editor.object = ds_list_find_value(object_list, hovered_object)
        obj_editor.state = states.normal
        if (parent.OnDeselect != -4)
            parent.OnDeselect()
        selected = false
    }
}

