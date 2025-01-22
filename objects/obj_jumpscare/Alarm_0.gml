state++
if (state == states.revolver)
{
    scr_soundeffect(sfx_scream1, sfx_scream7, sfx_scream4)
    alarm[0] = 100
}
else if (state == states.dynamite)
    alarm[1] = 30
