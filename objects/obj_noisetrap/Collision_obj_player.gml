if (collision && other.brick && other.isgustavo)
{
    instance_destroy()
    other.brick = false
    with (instance_create(x, y, obj_brickcomeback))
        trapped = true
}
