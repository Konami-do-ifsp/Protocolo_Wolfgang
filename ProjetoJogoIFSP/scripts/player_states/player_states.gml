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
	image_xscale = 1
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

        if (global.item_step >= 4)
        {
            if (!instance_exists(obj_dialogue)) instance_create_depth(0, 0, -10000, obj_dialogue);
            obj_dialogue.start_lines(get_dialogue("john_voltar_bilhete"), "");
        }
    }
}
function start_construir()
{
    global.pc_construido = true;

    dir = "side";
    image_xscale = 1;

    sprite_index = spr_player_construindo;
    image_index = 0;
    image_speed = 1;
    kb_x = 0;
    kb_y = 0;
    attacking = true;
    state = state_construir;
}

function state_construir()
{
    invencible = true;
    inv_timer = 2;

    if (animation_end())
    {
        image_speed = 0;
        image_index = image_number - 1;
        attacking = false;
        state = state_idle;

        instance_create_layer(x - 80, y, "Instances", obj_fairy_invocada);
    }
}
function bag_has(_id)
{
    if (!variable_global_exists("bag")) return false;

    for (var i = 0; i < array_length(global.bag); i++)
    {
        if (global.bag[i] == _id) return true;
    }
    return false;
}

function bag_add(_id)
{
    if (!variable_global_exists("bag")) global.bag = [];

    var _known = false;
    for (var i = 0; i < array_length(global.item_db); i++)
    {
        if (global.item_db[i].id == _id) { _known = true; break; }
    }

    if (!_known)
    {
        show_debug_message("bag_add: o item '" + string(_id) + "' nao existe no catalogo (scr_itens)");
        return false;
    }

    if (bag_has(_id)) return false;

    array_push(global.bag, _id);
    return true;
}

function bag_remove(_id)
{
    if (!variable_global_exists("bag")) return;

    for (var i = 0; i < array_length(global.bag); i++)
    {
        if (global.bag[i] == _id)
        {
            array_delete(global.bag, i, 1);
            return;
        }
    }
}

function bag_rect(_x1, _y1, _x2, _y2, _col)
{
    if (_x2 <= _x1 || _y2 <= _y1) return;
    draw_set_color(_col);
    draw_rectangle(floor(_x1), floor(_y1), floor(_x2) - 1, floor(_y2) - 1, false);
}

function bag_chamfer(_x1, _y1, _x2, _y2, _p, _col)
{
    bag_rect(_x1 + _p, _y1, _x2 - _p, _y2, _col);
    bag_rect(_x1, _y1 + _p, _x2, _y2 - _p, _col);
}

function bag_panel(_x1, _y1, _x2, _y2, _p, _edge, _fill, _light, _dark)
{
    bag_chamfer(_x1, _y1 + _p, _x2, _y2 + _p, _p, make_color_rgb(10, 8, 16));
    bag_chamfer(_x1, _y1, _x2, _y2, _p, _edge);
    bag_rect(_x1 + _p, _y1 + _p, _x2 - _p, _y2 - _p, _fill);
    bag_rect(_x1 + _p, _y1 + _p, _x2 - _p, _y1 + _p * 2, _light);
    bag_rect(_x1 + _p, _y1 + _p, _x1 + _p * 2, _y2 - _p, _light);
    bag_rect(_x1 + _p, _y2 - _p * 2, _x2 - _p, _y2 - _p, _dark);
    bag_rect(_x2 - _p * 2, _y1 + _p, _x2 - _p, _y2 - _p, _dark);
}

function bag_arrow(_x, _y, _dir, _p, _col)
{
    for (var k = 0; k < 4; k++)
    {
        var _half = (3 - k) * _p + _p / 2;
        var _a = _x + k * _p * _dir;
        var _b = _x + (k + 1) * _p * _dir;
        bag_rect(min(_a, _b), _y - _half, max(_a, _b), _y + _half, _col);
    }
}

function bag_draw_spr(_spr, _cx, _cy, _scale, _blend, _flip = 1)
{
    var _x = _cx + (sprite_get_xoffset(_spr) - sprite_get_width(_spr) / 2) * _scale * _flip;
    var _y = _cy + (sprite_get_yoffset(_spr) - sprite_get_height(_spr) / 2) * _scale;
    draw_sprite_ext(_spr, 0, floor(_x), floor(_y), _scale * _flip, _scale, 0, _blend, 1);
}

function luta_boss()
{
    return instance_exists(obj_cabecao) && obj_cabecao.aggro;
}

function bag_selected(_id)
{
    if (!variable_global_exists("bag")) return false;
    if (!instance_exists(obj_player)) return false;

    var _n = array_length(global.bag);
    if (_n <= 0) return false;

    var _s = clamp(obj_player.bag_sel, 0, _n - 1);

    if (global.bag[_s] == _id) return true;
    return false;
}
