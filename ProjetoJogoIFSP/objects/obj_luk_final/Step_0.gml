pulso += 0.05;

if (!instance_exists(obj_player)) exit;
if (!instance_exists(obj_dialogue)) instance_create_depth(0, 0, -10000, obj_dialogue);

switch (fase)
{
    case 0:
        if (!obj_dialogue.active && point_distance(x, y, obj_player.x, obj_player.y) <= 150)
        {
            obj_dialogue.start_lines(get_dialogue("luk_final_1"), "");
            fase = 1;
        }
    break;

    case 1:
        if (!obj_dialogue.active)
        {
            sprite_index = Sprite_lucas;
            espera = 40;
            fase = 2;
        }
    break;

        case 2:
        image_blend = merge_color(image_blend, c_white, 0.08);
        espera--;

        if (espera <= 0)
        {
            image_blend = c_white;
            obj_dialogue.start_lines(get_dialogue("luk_final_2"), "");
            fase = 3;
        }
    break;

    case 3:
        if (!obj_dialogue.active)
        {
            instance_create_depth(0, 0, -10000, obj_escolha_final);
            fase = 4;
        }
    break;

    case 5:
        obj_dialogue.start_lines(get_dialogue("luk_final_3"), "");
        fase = 6;
    break;

    case 6:
        if (!obj_dialogue.active)
        {
            with (obj_player) visible = false;
            instance_create_depth(0, 0, -10000, obj_efeito_binario);
            fase = 7;
        }
    break;
}