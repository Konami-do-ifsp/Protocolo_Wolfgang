if (!instance_exists(obj_player)) exit;

switch (fase)
{
    case 0:
        var _perto = point_distance(x, y, obj_player.x, obj_player.y) <= 80;

        if (_perto && bag_selected("pilula_vermelha"))
        {
            if (keyboard_check_pressed(ord("E")) && !obj_dialogue.active && !obj_player.attacking)
            {
                sprite_index = spr_capsula_explodindo;
                image_index = 0;
                image_speed = 1;

                with (obj_camera)
                {
                    shake = 6;
                    shake_time = 30;
                    shake_fade = 0.15;
                }

                fase = 1;
            }
        }
        else
        {
            event_inherited();
        }
    break;

    case 1:
        if (animation_end())
        {
            sprite_index = spr_capsula_vazia;
            image_index = 0;
            image_speed = 1;

            dialogue_id = "leon_intro";
            obj_dialogue.start_lines(get_dialogue(dialogue_id), npc_name);
            fase = 2;
        }
    break;

    case 2:
        if (!obj_dialogue.active)
        {
            dialogue_id = npc_advance_state(npc_id, dialogue_id);
            fase = 3;
        }
    break;

    case 3:
        if (!obj_dialogue.active)
        {
            var _pc_pronto = variable_global_exists("pc_consertado") && global.pc_consertado;

            if (_pc_pronto && !fairy_falou)
            {
                fairy_falou = true;
                obj_dialogue.start_lines(get_dialogue("fairy_porta_trancada"), "fairy");
            }
            else
            {
                fase = 4;
            }
        }
    break;

    case 4:
        flash += 0.04;
        if (flash >= 1)
        {
            flash = 1;
            image_alpha = 0;
            mask_index = spr_mask_vazia;
            global.leon_livre = true;
            fase = 5;
        }
    break;

    case 5:
        flash -= 0.04;
        if (flash <= 0)
        {
            flash = 0;
            instance_destroy();
        }
    break;
}