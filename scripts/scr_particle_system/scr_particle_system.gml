function declare_particle(argument0, argument1, argument2, argument3) //declare_particle
{
    ds_map_set(global.part_map, argument0, part_type_create())
    ds_map_set(global.part_depth, argument0, argument3)
    var p = ds_map_find_value(global.part_map, argument0)
    part_type_sprite(p, argument1, true, true, false)
    var t = sprite_get_number(argument1)
    var s = argument2
    var spd = t / s
    part_type_life(p, spd, spd)
    return p;
}

function particle_set_scale(argument0, argument1, argument2) //particle_set_scale
{
    part_type_scale(ds_map_find_value(global.part_map, argument0), argument1, argument2)
}

function create_debris(argument0, argument1, argument2, argument3) //create_debris
{
    if (argument3 == undefined)
        argument3 = false
    var q = 
    {
        x: argument0,
        y: argument1,
        sprite_index: argument2,
        image_number: sprite_get_number(argument2),
        image_index: irandom(image_number - 1),
        image_angle: random_range(1, 270),
        image_speed: 0.35,
        sprw: sprite_get_width(argument2),
        sprh: sprite_get_height(argument2),
        hsp: random_range(-4, 4),
        vsp: random_range(-4, 0),
        alpha: 1,
        grav: 0.4,
        type: (0 << 0),
        animated: argument3,
        destroyonanimation: false
    }

    ds_list_add(global.debris_list, q)
    return q;
}

function create_heatpuff(argument0, argument1) //create_heatpuff
{
    var q = create_debris(argument0, argument1, spr_heatpuff, true)
    q.grav = 0
    q.hsp = 0
    q.vsp = irandom_range(-4, -1)
    q.destroyonanimation = true
    return q;
}

function create_collect(argument0, argument1, argument2)
{
    argument0 -= camera_get_view_x(view_camera[0]);
    argument1 -= camera_get_view_y(view_camera[0]);
    var q = 
    {
        x: argument0,
        y: argument1,
        sprite_index: argument2,
        image_index: 0,
        image_number: sprite_get_number(argument2),
        hsp: 0,
        vsp: 0
    };
    ds_list_add(global.collect_list, q);
    return q;
}

function create_particle(argument0, argument1, argument2, argument3) //create_particle
{
    if (argument3 == undefined)
        argument3 = 0
    if (argument3 == undefined)
        argument3 = 0
    var _depth = ds_map_find_value(global.part_depth, argument2)
    if is_undefined(_depth)
        _depth = object_get_depth(object_index)
    part_system_depth(global.particle_system, _depth)
    part_emitter_region(global.particle_system, global.part_emitter, (argument0 - argument3), (argument0 + argument3), (argument1 - argument3), (argument1 + argument3), 0, 0)
    part_emitter_burst(global.particle_system, global.part_emitter, ds_map_find_value(global.part_map, argument2), 1)
}

