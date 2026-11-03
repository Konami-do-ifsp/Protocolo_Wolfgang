if (point_distance(x, y, obj_player.x, obj_player.y) <= 32)
{
    if (keyboard_check_pressed(ord("E")) && !obj_dialogue.active)
    {
        var _lines = get_dialogue(dialogue_id);
        obj_dialogue.start_lines(_lines, npc_name);
    }
}

if (was_talking && !obj_dialogue.active)
{
    if (obj_dialogue.npc_name == npc_name)
    {
        dialogue_id = npc_advance_state("joao", dialogue_id);
    }
}

was_talking = obj_dialogue.active;