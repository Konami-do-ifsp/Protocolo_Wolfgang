if (point_distance(x, y, obj_player.x, obj_player.y) <= 150)
{
    if (keyboard_check_pressed(ord("E")) && !obj_dialogue.active)
    {
        var _lines = get_dialogue(dialogue_id);
        obj_dialogue.start_lines(_lines, npc_name);

        was_talking = true;
    }
}
else
{
    // Não precisamos fazer nada aqui
}

// Detecta encerramento somente quando o diálogo realmente terminou
if (was_talking && !obj_dialogue.active)
{
    if (obj_dialogue.npc_name == npc_name)
    {
        dialogue_id = npc_advance_state(npc_id, dialogue_id);
    }

    was_talking = false;
}