function scr_editor_update_buttons() //scr_editor_update_buttons
{
    button = noone
    with (obj_button)
    {
        if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), self)
        {
            other.button = id
            hovered = true
        }
        else
            hovered = false
    }
    with (button)
        other.info = info
    if (button == noone)
        info = -4
    if key_mbleft2
    {
        if (button != noone)
        {
            with (obj_button)
            {
                if (id == other.button)
                {
                    if (!selected)
                    {
                        selected = true
                        if (OnSelect != -4)
                            self.OnSelect()
                    }
                    else
                    {
                        selected = false
                        if (OnDeselect != -4)
                            self.OnDeselect()
                    }
                }
                else if (other.button.parent != id)
                {
                    if selected
                    {
                        if (OnDeselect != -4)
                            self.OnDeselect()
                    }
                    selected = false
                }
            }
        }
        else
        {
            with (obj_button)
            {
                if selected
                {
                    if (OnDeselect != -4)
                        self.OnDeselect()
                }
                selected = false
            }
        }
    }
}

