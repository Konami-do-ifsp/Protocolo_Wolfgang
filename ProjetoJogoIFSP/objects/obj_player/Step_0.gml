if (global.hitstop > 0) exit;
mask_index = spr_player_mask;

// trava o player enquanto o editor estiver aberto
if (instance_exists(obj_code_editor))
{
    hspd = 0;
    vspd = 0;
    image_speed = 0;

    if (audio_is_playing(snd_walking)) audio_stop_sound(snd_walking);

    exit;
}

if (instance_exists(obj_dialogue) && obj_dialogue.active)
{
    hspd = 0;
    vspd = 0;
    image_speed = 0; 
    
    if (audio_is_playing(snd_walking)) {
        audio_stop_sound(snd_walking);
    }
    
    exit; 
}


var _luta_boss = instance_exists(obj_cabecao) && obj_cabecao.aggro;

if (keyboard_check_pressed(ord("E")) && !global._tem_aspirador && !_luta_boss && !attacking)
{
    var _aspirador = instance_nearest(x, y, obj_aspirador_preso);

    if (_aspirador != noone)
    {
        var _dist = point_distance(
            clamp(x, _aspirador.bbox_left, _aspirador.bbox_right),
            clamp(y, _aspirador.bbox_top, _aspirador.bbox_bottom),
            x,
            y
        );

        if (_dist <= interact_range)
        {
            start_pull_aspirador(_aspirador);
        }
    }
}

if (keyboard_check_pressed(ord("E")) && !attacking && pull_phase == 0 && !instance_exists(obj_code_editor))
{
    var pc = instance_nearest(x, y, obj_computador);

    if (pc != noone)
    {
        var _pc_dist = point_distance(
            clamp(x, pc.bbox_left, pc.bbox_right),
            clamp(y, pc.bbox_top, pc.bbox_bottom),
            x,
            y
        );

        if (_pc_dist <= interact_range)
        {
            instance_create_depth(0, 0, -10000, obj_code_editor);
            exit;
        }
    }
}
// coletar itens na ordem
if (x_shake > 0) x_shake--;

if (keyboard_check_pressed(ord("E")) && !attacking && pull_phase == 0 && global.item_step < 4)
{
    var _it_best = noone;
    var _it_min = interact_range;

    for (var _k = 0; _k < array_length(global.item_order); _k++)
    {
        var _it_obj = global.item_order[_k];
        if (!instance_exists(_it_obj)) continue;

        var _it_near = instance_nearest(x, y, _it_obj);
        var _it_dist = point_distance(
            clamp(x, _it_near.bbox_left, _it_near.bbox_right),
            clamp(y, _it_near.bbox_top, _it_near.bbox_bottom),
            x,
            y
        );

        if (_it_dist <= _it_min)
        {
            _it_min = _it_dist;
            _it_best = _it_near;
        }
    }

    if (_it_best != noone)
    {
        if (item_idx(_it_best) == global.item_step)
        {
            
            start_pickup(_it_best);
        }
        else
        {
            
            x_shake = 15;
            
        }
    }
}

if (instance_exists(obj_password_13))
{
    hspd = 0;
    vspd = 0;
    image_speed = 0;

    if (audio_is_playing(snd_walking))
    {
        audio_stop_sound(snd_walking);
    }

    exit;
}

if (keyboard_check_pressed(ord("E")) && !global.object25_unlocked && !attacking)
{
    var _door = instance_nearest(x, y, Object25);

    if (_door != noone)
    {
        if (point_distance(x, y, _door.x, _door.y) <= interact_range)
        {
            var _panel = instance_create_depth(0, 0, -10000, obj_password_13);

            _panel.door = _door;

            hspd = 0;
            vspd = 0;
            image_speed = 0;

            if (audio_is_playing(snd_walking))
            {
                audio_stop_sound(snd_walking);
            }

            exit;
        }
    }
}
else
{
    image_speed = 1; 
}
if (hp <= 0 && !exploding)
{
    state = state_explode;
}
if (hp <= 0) {
    hp = 0;
    can_attack = false;
    if (canPlayDeathSound) {
        audio_play_sound(snd_explosion, 1, false);
        alarm[1] = 40;
        canPlayDeathSound = false;
    }
}
state();

