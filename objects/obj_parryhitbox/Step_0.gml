var my_player = obj_player1.id
if (player_id == obj_banditochicken_dynamite)
    my_player = obj_player2.id
if (my_player.state != states.handstandjump && my_player.flash == false && my_player.state != states.parry_)
    instance_destroy()
image_xscale = my_player.xscale
x = my_player.x
y = my_player.y
