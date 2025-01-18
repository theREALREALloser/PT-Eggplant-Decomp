if (parryable && other.state == (84 << 0) && other.parry_inst != -4)
    return;
self.player_hurt(dmg, other.id)