if (current_weapon == Weapon.ASPIRADOR && !tem_aspirador()) {
    current_weapon = Weapon.SWORD;
}

if (!attacking && !exploding) {
    if (keyboard_check_pressed(ord("1")) && tem_aspirador()) {
        current_weapon = Weapon.ASPIRADOR;
    }
    if (keyboard_check_pressed(ord("2"))) {
        current_weapon = Weapon.SWORD;
    }
}

hp_anim = lerp(hp_anim, hp, 0.1);
var mx = mouse_x;
var my = mouse_y;

if (can_attack && !exploding && !attacking && mouse_check_button_pressed(mb_left)) {
    can_attack = false;
    alarm[0] = 60;
    start_attack();
}

if (keyboard_check(ord("R"))) room_restart();

var _pode_mover = (!attacking && !exploding);
var _input_x = _pode_mover ? keyboard_check(ord("D")) - keyboard_check(ord("A")) : 0;
var _input_y = _pode_mover ? keyboard_check(ord("S")) - keyboard_check(ord("W")) : 0;

if (_input_x != 0 || _input_y != 0) {
    var _direcao = point_direction(0, 0, _input_x, _input_y);
    hspd = lengthdir_x(spd, _direcao);
    vspd = lengthdir_y(spd, _direcao);
} else {
    hspd = 0;
    vspd = 0;
}

hspd += kb_x;
vspd += kb_y;

kb_x = lerp(kb_x, 0, 0.2);
kb_y = lerp(kb_y, 0, 0.2);
if (abs(kb_x) < 0.1) kb_x = 0;
if (abs(kb_y) < 0.1) kb_y = 0;


if (pull_phase == 0 && colidindo(x, y)) {
    var _livre = false;
    for (var r = 1; r <= 64 && !_livre; r++) {
        for (var a = 0; a < 360; a += 45) {
            var _nx = x + lengthdir_x(r, a);
            var _ny = y + lengthdir_y(r, a);
            if (!colidindo(_nx, _ny)) {
                x = _nx;
                y = _ny;
                _livre = true;
                break;
            }
        }
    }
}

if (hspd != 0 && colidindo(x + hspd, y)) {
    if (_input_y == 0) {
        for (var i = 1; i <= slide_max; i++) {
            if (!colidindo(x + hspd, y - i) && !colidindo(x, y - 1)) { y -= 1; break; }
            if (!colidindo(x + hspd, y + i) && !colidindo(x, y + 1)) { y += 1; break; }
        }
    }

    var _sx = sign(hspd);
    repeat (ceil(abs(hspd))) {
        if (colidindo(x + _sx, y)) break;
        x += _sx;
    }
    hspd = 0;
}
x += hspd;

if (vspd != 0 && colidindo(x, y + vspd)) {
    if (_input_x == 0) {
        for (var i = 1; i <= slide_max; i++) {
            if (!colidindo(x - i, y + vspd) && !colidindo(x - 1, y)) { x -= 1; break; }
            if (!colidindo(x + i, y + vspd) && !colidindo(x + 1, y)) { x += 1; break; }
        }
    }

    var _sy = sign(vspd);
    repeat (ceil(abs(vspd))) {
        if (colidindo(x, y + _sy)) break;
        y += _sy;
    }
    vspd = 0;
}
y += vspd;

if (flash_timer > 0) {
    flash_timer--;

    if ((flash_timer div 3) mod 2 == 0)
        image_blend = c_red;
    else
        image_blend = c_white;
} else {
    image_blend = c_white;
}

if (invencible) {
    inv_timer--;

    if (inv_timer <= 0) {
        invencible = false;
    }
}

if (_input_x != 0 || _input_y != 0) {
    if (!audio_is_playing(snd_walking)) {
        audio_play_sound(snd_walking, 1, true);
    }
} else {
    if (audio_is_playing(snd_walking)) {
        audio_stop_sound(snd_walking);
    }
}

if (_input_x != 0 || _input_y != 0) {
    dust_timer--;

    if (dust_timer <= 0) {
        var p = instance_create_layer(x, y + 20, "Effects", obj_particles_wlk);

        p.x += irandom_range(-4, 4);
        p.y += irandom_range(-4, 4);

        dust_timer = 7;
    }
} else {
    dust_timer = 0;
}