if (!active)
    exit;

// Atualiza o efeito de máquina de escrever letra por letra
if (!text_finished)
{
    char_index += text_speed;

    if (char_index >= string_length(full_text))
    {
        char_index = string_length(full_text);
        text_finished = true;
    }

    display_text = string_copy(full_text, 1, char_index);
}

// Teclas para avançar o diálogo (Espaço, Clique Esquerdo ou a tecla "E")
var _advance_pressed = keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left) || keyboard_check_pressed(ord("E"));

// Evita que o diálogo avance imediatamente se o jogador segurou "E" para abrir a conversa
if (wait_release)
{
    if (!keyboard_check(ord("E")))
    {
        wait_release = false;
    }
    exit;
}

if (_advance_pressed)
{
    if (!text_finished)
    {
        // Se o texto ainda está aparecendo, completa ele instantaneamente
        char_index = string_length(full_text);
        display_text = full_text;
        text_finished = true;
    }
    else
    {
        // Se o texto já terminou, vai para a próxima linha
        advance();
    }
}