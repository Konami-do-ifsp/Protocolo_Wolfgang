function tem_aspirador()
{
    return variable_global_exists("_tem_aspirador") && global._tem_aspirador;
}

function animation_end()
{
    var _spd = sprite_get_speed(sprite_index);
    if (sprite_get_speed_type(sprite_index) != spritespeed_framespergameframe) {
        _spd = _spd / game_get_speed(gamespeed_fps);
    }
    return (image_index + _spd * image_speed >= image_number);
}

function get_facing_angle()
{
    if (dir == "back")  return 90;
    if (dir == "front") return 270;
    return (image_xscale >= 0) ? 0 : 180; //mostra se ta olhando direita ou esquerda
}

function state_idle()
{
    var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

    if (h != 0 || v != 0)
    {
        state = state_walk;
        return;
    }

    if (dir == "front") sprite_index = spr_player_idle_front;
    if (dir == "back")  sprite_index = spr_player_idle_back;
    if (dir == "side")  sprite_index = spr_player_idle_side;
}

function state_walk()
{
    var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

    if (abs(v) > abs(h))
    {
        if (v > 0) dir = "front";
        else if (v < 0) dir = "back";
    }
    else if (h != 0)
    {
        dir = "side";
        image_xscale = sign(h);
    }

    if (dir == "front") sprite_index = spr_player_walk_front;
    if (dir == "back")  sprite_index = spr_player_walk_back;
    if (dir == "side")  sprite_index = spr_player_walk_side;

    if (h == 0 && v == 0)
    {
        state = state_idle;
        return;
    }
}

function start_attack()
{
    sword_ang = get_facing_angle();

    if (current_weapon == Weapon.ASPIRADOR) {
        if (dir == "front") sprite_index = sugando_frente;
        if (dir == "back")  sprite_index = sugando_costas;
        if (dir == "side")  sprite_index = sugando_delado;
    } else {
        if (dir == "front") sprite_index = spr_batendo_front;
        if (dir == "back")  sprite_index = spr_batendo_back;
        if (dir == "side")  sprite_index = spr_batendo_side;
    }

    image_index = 0;
    image_speed = 1;
    sword_criada = false;
    attacking = true;
    state = state_attack;
}

function state_attack()
{
    var _obj = noone;
    var _frame = 0;

    if (current_weapon == Weapon.SWORD) {
        _obj = obj_sword;
        _frame = sword_frame;
    } else if (current_weapon == Weapon.ASPIRADOR) {
        _obj = obj_colisao_aspirador;
        _frame = aspirador_frame;
    }

    if (_obj != noone && !sword_criada && image_index >= _frame) {
        sword_criada = true;

        var _dist = 24;
        var _off_y = (dir == "side") ? 10 : 0;

        var s = instance_create_layer(
            x + lengthdir_x(_dist, sword_ang),
            y + lengthdir_y(_dist, sword_ang) + _off_y,
            "Instances",
            _obj
        );
        s.dir = sword_ang;
        s.image_angle = sword_ang;
        s.owner = id;
        s.dist = _dist;

        if (current_weapon == Weapon.SWORD) {
            audio_play_sound(snd_sword_slash, 1, false);
        } else if (current_weapon == Weapon.ASPIRADOR) {
            som_aspirador = audio_play_sound(snd_som_aspirador, 1, false);
        }
    }

    if (animation_end()) {
        if (audio_is_playing(som_aspirador)) audio_stop_sound(som_aspirador);
        attacking = false;
        state = state_idle;
    }
}

function start_pull_aspirador(_inst)
{
    puxado = _inst;
    pull_flash = 0;

    
    pull_target_x = (_inst.bbox_left + _inst.bbox_right) / 2 + pull_offset_x;
    pull_target_y = (_inst.bbox_top + _inst.bbox_bottom) / 2 + pull_offset_y;

    dir = "side";
    image_xscale = (pull_target_x >= x) ? 1 : -1;

    sprite_index = spr_player_walk_side;
    image_speed = 1;
    kb_x = 0;
    kb_y = 0;
    attacking = true;
    pull_phase = 1;      
    pull_timer = 0;
    state = state_pull_aspirador;
}

function state_pull_aspirador()
{
    
    invencible = true;
    inv_timer = 2;

    switch (pull_phase)
    {
        
        case 1:
            if (audio_is_playing(snd_walking)) audio_stop_sound(snd_walking);

            var _d = point_distance(x, y, pull_target_x, pull_target_y);

            if (_d <= pull_walk_spd)
            {
                x = pull_target_x;
                y = pull_target_y;

                
                sprite_index = spr_player_puxando_aspirador;
                image_index = 0;
                image_speed = 1;
                pull_phase = 2;
            }
            else
            {
                var _a = point_direction(x, y, pull_target_x, pull_target_y);
                x += lengthdir_x(pull_walk_spd, _a);
                y += lengthdir_y(pull_walk_spd, _a);
                image_speed = 1;
            }
        break;

        
        case 2:
            image_speed = 1;

            if (image_index >= pull_give_frame)
            {
                global._tem_aspirador = true;
                pull_flash = 1;

                with (obj_camera)
                {
                    shake = 0.5;
                    shake_time = 8;
                    shake_fade = 1;
                }

                if (instance_exists(puxado))
                {
                    puxado.image_index = 1;
					puxado.image_speed = 0;
                }
                puxado = noone;
                

                pull_phase = 3;
            }
        break;

        
        case 3:
            image_speed = 1;
            pull_flash = max(0, pull_flash - 0.04);

            if (animation_end())
            {
                image_index = image_number - 1;
                image_speed = 0;
                pull_phase = 4;
                pull_timer = 0;
            }
        break;

        
        case 4:
            image_speed = 0;
            image_index = image_number - 1;
            pull_flash = max(0, pull_flash - 0.04);
            pull_timer++;

            if (pull_timer >= pull_hold)
            {
                pull_phase = 0;
                pull_flash = 0;
                attacking = false;
                state = state_idle;
            }
        break;
    }
}

function state_explode()
{
    if (!exploding)
    {
        exploding = true;
        attacking = false;
        sprite_index = spr_player_explode;
        image_index = 0;
        image_speed = 1;
        spd = 0;
    }

    if (image_index >= image_number - 1)
    {
        image_index = image_number - 1;
        image_alpha = 0;
        image_speed = 0;
    }
}


function item_idx(_inst)
{
    for (var i = 0; i < array_length(global.item_order); i++)
    {
        if (_inst.object_index == global.item_order[i]) return i;
    }
    return -1;
}

function start_pickup(_inst)
{
    var _inst_obj = _inst.object_index;
    pickup_idx = item_idx(_inst);

    global.item_step++;
    instance_destroy(_inst);

    var _spr = spr_pegar_cpu;
	switch (_inst_obj)
	{
	    case cpu:       _spr = spr_pegar_cpu; break;
		case ssd: _spr = spr_pegar_ram; break;
		case RAm: _spr = spr_pegar_ssd; break;
	    case Placa_mae: _spr = spr_completado_itens; break;
	}
	sprite_index = _spr;
	show_debug_message("objeto=" + object_get_name(_inst_obj) + " sprite=" + sprite_get_name(sprite_index));
    image_index = 0;
    image_speed = 1;
    kb_x = 0;
    kb_y = 0;
    attacking = true;   
    state = state_pickup;
	
}

function state_pickup()
{
    
    invencible = true;
    inv_timer = 2;

    if (animation_end())
    {
        attacking = false;
        state = state_idle;
    }
}