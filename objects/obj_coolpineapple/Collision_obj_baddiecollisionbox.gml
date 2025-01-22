if (state != states.parry_ && state != states.backbreaker)
    return;
var my_id = id
var other_baddie = other.id
var can_parry = false
with (other_baddie)
{
    if (instance_exists(baddieID) && baddieID.thrown == true && baddieID != other.id)
        can_parry = true
}
if (can_parry && state != states.parry_ && other.baddieID != id)
{
    sprite_index = parryspr
    movespeed = 8
    state = states.parry_
    image_index = 0
}
