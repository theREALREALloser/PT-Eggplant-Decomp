if (state != states.throwing && (other.hsp != 0 || other.thrown || other.state == states.tumble))
{
    pizzaball = true
    golfid = other.id
    shot = false
    state = states.throwing
    sprite_index = spr_bigcheese_walk
    image_index = 0
}
