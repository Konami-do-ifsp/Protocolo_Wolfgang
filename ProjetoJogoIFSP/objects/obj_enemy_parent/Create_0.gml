hp = 100;
max_hp = 100;
flash_timer = 0;
hit_timer = 0;
kb_x = 0;
kb_y = 0;


stun = 0;              
squash = 0;           
mv_x = 0;            
mv_y = 0;
moving = false;
walk_t = random(6.28);
wind = 0;             
atk_wind = 10;       
atk_damage = 2;
atk_kb = 5;            
kb_mult = 1;          
death_blood = 10;
death_shake = 1;
shadow_w = 10;        
bob_y = 0;            

take_damage = function(damage, dir)
{
    hp -= damage;
	var _n = instance_create_depth(x, bbox_top, -6000, obj_damage_number);
	_n.txt = string(damage);
    hit_timer = 30;
    global.hitstop = 4;
    flash_timer = 15;
    stun = 12;
    squash = 1;
    wind = 0;   

    if (dir != undefined)
    {
        kb_x += lengthdir_x(4 * kb_mult, dir);
        kb_y += lengthdir_y(4 * kb_mult, dir);
    }

    if (hp <= 0)
    {
        global.hitstop = 7;

        repeat (death_blood)
        {
            var _b = instance_create_layer(x, y, "Instances", obj_blood);
            _b.dir = ((dir != undefined) ? dir : random(360)) + random_range(-90, 90);
        }

        with (obj_camera)
        {
            shake = other.death_shake;
            shake_time = 6;
            shake_fade = 1;
        }

        instance_destroy();
    }
};


hit_player = function(_dir)
{
    obj_player.hp -= atk_damage;
    audio_play_sound(snd_player_hitted, 1, false);
    can_attack = false;
    alarm[0] = 30;

    with (obj_camera) { shake = 3; shake_time = 6; shake_fade = 1; }

    global.hitstop = 4;

    var _kx = lengthdir_x(atk_kb, _dir);
    var _ky = lengthdir_y(atk_kb, _dir);

    with (obj_player)
    {
        kb_x += _kx;
        kb_y += _ky;
        flash_timer = 20;
        invencible = true;
        inv_timer = 30;
    }

  
    kb_x -= lengthdir_x(1.5, _dir);
    kb_y -= lengthdir_y(1.5, _dir);
};

update_attack = function(_range)
{
    if (!instance_exists(obj_player)) { wind = 0; return; }

    var _d = point_distance(x, y, obj_player.x, obj_player.y);
    var _dir = point_direction(x, y, obj_player.x, obj_player.y);


    if (wind == 0 && stun <= 0 && can_attack && _d <= _range
        && !obj_player.invencible && obj_player.hp > 0)
    {
        wind = atk_wind;
    }

    if (wind > 0)
    {
        wind--;

        if (wind == 0)
        {
   
            if (_d <= _range + 6 && !obj_player.invencible && obj_player.hp > 0)
                hit_player(_dir);
        }
    }
};