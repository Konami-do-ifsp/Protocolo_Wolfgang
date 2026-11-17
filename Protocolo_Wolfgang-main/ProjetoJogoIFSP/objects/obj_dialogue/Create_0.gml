persistent = true

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
		case "luk":
            speaker_name = "Luk";
            speaker_portrait = rosto_luk;
            break;
        case "wolf":
            speaker_name = "Wolf";
            speaker_portrait = spr_john_portrait;
            break;

        case "john":
            speaker_name = "John";
            speaker_portrait = spr_john_portrait; 
            break;

        case "mateus":
            speaker_name = "Sr. Mateus";
            speaker_portrait = spr_mateus_portrait; 
            break;

        case "fairy":
            speaker_name = "Fairy";
            speaker_portrait = spr_fairy_portrait; 
            break;
		
		case "cabecao":
            speaker_name = "Cabeção";
            speaker_portrait = spr_cabecao_portrait; 
            break;
			
		case "cabecao_hard":
            speaker_name = "Cabeção";
            speaker_portrait = spr_cabecao_portrait_hard; 
            break;
		case "claudia":
		    speaker_name = "Claudia Milk";
		    speaker_portrait = rosto_claudia;
		    break;
		case "leon":
		    speaker_name = "Leon";
		    speaker_portrait = rosto_leon;
		    break;
		case "alan":
		    speaker_name = "Alan Turing";
		    speaker_portrait = rosto_alan;
		    break;
		case "computador":
		    speaker_name = "Computador";
		    speaker_portrait = -1;
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