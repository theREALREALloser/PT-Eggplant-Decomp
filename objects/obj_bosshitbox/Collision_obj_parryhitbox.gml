if (!parryable)
    return;
self.parry()
with (other)
{
    if (!collisioned)
        event_user(0)
}
