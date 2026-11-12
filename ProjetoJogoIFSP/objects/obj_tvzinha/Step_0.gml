event_inherited();
if (global.hitstop > 0) exit;

var _tx = 0;
var _ty = 0;

if (instance_exists(obj_player))
{
    var _dist = point_distance(x, y, obj_player.x, obj_player.y);
    var _dir = point_direction(x, y, obj_player.x, obj_player.y);

    var _detect_range = 50;
    var _attack_range = 7;

    if (_dist < _detect_range && _dist > _attack_range && stun <= 0 && wind <= 0)
    {
        _tx = lengthdir_x(spd, _dir);
        _ty = lengthdir_y(spd, _dir);

        if (obj_player.y < y)
        {
            sprite_index = spr_tv_walk_back;
        }
        else
        {
            sprite_index = spr_tv_walk;
        }
    }

    update_attack(_attack_range);
}

mv_x = lerp(mv_x, _tx, 0.15);
mv_y = lerp(mv_y, _ty, 0.15);
x += mv_x;
y += mv_y;

if (hit_timer > 0)
{
    hit_timer--;
}

kb_x = lerp(kb_x, 0, 0.2);
kb_y = lerp(kb_y, 0, 0.2);

if (abs(kb_x) < 0.1) kb_x = 0;
if (abs(kb_y) < 0.1) kb_y = 0;

x += kb_x;
y += kb_y;