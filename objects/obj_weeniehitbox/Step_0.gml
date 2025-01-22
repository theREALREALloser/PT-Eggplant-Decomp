if ((!instance_exists(baddieID)) || baddieID.state != states.tumble)
{
    instance_destroy()
    return;
}
x = baddieID.x
y = baddieID.y
image_xscale = baddieID.image_xscale
