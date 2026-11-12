event_inherited();
if (global.hitstop > 0) exit;

var _tx = 0;  
var _ty = 0;

if (instance_exists(obj_player))
{
    var dist = point_distance(x, y, obj_player.x, obj_player.y);
    var dir = point_direction(x, y, obj_player.x, obj_player.y);

    
    if (stun <= 0 && wind <= 0 && dist < 100 && dist > 5)
    {
        _tx = lengthdir_x(spd, dir);
        _ty = lengthdir_y(spd, dir);
    }

    update_attack(7);
}


mv_x = lerp(mv_x, _tx, 0.15);
mv_y = lerp(mv_y, _ty, 0.15);
x += mv_x;
y += mv_y;

if (!audio_is_playing(snd_bats))
{
    if (irandom(1500) == 0)
    {
        audio_play_sound(snd_bats, 1, false);
    }
}

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