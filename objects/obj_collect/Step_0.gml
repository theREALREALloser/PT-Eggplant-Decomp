if (room == rm_editor)
    return;
if (global.collectsound < 10)
    global.collectsound += 1
if (global.timeattack == true)
    instance_destroy()
if place_meeting(x, y, obj_destructibles)
    depth = 102
else
    depth = 2
if (abs(distance_to_object(obj_player1)) < 25 && (!(place_meeting(x, y, obj_destructibles))) && (!(place_meeting(x, y, obj_iceblock))))
{
    if (!gotowardsplayer)
        scr_ghostcollectible()
    gotowardsplayer = true
}
if (gotowardsplayer == true)
{
    move_towards_point(obj_player.x, obj_player.y, movespeed)
    movespeed++
}
