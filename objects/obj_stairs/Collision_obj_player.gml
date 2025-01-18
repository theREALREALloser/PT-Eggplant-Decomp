with (other)
{
    if (key_up && ladderbuffer == 0 && (state == (0 << 0) || state == (58 << 0) || state == (104 << 0) || state == (121 << 0) || state == (103 << 0) || state == (57 << 0) || state == (92 << 0) || state == (60 << 0)) && state != (107 << 0) && state != (105 << 0) && state != (108 << 0) && state != (111 << 0))
    {
        mach2 = 0
        state = (93 << 0)
        y = floor(y)
        if ((y % 2) == 1)
            y -= 1
    }
}
