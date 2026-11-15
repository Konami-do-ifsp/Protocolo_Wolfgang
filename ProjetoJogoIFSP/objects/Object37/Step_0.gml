if (!instance_exists(obj_player)) exit;
if (!instance_exists(obj_dialogue)) instance_create_depth(0, 0, -10000, obj_dialogue);

var _centro_x = (bbox_left + bbox_right) / 2;
var _centro_y = (bbox_top + bbox_bottom) / 2;

switch (fase)
{
    case 0:
        var _tem_todas = bag_has("tecla_1") && bag_has("tecla_2") && bag_has("tecla_3") && bag_has("tecla_4") && bag_has("tecla_5");

        var _distancia_ao_computador = point_distance(
            clamp(obj_player.x, bbox_left, bbox_right),
            clamp(obj_player.y, bbox_top, bbox_bottom),
            obj_player.x,
            obj_player.y
        );

        if (_tem_todas && !obj_dialogue.active && _distancia_ao_computador <= 80)
        {
            sprite_index = spr_pc_falando;
            image_index = 0;
            image_speed = 1;

            with (obj_camera) zoom_alvo = 1.5;

            obj_dialogue.start_lines(get_dialogue("computador_final"), "");
            fase = 1;
        }
    break;

    case 1:
        if (!obj_dialogue.active) fase = 2;
    break;

    case 2:
        if (travada > 0)
        {
            travada--;
        }
        else
        {
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
            room_goto(room_luk);
        }
    break;
}