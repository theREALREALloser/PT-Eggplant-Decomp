with (other)
{
    if (key_up && ladderbuffer == 0 && (state == states.normal || state == states.pogo || state == states.mach2 || state == states.mach3 || state == states.mach1 || state == states.shotgunjump || state == states.highjump) && state != states.hurt && state != states.machslide && state != states.freefall && state != states.freefallland)
    {
        state = states.ladder
        x = other.x + 16
        y = floor(y)
        if ((y % 2) == 1)
            y -= 1
    }
    if (key_up && ladderbuffer == 0 && (state == states.ratmountjump || state == states.ratmount))
    {
        state = states.ratmountladder
        if (brick == true)
        {
            with (instance_create(x, y, obj_brickcomeback))
            {
                wait = true
                instance_create(x, y, obj_genericpoofeffect)
            }
        }
        brick = false
        x = other.x + 16
        y = floor(y)
        if ((y % 2) == 1)
            y -= 1
    }
}
