if (!instance_exists(obj_player)) exit;


if (dialogue_id == "alan_intro" && global.alan_salvo
    && point_distance(x, y, obj_player.x, obj_player.y) <= 80)
{
    dialogue_id = "alan_fim";
}

event_inherited();