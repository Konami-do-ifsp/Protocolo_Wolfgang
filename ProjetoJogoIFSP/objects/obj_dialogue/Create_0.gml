  active = false;

dialogue = [];
dialogue_index = 0;

npc_name = "";

full_text = "";
display_text = "";
char_index = 0;
text_speed = 1;
text_finished = false;

wait_release = false;

start = function(_id, _name)
{
    dialogue = get_dialogue(_id);

    if (array_length(dialogue) <= 0)
        return;

    dialogue_index = 0;
    npc_name = _name;

    full_text = dialogue[dialogue_index];
    display_text = "";
    char_index = 0;
      
    active = true;
    wait_release = true;
};

advance = function()
{
    dialogue_index++;

    if (dialogue_index >= array_length(dialogue))
    {
        active = false;
        return;
    }

    full_text = dialogue[dialogue_index];
    display_text = "";
    char_index = 0;
    text_finished = false;
};
start_lines = function(_lines, _name)
{
    dialogue = _lines;

    if (array_length(dialogue) <= 0)
        return;

    dialogue_index = 0;
    npc_name = _name;

    full_text = dialogue[dialogue_index];
    display_text = "";
    char_index = 0;
    text_finished = false;

    active = true;
    wait_release = true;
};