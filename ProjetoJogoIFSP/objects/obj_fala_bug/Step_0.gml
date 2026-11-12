if (!instance_exists(obj_player) || obj_dialogue.active) exit;

if (point_distance(x, y, obj_player.x, obj_player.y) <= 64)
{
    obj_dialogue.start_lines(get_dialogue("fairy_bug"), "");
    instance_destroy();
}