hp = 100;
max_hp = 100;

hit_timer = 0;

take_damage = function(damage)
{
    hp -= damage;
    hit_timer = 30;

    if (hp <= 0)
    {
        instance_destroy();
    }
};