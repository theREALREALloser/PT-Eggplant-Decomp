function Command() constructor
{
    static Do = function()
    {
    };
    
    static Undo = function()
    {
    };
    
    static OnDelete = function()
    {
    };
    
    state = states.revolver;
}

function PlaceCommand(argument0, argument1, argument2) : Command() constructor
{
    static Do = function()
    {
        if (instance == -4)
        {
            instance = instance_create(snap_tile(x, 32) + object.place_xoffset, snap_tile(y, 32) + object.place_yoffset, obj_fakeobject);
            
            with (instance)
            {
                sprite_index = other.object.sprite_index;
                object = other.object.object_index;
            }
            
            with (obj_editor)
            {
                scr_editor_clear_selectedobjects();
                ds_list_add(selectedobjects, other.instance);
            }
        }
        else
        {
            instance_activate_object(instance);
        }
    };
    
    static Undo = function()
    {
        instance_deactivate_object(instance);
    };
    
    static OnDelete = function()
    {
        if (state == states.normal)
        {
            instance_activate_object(instance);
            instance_destroy(instance);
        }
    };
    
    x = argument0;
    y = argument1;
    object = argument2;
    instance = -4;
}
