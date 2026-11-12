if (global.hitstop > 0) exit;
if (bilhete_cd > 0) bilhete_cd--;
//var para ver se apertou E para interagir
var _e = keyboard_check_pressed(ord("E")) && !luta_boss();

if (instance_exists(obj_bilhete_tela))
{
    hspd = 0;
    vspd = 0;
    image_speed = 0;

    if (audio_is_playing(snd_walking)) audio_stop_sound(snd_walking);

    exit;
}
mask_index = spr_player_mask;

if (instance_exists(obj_luk_final) && obj_luk_final.fase > 0)
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
if (instance_exists(obj_fairy_invocada) && obj_fairy_invocada.invocando)
{
    hspd = 0;
    vspd = 0;
    image_speed = 0;

    if (audio_is_playing(snd_walking)) {
        audio_stop_sound(snd_walking);
    }

    exit;
}


if (keyboard_check_pressed(vk_space))
{
    if (!attacking && !exploding && hp > 0 && bag_selected("cpu_item"))
    {
        bag_remove("cpu_item");
        global.dmg_martelo += 5;
        global.dmg_aspirador += 1;

        global.hitstop = 15;

        with (obj_camera)
        {
            shake = 8;
            shake_time = 24;
            shake_fade = 0.5;
        }
    }
}
if (keyboard_check_pressed(vk_space) && !attacking && !exploding && bilhete_cd <= 0 && bag_selected("bilhete_chao"))
{
    instance_create_depth(0, 0, -10000, obj_bilhete_tela);
	global.leu_bilhete = true
   
}

if (_e && !global._tem_aspirador && !attacking)
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



if (x_shake > 0) x_shake--;

if (_e && !attacking && pull_phase == 0)
{
    var _b = instance_nearest(x, y, obj_bilhete_chao_itens);

    if (_b != noone)
    {
        var _bd = point_distance(
            clamp(x, _b.bbox_left, _b.bbox_right),
            clamp(y, _b.bbox_top, _b.bbox_bottom),
            x,
            y
        );

        if (_bd <= interact_range)
        {
            bag_add("bilhete_chao");
            instance_destroy(_b);
        }
    }
}
if (instance_exists(Object37) && Object37.fase > 0)
{
    hspd = 0;
    vspd = 0;
    image_speed = 0;

    if (audio_is_playing(snd_walking)) audio_stop_sound(snd_walking);

    exit;
}
if (_e && !attacking && pull_phase == 0 && global.item_step < 4 && global.leu_bilhete)
{
    var _objeto_da_vez = global.item_order[global.item_step];
    var _peca_mais_proxima = noone;
    var _menor_distancia = interact_range;

    for (var _numero_da_peca = 0; _numero_da_peca < array_length(global.item_order); _numero_da_peca++)
    {
        var _peca = instance_nearest(x, y, global.item_order[_numero_da_peca]);
        if (_peca == noone) continue;

        var _distancia_ate_peca = point_distance(
            clamp(x, _peca.bbox_left, _peca.bbox_right),
            clamp(y, _peca.bbox_top, _peca.bbox_bottom),
            x,
            y
        );

        if (_distancia_ate_peca <= _menor_distancia)
        {
            _menor_distancia = _distancia_ate_peca;
            _peca_mais_proxima = _peca;
        }
    }

    if (_peca_mais_proxima != noone)
    {
        if (_peca_mais_proxima.object_index == _objeto_da_vez) start_pickup(_peca_mais_proxima);
        else x_shake = 15;
    }
}
if (_e && !attacking && pull_phase == 0 && global.item_step >= 4 && !global.pc_construido)
{
    var _local = instance_nearest(x, y, obj_local_construcao);

    if (_local != noone && point_distance(x, y, _local.x, _local.y) <= interact_range)
    {
        start_construir();
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

if (_e && !global.object25_unlocked && !attacking)
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

var _bn = array_length(global.bag);

if (_bn > bag_last_n)
{
    bag_sel = _bn - 1;
    bag_off = 1;
}
bag_last_n = _bn;
bag_sel = clamp(bag_sel, 0, max(0, _bn - 1));

if (!attacking && !exploding && _bn > 1)
{
    var _bdir = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);

    if (_bdir != 0)
    {
        bag_sel = (bag_sel + _bdir + _bn) mod _bn;
        bag_off = _bdir;
    }
}

bag_off = lerp(bag_off, 0, 0.25);
if (abs(bag_off) < 0.01) bag_off = 0;

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