if (!instance_exists(obj_player)) exit;

if (!visible)
{
    if (global.cabecao_hard_morto)
    {
        visible = true;
        image_index = 0;

        with (obj_camera)
        {
            shake = 4;
            shake_time = 20;
            shake_fade = 0.2;
        }
    }
    exit;
}

var _centro_x = (bbox_left + bbox_right) / 2;
var _centro_y = (bbox_top + bbox_bottom) / 2;
var _dialogo_aberto = instance_exists(obj_dialogue) && obj_dialogue.active;

switch (fase)
{
    case 0:
        if (!_dialogo_aberto && point_distance(_centro_x, _centro_y, obj_player.x, obj_player.y) <= 110)
        {
            fase = 1;
        }
    break;

    case 1:
        if (travada > 0)
        {
            travada--;
            image_speed = 0;
        }
        else
        {
            image_speed = 1;

            tempo_sacudida--;
            if (tempo_sacudida <= 0)
            {
                tempo_sacudida = 6;

                with (obj_camera)
                {
                    shake = 1.5;
                    shake_time = 8;
                    shake_fade = 1;
                }
            }

            proxima_travada--;
            if (proxima_travada <= 0)
            {
                travada = irandom_range(4, 10);
                proxima_travada = irandom_range(20, 50);

                with (obj_camera)
                {
                    shake = 5;
                    shake_time = 8;
                    shake_fade = 0.5;
                }
            }
        }

        vel_puxao += 0.015;

        var _distancia = point_distance(obj_player.x, obj_player.y, _centro_x, _centro_y);

        if (_distancia > vel_puxao)
        {
            if (travada <= 0)
            {
                var _direcao = point_direction(obj_player.x, obj_player.y, _centro_x, _centro_y);
                obj_player.x += lengthdir_x(vel_puxao, _direcao);
                obj_player.y += lengthdir_y(vel_puxao, _direcao);
            }
        }
        else
        {
            obj_player.x = _centro_x;
            obj_player.y = _centro_y;
            room_goto(dungeon2);
        }
    break;
}