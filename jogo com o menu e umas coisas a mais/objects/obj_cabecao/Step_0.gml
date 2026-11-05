event_inherited();
event_inherited();

// ---------- barra de vida ----------
if (hp < hp_prev) trail_timer = 30;   // espera meio segundo antes do rastro descer
hp_prev = hp;

if (trail_timer > 0) trail_timer--;
else hp_trail = lerp(hp_trail, hp, 0.08);

bar_alpha = lerp(bar_alpha, aggro ? 1 : 0, 0.1);

if (hit_timer > 0) hit_timer--;
if (global.hitstop > 0) exit;
if (hit_timer > 0) hit_timer--;

if (global.hitstop > 0) exit;

fast = (hp < max_hp * 0.5);

// knockback (só fora do ar)
if (state != "jumping") { x += kb_x; y += kb_y; }
else { kb_x = 0; kb_y = 0; }
kb_x *= 0.8;
kb_y *= 0.8;

if (!instance_exists(obj_player)) exit;
if (body_cd > 0) body_cd--;

var _tsx = 1;   // escala alvo (suavizada no fim)
var _tsy = 1;

switch (state)
{
    case "idle":
        anim_p = 0;

        if (!aggro)
        {
            if (point_distance(x, y, obj_player.x, obj_player.y) <= aggro_range)
            {
                aggro = true;
                timer = 0;
            }
            break;
        }

        timer++;
        if (timer >= (fast ? t_cooldown_fast : t_cooldown))
        {
            combo_left = fast ? 1 : 0;   // fase 2: 2 pulos seguidos
            start_windup();
        }
    break;

    case "windup":
        timer++;
        var _p = timer / state_dur;
        anim_p = _p * 0.25;

        // o alvo acompanha o player enquanto ele agacha
        var _d = point_direction(x, y, obj_player.x, obj_player.y);
        var _dist = min(point_distance(x, y, obj_player.x, obj_player.y), jump_range);
        target_x = x + lengthdir_x(_dist, _d);
        target_y = y + lengthdir_y(_dist, _d);

        // agacha (comprime)
        _tsx = lerp(1, 1.18, _p);
        _tsy = lerp(1, 0.72, _p);

        if (timer >= state_dur) start_jump();
    break;

    case "jumping":
        timer++;
        var _p = timer / state_dur;
        anim_p = 0.25 + _p * 0.6;

        // homing limitado até travar o alvo
        if (_p < homing_until)
        {
            var _bd = point_direction(start_x, start_y, obj_player.x, obj_player.y);
            var _bl = min(point_distance(start_x, start_y, obj_player.x, obj_player.y), jump_range);
            var _gx = start_x + lengthdir_x(_bl, _bd);
            var _gy = start_y + lengthdir_y(_bl, _bd);

            var _md = point_distance(target_x, target_y, _gx, _gy);
            if (_md > 0)
            {
                var _stp = min(_md, homing_speed);
                var _a = point_direction(target_x, target_y, _gx, _gy);
                target_x += lengthdir_x(_stp, _a);
                target_y += lengthdir_y(_stp, _a);
            }
        }

        x = lerp(start_x, target_x, _p);
        y = lerp(start_y, target_y, _p);
        z = sin(_p * pi) * jump_height;

        // estica no ar
        _tsx = 1 - 0.12 * sin(_p * pi);
        _tsy = 1 + 0.18 * sin(_p * pi);

        if (timer >= state_dur) land();
    break;

    case "land":
        timer++;
        var _p = timer / state_dur;
        anim_p = 0.85 + _p * 0.15;

        // squash do impacto relaxando
        _tsx = lerp(1.25, 1, _p);
        _tsy = lerp(0.7, 1, _p);

        if (timer >= state_dur)
        {
            if (combo_left > 0)
            {
                combo_left--;
                start_windup();
            }
            else
            {
                state = "idle";
                timer = 0;
            }
        }
    break;
}

// suaviza a escala e sincroniza a animação com a fase
sx = lerp(sx, _tsx, 0.35);
sy = lerp(sy, _tsy, 0.35);
image_speed = 0;
image_index = min(anim_p, 0.999) * image_number;

// dano de corpo (não machuca no ar)
if (state != "jumping" && place_meeting(x, y, obj_player) && body_cd <= 0)
{
    hurt_player(body_damage, point_direction(x, y, obj_player.x, obj_player.y));
    body_cd = 30;
}