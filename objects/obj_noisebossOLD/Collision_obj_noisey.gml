if ((!invincible) && other.thrown)
{
    self.boss_hurt_noplayer(60)
    instance_destroy(other)
    if (other.hsp != 0)
    {
        targetxscale = (-sign(other.hsp))
        hithsp = sign(other.hsp) * 15
    }
    if (hp <= 0)
        self.boss_destroy(lastplayerid)
}
