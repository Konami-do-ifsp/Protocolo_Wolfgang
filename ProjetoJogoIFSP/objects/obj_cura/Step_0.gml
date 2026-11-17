if (global.hitstop > 0) exit;

y = base_y + sin(current_time * 0.005) * 2;
visible = !(vida < 120 && (vida div 6) mod 2 == 0);

if (--vida <= 0) { instance_destroy(); exit; }

if (!instance_exists(obj_player)) exit;

var _p = obj_player;
var _dialogo = instance_exists(obj_dialogue) && obj_dialogue.active;

if (_p.hp > 0 && _p.hp < _p.max_hp && !_p.attacking && !_dialogo && place_meeting(x, y, _p))
{
    with (_p) start_cura(other.valor);
    instance_destroy();
}