for (var i = 0; i < array_length(objectlist); i++)
{
    var b = objectlist[i]
    with (instance_place(x, y, b))
    {
        create_particle(x, y, (9 << 0))
        instance_destroy()
    }
}
