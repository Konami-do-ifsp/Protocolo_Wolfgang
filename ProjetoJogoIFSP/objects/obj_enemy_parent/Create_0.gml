hp = 100;
flash_timer = 0;
hit_timer = 0;
stun = 0;
wind = 0;
kb_x = 0;
kb_y = 0;
mv_x = 0;
mv_y = 0;
can_attack = true;
atk_damage = 2;

take_damage = function(damage, dir)
{
    hp -= damage;
    hit_timer = 30; flash_timer = 15; stun = 12; wind = 0;
    global.hitstop = 4;

    var _n = instance_create_depth(x, bbox_top, -6000, obj_damage_number);
    _n.txt = string(damage);

    if (dir != undefined) { kb_x += lengthdir_x(4, dir); kb_y += lengthdir_y(4, dir); }

    if (hp > 0) return;

    global.hitstop = 7;
    repeat (10)
    {
        var _b = instance_create_layer(x, y, "Instances", obj_blood);
        _b.dir = ((dir != undefined) ? dir : random(360)) + random_range(-90, 90);
    }
    with (obj_camera) { shake = 1; shake_time = 6; shake_fade = 1; }
	if (instance_exists(obj_player))
	{
	    var _chance = 0.25;
	    if (obj_player.hp <= 4) _chance = 0.6;

	    if (random(1) < _chance) instance_create_layer(x, y, "Instances", obj_cura);
	}
    instance_destroy();
};

hit_player = function(_dir)
{
    with (obj_player)
    {
        hp -= other.atk_damage;
        kb_x += lengthdir_x(5, _dir);
        kb_y += lengthdir_y(5, _dir);
        flash_timer = 20; invencible = true; inv_timer = 30;
    }

    with (obj_camera) { shake = 3; shake_time = 6; shake_fade = 1; }
    audio_play_sound(snd_player_hitted, 1, false);
    global.hitstop = 4;

    can_attack = false;
    alarm[0] = 30;
    kb_x -= lengthdir_x(1.5, _dir);
    kb_y -= lengthdir_y(1.5, _dir);
};

update_attack = function(_range)
{
    if (!instance_exists(obj_player)) { wind = 0; return; }

    var _livre = !obj_player.invencible && obj_player.hp > 0;
    var _d = point_distance(x, y, obj_player.x, obj_player.y);

    if (wind == 0 && stun <= 0 && can_attack && _d <= _range && _livre) wind = 10;

    if (wind > 0 && --wind == 0 && _d <= _range + 6 && _livre)
        hit_player(point_direction(x, y, obj_player.x, obj_player.y));
};