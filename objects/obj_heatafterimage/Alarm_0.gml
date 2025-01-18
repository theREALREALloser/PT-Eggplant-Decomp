x = obj_player1.x
y = obj_player1.y
if (global.stylethreshold < 2)
{
    visible = false
    is_visible = false
}
else
{
    visible = obj_player1.visible
    is_visible = true
}
if (place_meeting(x, y, obj_secretportal) || place_meeting(x, y, obj_secretportalstart))
    visible = false
if (room == rank_room)
    visible = false
if (global.stylethreshold == 2)
    alpha = 0.25
if (global.stylethreshold == 3)
    alpha = 0.5
Vspeed = random_range(-1, 1)
Hspeed = random_range(-1, 1)
alarm[0] = 10
visible = false
