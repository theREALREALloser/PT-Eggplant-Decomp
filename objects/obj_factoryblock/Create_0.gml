destroy = false
if (global.factoryblock == -4)
    global.factoryblock = quick_ini_read_real(get_savefile_ini(), "cutscene", "factoryblock", false)
if global.factoryblock
{
    destroy = false
    instance_destroy()
}
