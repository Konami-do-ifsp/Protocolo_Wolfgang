with (obj_player)
{
    if (pull_phase != 0 || state == state_pickup) exit;
    if (luta_boss()) exit;
    if (instance_exists(obj_dialogue) && obj_dialogue.active) exit;

    float_timer += 0.08;
    var _float_offset = sin(float_timer) * 4;

    var _closest_interactable = noone;
    var _min_dist = interact_range;

    for (var i = 0; i < array_length(interact_targets); i++)
    {
        var _obj = interact_targets[i];

        if (_obj == obj_aspirador_preso && global._tem_aspirador) continue;
        if (_obj == obj_local_construcao && (global.item_step < 4 || global.pc_construido)) continue;
		if (!global.leu_bilhete && (_obj == cpu || _obj == ssd || _obj == RAm || _obj == Placa_mae)) continue;

        if (instance_exists(_obj))
        {
            var _near = instance_nearest(x, y, _obj);
            if (_obj == obj_porta_dungeon1 && _near.object_index == obj_porta_dungeon1)
            {
                if (_near.aberta == true || !bag_selected("chave1")) { continue; }
            }

            if (_obj == obj_bau_parent && variable_instance_exists(_near, "abrindo") && _near.abrindo == true) continue;

            var _dist = point_distance(
                clamp(x, _near.bbox_left, _near.bbox_right),
                clamp(y, _near.bbox_top, _near.bbox_bottom),
                x,
                y
            );

            if (_dist <= _min_dist)
            {
                _min_dist = _dist;
                _closest_interactable = _near;
            }
        }
    }

    if (_closest_interactable != noone)
    {
        var _icon_x = _closest_interactable.x;
        var _icon_y = _closest_interactable.bbox_top - 8 + _float_offset;

        draw_sprite(spr_E, 0, _icon_x, _icon_y - 10);

        var _idx = item_idx(_closest_interactable);
        if (_idx != -1 && _idx != global.item_step)
        {
            var _xx = _icon_x + ((x_shake > 0) ? choose(-2, 2) : 0);
            var _xy = _icon_y - 10;
            var _s = 7;

            draw_line_width_color(_xx - _s, _xy - _s, _xx + _s, _xy + _s, 3, c_red, c_red);
            draw_line_width_color(_xx - _s, _xy + _s, _xx + _s, _xy - _s, 3, c_red, c_red);
        }
    }
}