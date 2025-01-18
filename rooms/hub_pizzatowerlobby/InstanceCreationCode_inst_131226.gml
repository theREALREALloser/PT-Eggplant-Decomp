if (global.entrancecutscene == -4)
    global.entrancecutscene = quick_ini_read_real(get_savefile_ini(), "cutscene", "entrance", false)
if global.entrancecutscene
{
    destroy = false
    instance_destroy()
}
