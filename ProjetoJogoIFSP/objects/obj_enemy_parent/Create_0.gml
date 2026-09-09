hp = 100;
max_hp = 100;

hit_timer = 0;

take_damage = function(damage, dir)
{
    hp -= damage;
    hit_timer = 30;
    global.hitstop = 4;

    if (dir != undefined)
    {
        kb_x += lengthdir_x(2 ,dir);
        kb_y += lengthdir_y(2, dir);
    }

    if (hp <= 0)
    {
        instance_destroy();
    }
};

kb_x = 0;
kb_y = 0;