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

speaker_id = "";
speaker_name = "";
speaker_portrait = -1;


// PRIMEIRO: carregar fala
load_current_line = function()
{
    var _line = dialogue[dialogue_index];

    speaker_id = _line.speaker;
    full_text = _line.text;

    switch (speaker_id)
    {
        case "joao":
            speaker_name = "Joao";
            speaker_portrait = spr_mateus_portrait;
            break;

        case "wolf":
            speaker_name = "Wolf";
            speaker_portrait = spr_john_portrait;
            break;

        case "john":
            speaker_name = "John";
            speaker_portrait = spr_john_portrait; // Certifica-te de que este sprite existe
            break;

        case "mateus":
            speaker_name = "Sr. Mateus";
            speaker_portrait = spr_mateus_portrait; // Certifica-te de que este sprite existe
            break;

        case "fairy":
            speaker_name = "Fairy";
            speaker_portrait = spr_fairy_portrait; // Certifica-te de que este sprite existe
            break;
            
        default:
            speaker_name = speaker_id;
            speaker_portrait = -1;
            break;
    }

    display_text = "";
    char_index = 0;
    text_finished = false;
};


// SEGUNDO: iniciar diálogo
start_lines = function(_lines, _name)
{
    dialogue = _lines;

    if (array_length(dialogue) <= 0)
        return;

    dialogue_index = 0;
    npc_name = _name;

    load_current_line();

    active = true;
    wait_release = true;
};


// TERCEIRO: avançar diálogo
advance = function()
{
    dialogue_index++;

    if (dialogue_index >= array_length(dialogue))
    {
        active = false;
        return;
    }

    load_current_line();
};