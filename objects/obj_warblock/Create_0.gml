destroy = false
if (global.warcutscene == -4)
    global.warcutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "war", false)
if global.warcutscene
{
    destroy = false
    instance_destroy()
}
