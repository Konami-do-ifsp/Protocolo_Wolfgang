event_inherited();

// ==========================================
// PERSEGUIÇÃO
// ==========================================

if (instance_exists(obj_player))
{
    var _dist = point_distance(x, y, obj_player.x, obj_player.y);
    var _dir = point_direction(x, y, obj_player.x, obj_player.y);

    var _detect_range = 100;
    var _attack_range = 7;

    if (_dist < _detect_range)
    {
        if (_dist > _attack_range)
        {
            // Movimento
            x += lengthdir_x(spd, _dir);
            y += lengthdir_y(spd, _dir);

            // Animação baseada na direção
            var _dx = obj_player.x - x;
            var _dy = obj_player.y - y;

            if (abs(_dx) > abs(_dy))
            {
                sprite_index = spr_celular_walk_side;

                if (_dx > 0)
                {
                    image_xscale = 1;
                }
                else
                {
                    image_xscale = -1;
                }
            }
            else if (_dy > 0)
            {
                sprite_index = spr_celular_walk_down;
            }
            else
            {
                sprite_index = spr_celular_walk_up;
            }
        }

        // ==========================================
        // ATAQUE
        // ==========================================

        _dist = point_distance(x, y, obj_player.x, obj_player.y);

        if (_dist <= _attack_range)
        {
            if (can_attack && !obj_player.invencible && obj_player.hp > 0)
            {
                _dir = point_direction(x, y, obj_player.x, obj_player.y);

                obj_player.hp -= 2;
                audio_play_sound(snd_player_hitted, 1, false);

                can_attack = false;

                // Camera shake
                with (obj_camera)
                {
                    shake = 3;
                    shake_time = 6;
                    shake_fade = 1;
                }

                // Hitstop
                global.hitstop = 4;

                // Knockback
                var _kb_x = lengthdir_x(2, _dir);
                var _kb_y = lengthdir_y(2, _dir);

                with (obj_player)
                {
                    kb_x += _kb_x;
                    kb_y += _kb_y;

                    flash_timer = 20;
                    invencible = true;
                    inv_timer = 30;
                }

                alarm[0] = 30;
            }
        }
    }
}

// ==========================================
// HIT TIMER
// ==========================================

if (hit_timer > 0)
{
    hit_timer--;
}

// ==========================================
// KNOCKBACK
// ==========================================

kb_x = lerp(kb_x, 0, 0.2);
kb_y = lerp(kb_y, 0, 0.2);

if (abs(kb_x) < 0.1) kb_x = 0;
if (abs(kb_y) < 0.1) kb_y = 0;

x += kb_x;
y += kb_y;