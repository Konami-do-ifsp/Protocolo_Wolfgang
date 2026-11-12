if (!instance_exists(obj_player) || global.porta_turing_aberta) exit;

var _capsula_feita = variable_global_exists("leon_livre") && global.leon_livre;
var _cooler_feito = variable_global_exists("pc_consertado") && global.pc_consertado;

if (!_capsula_feita || !_cooler_feito) exit;

if (instance_exists(obj_dialogue) && obj_dialogue.active) exit;

var _d = point_distance(
    clamp(obj_player.x, bbox_left, bbox_right),
    clamp(obj_player.y, bbox_top, bbox_bottom),
    obj_player.x,
    obj_player.y
);

if (_d <= 64)
{
    global.porta_turing_aberta = true;
    visible = false;
    mask_index = spr_mask_vazia;

   
    if (!instance_exists(obj_dialogue)) instance_create_depth(0, 0, -10000, obj_dialogue);
    obj_dialogue.start_lines(get_dialogue("turing_pedindo_ajuda"), "alan");

}