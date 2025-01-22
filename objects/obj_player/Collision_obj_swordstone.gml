if (grounded && other.sprite_index == spr_swordstone && (state == states.handstandjump || state == states.punch || state == states.lungeattack))
{
    transformationlives = 3
    scr_soundeffect(sfx_knightsword)
    global.SAGEknighttaken = true
    momentum = false
    movespeed = 0
    other.image_index = 1
    image_index = 0
    image_speed = 0.35
    sprite_index = spr_knightpepstart
    state = states.knightpep
    hsp = 0
    vsp = 0
    tv_push_prompt_once(tv_create_prompt("This is the knight transformation text", (2 << 0), 596, 3), "knight")
}
