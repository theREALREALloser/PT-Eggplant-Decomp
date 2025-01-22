var p = noone
if (player == obj_grindrailslope)
    p = obj_player1.id
else if (player == obj_banditochicken_dynamite)
    p = obj_player2.id
p.state = states.normal
