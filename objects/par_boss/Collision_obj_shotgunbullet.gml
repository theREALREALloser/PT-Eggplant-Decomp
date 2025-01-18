if (!attacking)
{
    if (!invincible)
    {
        self.boss_hurt_noplayer(30)
        if (hp <= 0)
            self.boss_destroy(lastplayerid)
    }
}
